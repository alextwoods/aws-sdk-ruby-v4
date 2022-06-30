# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::SSM
  # An API client for AmazonSSM
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Web Services Systems Manager is a collection of capabilities that helps you automate management tasks such as
  #    collecting system inventory, applying operating system (OS) patches, automating the creation of
  #    Amazon Machine Images (AMIs), and configuring operating systems (OSs) and applications at scale.
  #    Systems Manager lets you remotely and securely manage the configuration of your managed nodes. A
  #     <i>managed node</i> is any Amazon Elastic Compute Cloud (Amazon EC2) instance, edge device, or on-premises
  #    server or virtual machine (VM) that has been configured for Systems Manager. </p>
  #          <note>
  #             <p>With support for IoT Greengrass core devices, the phrase <i>managed
  #      instance</i> has been changed to <i>managed node</i> in most of the Systems Manager
  #     documentation. The Systems Manager console, API calls, error messages, and SSM documents still use the
  #     term <i>instance</i>.</p>
  #          </note>
  #          <p>This reference is intended to be used with the <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/">Amazon Web Services Systems Manager User Guide</a>.</p>
  #          <p>To get started, verify prerequisites and configure managed nodes. For more information, see
  #     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html">Setting up
  #     Amazon Web Services Systems Manager</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
  #          <p class="title">
  #             <b>Related resources</b>
  #          </p>
  #          <ul>
  #             <li>
  #                <p>For information about how to use a Query API, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/making-api-requests.html">Making API requests</a>. </p>
  #             </li>
  #             <li>
  #                <p>For information about other API operations you can perform on EC2 instances, see the
  #       <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/">Amazon EC2 API Reference</a>.</p>
  #             </li>
  #             <li>
  #                <p>For information about AppConfig, a capability of Systems Manager, see the <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/">AppConfig User Guide</a> and the <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/">AppConfig API
  #      Reference</a>.</p>
  #             </li>
  #             <li>
  #                <p>For information about Incident Manager, a capability of Systems Manager, see the <a href="https://docs.aws.amazon.com/incident-manager/latest/userguide/">Incident Manager User Guide</a>
  #      and the <a href="https://docs.aws.amazon.com/incident-manager/latest/APIReference/">Incident Manager API
  #       Reference</a>.</p>
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
    def initialize(config = AWS::SDK::SSM::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds or overwrites one or more tags for the specified resource. Tags are metadata that you
    #    can assign to your automations, documents, managed nodes, maintenance windows, Parameter Store
    #    parameters, and patch baselines. Tags enable you to categorize your resources in different ways,
    #    for example, by purpose, owner, or environment. Each tag consists of a key and an optional value,
    #    both of which you define. For example, you could define a set of tags for your account's managed
    #    nodes that helps you track each node's owner and stack level. For example:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Key=Owner,Value=DbAdmin</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Key=Owner,Value=SysAdmin</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Key=Owner,Value=Dev</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Key=Stack,Value=Production</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Key=Stack,Value=Pre-Production</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Key=Stack,Value=Test</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Most resources can have a maximum of 50 tags. Automations can have a maximum of 5
    #    tags.</p>
    #          <p>We recommend that you devise a set of tag keys that meets your needs for each resource type.
    #    Using a consistent set of tag keys makes it easier for you to manage your resources. You can
    #    search and filter the resources based on the tags you add. Tags don't have any semantic meaning
    #    to and are interpreted strictly as a string of characters.</p>
    #          <p>For more information about using tags with Amazon Elastic Compute Cloud (Amazon EC2) instances, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging your Amazon EC2
    #     resources</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsToResourceInput}.
    #
    # @option params [String] :resource_type
    #   <p>Specifies the type of resource you are tagging.</p>
    #            <note>
    #               <p>The <code>ManagedInstance</code> type for this API operation is for on-premises managed
    #       nodes. You must specify the name of the managed node in the following format:
    #         <code>mi-<i>ID_number</i>
    #                  </code>. For example,
    #       <code>mi-1a2b3c4d5e6f</code>.</p>
    #            </note>
    #
    # @option params [String] :resource_id
    #   <p>The resource ID you want to tag.</p>
    #            <p>Use the ID of the resource. Here are some examples:</p>
    #            <p>
    #               <code>MaintenanceWindow</code>: <code>mw-012345abcde</code>
    #            </p>
    #            <p>
    #               <code>PatchBaseline</code>: <code>pb-012345abcde</code>
    #            </p>
    #            <p>
    #               <code>Automation</code>: <code>example-c160-4567-8519-012345abcde</code>
    #            </p>
    #            <p>
    #               <code>OpsMetadata</code> object: <code>ResourceID</code> for tagging is created from the
    #      Amazon Resource Name (ARN) for the object. Specifically, <code>ResourceID</code> is created from
    #      the strings that come after the word <code>opsmetadata</code> in the ARN. For example, an
    #      OpsMetadata object with an ARN of
    #       <code>arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager</code> has a
    #       <code>ResourceID</code> of either <code>aws/ssm/MyGroup/appmanager</code> or
    #       <code>/aws/ssm/MyGroup/appmanager</code>.</p>
    #            <p>For the <code>Document</code> and <code>Parameter</code> values, use the name of the
    #      resource.</p>
    #            <p>
    #               <code>ManagedInstance</code>: <code>mi-012345abcde</code>
    #            </p>
    #            <note>
    #               <p>The <code>ManagedInstance</code> type for this API operation is only for on-premises
    #       managed nodes. You must specify the name of the managed node in the following format:
    #         <code>mi-<i>ID_number</i>
    #                  </code>. For example,
    #       <code>mi-1a2b3c4d5e6f</code>.</p>
    #            </note>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags. The value parameter is required.</p>
    #            <important>
    #               <p>Don't enter personally identifiable information in this field.</p>
    #            </important>
    #
    # @return [Types::AddTagsToResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource(
    #     resource_type: 'Document', # required - accepts ["Document", "ManagedInstance", "MaintenanceWindow", "Parameter", "PatchBaseline", "OpsItem", "OpsMetadata", "Automation"]
    #     resource_id: 'ResourceId', # required
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
    #   resp.data #=> Types::AddTagsToResourceOutput
    #
    def add_tags_to_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddTagsToResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddTagsToResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddTagsToResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyUpdates, Errors::InvalidResourceId, Errors::InternalServerError, Errors::TooManyTagsError, Errors::InvalidResourceType]),
        data_parser: Parsers::AddTagsToResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddTagsToResource,
        stubs: @stubs,
        params_class: Params::AddTagsToResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_tags_to_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a related item to a Systems Manager OpsCenter OpsItem. For example, you can associate an
    #    Incident Manager incident or analysis with an OpsItem. Incident Manager and OpsCenter are capabilities of
    #    Amazon Web Services Systems Manager.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateOpsItemRelatedItemInput}.
    #
    # @option params [String] :ops_item_id
    #   <p>The ID of the OpsItem to which you want to associate a resource as a related item.</p>
    #
    # @option params [String] :association_type
    #   <p>The type of association that you want to create between an OpsItem and a resource. OpsCenter
    #      supports <code>IsParentOf</code> and <code>RelatesTo</code> association types.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of resource that you want to associate with an OpsItem. OpsCenter supports the
    #      following types:</p>
    #            <p>
    #               <code>AWS::SSMIncidents::IncidentRecord</code>: an Incident Manager incident. </p>
    #            <p>
    #               <code>AWS::SSM::Document</code>: a Systems Manager (SSM) document.</p>
    #
    # @option params [String] :resource_uri
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services resource that you want to associate with the
    #      OpsItem.</p>
    #
    # @return [Types::AssociateOpsItemRelatedItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_ops_item_related_item(
    #     ops_item_id: 'OpsItemId', # required
    #     association_type: 'AssociationType', # required
    #     resource_type: 'ResourceType', # required
    #     resource_uri: 'ResourceUri' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateOpsItemRelatedItemOutput
    #   resp.data.association_id #=> String
    #
    def associate_ops_item_related_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateOpsItemRelatedItemInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateOpsItemRelatedItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateOpsItemRelatedItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OpsItemNotFoundException, Errors::OpsItemRelatedItemAlreadyExistsException, Errors::OpsItemLimitExceededException, Errors::OpsItemInvalidParameterException, Errors::InternalServerError]),
        data_parser: Parsers::AssociateOpsItemRelatedItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateOpsItemRelatedItem,
        stubs: @stubs,
        params_class: Params::AssociateOpsItemRelatedItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_ops_item_related_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attempts to cancel the command specified by the Command ID. There is no guarantee that the
    #    command will be terminated and the underlying process stopped.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelCommandInput}.
    #
    # @option params [String] :command_id
    #   <p>The ID of the command you want to cancel.</p>
    #
    # @option params [Array<String>] :instance_ids
    #   <p>(Optional) A list of managed node IDs on which you want to cancel the command. If not
    #      provided, the command is canceled on every node on which it was requested.</p>
    #
    # @return [Types::CancelCommandOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_command(
    #     command_id: 'CommandId', # required
    #     instance_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelCommandOutput
    #
    def cancel_command(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelCommandInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelCommandInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelCommand
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInstanceId, Errors::InvalidCommandId, Errors::DuplicateInstanceId, Errors::InternalServerError]),
        data_parser: Parsers::CancelCommand
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelCommand,
        stubs: @stubs,
        params_class: Params::CancelCommandOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_command
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a maintenance window execution that is already in progress and cancels any tasks in
    #    the window that haven't already starting running. Tasks already in progress will continue to
    #    completion.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelMaintenanceWindowExecutionInput}.
    #
    # @option params [String] :window_execution_id
    #   <p>The ID of the maintenance window execution to stop.</p>
    #
    # @return [Types::CancelMaintenanceWindowExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_maintenance_window_execution(
    #     window_execution_id: 'WindowExecutionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelMaintenanceWindowExecutionOutput
    #   resp.data.window_execution_id #=> String
    #
    def cancel_maintenance_window_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelMaintenanceWindowExecutionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelMaintenanceWindowExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelMaintenanceWindowExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::CancelMaintenanceWindowExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelMaintenanceWindowExecution,
        stubs: @stubs,
        params_class: Params::CancelMaintenanceWindowExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_maintenance_window_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates an activation code and activation ID you can use to register your on-premises
    #    servers, edge devices, or virtual machine (VM) with Amazon Web Services Systems Manager. Registering these machines with
    #    Systems Manager makes it possible to manage them using Systems Manager capabilities. You use the activation code and
    #    ID when installing SSM Agent on machines in your hybrid environment. For more information about
    #    requirements for managing on-premises machines using Systems Manager, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances.html">Setting up
    #     Amazon Web Services Systems Manager for hybrid environments</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #          <note>
    #             <p>Amazon Elastic Compute Cloud (Amazon EC2) instances, edge devices, and on-premises servers and VMs that are
    #     configured for Systems Manager are all called <i>managed nodes</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateActivationInput}.
    #
    # @option params [String] :description
    #   <p>A user-defined description of the resource that you want to register with Systems Manager. </p>
    #            <important>
    #               <p>Don't enter personally identifiable information in this field.</p>
    #            </important>
    #
    # @option params [String] :default_instance_name
    #   <p>The name of the registered, managed node as it will appear in the Amazon Web Services Systems Manager console or when
    #      you use the Amazon Web Services command line tools to list Systems Manager resources.</p>
    #            <important>
    #               <p>Don't enter personally identifiable information in this field.</p>
    #            </important>
    #
    # @option params [String] :iam_role
    #   <p>The name of the Identity and Access Management (IAM) role that you want to assign to
    #      the managed node. This IAM role must provide AssumeRole permissions for the
    #      Amazon Web Services Systems Manager service principal <code>ssm.amazonaws.com</code>. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-service-role.html">Create an
    #        IAM service role for a hybrid environment</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [Integer] :registration_limit
    #   <p>Specify the maximum number of managed nodes you want to register. The default value is
    #       <code>1</code>.</p>
    #
    # @option params [Time] :expiration_date
    #   <p>The date by which this activation request should expire, in timestamp format, such as
    #      "2021-07-07T00:00:00". You can specify a date up to 30 days in advance. If you don't provide an
    #      expiration date, the activation code expires in 24 hours.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
    #      different ways, such as by purpose, owner, or environment. For example, you might want to tag an
    #      activation to identify which servers or virtual machines (VMs) in your on-premises environment
    #      you intend to activate. In this case, you could specify the following key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=Environment,Value=Production</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>When you install SSM Agent on your on-premises servers and VMs, you specify an activation ID
    #       and code. When you specify the activation ID and code, tags assigned to the activation are
    #       automatically applied to the on-premises servers or VMs.</p>
    #            </important>
    #            <p>You can't add tags to or delete tags from an existing activation. You can tag your
    #      on-premises servers, edge devices, and VMs after they connect to Systems Manager for the first time and are
    #      assigned a managed node ID. This means they are listed in the Amazon Web Services Systems Manager console with an ID that
    #      is prefixed with "mi-". For information about how to add tags to your managed nodes, see <a>AddTagsToResource</a>. For information about how to remove tags from your managed nodes,
    #      see <a>RemoveTagsFromResource</a>.</p>
    #
    # @option params [Array<RegistrationMetadataItem>] :registration_metadata
    #   <p>Reserved for internal use.</p>
    #
    # @return [Types::CreateActivationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_activation(
    #     description: 'Description',
    #     default_instance_name: 'DefaultInstanceName',
    #     iam_role: 'IamRole', # required
    #     registration_limit: 1,
    #     expiration_date: Time.now,
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     registration_metadata: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateActivationOutput
    #   resp.data.activation_id #=> String
    #   resp.data.activation_code #=> String
    #
    def create_activation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateActivationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateActivationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateActivation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameters, Errors::InternalServerError]),
        data_parser: Parsers::CreateActivation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateActivation,
        stubs: @stubs,
        params_class: Params::CreateActivationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_activation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A State Manager association defines the state that you want to maintain on your managed
    #    nodes. For example, an association can specify that anti-virus software must be installed and
    #    running on your managed nodes, or that certain ports must be closed. For static targets, the
    #    association specifies a schedule for when the configuration is reapplied. For dynamic targets,
    #    such as an Amazon Web Services resource group or an Amazon Web Services autoscaling group, State Manager, a capability of
    #    Amazon Web Services Systems Manager applies the configuration when new managed nodes are added to the group. The
    #    association also specifies actions to take when applying the configuration. For example, an
    #    association for anti-virus software might run once a day. If the software isn't installed, then
    #    State Manager installs it. If the software is installed, but the service isn't running, then the
    #    association might instruct State Manager to start the service. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateAssociationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the SSM Command document or Automation runbook that contains the configuration
    #      information for the managed node.</p>
    #            <p>You can specify Amazon Web Services-predefined documents, documents you created, or a document that is
    #      shared with you from another account.</p>
    #            <p>For Systems Manager documents (SSM documents) that are shared with you from other Amazon Web Services accounts, you
    #      must specify the complete SSM document ARN, in the following format:</p>
    #            <p>
    #               <code>arn:<i>partition</i>:ssm:<i>region</i>:<i>account-id</i>:document/<i>document-name</i>
    #               </code>
    #            </p>
    #            <p>For example:</p>
    #            <p>
    #               <code>arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document</code>
    #            </p>
    #            <p>For Amazon Web Services-predefined documents and SSM documents you created in your account, you only need
    #      to specify the document name. For example, <code>AWS-ApplyPatchBaseline</code> or
    #       <code>My-Document</code>.</p>
    #
    # @option params [String] :document_version
    #   <p>The document version you want to associate with the target(s). Can be a specific version or
    #      the default version.</p>
    #            <important>
    #               <p>State Manager doesn't support running associations that use a new version of a document if
    #       that document is shared from another account. State Manager always runs the <code>default</code>
    #       version of a document if shared from another account, even though the Systems Manager console shows that a
    #       new version was processed. If you want to run an association using a new version of a document
    #       shared form another account, you must set the document version to <code>default</code>.</p>
    #            </important>
    #
    # @option params [String] :instance_id
    #   <p>The managed node ID.</p>
    #            <note>
    #               <p>
    #                  <code>InstanceId</code> has been deprecated. To specify a managed node ID for an
    #       association, use the <code>Targets</code> parameter. Requests that
    #       include the parameter <code>InstanceID</code> with Systems Manager documents (SSM documents) that use
    #       schema version 2.0 or later will fail. In addition, if you use the
    #       parameter <code>InstanceId</code>, you can't use the parameters <code>AssociationName</code>,
    #        <code>DocumentVersion</code>, <code>MaxErrors</code>, <code>MaxConcurrency</code>,
    #        <code>OutputLocation</code>, or <code>ScheduleExpression</code>. To use these parameters, you
    #       must use the <code>Targets</code> parameter.</p>
    #            </note>
    #
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>The parameters for the runtime configuration of the document.</p>
    #
    # @option params [Array<Target>] :targets
    #   <p>The targets for the association. You can target managed nodes by using tags, Amazon Web Services resource
    #      groups, all managed nodes in an Amazon Web Services account, or individual managed node IDs. You can target all
    #      managed nodes in an Amazon Web Services account by specifying the <code>InstanceIds</code> key with a value of
    #       <code>*</code>. For more information about choosing targets for an association, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-state-manager-targets-and-rate-controls.html">Using targets and rate controls with State Manager associations</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [String] :schedule_expression
    #   <p>A cron expression when the association will be applied to the target(s).</p>
    #
    # @option params [InstanceAssociationOutputLocation] :output_location
    #   <p>An Amazon Simple Storage Service (Amazon S3) bucket where you want to store the output
    #      details of the request.</p>
    #
    # @option params [String] :association_name
    #   <p>Specify a descriptive name for the association.</p>
    #
    # @option params [String] :automation_target_parameter_name
    #   <p>Choose the parameter that will define how your automation will branch out. This target is
    #      required for associations that use an Automation runbook and target resources by using rate
    #      controls. Automation is a capability of Amazon Web Services Systems Manager.</p>
    #
    # @option params [String] :max_errors
    #   <p>The number of errors that are allowed before the system stops sending requests to run the
    #      association on additional targets. You can specify either an absolute number of errors, for
    #      example 10, or a percentage of the target set, for example 10%. If you specify 3, for example,
    #      the system stops sending requests when the fourth error is received. If you specify 0, then the
    #      system stops sending requests after the first error is returned. If you run an association on 50
    #      managed nodes and set <code>MaxError</code> to 10%, then the system stops sending the request
    #      when the sixth error is received.</p>
    #            <p>Executions that are already running an association when <code>MaxErrors</code> is reached
    #      are allowed to complete, but some of these executions may fail as well. If you need to ensure
    #      that there won't be more than max-errors failed executions, set <code>MaxConcurrency</code> to 1
    #      so that executions proceed one at a time.</p>
    #
    # @option params [String] :max_concurrency
    #   <p>The maximum number of targets allowed to run the association at the same time. You can
    #      specify a number, for example 10, or a percentage of the target set, for example 10%. The default
    #      value is 100%, which means all targets run the association at the same time.</p>
    #            <p>If a new managed node starts and attempts to run an association while Systems Manager is running
    #       <code>MaxConcurrency</code> associations, the association is allowed to run. During the next
    #      association interval, the new managed node will process its association within the limit
    #      specified for <code>MaxConcurrency</code>.</p>
    #
    # @option params [String] :compliance_severity
    #   <p>The severity level to assign to the association.</p>
    #
    # @option params [String] :sync_compliance
    #   <p>The mode for generating association compliance. You can specify <code>AUTO</code> or
    #       <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association
    #      execution to determine the compliance status. If the association execution runs successfully,
    #      then the association is <code>COMPLIANT</code>. If the association execution doesn't run
    #      successfully, the association is <code>NON-COMPLIANT</code>.</p>
    #            <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter
    #      for the <a>PutComplianceItems</a> API operation. In this case, compliance data isn't
    #      managed by State Manager. It is managed by your direct call to the <a>PutComplianceItems</a> API operation.</p>
    #            <p>By default, all associations use <code>AUTO</code> mode.</p>
    #
    # @option params [Boolean] :apply_only_at_cron_interval
    #   <p>By default, when you create a new association, the system runs it immediately after it is
    #      created and then according to the schedule you specified. Specify this option if you don't want
    #      an association to run immediately after you create it. This parameter isn't supported for rate
    #      expressions.</p>
    #
    # @option params [Array<String>] :calendar_names
    #   <p>The names or Amazon Resource Names (ARNs) of the Change Calendar type documents you want to
    #      gate your associations under. The associations only run when that change calendar is open. For
    #      more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar">Amazon Web Services Systems Manager Change
    #       Calendar</a>.</p>
    #
    # @option params [Array<TargetLocation>] :target_locations
    #   <p>A location is a combination of Amazon Web Services Regions and Amazon Web Services accounts where you want to run the
    #      association. Use this action to create an association in multiple Regions and multiple
    #      accounts.</p>
    #
    # @option params [Integer] :schedule_offset
    #   <p>Number of days to wait after the scheduled day to run an association. For example, if you
    #      specified a cron schedule of <code>cron(0 0 ? * THU#2 *)</code>, you could specify an offset of 3
    #      to run the association each Sunday after the second Thursday of the month. For more information
    #      about cron schedules for associations, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html">Reference: Cron
    #       and rate expressions for Systems Manager</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #            <note>
    #               <p>To use offsets, you must specify the <code>ApplyOnlyAtCronInterval</code> parameter. This
    #       option tells the system not to run an association immediately after you create it. </p>
    #            </note>
    #
    # @option params [Array<Hash<String, Array<String>>>] :target_maps
    #   <p>A key-value mapping of document parameters to target resources. Both Targets and TargetMaps
    #      can't be specified together.</p>
    #
    # @return [Types::CreateAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_association(
    #     name: 'Name', # required
    #     document_version: 'DocumentVersion',
    #     instance_id: 'InstanceId',
    #     parameters: {
    #       'key' => [
    #         'member'
    #       ]
    #     },
    #     targets: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     schedule_expression: 'ScheduleExpression',
    #     output_location: {
    #       s3_location: {
    #         output_s3_region: 'OutputS3Region',
    #         output_s3_bucket_name: 'OutputS3BucketName',
    #         output_s3_key_prefix: 'OutputS3KeyPrefix'
    #       }
    #     },
    #     association_name: 'AssociationName',
    #     automation_target_parameter_name: 'AutomationTargetParameterName',
    #     max_errors: 'MaxErrors',
    #     max_concurrency: 'MaxConcurrency',
    #     compliance_severity: 'CRITICAL', # accepts ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"]
    #     sync_compliance: 'AUTO', # accepts ["AUTO", "MANUAL"]
    #     apply_only_at_cron_interval: false,
    #     calendar_names: [
    #       'member'
    #     ],
    #     target_locations: [
    #       {
    #         accounts: [
    #           'member'
    #         ],
    #         regions: [
    #           'member'
    #         ],
    #         target_location_max_concurrency: 'TargetLocationMaxConcurrency',
    #         target_location_max_errors: 'TargetLocationMaxErrors',
    #         execution_role_name: 'ExecutionRoleName'
    #       }
    #     ],
    #     schedule_offset: 1,
    #     target_maps: [
    #       {
    #         'key' => [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAssociationOutput
    #   resp.data.association_description #=> Types::AssociationDescription
    #   resp.data.association_description.name #=> String
    #   resp.data.association_description.instance_id #=> String
    #   resp.data.association_description.association_version #=> String
    #   resp.data.association_description.date #=> Time
    #   resp.data.association_description.last_update_association_date #=> Time
    #   resp.data.association_description.status #=> Types::AssociationStatus
    #   resp.data.association_description.status.date #=> Time
    #   resp.data.association_description.status.name #=> String, one of ["Pending", "Success", "Failed"]
    #   resp.data.association_description.status.message #=> String
    #   resp.data.association_description.status.additional_info #=> String
    #   resp.data.association_description.overview #=> Types::AssociationOverview
    #   resp.data.association_description.overview.status #=> String
    #   resp.data.association_description.overview.detailed_status #=> String
    #   resp.data.association_description.overview.association_status_aggregated_count #=> Hash<String, Integer>
    #   resp.data.association_description.overview.association_status_aggregated_count['key'] #=> Integer
    #   resp.data.association_description.document_version #=> String
    #   resp.data.association_description.automation_target_parameter_name #=> String
    #   resp.data.association_description.parameters #=> Hash<String, Array<String>>
    #   resp.data.association_description.parameters['key'] #=> Array<String>
    #   resp.data.association_description.parameters['key'][0] #=> String
    #   resp.data.association_description.association_id #=> String
    #   resp.data.association_description.targets #=> Array<Target>
    #   resp.data.association_description.targets[0] #=> Types::Target
    #   resp.data.association_description.targets[0].key #=> String
    #   resp.data.association_description.targets[0].values #=> Array<String>
    #   resp.data.association_description.targets[0].values[0] #=> String
    #   resp.data.association_description.schedule_expression #=> String
    #   resp.data.association_description.output_location #=> Types::InstanceAssociationOutputLocation
    #   resp.data.association_description.output_location.s3_location #=> Types::S3OutputLocation
    #   resp.data.association_description.output_location.s3_location.output_s3_region #=> String
    #   resp.data.association_description.output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.data.association_description.output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.data.association_description.last_execution_date #=> Time
    #   resp.data.association_description.last_successful_execution_date #=> Time
    #   resp.data.association_description.association_name #=> String
    #   resp.data.association_description.max_errors #=> String
    #   resp.data.association_description.max_concurrency #=> String
    #   resp.data.association_description.compliance_severity #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"]
    #   resp.data.association_description.sync_compliance #=> String, one of ["AUTO", "MANUAL"]
    #   resp.data.association_description.apply_only_at_cron_interval #=> Boolean
    #   resp.data.association_description.calendar_names #=> Array<String>
    #   resp.data.association_description.calendar_names[0] #=> String
    #   resp.data.association_description.target_locations #=> Array<TargetLocation>
    #   resp.data.association_description.target_locations[0] #=> Types::TargetLocation
    #   resp.data.association_description.target_locations[0].accounts #=> Array<String>
    #   resp.data.association_description.target_locations[0].accounts[0] #=> String
    #   resp.data.association_description.target_locations[0].regions #=> Array<String>
    #   resp.data.association_description.target_locations[0].regions[0] #=> String
    #   resp.data.association_description.target_locations[0].target_location_max_concurrency #=> String
    #   resp.data.association_description.target_locations[0].target_location_max_errors #=> String
    #   resp.data.association_description.target_locations[0].execution_role_name #=> String
    #   resp.data.association_description.schedule_offset #=> Integer
    #   resp.data.association_description.target_maps #=> Array<Hash<String, Array<String>>>
    #   resp.data.association_description.target_maps[0] #=> Hash<String, Array<String>>
    #   resp.data.association_description.target_maps[0]['key'] #=> Array<String>
    #   resp.data.association_description.target_maps[0]['key'][0] #=> String
    #
    def create_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAssociationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAssociation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTarget, Errors::UnsupportedPlatformType, Errors::InternalServerError, Errors::AssociationLimitExceeded, Errors::InvalidSchedule, Errors::InvalidDocumentVersion, Errors::InvalidTargetMaps, Errors::InvalidInstanceId, Errors::InvalidDocument, Errors::InvalidParameters, Errors::AssociationAlreadyExists, Errors::InvalidOutputLocation]),
        data_parser: Parsers::CreateAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAssociation,
        stubs: @stubs,
        params_class: Params::CreateAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified Amazon Web Services Systems Manager document (SSM document) with the specified managed nodes
    #    or targets.</p>
    #          <p>When you associate a document with one or more managed nodes using IDs or tags, Amazon Web Services Systems Manager
    #    Agent (SSM Agent) running on the managed node processes the document and configures the node as
    #    specified.</p>
    #          <p>If you associate a document with a managed node that already has an associated document, the
    #    system returns the AssociationAlreadyExists exception.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAssociationBatchInput}.
    #
    # @option params [Array<CreateAssociationBatchRequestEntry>] :entries
    #   <p>One or more associations.</p>
    #
    # @return [Types::CreateAssociationBatchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_association_batch(
    #     entries: [
    #       {
    #         name: 'Name', # required
    #         instance_id: 'InstanceId',
    #         parameters: {
    #           'key' => [
    #             'member'
    #           ]
    #         },
    #         automation_target_parameter_name: 'AutomationTargetParameterName',
    #         document_version: 'DocumentVersion',
    #         targets: [
    #           {
    #             key: 'Key',
    #             values: [
    #               'member'
    #             ]
    #           }
    #         ],
    #         schedule_expression: 'ScheduleExpression',
    #         output_location: {
    #           s3_location: {
    #             output_s3_region: 'OutputS3Region',
    #             output_s3_bucket_name: 'OutputS3BucketName',
    #             output_s3_key_prefix: 'OutputS3KeyPrefix'
    #           }
    #         },
    #         association_name: 'AssociationName',
    #         max_errors: 'MaxErrors',
    #         max_concurrency: 'MaxConcurrency',
    #         compliance_severity: 'CRITICAL', # accepts ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"]
    #         sync_compliance: 'AUTO', # accepts ["AUTO", "MANUAL"]
    #         apply_only_at_cron_interval: false,
    #         calendar_names: [
    #           'member'
    #         ],
    #         target_locations: [
    #           {
    #             accounts: [
    #               'member'
    #             ],
    #             regions: [
    #               'member'
    #             ],
    #             target_location_max_concurrency: 'TargetLocationMaxConcurrency',
    #             target_location_max_errors: 'TargetLocationMaxErrors',
    #             execution_role_name: 'ExecutionRoleName'
    #           }
    #         ],
    #         schedule_offset: 1,
    #         target_maps: [
    #           {
    #             'key' => [
    #               'member'
    #             ]
    #           }
    #         ]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAssociationBatchOutput
    #   resp.data.successful #=> Array<AssociationDescription>
    #   resp.data.successful[0] #=> Types::AssociationDescription
    #   resp.data.successful[0].name #=> String
    #   resp.data.successful[0].instance_id #=> String
    #   resp.data.successful[0].association_version #=> String
    #   resp.data.successful[0].date #=> Time
    #   resp.data.successful[0].last_update_association_date #=> Time
    #   resp.data.successful[0].status #=> Types::AssociationStatus
    #   resp.data.successful[0].status.date #=> Time
    #   resp.data.successful[0].status.name #=> String, one of ["Pending", "Success", "Failed"]
    #   resp.data.successful[0].status.message #=> String
    #   resp.data.successful[0].status.additional_info #=> String
    #   resp.data.successful[0].overview #=> Types::AssociationOverview
    #   resp.data.successful[0].overview.status #=> String
    #   resp.data.successful[0].overview.detailed_status #=> String
    #   resp.data.successful[0].overview.association_status_aggregated_count #=> Hash<String, Integer>
    #   resp.data.successful[0].overview.association_status_aggregated_count['key'] #=> Integer
    #   resp.data.successful[0].document_version #=> String
    #   resp.data.successful[0].automation_target_parameter_name #=> String
    #   resp.data.successful[0].parameters #=> Hash<String, Array<String>>
    #   resp.data.successful[0].parameters['key'] #=> Array<String>
    #   resp.data.successful[0].parameters['key'][0] #=> String
    #   resp.data.successful[0].association_id #=> String
    #   resp.data.successful[0].targets #=> Array<Target>
    #   resp.data.successful[0].targets[0] #=> Types::Target
    #   resp.data.successful[0].targets[0].key #=> String
    #   resp.data.successful[0].targets[0].values #=> Array<String>
    #   resp.data.successful[0].targets[0].values[0] #=> String
    #   resp.data.successful[0].schedule_expression #=> String
    #   resp.data.successful[0].output_location #=> Types::InstanceAssociationOutputLocation
    #   resp.data.successful[0].output_location.s3_location #=> Types::S3OutputLocation
    #   resp.data.successful[0].output_location.s3_location.output_s3_region #=> String
    #   resp.data.successful[0].output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.data.successful[0].output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.data.successful[0].last_execution_date #=> Time
    #   resp.data.successful[0].last_successful_execution_date #=> Time
    #   resp.data.successful[0].association_name #=> String
    #   resp.data.successful[0].max_errors #=> String
    #   resp.data.successful[0].max_concurrency #=> String
    #   resp.data.successful[0].compliance_severity #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"]
    #   resp.data.successful[0].sync_compliance #=> String, one of ["AUTO", "MANUAL"]
    #   resp.data.successful[0].apply_only_at_cron_interval #=> Boolean
    #   resp.data.successful[0].calendar_names #=> Array<String>
    #   resp.data.successful[0].calendar_names[0] #=> String
    #   resp.data.successful[0].target_locations #=> Array<TargetLocation>
    #   resp.data.successful[0].target_locations[0] #=> Types::TargetLocation
    #   resp.data.successful[0].target_locations[0].accounts #=> Array<String>
    #   resp.data.successful[0].target_locations[0].accounts[0] #=> String
    #   resp.data.successful[0].target_locations[0].regions #=> Array<String>
    #   resp.data.successful[0].target_locations[0].regions[0] #=> String
    #   resp.data.successful[0].target_locations[0].target_location_max_concurrency #=> String
    #   resp.data.successful[0].target_locations[0].target_location_max_errors #=> String
    #   resp.data.successful[0].target_locations[0].execution_role_name #=> String
    #   resp.data.successful[0].schedule_offset #=> Integer
    #   resp.data.successful[0].target_maps #=> Array<Hash<String, Array<String>>>
    #   resp.data.successful[0].target_maps[0] #=> Hash<String, Array<String>>
    #   resp.data.successful[0].target_maps[0]['key'] #=> Array<String>
    #   resp.data.successful[0].target_maps[0]['key'][0] #=> String
    #   resp.data.failed #=> Array<FailedCreateAssociation>
    #   resp.data.failed[0] #=> Types::FailedCreateAssociation
    #   resp.data.failed[0].entry #=> Types::CreateAssociationBatchRequestEntry
    #   resp.data.failed[0].entry.name #=> String
    #   resp.data.failed[0].entry.instance_id #=> String
    #   resp.data.failed[0].entry.parameters #=> Hash<String, Array<String>>
    #   resp.data.failed[0].entry.automation_target_parameter_name #=> String
    #   resp.data.failed[0].entry.document_version #=> String
    #   resp.data.failed[0].entry.targets #=> Array<Target>
    #   resp.data.failed[0].entry.schedule_expression #=> String
    #   resp.data.failed[0].entry.output_location #=> Types::InstanceAssociationOutputLocation
    #   resp.data.failed[0].entry.association_name #=> String
    #   resp.data.failed[0].entry.max_errors #=> String
    #   resp.data.failed[0].entry.max_concurrency #=> String
    #   resp.data.failed[0].entry.compliance_severity #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"]
    #   resp.data.failed[0].entry.sync_compliance #=> String, one of ["AUTO", "MANUAL"]
    #   resp.data.failed[0].entry.apply_only_at_cron_interval #=> Boolean
    #   resp.data.failed[0].entry.calendar_names #=> Array<String>
    #   resp.data.failed[0].entry.target_locations #=> Array<TargetLocation>
    #   resp.data.failed[0].entry.schedule_offset #=> Integer
    #   resp.data.failed[0].entry.target_maps #=> Array<Hash<String, Array<String>>>
    #   resp.data.failed[0].message #=> String
    #   resp.data.failed[0].fault #=> String, one of ["Client", "Server", "Unknown"]
    #
    def create_association_batch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAssociationBatchInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAssociationBatchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAssociationBatch
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTarget, Errors::UnsupportedPlatformType, Errors::DuplicateInstanceId, Errors::InternalServerError, Errors::AssociationLimitExceeded, Errors::InvalidSchedule, Errors::InvalidDocumentVersion, Errors::InvalidTargetMaps, Errors::InvalidInstanceId, Errors::InvalidDocument, Errors::InvalidParameters, Errors::InvalidOutputLocation]),
        data_parser: Parsers::CreateAssociationBatch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAssociationBatch,
        stubs: @stubs,
        params_class: Params::CreateAssociationBatchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_association_batch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Amazon Web Services Systems Manager (SSM document). An SSM document defines the actions that Systems Manager performs
    #    on your managed nodes. For more information about SSM documents, including information about
    #    supported schemas, features, and syntax, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-ssm-docs.html">Amazon Web Services Systems Manager Documents</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDocumentInput}.
    #
    # @option params [String] :content
    #   <p>The content for the new SSM document in JSON or YAML format. We recommend storing the
    #      contents for your new document in an external JSON or YAML file and referencing the file in a
    #      command.</p>
    #            <p>For examples, see the following topics in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-api.html">Create an SSM document (Amazon Web Services API)</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-cli.html">Create an SSM document (Amazon Web Services CLI)</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-api.html">Create an SSM document (API)</a>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<DocumentRequires>] :requires
    #   <p>A list of SSM documents required by a document. This parameter is used exclusively by
    #      AppConfig. When a user creates an AppConfig configuration in an SSM document, the user must also
    #      specify a required document for validation purposes. In this case, an
    #       <code>ApplicationConfiguration</code> document requires an
    #       <code>ApplicationConfigurationSchema</code> document for validation purposes. For more
    #      information, see <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/what-is-appconfig.html">What is AppConfig?</a> in the
    #       <i>AppConfig User Guide</i>.</p>
    #
    # @option params [Array<AttachmentsSource>] :attachments
    #   <p>A list of key-value pairs that describe attachments to a version of a document.</p>
    #
    # @option params [String] :name
    #   <p>A name for the SSM document.</p>
    #            <important>
    #               <p>You can't use the following strings as document name prefixes. These are reserved by Amazon Web Services
    #       for use as document name prefixes:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>aws-</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>amazon</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>amzn</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </important>
    #
    # @option params [String] :display_name
    #   <p>An optional field where you can specify a friendly name for the SSM document. This value can
    #      differ for each version of the document. You can update this value at a later time using the
    #       <a>UpdateDocument</a> operation.</p>
    #
    # @option params [String] :version_name
    #   <p>An optional field specifying the version of the artifact you are creating with the document.
    #      For example, "Release 12, Update 6". This value is unique across all versions of a document, and
    #      can't be changed.</p>
    #
    # @option params [String] :document_type
    #   <p>The type of document to create.</p>
    #            <note>
    #               <p>The <code>DeploymentStrategy</code> document type is an internal-use-only document type
    #       reserved for AppConfig.</p>
    #            </note>
    #
    # @option params [String] :document_format
    #   <p>Specify the document format for the request. The document format can be JSON, YAML, or TEXT.
    #      JSON is the default format.</p>
    #
    # @option params [String] :target_type
    #   <p>Specify a target type to define the kinds of resources the document can run on. For example,
    #      to run a document on EC2 instances, specify the following value:
    #      <code>/AWS::EC2::Instance</code>. If you specify a value of '/' the document can run on all types
    #      of resources. If you don't specify a value, the document can't run on any resources. For a list
    #      of valid resource types, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services resource and
    #       property types reference</a> in the <i>CloudFormation User Guide</i>. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
    #      different ways, such as by purpose, owner, or environment. For example, you might want to tag an
    #      SSM document to identify the types of targets or the environment where it will run. In this case,
    #      you could specify the following key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=Environment,Value=Production</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>To add tags to an existing SSM document, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </note>
    #
    # @return [Types::CreateDocumentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_document(
    #     content: 'Content', # required
    #     requires: [
    #       {
    #         name: 'Name', # required
    #         version: 'Version'
    #       }
    #     ],
    #     attachments: [
    #       {
    #         key: 'SourceUrl', # accepts ["SourceUrl", "S3FileUrl", "AttachmentReference"]
    #         values: [
    #           'member'
    #         ],
    #         name: 'Name'
    #       }
    #     ],
    #     name: 'Name', # required
    #     display_name: 'DisplayName',
    #     version_name: 'VersionName',
    #     document_type: 'Command', # accepts ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate"]
    #     document_format: 'YAML', # accepts ["YAML", "JSON", "TEXT"]
    #     target_type: 'TargetType',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDocumentOutput
    #   resp.data.document_description #=> Types::DocumentDescription
    #   resp.data.document_description.sha1 #=> String
    #   resp.data.document_description.member_hash #=> String
    #   resp.data.document_description.hash_type #=> String, one of ["Sha256", "Sha1"]
    #   resp.data.document_description.name #=> String
    #   resp.data.document_description.display_name #=> String
    #   resp.data.document_description.version_name #=> String
    #   resp.data.document_description.owner #=> String
    #   resp.data.document_description.created_date #=> Time
    #   resp.data.document_description.status #=> String, one of ["Creating", "Active", "Updating", "Deleting", "Failed"]
    #   resp.data.document_description.status_information #=> String
    #   resp.data.document_description.document_version #=> String
    #   resp.data.document_description.description #=> String
    #   resp.data.document_description.parameters #=> Array<DocumentParameter>
    #   resp.data.document_description.parameters[0] #=> Types::DocumentParameter
    #   resp.data.document_description.parameters[0].name #=> String
    #   resp.data.document_description.parameters[0].type #=> String, one of ["String", "StringList"]
    #   resp.data.document_description.parameters[0].description #=> String
    #   resp.data.document_description.parameters[0].default_value #=> String
    #   resp.data.document_description.platform_types #=> Array<String>
    #   resp.data.document_description.platform_types[0] #=> String, one of ["Windows", "Linux", "MacOS"]
    #   resp.data.document_description.document_type #=> String, one of ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate"]
    #   resp.data.document_description.schema_version #=> String
    #   resp.data.document_description.latest_version #=> String
    #   resp.data.document_description.default_version #=> String
    #   resp.data.document_description.document_format #=> String, one of ["YAML", "JSON", "TEXT"]
    #   resp.data.document_description.target_type #=> String
    #   resp.data.document_description.tags #=> Array<Tag>
    #   resp.data.document_description.tags[0] #=> Types::Tag
    #   resp.data.document_description.tags[0].key #=> String
    #   resp.data.document_description.tags[0].value #=> String
    #   resp.data.document_description.attachments_information #=> Array<AttachmentInformation>
    #   resp.data.document_description.attachments_information[0] #=> Types::AttachmentInformation
    #   resp.data.document_description.attachments_information[0].name #=> String
    #   resp.data.document_description.requires #=> Array<DocumentRequires>
    #   resp.data.document_description.requires[0] #=> Types::DocumentRequires
    #   resp.data.document_description.requires[0].name #=> String
    #   resp.data.document_description.requires[0].version #=> String
    #   resp.data.document_description.author #=> String
    #   resp.data.document_description.review_information #=> Array<ReviewInformation>
    #   resp.data.document_description.review_information[0] #=> Types::ReviewInformation
    #   resp.data.document_description.review_information[0].reviewed_time #=> Time
    #   resp.data.document_description.review_information[0].status #=> String, one of ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #   resp.data.document_description.review_information[0].reviewer #=> String
    #   resp.data.document_description.approved_version #=> String
    #   resp.data.document_description.pending_review_version #=> String
    #   resp.data.document_description.review_status #=> String, one of ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #   resp.data.document_description.category #=> Array<String>
    #   resp.data.document_description.category[0] #=> String
    #   resp.data.document_description.category_enum #=> Array<String>
    #   resp.data.document_description.category_enum[0] #=> String
    #
    def create_document(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDocumentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDocumentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDocument
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DocumentLimitExceeded, Errors::InvalidDocumentContent, Errors::MaxDocumentSizeExceeded, Errors::InternalServerError, Errors::InvalidDocumentSchemaVersion, Errors::DocumentAlreadyExists]),
        data_parser: Parsers::CreateDocument
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDocument,
        stubs: @stubs,
        params_class: Params::CreateDocumentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_document
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new maintenance window.</p>
    #          <note>
    #             <p>The value you specify for <code>Duration</code> determines the specific end time for the
    #     maintenance window based on the time it begins. No maintenance window tasks are permitted to
    #     start after the resulting endtime minus the number of hours you specify for <code>Cutoff</code>.
    #     For example, if the maintenance window starts at 3 PM, the duration is three hours, and the
    #     value you specify for <code>Cutoff</code> is one hour, no maintenance window tasks can start
    #     after 5 PM.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateMaintenanceWindowInput}.
    #
    # @option params [String] :name
    #   <p>The name of the maintenance window.</p>
    #
    # @option params [String] :description
    #   <p>An optional description for the maintenance window. We recommend specifying a description to
    #      help you organize your maintenance windows. </p>
    #
    # @option params [String] :start_date
    #   <p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
    #      become active. <code>StartDate</code> allows you to delay activation of the maintenance window
    #      until the specified future date.</p>
    #
    # @option params [String] :end_date
    #   <p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
    #      become inactive. <code>EndDate</code> allows you to set a date and time in the future when the
    #      maintenance window will no longer run.</p>
    #
    # @option params [String] :schedule
    #   <p>The schedule of the maintenance window in the form of a cron or rate expression.</p>
    #
    # @option params [String] :schedule_timezone
    #   <p>The time zone that the scheduled maintenance window executions are based on, in Internet
    #      Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or
    #      "Asia/Seoul". For more information, see the <a href="https://www.iana.org/time-zones">Time
    #       Zone Database</a> on the IANA website.</p>
    #
    # @option params [Integer] :schedule_offset
    #   <p>The number of days to wait after the date and time specified by a cron expression before
    #      running the maintenance window.</p>
    #            <p>For example, the following cron expression schedules a maintenance window to run on the
    #      third Tuesday of every month at 11:30 PM.</p>
    #            <p>
    #               <code>cron(30 23 ? * TUE#3 *)</code>
    #            </p>
    #            <p>If the schedule offset is <code>2</code>, the maintenance window won't run until two days
    #      later.</p>
    #
    # @option params [Integer] :duration
    #   <p>The duration of the maintenance window in hours.</p>
    #
    # @option params [Integer] :cutoff
    #   <p>The number of hours before the end of the maintenance window that Amazon Web Services Systems Manager stops scheduling
    #      new tasks for execution.</p>
    #
    # @option params [Boolean] :allow_unassociated_targets
    #   <p>Enables a maintenance window task to run on managed nodes, even if you haven't registered
    #      those nodes as targets. If enabled, then you must specify the unregistered managed nodes (by node
    #      ID) when you register a task with the maintenance window.</p>
    #            <p>If you don't enable this option, then you must specify previously-registered targets when
    #      you register a task with the maintenance window.</p>
    #
    # @option params [String] :client_token
    #   <p>User-provided idempotency token.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
    #      different ways, such as by purpose, owner, or environment. For example, you might want to tag a
    #      maintenance window to identify the type of tasks it will run, the types of targets, and the
    #      environment it will run in. In this case, you could specify the following key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=TaskType,Value=AgentUpdate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=Environment,Value=Production</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>To add tags to an existing maintenance window, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </note>
    #
    # @return [Types::CreateMaintenanceWindowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_maintenance_window(
    #     name: 'Name', # required
    #     description: 'Description',
    #     start_date: 'StartDate',
    #     end_date: 'EndDate',
    #     schedule: 'Schedule', # required
    #     schedule_timezone: 'ScheduleTimezone',
    #     schedule_offset: 1,
    #     duration: 1, # required
    #     cutoff: 1, # required
    #     allow_unassociated_targets: false, # required
    #     client_token: 'ClientToken',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMaintenanceWindowOutput
    #   resp.data.window_id #=> String
    #
    def create_maintenance_window(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMaintenanceWindowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMaintenanceWindowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMaintenanceWindow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatch, Errors::ResourceLimitExceededException, Errors::InternalServerError]),
        data_parser: Parsers::CreateMaintenanceWindow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMaintenanceWindow,
        stubs: @stubs,
        params_class: Params::CreateMaintenanceWindowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_maintenance_window
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new OpsItem. You must have permission in Identity and Access Management (IAM) to create a new OpsItem. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html">Getting started with
    #     OpsCenter</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #          <p>Operations engineers and IT professionals use Amazon Web Services Systems Manager OpsCenter to view, investigate, and
    #    remediate operational issues impacting the performance and health of their Amazon Web Services resources. For
    #    more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html">Amazon Web Services Systems Manager OpsCenter</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateOpsItemInput}.
    #
    # @option params [String] :description
    #   <p>Information about the OpsItem. </p>
    #
    # @option params [String] :ops_item_type
    #   <p>The type of OpsItem to create. Currently, the only valid values are
    #       <code>/aws/changerequest</code> and <code>/aws/issue</code>.</p>
    #
    # @option params [Hash<String, OpsItemDataValue>] :operational_data
    #   <p>Operational data is custom data that provides useful reference details about the OpsItem.
    #      For example, you can specify log files, error strings, license keys, troubleshooting tips, or
    #      other relevant data. You enter operational data as key-value pairs. The key has a maximum length
    #      of 128 characters. The value has a maximum size of 20 KB.</p>
    #            <important>
    #               <p>Operational data keys <i>can't</i> begin with the following:
    #        <code>amazon</code>, <code>aws</code>, <code>amzn</code>, <code>ssm</code>,
    #        <code>/amazon</code>, <code>/aws</code>, <code>/amzn</code>, <code>/ssm</code>.</p>
    #            </important>
    #            <p>You can choose to make the data searchable by other users in the account or you can restrict
    #      search access. Searchable data means that all users with access to the OpsItem Overview page (as
    #      provided by the <a>DescribeOpsItems</a> API operation) can view and search on the
    #      specified data. Operational data that isn't searchable is only viewable by users who have access
    #      to the OpsItem (as provided by the <a>GetOpsItem</a> API operation).</p>
    #            <p>Use the <code>/aws/resources</code> key in OperationalData to specify a related resource in
    #      the request. Use the <code>/aws/automations</code> key in OperationalData to associate an
    #      Automation runbook with the OpsItem. To view Amazon Web Services CLI example commands that use these keys, see
    #       <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems">Creating OpsItems manually</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [Array<OpsItemNotification>] :notifications
    #   <p>The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this
    #      OpsItem is edited or changed.</p>
    #
    # @option params [Integer] :priority
    #   <p>The importance of this OpsItem in relation to other OpsItems in the system.</p>
    #
    # @option params [Array<RelatedOpsItem>] :related_ops_items
    #   <p>One or more OpsItems that share something in common with the current OpsItems. For example,
    #      related OpsItems can include OpsItems with similar error messages, impacted resources, or
    #      statuses for the impacted resource.</p>
    #
    # @option params [String] :source
    #   <p>The origin of the OpsItem, such as Amazon EC2 or Systems Manager.</p>
    #            <note>
    #               <p>The source name can't contain the following strings: <code>aws</code>, <code>amazon</code>,
    #       and <code>amzn</code>. </p>
    #            </note>
    #
    # @option params [String] :title
    #   <p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. You can restrict access to OpsItems by
    #      using an inline IAM policy that specifies tags. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html#OpsCenter-getting-started-user-permissions">Getting started with OpsCenter</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <p>Tags use a key-value pair. For example:</p>
    #            <p>
    #               <code>Key=Department,Value=Finance</code>
    #            </p>
    #            <important>
    #               <p>To add tags to a new OpsItem, a user must have IAM permissions for both the
    #        <code>ssm:CreateOpsItems</code> operation and the <code>ssm:AddTagsToResource</code> operation.
    #       To add tags to an existing OpsItem, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </important>
    #
    # @option params [String] :category
    #   <p>Specify a category to assign to an OpsItem. </p>
    #
    # @option params [String] :severity
    #   <p>Specify a severity to assign to an OpsItem.</p>
    #
    # @option params [Time] :actual_start_time
    #   <p>The time a runbook workflow started. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    #
    # @option params [Time] :actual_end_time
    #   <p>The time a runbook workflow ended. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    #
    # @option params [Time] :planned_start_time
    #   <p>The time specified in a change request for a runbook workflow to start. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    #
    # @option params [Time] :planned_end_time
    #   <p>The time specified in a change request for a runbook workflow to end. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    #
    # @return [Types::CreateOpsItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ops_item(
    #     description: 'Description', # required
    #     ops_item_type: 'OpsItemType',
    #     operational_data: {
    #       'key' => {
    #         value: 'Value',
    #         type: 'SearchableString' # accepts ["SearchableString", "String"]
    #       }
    #     },
    #     notifications: [
    #       {
    #         arn: 'Arn'
    #       }
    #     ],
    #     priority: 1,
    #     related_ops_items: [
    #       {
    #         ops_item_id: 'OpsItemId' # required
    #       }
    #     ],
    #     source: 'Source', # required
    #     title: 'Title', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     category: 'Category',
    #     severity: 'Severity',
    #     actual_start_time: Time.now,
    #     actual_end_time: Time.now,
    #     planned_start_time: Time.now,
    #     planned_end_time: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateOpsItemOutput
    #   resp.data.ops_item_id #=> String
    #
    def create_ops_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateOpsItemInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateOpsItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateOpsItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OpsItemAlreadyExistsException, Errors::OpsItemLimitExceededException, Errors::OpsItemInvalidParameterException, Errors::InternalServerError]),
        data_parser: Parsers::CreateOpsItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateOpsItem,
        stubs: @stubs,
        params_class: Params::CreateOpsItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_ops_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>If you create a new application in Application Manager, Amazon Web Services Systems Manager calls this API operation to specify
    #    information about the new application, including the application type.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateOpsMetadataInput}.
    #
    # @option params [String] :resource_id
    #   <p>A resource ID for a new Application Manager application.</p>
    #
    # @option params [Hash<String, MetadataValue>] :metadata
    #   <p>Metadata for a new Application Manager application. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. You can specify a maximum of five tags for
    #      an OpsMetadata object. Tags enable you to categorize a resource in different ways, such as by
    #      purpose, owner, or environment. For example, you might want to tag an OpsMetadata object to
    #      identify an environment or target Amazon Web Services Region. In this case, you could specify the following
    #      key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=Environment,Value=Production</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=Region,Value=us-east-2</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateOpsMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ops_metadata(
    #     resource_id: 'ResourceId', # required
    #     metadata: {
    #       'key' => {
    #         value: 'Value'
    #       }
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateOpsMetadataOutput
    #   resp.data.ops_metadata_arn #=> String
    #
    def create_ops_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateOpsMetadataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateOpsMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateOpsMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OpsMetadataAlreadyExistsException, Errors::OpsMetadataInvalidArgumentException, Errors::OpsMetadataLimitExceededException, Errors::InternalServerError, Errors::OpsMetadataTooManyUpdatesException]),
        data_parser: Parsers::CreateOpsMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateOpsMetadata,
        stubs: @stubs,
        params_class: Params::CreateOpsMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_ops_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a patch baseline.</p>
    #          <note>
    #             <p>For information about valid key-value pairs in <code>PatchFilters</code> for each supported
    #     operating system type, see <a>PatchFilter</a>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreatePatchBaselineInput}.
    #
    # @option params [String] :operating_system
    #   <p>Defines the operating system the patch baseline applies to. The default value is
    #       <code>WINDOWS</code>.</p>
    #
    # @option params [String] :name
    #   <p>The name of the patch baseline.</p>
    #
    # @option params [PatchFilterGroup] :global_filters
    #   <p>A set of global filters used to include patches in the baseline.</p>
    #
    # @option params [PatchRuleGroup] :approval_rules
    #   <p>A set of rules used to include patches in the baseline.</p>
    #
    # @option params [Array<String>] :approved_patches
    #   <p>A list of explicitly approved patches for the baseline.</p>
    #            <p>For information about accepted formats for lists of approved patches and rejected patches,
    #                           see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">About
    #                           package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [String] :approved_patches_compliance_level
    #   <p>Defines the compliance level for approved patches. When an approved patch is reported as
    #      missing, this value describes the severity of the compliance violation. The default value is
    #       <code>UNSPECIFIED</code>.</p>
    #
    # @option params [Boolean] :approved_patches_enable_non_security
    #   <p>Indicates whether the list of approved patches includes non-security updates that should be
    #      applied to the managed nodes. The default value is <code>false</code>. Applies to Linux managed
    #      nodes only.</p>
    #
    # @option params [Array<String>] :rejected_patches
    #   <p>A list of explicitly rejected patches for the baseline.</p>
    #            <p>For information about accepted formats for lists of approved patches and rejected patches,
    #                           see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">About
    #                           package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [String] :rejected_patches_action
    #   <p>The action for Patch Manager to take on patches included in the
    #       <code>RejectedPackages</code> list.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ALLOW_AS_DEPENDENCY</code>
    #                     </b>: A package in the
    #         <code>Rejected</code> patches list is installed only if it is a dependency of another package.
    #        It is considered compliant with the patch baseline, and its status is reported as
    #         <code>InstalledOther</code>. This is the default action if no option is specified.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BLOCK</code>
    #                     </b>: Packages in the
    #         <code>RejectedPatches</code> list, and packages that include them as dependencies, aren't
    #        installed under any circumstances. If a package was installed before it was added to the
    #        Rejected patches list, it is considered non-compliant with the patch baseline, and its status
    #        is reported as <code>InstalledRejected</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :description
    #   <p>A description of the patch baseline.</p>
    #
    # @option params [Array<PatchSource>] :sources
    #   <p>Information about the patches to use to update the managed nodes, including target operating
    #      systems and source repositories. Applies to Linux managed nodes only.</p>
    #
    # @option params [String] :client_token
    #   <p>User-provided idempotency token.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
    #      different ways, such as by purpose, owner, or environment. For example, you might want to tag a
    #      patch baseline to identify the severity level of patches it specifies and the operating system
    #      family it applies to. In this case, you could specify the following key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=PatchSeverity,Value=Critical</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>To add tags to an existing patch baseline, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </note>
    #
    # @return [Types::CreatePatchBaselineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_patch_baseline(
    #     operating_system: 'WINDOWS', # accepts ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #     name: 'Name', # required
    #     global_filters: {
    #       patch_filters: [
    #         {
    #           key: 'ARCH', # required - accepts ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"]
    #           values: [
    #             'member'
    #           ] # required
    #         }
    #       ] # required
    #     },
    #     approval_rules: {
    #       patch_rules: [
    #         {
    #           compliance_level: 'CRITICAL', # accepts ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #           approve_after_days: 1,
    #           approve_until_date: 'ApproveUntilDate',
    #           enable_non_security: false
    #         }
    #       ] # required
    #     },
    #     approved_patches: [
    #       'member'
    #     ],
    #     approved_patches_compliance_level: 'CRITICAL', # accepts ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #     approved_patches_enable_non_security: false,
    #     rejected_patches_action: 'ALLOW_AS_DEPENDENCY', # accepts ["ALLOW_AS_DEPENDENCY", "BLOCK"]
    #     description: 'Description',
    #     sources: [
    #       {
    #         name: 'Name', # required
    #         products: [
    #           'member'
    #         ], # required
    #         configuration: 'Configuration' # required
    #       }
    #     ],
    #     client_token: 'ClientToken',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePatchBaselineOutput
    #   resp.data.baseline_id #=> String
    #
    def create_patch_baseline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePatchBaselineInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePatchBaselineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePatchBaseline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatch, Errors::ResourceLimitExceededException, Errors::InternalServerError]),
        data_parser: Parsers::CreatePatchBaseline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePatchBaseline,
        stubs: @stubs,
        params_class: Params::CreatePatchBaselineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_patch_baseline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A resource data sync helps you view data from multiple sources in a single location.
    #    Amazon Web Services Systems Manager offers two types of resource data sync: <code>SyncToDestination</code> and
    #     <code>SyncFromSource</code>.</p>
    #          <p>You can configure Systems Manager Inventory to use the <code>SyncToDestination</code> type to
    #    synchronize Inventory data from multiple Amazon Web Services Regions to a single Amazon Simple Storage Service (Amazon S3) bucket. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-datasync.html">Configuring resource data
    #     sync for Inventory</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #          <p>You can configure Systems Manager Explorer to use the <code>SyncFromSource</code> type to synchronize
    #    operational work items (OpsItems) and operational data (OpsData) from multiple Amazon Web Services Regions to a
    #    single Amazon S3 bucket. This type can synchronize OpsItems and OpsData from multiple
    #    Amazon Web Services accounts and Amazon Web Services Regions or <code>EntireOrganization</code> by using Organizations. For more
    #    information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resource-data-sync.html">Setting up Systems Manager
    #     Explorer to display data from multiple accounts and Regions</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #          <p>A resource data sync is an asynchronous operation that returns immediately. After a
    #    successful initial sync is completed, the system continuously syncs data. To check the status of
    #    a sync, use the <a>ListResourceDataSync</a>.</p>
    #          <note>
    #             <p>By default, data isn't encrypted in Amazon S3. We strongly recommend that you
    #     enable encryption in Amazon S3 to ensure secure data storage. We also recommend that you
    #     secure access to the Amazon S3 bucket by creating a restrictive bucket policy. </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateResourceDataSyncInput}.
    #
    # @option params [String] :sync_name
    #   <p>A name for the configuration.</p>
    #
    # @option params [ResourceDataSyncS3Destination] :s3_destination
    #   <p>Amazon S3 configuration details for the sync. This parameter is required if the
    #       <code>SyncType</code> value is SyncToDestination.</p>
    #
    # @option params [String] :sync_type
    #   <p>Specify <code>SyncToDestination</code> to create a resource data sync that synchronizes data
    #      to an S3 bucket for Inventory. If you specify <code>SyncToDestination</code>, you must provide a
    #      value for <code>S3Destination</code>. Specify <code>SyncFromSource</code> to synchronize data
    #      from a single account and multiple Regions, or multiple Amazon Web Services accounts and Amazon Web Services Regions, as
    #      listed in Organizations for Explorer. If you specify <code>SyncFromSource</code>, you must provide a
    #      value for <code>SyncSource</code>. The default value is <code>SyncToDestination</code>.</p>
    #
    # @option params [ResourceDataSyncSource] :sync_source
    #   <p>Specify information about the data sources to synchronize. This parameter is required if the
    #       <code>SyncType</code> value is SyncFromSource.</p>
    #
    # @return [Types::CreateResourceDataSyncOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_data_sync(
    #     sync_name: 'SyncName', # required
    #     s3_destination: {
    #       bucket_name: 'BucketName', # required
    #       prefix: 'Prefix',
    #       sync_format: 'JsonSerDe', # required - accepts ["JsonSerDe"]
    #       region: 'Region', # required
    #       awskms_key_arn: 'AWSKMSKeyARN',
    #       destination_data_sharing: {
    #         destination_data_sharing_type: 'DestinationDataSharingType'
    #       }
    #     },
    #     sync_type: 'SyncType',
    #     sync_source: {
    #       source_type: 'SourceType', # required
    #       aws_organizations_source: {
    #         organization_source_type: 'OrganizationSourceType', # required
    #         organizational_units: [
    #           {
    #             organizational_unit_id: 'OrganizationalUnitId'
    #           }
    #         ]
    #       },
    #       source_regions: [
    #         'member'
    #       ], # required
    #       include_future_regions: false,
    #       enable_all_ops_data_sources: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResourceDataSyncOutput
    #
    def create_resource_data_sync(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResourceDataSyncInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResourceDataSyncInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResourceDataSync
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceDataSyncInvalidConfigurationException, Errors::ResourceDataSyncAlreadyExistsException, Errors::ResourceDataSyncCountExceededException, Errors::InternalServerError]),
        data_parser: Parsers::CreateResourceDataSync
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResourceDataSync,
        stubs: @stubs,
        params_class: Params::CreateResourceDataSyncOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resource_data_sync
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an activation. You aren't required to delete an activation. If you delete an
    #    activation, you can no longer use it to register additional managed nodes. Deleting an activation
    #    doesn't de-register managed nodes. You must manually de-register managed nodes.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteActivationInput}.
    #
    # @option params [String] :activation_id
    #   <p>The ID of the activation that you want to delete.</p>
    #
    # @return [Types::DeleteActivationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_activation(
    #     activation_id: 'ActivationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteActivationOutput
    #
    def delete_activation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteActivationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteActivationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteActivation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidActivationId, Errors::TooManyUpdates, Errors::InvalidActivation, Errors::InternalServerError]),
        data_parser: Parsers::DeleteActivation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteActivation,
        stubs: @stubs,
        params_class: Params::DeleteActivationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_activation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified Amazon Web Services Systems Manager document (SSM document) from the specified managed
    #    node. If you created the association by using the <code>Targets</code> parameter, then you must
    #    delete the association by using the association ID.</p>
    #          <p>When you disassociate a document from a managed node, it doesn't change the configuration of
    #    the node. To change the configuration state of a managed node after you disassociate a document,
    #    you must create a new document with the desired configuration and associate it with the
    #    node.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAssociationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the SSM document.</p>
    #
    # @option params [String] :instance_id
    #   <p>The managed node ID.</p>
    #            <note>
    #               <p>
    #                  <code>InstanceId</code> has been deprecated. To specify a managed node ID for an
    #       association, use the <code>Targets</code> parameter. Requests that include the parameter
    #        <code>InstanceID</code> with Systems Manager documents (SSM documents) that use schema version 2.0 or
    #       later will fail. In addition, if you use the parameter <code>InstanceId</code>, you can't use
    #       the parameters <code>AssociationName</code>, <code>DocumentVersion</code>,
    #        <code>MaxErrors</code>, <code>MaxConcurrency</code>, <code>OutputLocation</code>, or
    #        <code>ScheduleExpression</code>. To use these parameters, you must use the <code>Targets</code>
    #       parameter.</p>
    #            </note>
    #
    # @option params [String] :association_id
    #   <p>The association ID that you want to delete.</p>
    #
    # @return [Types::DeleteAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_association(
    #     name: 'Name',
    #     instance_id: 'InstanceId',
    #     association_id: 'AssociationId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAssociationOutput
    #
    def delete_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAssociationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAssociation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyUpdates, Errors::InvalidInstanceId, Errors::AssociationDoesNotExist, Errors::InvalidDocument, Errors::InternalServerError]),
        data_parser: Parsers::DeleteAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAssociation,
        stubs: @stubs,
        params_class: Params::DeleteAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the Amazon Web Services Systems Manager document (SSM document) and all managed node associations to the
    #    document.</p>
    #          <p>Before you delete the document, we recommend that you use <a>DeleteAssociation</a> to disassociate all managed nodes that are associated with the document.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDocumentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the document.</p>
    #
    # @option params [String] :document_version
    #   <p>The version of the document that you want to delete. If not provided, all versions of the
    #      document are deleted.</p>
    #
    # @option params [String] :version_name
    #   <p>The version name of the document that you want to delete. If not provided, all versions of
    #      the document are deleted.</p>
    #
    # @option params [Boolean] :force
    #   <p>Some SSM document types require that you specify a <code>Force</code> flag before you can
    #      delete the document. For example, you must specify a <code>Force</code> flag to delete a document
    #      of type <code>ApplicationConfigurationSchema</code>. You can restrict access to the
    #       <code>Force</code> flag in an Identity and Access Management (IAM) policy.</p>
    #
    # @return [Types::DeleteDocumentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_document(
    #     name: 'Name', # required
    #     document_version: 'DocumentVersion',
    #     version_name: 'VersionName',
    #     force: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDocumentOutput
    #
    def delete_document(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDocumentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDocumentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDocument
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AssociatedInstances, Errors::InvalidDocumentOperation, Errors::InvalidDocument, Errors::InternalServerError]),
        data_parser: Parsers::DeleteDocument
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDocument,
        stubs: @stubs,
        params_class: Params::DeleteDocumentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_document
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a custom inventory type or the data associated with a custom Inventory type. Deleting
    #    a custom inventory type is also referred to as deleting a custom inventory schema.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInventoryInput}.
    #
    # @option params [String] :type_name
    #   <p>The name of the custom inventory type for which you want to delete either all previously
    #      collected data or the inventory type itself. </p>
    #
    # @option params [String] :schema_delete_option
    #   <p>Use the <code>SchemaDeleteOption</code> to delete a custom inventory type (schema). If you
    #      don't choose this option, the system only deletes existing inventory data associated with the
    #      custom inventory type. Choose one of the following options:</p>
    #            <p>DisableSchema: If you choose this option, the system ignores all inventory data for the
    #      specified version, and any earlier versions. To enable this schema again, you must call the
    #       <code>PutInventory</code> operation for a version greater than the disabled version.</p>
    #            <p>DeleteSchema: This option deletes the specified custom type from the Inventory service. You
    #      can recreate the schema later, if you want.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Use this option to view a summary of the deletion request without deleting any data or the
    #      data type. This option is useful when you only want to understand what will be deleted. Once you
    #      validate that the data to be deleted is what you intend to delete, you can run the same command
    #      without specifying the <code>DryRun</code> option.</p>
    #
    # @option params [String] :client_token
    #   <p>User-provided idempotency token.</p>
    #
    # @return [Types::DeleteInventoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_inventory(
    #     type_name: 'TypeName', # required
    #     schema_delete_option: 'DisableSchema', # accepts ["DisableSchema", "DeleteSchema"]
    #     dry_run: false,
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInventoryOutput
    #   resp.data.deletion_id #=> String
    #   resp.data.type_name #=> String
    #   resp.data.deletion_summary #=> Types::InventoryDeletionSummary
    #   resp.data.deletion_summary.total_count #=> Integer
    #   resp.data.deletion_summary.remaining_count #=> Integer
    #   resp.data.deletion_summary.summary_items #=> Array<InventoryDeletionSummaryItem>
    #   resp.data.deletion_summary.summary_items[0] #=> Types::InventoryDeletionSummaryItem
    #   resp.data.deletion_summary.summary_items[0].version #=> String
    #   resp.data.deletion_summary.summary_items[0].count #=> Integer
    #   resp.data.deletion_summary.summary_items[0].remaining_count #=> Integer
    #
    def delete_inventory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInventoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInventoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInventory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInventoryRequestException, Errors::InvalidOptionException, Errors::InvalidDeleteInventoryParametersException, Errors::InvalidTypeNameException, Errors::InternalServerError]),
        data_parser: Parsers::DeleteInventory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInventory,
        stubs: @stubs,
        params_class: Params::DeleteInventoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_inventory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a maintenance window.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMaintenanceWindowInput}.
    #
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window to delete.</p>
    #
    # @return [Types::DeleteMaintenanceWindowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_maintenance_window(
    #     window_id: 'WindowId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMaintenanceWindowOutput
    #   resp.data.window_id #=> String
    #
    def delete_maintenance_window(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMaintenanceWindowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMaintenanceWindowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMaintenanceWindow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DeleteMaintenanceWindow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMaintenanceWindow,
        stubs: @stubs,
        params_class: Params::DeleteMaintenanceWindowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_maintenance_window
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete OpsMetadata related to an application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteOpsMetadataInput}.
    #
    # @option params [String] :ops_metadata_arn
    #   <p>The Amazon Resource Name (ARN) of an OpsMetadata Object to delete.</p>
    #
    # @return [Types::DeleteOpsMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ops_metadata(
    #     ops_metadata_arn: 'OpsMetadataArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteOpsMetadataOutput
    #
    def delete_ops_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteOpsMetadataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteOpsMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteOpsMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OpsMetadataInvalidArgumentException, Errors::OpsMetadataNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::DeleteOpsMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteOpsMetadata,
        stubs: @stubs,
        params_class: Params::DeleteOpsMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_ops_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a parameter from the system. After deleting a parameter, wait for at least 30 seconds
    #    to create a parameter with the same name.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteParameterInput}.
    #
    # @option params [String] :name
    #   <p>The name of the parameter to delete.</p>
    #
    # @return [Types::DeleteParameterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_parameter(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteParameterOutput
    #
    def delete_parameter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteParameterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteParameterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteParameter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ParameterNotFound]),
        data_parser: Parsers::DeleteParameter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteParameter,
        stubs: @stubs,
        params_class: Params::DeleteParameterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_parameter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a list of parameters. After deleting a parameter, wait for at least 30 seconds to
    #    create a parameter with the same name.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteParametersInput}.
    #
    # @option params [Array<String>] :names
    #   <p>The names of the parameters to delete. After deleting a parameter, wait for at least 30
    #      seconds to create a parameter with the same name.</p>
    #
    # @return [Types::DeleteParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_parameters(
    #     names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteParametersOutput
    #   resp.data.deleted_parameters #=> Array<String>
    #   resp.data.deleted_parameters[0] #=> String
    #   resp.data.invalid_parameters #=> Array<String>
    #
    def delete_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteParametersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteParameters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DeleteParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteParameters,
        stubs: @stubs,
        params_class: Params::DeleteParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a patch baseline.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePatchBaselineInput}.
    #
    # @option params [String] :baseline_id
    #   <p>The ID of the patch baseline to delete.</p>
    #
    # @return [Types::DeletePatchBaselineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_patch_baseline(
    #     baseline_id: 'BaselineId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePatchBaselineOutput
    #   resp.data.baseline_id #=> String
    #
    def delete_patch_baseline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePatchBaselineInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePatchBaselineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePatchBaseline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::InternalServerError]),
        data_parser: Parsers::DeletePatchBaseline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePatchBaseline,
        stubs: @stubs,
        params_class: Params::DeletePatchBaselineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_patch_baseline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a resource data sync configuration. After the configuration is deleted, changes to
    #    data on managed nodes are no longer synced to or from the target. Deleting a sync configuration
    #    doesn't delete data.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourceDataSyncInput}.
    #
    # @option params [String] :sync_name
    #   <p>The name of the configuration to delete.</p>
    #
    # @option params [String] :sync_type
    #   <p>Specify the type of resource data sync to delete.</p>
    #
    # @return [Types::DeleteResourceDataSyncOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_data_sync(
    #     sync_name: 'SyncName', # required
    #     sync_type: 'SyncType'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourceDataSyncOutput
    #
    def delete_resource_data_sync(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourceDataSyncInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourceDataSyncInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourceDataSync
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceDataSyncInvalidConfigurationException, Errors::ResourceDataSyncNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::DeleteResourceDataSync
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourceDataSync,
        stubs: @stubs,
        params_class: Params::DeleteResourceDataSyncOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource_data_sync
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the server or virtual machine from the list of registered servers. You can
    #    reregister the node again at any time. If you don't plan to use Run Command on the server, we
    #    suggest uninstalling SSM Agent first.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterManagedInstanceInput}.
    #
    # @option params [String] :instance_id
    #   <p>The ID assigned to the managed node when you registered it using the activation process.
    #     </p>
    #
    # @return [Types::DeregisterManagedInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_managed_instance(
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterManagedInstanceOutput
    #
    def deregister_managed_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterManagedInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterManagedInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterManagedInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInstanceId, Errors::InternalServerError]),
        data_parser: Parsers::DeregisterManagedInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterManagedInstance,
        stubs: @stubs,
        params_class: Params::DeregisterManagedInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_managed_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a patch group from a patch baseline.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterPatchBaselineForPatchGroupInput}.
    #
    # @option params [String] :baseline_id
    #   <p>The ID of the patch baseline to deregister the patch group from.</p>
    #
    # @option params [String] :patch_group
    #   <p>The name of the patch group that should be deregistered from the patch baseline.</p>
    #
    # @return [Types::DeregisterPatchBaselineForPatchGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_patch_baseline_for_patch_group(
    #     baseline_id: 'BaselineId', # required
    #     patch_group: 'PatchGroup' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterPatchBaselineForPatchGroupOutput
    #   resp.data.baseline_id #=> String
    #   resp.data.patch_group #=> String
    #
    def deregister_patch_baseline_for_patch_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterPatchBaselineForPatchGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterPatchBaselineForPatchGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterPatchBaselineForPatchGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceId, Errors::InternalServerError]),
        data_parser: Parsers::DeregisterPatchBaselineForPatchGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterPatchBaselineForPatchGroup,
        stubs: @stubs,
        params_class: Params::DeregisterPatchBaselineForPatchGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_patch_baseline_for_patch_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a target from a maintenance window.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterTargetFromMaintenanceWindowInput}.
    #
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window the target should be removed from.</p>
    #
    # @option params [String] :window_target_id
    #   <p>The ID of the target definition to remove.</p>
    #
    # @option params [Boolean] :safe
    #   <p>The system checks if the target is being referenced by a task. If the target is being
    #      referenced, the system returns an error and doesn't deregister the target from the maintenance
    #      window.</p>
    #
    # @return [Types::DeregisterTargetFromMaintenanceWindowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_target_from_maintenance_window(
    #     window_id: 'WindowId', # required
    #     window_target_id: 'WindowTargetId', # required
    #     safe: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterTargetFromMaintenanceWindowOutput
    #   resp.data.window_id #=> String
    #   resp.data.window_target_id #=> String
    #
    def deregister_target_from_maintenance_window(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterTargetFromMaintenanceWindowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterTargetFromMaintenanceWindowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterTargetFromMaintenanceWindow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TargetInUseException, Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::DeregisterTargetFromMaintenanceWindow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterTargetFromMaintenanceWindow,
        stubs: @stubs,
        params_class: Params::DeregisterTargetFromMaintenanceWindowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_target_from_maintenance_window
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a task from a maintenance window.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterTaskFromMaintenanceWindowInput}.
    #
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window the task should be removed from.</p>
    #
    # @option params [String] :window_task_id
    #   <p>The ID of the task to remove from the maintenance window.</p>
    #
    # @return [Types::DeregisterTaskFromMaintenanceWindowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_task_from_maintenance_window(
    #     window_id: 'WindowId', # required
    #     window_task_id: 'WindowTaskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterTaskFromMaintenanceWindowOutput
    #   resp.data.window_id #=> String
    #   resp.data.window_task_id #=> String
    #
    def deregister_task_from_maintenance_window(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterTaskFromMaintenanceWindowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterTaskFromMaintenanceWindowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterTaskFromMaintenanceWindow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::DeregisterTaskFromMaintenanceWindow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterTaskFromMaintenanceWindow,
        stubs: @stubs,
        params_class: Params::DeregisterTaskFromMaintenanceWindowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_task_from_maintenance_window
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes details about the activation, such as the date and time the activation was
    #    created, its expiration date, the Identity and Access Management (IAM) role assigned to
    #    the managed nodes in the activation, and the number of nodes registered by using this
    #    activation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeActivationsInput}.
    #
    # @option params [Array<DescribeActivationsFilter>] :filters
    #   <p>A filter to view information about your activations.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    # @return [Types::DescribeActivationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_activations(
    #     filters: [
    #       {
    #         filter_key: 'ActivationIds', # accepts ["ActivationIds", "DefaultInstanceName", "IamRole"]
    #         filter_values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeActivationsOutput
    #   resp.data.activation_list #=> Array<Activation>
    #   resp.data.activation_list[0] #=> Types::Activation
    #   resp.data.activation_list[0].activation_id #=> String
    #   resp.data.activation_list[0].description #=> String
    #   resp.data.activation_list[0].default_instance_name #=> String
    #   resp.data.activation_list[0].iam_role #=> String
    #   resp.data.activation_list[0].registration_limit #=> Integer
    #   resp.data.activation_list[0].registrations_count #=> Integer
    #   resp.data.activation_list[0].expiration_date #=> Time
    #   resp.data.activation_list[0].expired #=> Boolean
    #   resp.data.activation_list[0].created_date #=> Time
    #   resp.data.activation_list[0].tags #=> Array<Tag>
    #   resp.data.activation_list[0].tags[0] #=> Types::Tag
    #   resp.data.activation_list[0].tags[0].key #=> String
    #   resp.data.activation_list[0].tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def describe_activations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeActivationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeActivationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeActivations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilter, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::DescribeActivations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeActivations,
        stubs: @stubs,
        params_class: Params::DescribeActivationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_activations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the association for the specified target or managed node. If you created the
    #    association by using the <code>Targets</code> parameter, then you must retrieve the association
    #    by using the association ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAssociationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the SSM document.</p>
    #
    # @option params [String] :instance_id
    #   <p>The managed node ID.</p>
    #
    # @option params [String] :association_id
    #   <p>The association ID for which you want information.</p>
    #
    # @option params [String] :association_version
    #   <p>Specify the association version to retrieve. To view the latest version, either specify
    #       <code>$LATEST</code> for this parameter, or omit this parameter. To view a list of all
    #      associations for a managed node, use <a>ListAssociations</a>. To get a list of
    #      versions for a specific association, use <a>ListAssociationVersions</a>. </p>
    #
    # @return [Types::DescribeAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_association(
    #     name: 'Name',
    #     instance_id: 'InstanceId',
    #     association_id: 'AssociationId',
    #     association_version: 'AssociationVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAssociationOutput
    #   resp.data.association_description #=> Types::AssociationDescription
    #   resp.data.association_description.name #=> String
    #   resp.data.association_description.instance_id #=> String
    #   resp.data.association_description.association_version #=> String
    #   resp.data.association_description.date #=> Time
    #   resp.data.association_description.last_update_association_date #=> Time
    #   resp.data.association_description.status #=> Types::AssociationStatus
    #   resp.data.association_description.status.date #=> Time
    #   resp.data.association_description.status.name #=> String, one of ["Pending", "Success", "Failed"]
    #   resp.data.association_description.status.message #=> String
    #   resp.data.association_description.status.additional_info #=> String
    #   resp.data.association_description.overview #=> Types::AssociationOverview
    #   resp.data.association_description.overview.status #=> String
    #   resp.data.association_description.overview.detailed_status #=> String
    #   resp.data.association_description.overview.association_status_aggregated_count #=> Hash<String, Integer>
    #   resp.data.association_description.overview.association_status_aggregated_count['key'] #=> Integer
    #   resp.data.association_description.document_version #=> String
    #   resp.data.association_description.automation_target_parameter_name #=> String
    #   resp.data.association_description.parameters #=> Hash<String, Array<String>>
    #   resp.data.association_description.parameters['key'] #=> Array<String>
    #   resp.data.association_description.parameters['key'][0] #=> String
    #   resp.data.association_description.association_id #=> String
    #   resp.data.association_description.targets #=> Array<Target>
    #   resp.data.association_description.targets[0] #=> Types::Target
    #   resp.data.association_description.targets[0].key #=> String
    #   resp.data.association_description.targets[0].values #=> Array<String>
    #   resp.data.association_description.targets[0].values[0] #=> String
    #   resp.data.association_description.schedule_expression #=> String
    #   resp.data.association_description.output_location #=> Types::InstanceAssociationOutputLocation
    #   resp.data.association_description.output_location.s3_location #=> Types::S3OutputLocation
    #   resp.data.association_description.output_location.s3_location.output_s3_region #=> String
    #   resp.data.association_description.output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.data.association_description.output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.data.association_description.last_execution_date #=> Time
    #   resp.data.association_description.last_successful_execution_date #=> Time
    #   resp.data.association_description.association_name #=> String
    #   resp.data.association_description.max_errors #=> String
    #   resp.data.association_description.max_concurrency #=> String
    #   resp.data.association_description.compliance_severity #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"]
    #   resp.data.association_description.sync_compliance #=> String, one of ["AUTO", "MANUAL"]
    #   resp.data.association_description.apply_only_at_cron_interval #=> Boolean
    #   resp.data.association_description.calendar_names #=> Array<String>
    #   resp.data.association_description.calendar_names[0] #=> String
    #   resp.data.association_description.target_locations #=> Array<TargetLocation>
    #   resp.data.association_description.target_locations[0] #=> Types::TargetLocation
    #   resp.data.association_description.target_locations[0].accounts #=> Array<String>
    #   resp.data.association_description.target_locations[0].accounts[0] #=> String
    #   resp.data.association_description.target_locations[0].regions #=> Array<String>
    #   resp.data.association_description.target_locations[0].regions[0] #=> String
    #   resp.data.association_description.target_locations[0].target_location_max_concurrency #=> String
    #   resp.data.association_description.target_locations[0].target_location_max_errors #=> String
    #   resp.data.association_description.target_locations[0].execution_role_name #=> String
    #   resp.data.association_description.schedule_offset #=> Integer
    #   resp.data.association_description.target_maps #=> Array<Hash<String, Array<String>>>
    #   resp.data.association_description.target_maps[0] #=> Hash<String, Array<String>>
    #   resp.data.association_description.target_maps[0]['key'] #=> Array<String>
    #   resp.data.association_description.target_maps[0]['key'][0] #=> String
    #
    def describe_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAssociationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAssociation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidAssociationVersion, Errors::InvalidInstanceId, Errors::AssociationDoesNotExist, Errors::InvalidDocument, Errors::InternalServerError]),
        data_parser: Parsers::DescribeAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAssociation,
        stubs: @stubs,
        params_class: Params::DescribeAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Views information about a specific execution of a specific association.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAssociationExecutionTargetsInput}.
    #
    # @option params [String] :association_id
    #   <p>The association ID that includes the execution for which you want to view details.</p>
    #
    # @option params [String] :execution_id
    #   <p>The execution ID for which you want to view details.</p>
    #
    # @option params [Array<AssociationExecutionTargetsFilter>] :filters
    #   <p>Filters for the request. You can specify the following filters and values.</p>
    #            <p>Status (EQUAL)</p>
    #            <p>ResourceId (EQUAL)</p>
    #            <p>ResourceType (EQUAL)</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    # @return [Types::DescribeAssociationExecutionTargetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_association_execution_targets(
    #     association_id: 'AssociationId', # required
    #     execution_id: 'ExecutionId', # required
    #     filters: [
    #       {
    #         key: 'Status', # required - accepts ["Status", "ResourceId", "ResourceType"]
    #         value: 'Value' # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAssociationExecutionTargetsOutput
    #   resp.data.association_execution_targets #=> Array<AssociationExecutionTarget>
    #   resp.data.association_execution_targets[0] #=> Types::AssociationExecutionTarget
    #   resp.data.association_execution_targets[0].association_id #=> String
    #   resp.data.association_execution_targets[0].association_version #=> String
    #   resp.data.association_execution_targets[0].execution_id #=> String
    #   resp.data.association_execution_targets[0].resource_id #=> String
    #   resp.data.association_execution_targets[0].resource_type #=> String
    #   resp.data.association_execution_targets[0].status #=> String
    #   resp.data.association_execution_targets[0].detailed_status #=> String
    #   resp.data.association_execution_targets[0].last_execution_date #=> Time
    #   resp.data.association_execution_targets[0].output_source #=> Types::OutputSource
    #   resp.data.association_execution_targets[0].output_source.output_source_id #=> String
    #   resp.data.association_execution_targets[0].output_source.output_source_type #=> String
    #   resp.data.next_token #=> String
    #
    def describe_association_execution_targets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAssociationExecutionTargetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAssociationExecutionTargetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAssociationExecutionTargets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AssociationDoesNotExist, Errors::AssociationExecutionDoesNotExist, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::DescribeAssociationExecutionTargets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAssociationExecutionTargets,
        stubs: @stubs,
        params_class: Params::DescribeAssociationExecutionTargetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_association_execution_targets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Views all executions for a specific association ID. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAssociationExecutionsInput}.
    #
    # @option params [String] :association_id
    #   <p>The association ID for which you want to view execution history details.</p>
    #
    # @option params [Array<AssociationExecutionFilter>] :filters
    #   <p>Filters for the request. You can specify the following filters and values.</p>
    #            <p>ExecutionId (EQUAL)</p>
    #            <p>Status (EQUAL)</p>
    #            <p>CreatedTime (EQUAL, GREATER_THAN, LESS_THAN)</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    # @return [Types::DescribeAssociationExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_association_executions(
    #     association_id: 'AssociationId', # required
    #     filters: [
    #       {
    #         key: 'ExecutionId', # required - accepts ["ExecutionId", "Status", "CreatedTime"]
    #         value: 'Value', # required
    #         type: 'EQUAL' # required - accepts ["EQUAL", "LESS_THAN", "GREATER_THAN"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAssociationExecutionsOutput
    #   resp.data.association_executions #=> Array<AssociationExecution>
    #   resp.data.association_executions[0] #=> Types::AssociationExecution
    #   resp.data.association_executions[0].association_id #=> String
    #   resp.data.association_executions[0].association_version #=> String
    #   resp.data.association_executions[0].execution_id #=> String
    #   resp.data.association_executions[0].status #=> String
    #   resp.data.association_executions[0].detailed_status #=> String
    #   resp.data.association_executions[0].created_time #=> Time
    #   resp.data.association_executions[0].last_execution_date #=> Time
    #   resp.data.association_executions[0].resource_count_by_status #=> String
    #   resp.data.next_token #=> String
    #
    def describe_association_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAssociationExecutionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAssociationExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAssociationExecutions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AssociationDoesNotExist, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::DescribeAssociationExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAssociationExecutions,
        stubs: @stubs,
        params_class: Params::DescribeAssociationExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_association_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides details about all active and terminated Automation executions.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAutomationExecutionsInput}.
    #
    # @option params [Array<AutomationExecutionFilter>] :filters
    #   <p>Filters used to limit the scope of executions that are requested.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeAutomationExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_automation_executions(
    #     filters: [
    #       {
    #         key: 'DocumentNamePrefix', # required - accepts ["DocumentNamePrefix", "ExecutionStatus", "ExecutionId", "ParentExecutionId", "CurrentAction", "StartTimeBefore", "StartTimeAfter", "AutomationType", "TagKey", "TargetResourceGroup", "AutomationSubtype", "OpsItemId"]
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
    #   resp.data #=> Types::DescribeAutomationExecutionsOutput
    #   resp.data.automation_execution_metadata_list #=> Array<AutomationExecutionMetadata>
    #   resp.data.automation_execution_metadata_list[0] #=> Types::AutomationExecutionMetadata
    #   resp.data.automation_execution_metadata_list[0].automation_execution_id #=> String
    #   resp.data.automation_execution_metadata_list[0].document_name #=> String
    #   resp.data.automation_execution_metadata_list[0].document_version #=> String
    #   resp.data.automation_execution_metadata_list[0].automation_execution_status #=> String, one of ["Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed", "PendingApproval", "Approved", "Rejected", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "CompletedWithSuccess", "CompletedWithFailure"]
    #   resp.data.automation_execution_metadata_list[0].execution_start_time #=> Time
    #   resp.data.automation_execution_metadata_list[0].execution_end_time #=> Time
    #   resp.data.automation_execution_metadata_list[0].executed_by #=> String
    #   resp.data.automation_execution_metadata_list[0].log_file #=> String
    #   resp.data.automation_execution_metadata_list[0].outputs #=> Hash<String, Array<String>>
    #   resp.data.automation_execution_metadata_list[0].outputs['key'] #=> Array<String>
    #   resp.data.automation_execution_metadata_list[0].outputs['key'][0] #=> String
    #   resp.data.automation_execution_metadata_list[0].mode #=> String, one of ["Auto", "Interactive"]
    #   resp.data.automation_execution_metadata_list[0].parent_automation_execution_id #=> String
    #   resp.data.automation_execution_metadata_list[0].current_step_name #=> String
    #   resp.data.automation_execution_metadata_list[0].current_action #=> String
    #   resp.data.automation_execution_metadata_list[0].failure_message #=> String
    #   resp.data.automation_execution_metadata_list[0].target_parameter_name #=> String
    #   resp.data.automation_execution_metadata_list[0].targets #=> Array<Target>
    #   resp.data.automation_execution_metadata_list[0].targets[0] #=> Types::Target
    #   resp.data.automation_execution_metadata_list[0].targets[0].key #=> String
    #   resp.data.automation_execution_metadata_list[0].targets[0].values #=> Array<String>
    #   resp.data.automation_execution_metadata_list[0].targets[0].values[0] #=> String
    #   resp.data.automation_execution_metadata_list[0].target_maps #=> Array<Hash<String, Array<String>>>
    #   resp.data.automation_execution_metadata_list[0].target_maps[0] #=> Hash<String, Array<String>>
    #   resp.data.automation_execution_metadata_list[0].target_maps[0]['key'] #=> Array<String>
    #   resp.data.automation_execution_metadata_list[0].target_maps[0]['key'][0] #=> String
    #   resp.data.automation_execution_metadata_list[0].resolved_targets #=> Types::ResolvedTargets
    #   resp.data.automation_execution_metadata_list[0].resolved_targets.parameter_values #=> Array<String>
    #   resp.data.automation_execution_metadata_list[0].resolved_targets.parameter_values[0] #=> String
    #   resp.data.automation_execution_metadata_list[0].resolved_targets.truncated #=> Boolean
    #   resp.data.automation_execution_metadata_list[0].max_concurrency #=> String
    #   resp.data.automation_execution_metadata_list[0].max_errors #=> String
    #   resp.data.automation_execution_metadata_list[0].target #=> String
    #   resp.data.automation_execution_metadata_list[0].automation_type #=> String, one of ["CrossAccount", "Local"]
    #   resp.data.automation_execution_metadata_list[0].automation_subtype #=> String, one of ["ChangeRequest"]
    #   resp.data.automation_execution_metadata_list[0].scheduled_time #=> Time
    #   resp.data.automation_execution_metadata_list[0].runbooks #=> Array<Runbook>
    #   resp.data.automation_execution_metadata_list[0].runbooks[0] #=> Types::Runbook
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].document_name #=> String
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].document_version #=> String
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].parameters #=> Hash<String, Array<String>>
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].target_parameter_name #=> String
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].targets #=> Array<Target>
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].target_maps #=> Array<Hash<String, Array<String>>>
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].max_concurrency #=> String
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].max_errors #=> String
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].target_locations #=> Array<TargetLocation>
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].target_locations[0] #=> Types::TargetLocation
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].target_locations[0].accounts #=> Array<String>
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].target_locations[0].accounts[0] #=> String
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].target_locations[0].regions #=> Array<String>
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].target_locations[0].regions[0] #=> String
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].target_locations[0].target_location_max_concurrency #=> String
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].target_locations[0].target_location_max_errors #=> String
    #   resp.data.automation_execution_metadata_list[0].runbooks[0].target_locations[0].execution_role_name #=> String
    #   resp.data.automation_execution_metadata_list[0].ops_item_id #=> String
    #   resp.data.automation_execution_metadata_list[0].association_id #=> String
    #   resp.data.automation_execution_metadata_list[0].change_request_name #=> String
    #   resp.data.next_token #=> String
    #
    def describe_automation_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAutomationExecutionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAutomationExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAutomationExecutions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterKey, Errors::InternalServerError, Errors::InvalidNextToken, Errors::InvalidFilterValue]),
        data_parser: Parsers::DescribeAutomationExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAutomationExecutions,
        stubs: @stubs,
        params_class: Params::DescribeAutomationExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_automation_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Information about all active and terminated step executions in an Automation
    #    workflow.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAutomationStepExecutionsInput}.
    #
    # @option params [String] :automation_execution_id
    #   <p>The Automation execution ID for which you want step execution descriptions.</p>
    #
    # @option params [Array<StepExecutionFilter>] :filters
    #   <p>One or more filters to limit the number of step executions returned by the request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [Boolean] :reverse_order
    #   <p>Indicates whether to list step executions in reverse order by start time. The default value
    #      is 'false'.</p>
    #
    # @return [Types::DescribeAutomationStepExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_automation_step_executions(
    #     automation_execution_id: 'AutomationExecutionId', # required
    #     filters: [
    #       {
    #         key: 'StartTimeBefore', # required - accepts ["StartTimeBefore", "StartTimeAfter", "StepExecutionStatus", "StepExecutionId", "StepName", "Action"]
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     reverse_order: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAutomationStepExecutionsOutput
    #   resp.data.step_executions #=> Array<StepExecution>
    #   resp.data.step_executions[0] #=> Types::StepExecution
    #   resp.data.step_executions[0].step_name #=> String
    #   resp.data.step_executions[0].action #=> String
    #   resp.data.step_executions[0].timeout_seconds #=> Integer
    #   resp.data.step_executions[0].on_failure #=> String
    #   resp.data.step_executions[0].max_attempts #=> Integer
    #   resp.data.step_executions[0].execution_start_time #=> Time
    #   resp.data.step_executions[0].execution_end_time #=> Time
    #   resp.data.step_executions[0].step_status #=> String, one of ["Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed", "PendingApproval", "Approved", "Rejected", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "CompletedWithSuccess", "CompletedWithFailure"]
    #   resp.data.step_executions[0].response_code #=> String
    #   resp.data.step_executions[0].inputs #=> Hash<String, String>
    #   resp.data.step_executions[0].inputs['key'] #=> String
    #   resp.data.step_executions[0].outputs #=> Hash<String, Array<String>>
    #   resp.data.step_executions[0].outputs['key'] #=> Array<String>
    #   resp.data.step_executions[0].outputs['key'][0] #=> String
    #   resp.data.step_executions[0].response #=> String
    #   resp.data.step_executions[0].failure_message #=> String
    #   resp.data.step_executions[0].failure_details #=> Types::FailureDetails
    #   resp.data.step_executions[0].failure_details.failure_stage #=> String
    #   resp.data.step_executions[0].failure_details.failure_type #=> String
    #   resp.data.step_executions[0].failure_details.details #=> Hash<String, Array<String>>
    #   resp.data.step_executions[0].step_execution_id #=> String
    #   resp.data.step_executions[0].overridden_parameters #=> Hash<String, Array<String>>
    #   resp.data.step_executions[0].is_end #=> Boolean
    #   resp.data.step_executions[0].next_step #=> String
    #   resp.data.step_executions[0].is_critical #=> Boolean
    #   resp.data.step_executions[0].valid_next_steps #=> Array<String>
    #   resp.data.step_executions[0].valid_next_steps[0] #=> String
    #   resp.data.step_executions[0].targets #=> Array<Target>
    #   resp.data.step_executions[0].targets[0] #=> Types::Target
    #   resp.data.step_executions[0].targets[0].key #=> String
    #   resp.data.step_executions[0].targets[0].values #=> Array<String>
    #   resp.data.step_executions[0].targets[0].values[0] #=> String
    #   resp.data.step_executions[0].target_location #=> Types::TargetLocation
    #   resp.data.step_executions[0].target_location.accounts #=> Array<String>
    #   resp.data.step_executions[0].target_location.accounts[0] #=> String
    #   resp.data.step_executions[0].target_location.regions #=> Array<String>
    #   resp.data.step_executions[0].target_location.regions[0] #=> String
    #   resp.data.step_executions[0].target_location.target_location_max_concurrency #=> String
    #   resp.data.step_executions[0].target_location.target_location_max_errors #=> String
    #   resp.data.step_executions[0].target_location.execution_role_name #=> String
    #   resp.data.next_token #=> String
    #
    def describe_automation_step_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAutomationStepExecutionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAutomationStepExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAutomationStepExecutions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterKey, Errors::InternalServerError, Errors::InvalidNextToken, Errors::AutomationExecutionNotFoundException, Errors::InvalidFilterValue]),
        data_parser: Parsers::DescribeAutomationStepExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAutomationStepExecutions,
        stubs: @stubs,
        params_class: Params::DescribeAutomationStepExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_automation_step_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all patches eligible to be included in a patch baseline.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAvailablePatchesInput}.
    #
    # @option params [Array<PatchOrchestratorFilter>] :filters
    #   <p>Each element in the array is a structure containing a key-value pair.</p>
    #            <p>
    #               <b>Windows Server</b>
    #            </p>
    #            <p>Supported keys for Windows Server managed node patches include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PATCH_SET</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>OS</code> | <code>APPLICATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PRODUCT</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>WindowsServer2012</code> | <code>Office 2010</code> |
    #         <code>MicrosoftDefenderAntivirus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PRODUCT_FAMILY</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Windows</code> | <code>Office</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>MSRC_SEVERITY</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>ServicePacks</code> | <code>Important</code> | <code>Moderate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>CLASSIFICATION</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>ServicePacks</code> | <code>SecurityUpdates</code> |
    #         <code>DefinitionUpdates</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PATCH_ID</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>KB123456</code> | <code>KB4516046</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #            <p>
    #               <b>Linux</b>
    #            </p>
    #            <important>
    #               <p>When specifying filters for Linux patches, you must specify a key-pair for
    #        <code>PRODUCT</code>. For example, using the Command Line Interface (CLI), the
    #       following command fails:</p>
    #               <p>
    #                  <code>aws ssm describe-available-patches --filters Key=CVE_ID,Values=CVE-2018-3615</code>
    #               </p>
    #               <p>However, the following command succeeds:</p>
    #               <p>
    #                  <code>aws ssm describe-available-patches --filters Key=PRODUCT,Values=AmazonLinux2018.03
    #        Key=CVE_ID,Values=CVE-2018-3615</code>
    #               </p>
    #            </important>
    #            <p>Supported keys for Linux managed node patches include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PRODUCT</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AmazonLinux2018.03</code> | <code>AmazonLinux2.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NAME</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>kernel-headers</code> | <code>samba-python</code> | <code>php</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>SEVERITY</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Critical</code> | <code>Important</code> | <code>Medium</code> |
    #         <code>Low</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>EPOCH</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>0</code> | <code>1</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>VERSION</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>78.6.1</code> | <code>4.10.16</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>RELEASE</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>9.56.amzn1</code> | <code>1.amzn2</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ARCH</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>i686</code> | <code>x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>REPOSITORY</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Core</code> | <code>Updates</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ADVISORY_ID</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>ALAS-2018-1058</code> | <code>ALAS2-2021-1594</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>CVE_ID</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>CVE-2018-3615</code> | <code>CVE-2020-1472</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BUGZILLA_ID</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>1463241</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of patches to return (per page).</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeAvailablePatchesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_available_patches(
    #     filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAvailablePatchesOutput
    #   resp.data.patches #=> Array<Patch>
    #   resp.data.patches[0] #=> Types::Patch
    #   resp.data.patches[0].id #=> String
    #   resp.data.patches[0].release_date #=> Time
    #   resp.data.patches[0].title #=> String
    #   resp.data.patches[0].description #=> String
    #   resp.data.patches[0].content_url #=> String
    #   resp.data.patches[0].vendor #=> String
    #   resp.data.patches[0].product_family #=> String
    #   resp.data.patches[0].product #=> String
    #   resp.data.patches[0].classification #=> String
    #   resp.data.patches[0].msrc_severity #=> String
    #   resp.data.patches[0].kb_number #=> String
    #   resp.data.patches[0].msrc_number #=> String
    #   resp.data.patches[0].language #=> String
    #   resp.data.patches[0].advisory_ids #=> Array<String>
    #   resp.data.patches[0].advisory_ids[0] #=> String
    #   resp.data.patches[0].bugzilla_ids #=> Array<String>
    #   resp.data.patches[0].bugzilla_ids[0] #=> String
    #   resp.data.patches[0].cve_ids #=> Array<String>
    #   resp.data.patches[0].cve_ids[0] #=> String
    #   resp.data.patches[0].name #=> String
    #   resp.data.patches[0].epoch #=> Integer
    #   resp.data.patches[0].version #=> String
    #   resp.data.patches[0].release #=> String
    #   resp.data.patches[0].arch #=> String
    #   resp.data.patches[0].severity #=> String
    #   resp.data.patches[0].repository #=> String
    #   resp.data.next_token #=> String
    #
    def describe_available_patches(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAvailablePatchesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAvailablePatchesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAvailablePatches
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribeAvailablePatches
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAvailablePatches,
        stubs: @stubs,
        params_class: Params::DescribeAvailablePatchesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_available_patches
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified Amazon Web Services Systems Manager document (SSM document).</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDocumentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the SSM document.</p>
    #
    # @option params [String] :document_version
    #   <p>The document version for which you want information. Can be a specific version or the
    #      default version.</p>
    #
    # @option params [String] :version_name
    #   <p>An optional field specifying the version of the artifact associated with the document. For
    #      example, "Release 12, Update 6". This value is unique across all versions of a document, and
    #      can't be changed.</p>
    #
    # @return [Types::DescribeDocumentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_document(
    #     name: 'Name', # required
    #     document_version: 'DocumentVersion',
    #     version_name: 'VersionName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDocumentOutput
    #   resp.data.document #=> Types::DocumentDescription
    #   resp.data.document.sha1 #=> String
    #   resp.data.document.member_hash #=> String
    #   resp.data.document.hash_type #=> String, one of ["Sha256", "Sha1"]
    #   resp.data.document.name #=> String
    #   resp.data.document.display_name #=> String
    #   resp.data.document.version_name #=> String
    #   resp.data.document.owner #=> String
    #   resp.data.document.created_date #=> Time
    #   resp.data.document.status #=> String, one of ["Creating", "Active", "Updating", "Deleting", "Failed"]
    #   resp.data.document.status_information #=> String
    #   resp.data.document.document_version #=> String
    #   resp.data.document.description #=> String
    #   resp.data.document.parameters #=> Array<DocumentParameter>
    #   resp.data.document.parameters[0] #=> Types::DocumentParameter
    #   resp.data.document.parameters[0].name #=> String
    #   resp.data.document.parameters[0].type #=> String, one of ["String", "StringList"]
    #   resp.data.document.parameters[0].description #=> String
    #   resp.data.document.parameters[0].default_value #=> String
    #   resp.data.document.platform_types #=> Array<String>
    #   resp.data.document.platform_types[0] #=> String, one of ["Windows", "Linux", "MacOS"]
    #   resp.data.document.document_type #=> String, one of ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate"]
    #   resp.data.document.schema_version #=> String
    #   resp.data.document.latest_version #=> String
    #   resp.data.document.default_version #=> String
    #   resp.data.document.document_format #=> String, one of ["YAML", "JSON", "TEXT"]
    #   resp.data.document.target_type #=> String
    #   resp.data.document.tags #=> Array<Tag>
    #   resp.data.document.tags[0] #=> Types::Tag
    #   resp.data.document.tags[0].key #=> String
    #   resp.data.document.tags[0].value #=> String
    #   resp.data.document.attachments_information #=> Array<AttachmentInformation>
    #   resp.data.document.attachments_information[0] #=> Types::AttachmentInformation
    #   resp.data.document.attachments_information[0].name #=> String
    #   resp.data.document.requires #=> Array<DocumentRequires>
    #   resp.data.document.requires[0] #=> Types::DocumentRequires
    #   resp.data.document.requires[0].name #=> String
    #   resp.data.document.requires[0].version #=> String
    #   resp.data.document.author #=> String
    #   resp.data.document.review_information #=> Array<ReviewInformation>
    #   resp.data.document.review_information[0] #=> Types::ReviewInformation
    #   resp.data.document.review_information[0].reviewed_time #=> Time
    #   resp.data.document.review_information[0].status #=> String, one of ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #   resp.data.document.review_information[0].reviewer #=> String
    #   resp.data.document.approved_version #=> String
    #   resp.data.document.pending_review_version #=> String
    #   resp.data.document.review_status #=> String, one of ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #   resp.data.document.category #=> Array<String>
    #   resp.data.document.category[0] #=> String
    #   resp.data.document.category_enum #=> Array<String>
    #   resp.data.document.category_enum[0] #=> String
    #
    def describe_document(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDocumentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDocumentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDocument
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDocumentVersion, Errors::InvalidDocument, Errors::InternalServerError]),
        data_parser: Parsers::DescribeDocument
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDocument,
        stubs: @stubs,
        params_class: Params::DescribeDocumentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_document
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the permissions for a Amazon Web Services Systems Manager document (SSM document). If you created the
    #    document, you are the owner. If a document is shared, it can either be shared privately (by
    #    specifying a user's Amazon Web Services account ID) or publicly (<i>All</i>). </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDocumentPermissionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the document for which you are the owner.</p>
    #
    # @option params [String] :permission_type
    #   <p>The permission type for the document. The permission type can be
    #      <i>Share</i>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeDocumentPermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_document_permission(
    #     name: 'Name', # required
    #     permission_type: 'Share', # required - accepts ["Share"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDocumentPermissionOutput
    #   resp.data.account_ids #=> Array<String>
    #   resp.data.account_ids[0] #=> String
    #   resp.data.account_sharing_info_list #=> Array<AccountSharingInfo>
    #   resp.data.account_sharing_info_list[0] #=> Types::AccountSharingInfo
    #   resp.data.account_sharing_info_list[0].account_id #=> String
    #   resp.data.account_sharing_info_list[0].shared_document_version #=> String
    #   resp.data.next_token #=> String
    #
    def describe_document_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDocumentPermissionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDocumentPermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDocumentPermission
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDocumentOperation, Errors::InvalidDocument, Errors::InternalServerError, Errors::InvalidNextToken, Errors::InvalidPermissionType]),
        data_parser: Parsers::DescribeDocumentPermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDocumentPermission,
        stubs: @stubs,
        params_class: Params::DescribeDocumentPermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_document_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>All associations for the managed node(s).</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEffectiveInstanceAssociationsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The managed node ID for which you want to view all associations.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeEffectiveInstanceAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_effective_instance_associations(
    #     instance_id: 'InstanceId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEffectiveInstanceAssociationsOutput
    #   resp.data.associations #=> Array<InstanceAssociation>
    #   resp.data.associations[0] #=> Types::InstanceAssociation
    #   resp.data.associations[0].association_id #=> String
    #   resp.data.associations[0].instance_id #=> String
    #   resp.data.associations[0].content #=> String
    #   resp.data.associations[0].association_version #=> String
    #   resp.data.next_token #=> String
    #
    def describe_effective_instance_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEffectiveInstanceAssociationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEffectiveInstanceAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEffectiveInstanceAssociations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInstanceId, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::DescribeEffectiveInstanceAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEffectiveInstanceAssociations,
        stubs: @stubs,
        params_class: Params::DescribeEffectiveInstanceAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_effective_instance_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the current effective patches (the patch and the approval state) for the specified
    #    patch baseline. Applies to patch baselines for Windows only.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEffectivePatchesForPatchBaselineInput}.
    #
    # @option params [String] :baseline_id
    #   <p>The ID of the patch baseline to retrieve the effective patches for.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of patches to return (per page).</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeEffectivePatchesForPatchBaselineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_effective_patches_for_patch_baseline(
    #     baseline_id: 'BaselineId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEffectivePatchesForPatchBaselineOutput
    #   resp.data.effective_patches #=> Array<EffectivePatch>
    #   resp.data.effective_patches[0] #=> Types::EffectivePatch
    #   resp.data.effective_patches[0].patch #=> Types::Patch
    #   resp.data.effective_patches[0].patch.id #=> String
    #   resp.data.effective_patches[0].patch.release_date #=> Time
    #   resp.data.effective_patches[0].patch.title #=> String
    #   resp.data.effective_patches[0].patch.description #=> String
    #   resp.data.effective_patches[0].patch.content_url #=> String
    #   resp.data.effective_patches[0].patch.vendor #=> String
    #   resp.data.effective_patches[0].patch.product_family #=> String
    #   resp.data.effective_patches[0].patch.product #=> String
    #   resp.data.effective_patches[0].patch.classification #=> String
    #   resp.data.effective_patches[0].patch.msrc_severity #=> String
    #   resp.data.effective_patches[0].patch.kb_number #=> String
    #   resp.data.effective_patches[0].patch.msrc_number #=> String
    #   resp.data.effective_patches[0].patch.language #=> String
    #   resp.data.effective_patches[0].patch.advisory_ids #=> Array<String>
    #   resp.data.effective_patches[0].patch.advisory_ids[0] #=> String
    #   resp.data.effective_patches[0].patch.bugzilla_ids #=> Array<String>
    #   resp.data.effective_patches[0].patch.bugzilla_ids[0] #=> String
    #   resp.data.effective_patches[0].patch.cve_ids #=> Array<String>
    #   resp.data.effective_patches[0].patch.cve_ids[0] #=> String
    #   resp.data.effective_patches[0].patch.name #=> String
    #   resp.data.effective_patches[0].patch.epoch #=> Integer
    #   resp.data.effective_patches[0].patch.version #=> String
    #   resp.data.effective_patches[0].patch.release #=> String
    #   resp.data.effective_patches[0].patch.arch #=> String
    #   resp.data.effective_patches[0].patch.severity #=> String
    #   resp.data.effective_patches[0].patch.repository #=> String
    #   resp.data.effective_patches[0].patch_status #=> Types::PatchStatus
    #   resp.data.effective_patches[0].patch_status.deployment_status #=> String, one of ["APPROVED", "PENDING_APPROVAL", "EXPLICIT_APPROVED", "EXPLICIT_REJECTED"]
    #   resp.data.effective_patches[0].patch_status.compliance_level #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #   resp.data.effective_patches[0].patch_status.approval_date #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_effective_patches_for_patch_baseline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEffectivePatchesForPatchBaselineInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEffectivePatchesForPatchBaselineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEffectivePatchesForPatchBaseline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperatingSystem, Errors::InvalidResourceId, Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeEffectivePatchesForPatchBaseline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEffectivePatchesForPatchBaseline,
        stubs: @stubs,
        params_class: Params::DescribeEffectivePatchesForPatchBaselineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_effective_patches_for_patch_baseline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The status of the associations for the managed node(s).</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInstanceAssociationsStatusInput}.
    #
    # @option params [String] :instance_id
    #   <p>The managed node IDs for which you want association status information.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeInstanceAssociationsStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_associations_status(
    #     instance_id: 'InstanceId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInstanceAssociationsStatusOutput
    #   resp.data.instance_association_status_infos #=> Array<InstanceAssociationStatusInfo>
    #   resp.data.instance_association_status_infos[0] #=> Types::InstanceAssociationStatusInfo
    #   resp.data.instance_association_status_infos[0].association_id #=> String
    #   resp.data.instance_association_status_infos[0].name #=> String
    #   resp.data.instance_association_status_infos[0].document_version #=> String
    #   resp.data.instance_association_status_infos[0].association_version #=> String
    #   resp.data.instance_association_status_infos[0].instance_id #=> String
    #   resp.data.instance_association_status_infos[0].execution_date #=> Time
    #   resp.data.instance_association_status_infos[0].status #=> String
    #   resp.data.instance_association_status_infos[0].detailed_status #=> String
    #   resp.data.instance_association_status_infos[0].execution_summary #=> String
    #   resp.data.instance_association_status_infos[0].error_code #=> String
    #   resp.data.instance_association_status_infos[0].output_url #=> Types::InstanceAssociationOutputUrl
    #   resp.data.instance_association_status_infos[0].output_url.s3_output_url #=> Types::S3OutputUrl
    #   resp.data.instance_association_status_infos[0].output_url.s3_output_url.output_url #=> String
    #   resp.data.instance_association_status_infos[0].association_name #=> String
    #   resp.data.next_token #=> String
    #
    def describe_instance_associations_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInstanceAssociationsStatusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInstanceAssociationsStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInstanceAssociationsStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInstanceId, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::DescribeInstanceAssociationsStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInstanceAssociationsStatus,
        stubs: @stubs,
        params_class: Params::DescribeInstanceAssociationsStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_instance_associations_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes one or more of your managed nodes, including information about the operating
    #    system platform, the version of SSM Agent installed on the managed node, node status, and so
    #    on.</p>
    #          <p>If you specify one or more managed node IDs, it returns information for those managed nodes.
    #    If you don't specify node IDs, it returns information for all your managed nodes. If you specify
    #    a node ID that isn't valid or a node that you don't own, you receive an error.</p>
    #          <note>
    #             <p>The <code>IamRole</code> field for this API operation is the Identity and Access Management
    #      (IAM) role assigned to on-premises managed nodes. This call doesn't return the
    #      IAM role for EC2 instances.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeInstanceInformationInput}.
    #
    # @option params [Array<InstanceInformationFilter>] :instance_information_filter_list
    #   <p>This is a legacy method. We recommend that you don't use this method. Instead, use the
    #       <code>Filters</code> data type. <code>Filters</code> enables you to return node information by
    #      filtering based on tags applied to managed nodes.</p>
    #            <note>
    #               <p>Attempting to use <code>InstanceInformationFilterList</code> and <code>Filters</code> leads
    #       to an exception error. </p>
    #            </note>
    #
    # @option params [Array<InstanceInformationStringFilter>] :filters
    #   <p>One or more filters. Use a filter to return a more specific list of managed nodes. You can
    #      filter based on tags applied to EC2 instances. Use this <code>Filters</code> data type instead of
    #       <code>InstanceInformationFilterList</code>, which is deprecated.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results. </p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeInstanceInformationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_information(
    #     instance_information_filter_list: [
    #       {
    #         key: 'InstanceIds', # required - accepts ["InstanceIds", "AgentVersion", "PingStatus", "PlatformTypes", "ActivationIds", "IamRole", "ResourceType", "AssociationStatus"]
    #         value_set: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     filters: [
    #       {
    #         key: 'Key', # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInstanceInformationOutput
    #   resp.data.instance_information_list #=> Array<InstanceInformation>
    #   resp.data.instance_information_list[0] #=> Types::InstanceInformation
    #   resp.data.instance_information_list[0].instance_id #=> String
    #   resp.data.instance_information_list[0].ping_status #=> String, one of ["Online", "ConnectionLost", "Inactive"]
    #   resp.data.instance_information_list[0].last_ping_date_time #=> Time
    #   resp.data.instance_information_list[0].agent_version #=> String
    #   resp.data.instance_information_list[0].is_latest_version #=> Boolean
    #   resp.data.instance_information_list[0].platform_type #=> String, one of ["Windows", "Linux", "MacOS"]
    #   resp.data.instance_information_list[0].platform_name #=> String
    #   resp.data.instance_information_list[0].platform_version #=> String
    #   resp.data.instance_information_list[0].activation_id #=> String
    #   resp.data.instance_information_list[0].iam_role #=> String
    #   resp.data.instance_information_list[0].registration_date #=> Time
    #   resp.data.instance_information_list[0].resource_type #=> String, one of ["ManagedInstance", "Document", "EC2Instance"]
    #   resp.data.instance_information_list[0].name #=> String
    #   resp.data.instance_information_list[0].ip_address #=> String
    #   resp.data.instance_information_list[0].computer_name #=> String
    #   resp.data.instance_information_list[0].association_status #=> String
    #   resp.data.instance_information_list[0].last_association_execution_date #=> Time
    #   resp.data.instance_information_list[0].last_successful_association_execution_date #=> Time
    #   resp.data.instance_information_list[0].association_overview #=> Types::InstanceAggregatedAssociationOverview
    #   resp.data.instance_information_list[0].association_overview.detailed_status #=> String
    #   resp.data.instance_information_list[0].association_overview.instance_association_status_aggregated_count #=> Hash<String, Integer>
    #   resp.data.instance_information_list[0].association_overview.instance_association_status_aggregated_count['key'] #=> Integer
    #   resp.data.instance_information_list[0].source_id #=> String
    #   resp.data.instance_information_list[0].source_type #=> String, one of ["AWS::EC2::Instance", "AWS::IoT::Thing", "AWS::SSM::ManagedInstance"]
    #   resp.data.next_token #=> String
    #
    def describe_instance_information(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInstanceInformationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInstanceInformationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInstanceInformation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInstanceId, Errors::InvalidInstanceInformationFilterValue, Errors::InvalidFilterKey, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::DescribeInstanceInformation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInstanceInformation,
        stubs: @stubs,
        params_class: Params::DescribeInstanceInformationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_instance_information
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the high-level patch state of one or more managed nodes.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInstancePatchStatesInput}.
    #
    # @option params [Array<String>] :instance_ids
    #   <p>The ID of the managed node for which patch state information should be retrieved.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of managed nodes to return (per page).</p>
    #
    # @return [Types::DescribeInstancePatchStatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_patch_states(
    #     instance_ids: [
    #       'member'
    #     ], # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInstancePatchStatesOutput
    #   resp.data.instance_patch_states #=> Array<InstancePatchState>
    #   resp.data.instance_patch_states[0] #=> Types::InstancePatchState
    #   resp.data.instance_patch_states[0].instance_id #=> String
    #   resp.data.instance_patch_states[0].patch_group #=> String
    #   resp.data.instance_patch_states[0].baseline_id #=> String
    #   resp.data.instance_patch_states[0].snapshot_id #=> String
    #   resp.data.instance_patch_states[0].install_override_list #=> String
    #   resp.data.instance_patch_states[0].owner_information #=> String
    #   resp.data.instance_patch_states[0].installed_count #=> Integer
    #   resp.data.instance_patch_states[0].installed_other_count #=> Integer
    #   resp.data.instance_patch_states[0].installed_pending_reboot_count #=> Integer
    #   resp.data.instance_patch_states[0].installed_rejected_count #=> Integer
    #   resp.data.instance_patch_states[0].missing_count #=> Integer
    #   resp.data.instance_patch_states[0].failed_count #=> Integer
    #   resp.data.instance_patch_states[0].unreported_not_applicable_count #=> Integer
    #   resp.data.instance_patch_states[0].not_applicable_count #=> Integer
    #   resp.data.instance_patch_states[0].operation_start_time #=> Time
    #   resp.data.instance_patch_states[0].operation_end_time #=> Time
    #   resp.data.instance_patch_states[0].operation #=> String, one of ["Scan", "Install"]
    #   resp.data.instance_patch_states[0].last_no_reboot_install_operation_time #=> Time
    #   resp.data.instance_patch_states[0].reboot_option #=> String, one of ["RebootIfNeeded", "NoReboot"]
    #   resp.data.instance_patch_states[0].critical_non_compliant_count #=> Integer
    #   resp.data.instance_patch_states[0].security_non_compliant_count #=> Integer
    #   resp.data.instance_patch_states[0].other_non_compliant_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_instance_patch_states(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInstancePatchStatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInstancePatchStatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInstancePatchStates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::DescribeInstancePatchStates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInstancePatchStates,
        stubs: @stubs,
        params_class: Params::DescribeInstancePatchStatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_instance_patch_states
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the high-level patch state for the managed nodes in the specified patch
    #    group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInstancePatchStatesForPatchGroupInput}.
    #
    # @option params [String] :patch_group
    #   <p>The name of the patch group for which the patch state information should be
    #      retrieved.</p>
    #
    # @option params [Array<InstancePatchStateFilter>] :filters
    #   <p>Each entry in the array is a structure containing:</p>
    #            <ul>
    #               <li>
    #                  <p>Key (string between 1 and 200 characters)</p>
    #               </li>
    #               <li>
    #                  <p>Values (array containing a single string)</p>
    #               </li>
    #               <li>
    #                  <p>Type (string "Equal", "NotEqual", "LessThan", "GreaterThan")</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of patches to return (per page).</p>
    #
    # @return [Types::DescribeInstancePatchStatesForPatchGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_patch_states_for_patch_group(
    #     patch_group: 'PatchGroup', # required
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         values: [
    #           'member'
    #         ], # required
    #         type: 'Equal' # required - accepts ["Equal", "NotEqual", "LessThan", "GreaterThan"]
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInstancePatchStatesForPatchGroupOutput
    #   resp.data.instance_patch_states #=> Array<InstancePatchState>
    #   resp.data.instance_patch_states[0] #=> Types::InstancePatchState
    #   resp.data.instance_patch_states[0].instance_id #=> String
    #   resp.data.instance_patch_states[0].patch_group #=> String
    #   resp.data.instance_patch_states[0].baseline_id #=> String
    #   resp.data.instance_patch_states[0].snapshot_id #=> String
    #   resp.data.instance_patch_states[0].install_override_list #=> String
    #   resp.data.instance_patch_states[0].owner_information #=> String
    #   resp.data.instance_patch_states[0].installed_count #=> Integer
    #   resp.data.instance_patch_states[0].installed_other_count #=> Integer
    #   resp.data.instance_patch_states[0].installed_pending_reboot_count #=> Integer
    #   resp.data.instance_patch_states[0].installed_rejected_count #=> Integer
    #   resp.data.instance_patch_states[0].missing_count #=> Integer
    #   resp.data.instance_patch_states[0].failed_count #=> Integer
    #   resp.data.instance_patch_states[0].unreported_not_applicable_count #=> Integer
    #   resp.data.instance_patch_states[0].not_applicable_count #=> Integer
    #   resp.data.instance_patch_states[0].operation_start_time #=> Time
    #   resp.data.instance_patch_states[0].operation_end_time #=> Time
    #   resp.data.instance_patch_states[0].operation #=> String, one of ["Scan", "Install"]
    #   resp.data.instance_patch_states[0].last_no_reboot_install_operation_time #=> Time
    #   resp.data.instance_patch_states[0].reboot_option #=> String, one of ["RebootIfNeeded", "NoReboot"]
    #   resp.data.instance_patch_states[0].critical_non_compliant_count #=> Integer
    #   resp.data.instance_patch_states[0].security_non_compliant_count #=> Integer
    #   resp.data.instance_patch_states[0].other_non_compliant_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_instance_patch_states_for_patch_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInstancePatchStatesForPatchGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInstancePatchStatesForPatchGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInstancePatchStatesForPatchGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilter, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::DescribeInstancePatchStatesForPatchGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInstancePatchStatesForPatchGroup,
        stubs: @stubs,
        params_class: Params::DescribeInstancePatchStatesForPatchGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_instance_patch_states_for_patch_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the patches on the specified managed node and their state
    #    relative to the patch baseline being used for the node.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInstancePatchesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The ID of the managed node whose patch state information should be retrieved.</p>
    #
    # @option params [Array<PatchOrchestratorFilter>] :filters
    #   <p>Each element in the array is a structure containing a key-value pair.</p>
    #            <p>Supported keys for <code>DescribeInstancePatches</code>include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Classification</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Security</code> | <code>SecurityUpdates</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>KBId</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>KB4480056</code> | <code>java-1.7.0-openjdk.x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Severity</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Important</code> | <code>Medium</code> | <code>Low</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>State</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Installed</code> | <code>InstalledOther</code> |
    #         <code>InstalledPendingReboot</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of patches to return (per page).</p>
    #
    # @return [Types::DescribeInstancePatchesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_patches(
    #     instance_id: 'InstanceId', # required
    #     filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInstancePatchesOutput
    #   resp.data.patches #=> Array<PatchComplianceData>
    #   resp.data.patches[0] #=> Types::PatchComplianceData
    #   resp.data.patches[0].title #=> String
    #   resp.data.patches[0].kb_id #=> String
    #   resp.data.patches[0].classification #=> String
    #   resp.data.patches[0].severity #=> String
    #   resp.data.patches[0].state #=> String, one of ["INSTALLED", "INSTALLED_OTHER", "INSTALLED_PENDING_REBOOT", "INSTALLED_REJECTED", "MISSING", "NOT_APPLICABLE", "FAILED"]
    #   resp.data.patches[0].installed_time #=> Time
    #   resp.data.patches[0].cve_ids #=> String
    #   resp.data.next_token #=> String
    #
    def describe_instance_patches(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInstancePatchesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInstancePatchesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInstancePatches
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInstanceId, Errors::InvalidFilter, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::DescribeInstancePatches
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInstancePatches,
        stubs: @stubs,
        params_class: Params::DescribeInstancePatchesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_instance_patches
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a specific delete inventory operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInventoryDeletionsInput}.
    #
    # @option params [String] :deletion_id
    #   <p>Specify the delete inventory ID for which you want information. This ID was returned by the
    #       <code>DeleteInventory</code> operation.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @return [Types::DescribeInventoryDeletionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_inventory_deletions(
    #     deletion_id: 'DeletionId',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInventoryDeletionsOutput
    #   resp.data.inventory_deletions #=> Array<InventoryDeletionStatusItem>
    #   resp.data.inventory_deletions[0] #=> Types::InventoryDeletionStatusItem
    #   resp.data.inventory_deletions[0].deletion_id #=> String
    #   resp.data.inventory_deletions[0].type_name #=> String
    #   resp.data.inventory_deletions[0].deletion_start_time #=> Time
    #   resp.data.inventory_deletions[0].last_status #=> String, one of ["InProgress", "Complete"]
    #   resp.data.inventory_deletions[0].last_status_message #=> String
    #   resp.data.inventory_deletions[0].deletion_summary #=> Types::InventoryDeletionSummary
    #   resp.data.inventory_deletions[0].deletion_summary.total_count #=> Integer
    #   resp.data.inventory_deletions[0].deletion_summary.remaining_count #=> Integer
    #   resp.data.inventory_deletions[0].deletion_summary.summary_items #=> Array<InventoryDeletionSummaryItem>
    #   resp.data.inventory_deletions[0].deletion_summary.summary_items[0] #=> Types::InventoryDeletionSummaryItem
    #   resp.data.inventory_deletions[0].deletion_summary.summary_items[0].version #=> String
    #   resp.data.inventory_deletions[0].deletion_summary.summary_items[0].count #=> Integer
    #   resp.data.inventory_deletions[0].deletion_summary.summary_items[0].remaining_count #=> Integer
    #   resp.data.inventory_deletions[0].last_status_update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_inventory_deletions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInventoryDeletionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInventoryDeletionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInventoryDeletions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDeletionIdException, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::DescribeInventoryDeletions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInventoryDeletions,
        stubs: @stubs,
        params_class: Params::DescribeInventoryDeletionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_inventory_deletions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the individual task executions (one per target) for a particular task run as part
    #    of a maintenance window execution.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMaintenanceWindowExecutionTaskInvocationsInput}.
    #
    # @option params [String] :window_execution_id
    #   <p>The ID of the maintenance window execution the task is part of.</p>
    #
    # @option params [String] :task_id
    #   <p>The ID of the specific task in the maintenance window task that should be retrieved.</p>
    #
    # @option params [Array<MaintenanceWindowFilter>] :filters
    #   <p>Optional filters used to scope down the returned task invocations. The supported filter key
    #      is <code>STATUS</code> with the corresponding values <code>PENDING</code>,
    #       <code>IN_PROGRESS</code>, <code>SUCCESS</code>, <code>FAILED</code>, <code>TIMED_OUT</code>,
    #       <code>CANCELLING</code>, and <code>CANCELLED</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeMaintenanceWindowExecutionTaskInvocationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_execution_task_invocations(
    #     window_execution_id: 'WindowExecutionId', # required
    #     task_id: 'TaskId', # required
    #     filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMaintenanceWindowExecutionTaskInvocationsOutput
    #   resp.data.window_execution_task_invocation_identities #=> Array<MaintenanceWindowExecutionTaskInvocationIdentity>
    #   resp.data.window_execution_task_invocation_identities[0] #=> Types::MaintenanceWindowExecutionTaskInvocationIdentity
    #   resp.data.window_execution_task_invocation_identities[0].window_execution_id #=> String
    #   resp.data.window_execution_task_invocation_identities[0].task_execution_id #=> String
    #   resp.data.window_execution_task_invocation_identities[0].invocation_id #=> String
    #   resp.data.window_execution_task_invocation_identities[0].execution_id #=> String
    #   resp.data.window_execution_task_invocation_identities[0].task_type #=> String, one of ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"]
    #   resp.data.window_execution_task_invocation_identities[0].parameters #=> String
    #   resp.data.window_execution_task_invocation_identities[0].status #=> String, one of ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"]
    #   resp.data.window_execution_task_invocation_identities[0].status_details #=> String
    #   resp.data.window_execution_task_invocation_identities[0].start_time #=> Time
    #   resp.data.window_execution_task_invocation_identities[0].end_time #=> Time
    #   resp.data.window_execution_task_invocation_identities[0].owner_information #=> String
    #   resp.data.window_execution_task_invocation_identities[0].window_target_id #=> String
    #   resp.data.next_token #=> String
    #
    def describe_maintenance_window_execution_task_invocations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMaintenanceWindowExecutionTaskInvocationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMaintenanceWindowExecutionTaskInvocationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMaintenanceWindowExecutionTaskInvocations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeMaintenanceWindowExecutionTaskInvocations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMaintenanceWindowExecutionTaskInvocations,
        stubs: @stubs,
        params_class: Params::DescribeMaintenanceWindowExecutionTaskInvocationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_maintenance_window_execution_task_invocations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>For a given maintenance window execution, lists the tasks that were run.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMaintenanceWindowExecutionTasksInput}.
    #
    # @option params [String] :window_execution_id
    #   <p>The ID of the maintenance window execution whose task executions should be retrieved.</p>
    #
    # @option params [Array<MaintenanceWindowFilter>] :filters
    #   <p>Optional filters used to scope down the returned tasks. The supported filter key is
    #       <code>STATUS</code> with the corresponding values <code>PENDING</code>,
    #      <code>IN_PROGRESS</code>, <code>SUCCESS</code>, <code>FAILED</code>, <code>TIMED_OUT</code>,
    #       <code>CANCELLING</code>, and <code>CANCELLED</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeMaintenanceWindowExecutionTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_execution_tasks(
    #     window_execution_id: 'WindowExecutionId', # required
    #     filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMaintenanceWindowExecutionTasksOutput
    #   resp.data.window_execution_task_identities #=> Array<MaintenanceWindowExecutionTaskIdentity>
    #   resp.data.window_execution_task_identities[0] #=> Types::MaintenanceWindowExecutionTaskIdentity
    #   resp.data.window_execution_task_identities[0].window_execution_id #=> String
    #   resp.data.window_execution_task_identities[0].task_execution_id #=> String
    #   resp.data.window_execution_task_identities[0].status #=> String, one of ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"]
    #   resp.data.window_execution_task_identities[0].status_details #=> String
    #   resp.data.window_execution_task_identities[0].start_time #=> Time
    #   resp.data.window_execution_task_identities[0].end_time #=> Time
    #   resp.data.window_execution_task_identities[0].task_arn #=> String
    #   resp.data.window_execution_task_identities[0].task_type #=> String, one of ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"]
    #   resp.data.next_token #=> String
    #
    def describe_maintenance_window_execution_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMaintenanceWindowExecutionTasksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMaintenanceWindowExecutionTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMaintenanceWindowExecutionTasks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeMaintenanceWindowExecutionTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMaintenanceWindowExecutionTasks,
        stubs: @stubs,
        params_class: Params::DescribeMaintenanceWindowExecutionTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_maintenance_window_execution_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the executions of a maintenance window. This includes information about when the
    #    maintenance window was scheduled to be active, and information about tasks registered and run
    #    with the maintenance window.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMaintenanceWindowExecutionsInput}.
    #
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window whose executions should be retrieved.</p>
    #
    # @option params [Array<MaintenanceWindowFilter>] :filters
    #   <p>Each entry in the array is a structure containing:</p>
    #            <ul>
    #               <li>
    #                  <p>Key. A string between 1 and 128 characters. Supported keys include
    #         <code>ExecutedBefore</code> and <code>ExecutedAfter</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Values. An array of strings, each between 1 and 256 characters. Supported values are
    #        date/time strings in a valid ISO 8601 date/time format, such as
    #         <code>2021-11-04T05:00:00Z</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeMaintenanceWindowExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_executions(
    #     window_id: 'WindowId', # required
    #     filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMaintenanceWindowExecutionsOutput
    #   resp.data.window_executions #=> Array<MaintenanceWindowExecution>
    #   resp.data.window_executions[0] #=> Types::MaintenanceWindowExecution
    #   resp.data.window_executions[0].window_id #=> String
    #   resp.data.window_executions[0].window_execution_id #=> String
    #   resp.data.window_executions[0].status #=> String, one of ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"]
    #   resp.data.window_executions[0].status_details #=> String
    #   resp.data.window_executions[0].start_time #=> Time
    #   resp.data.window_executions[0].end_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_maintenance_window_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMaintenanceWindowExecutionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMaintenanceWindowExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMaintenanceWindowExecutions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribeMaintenanceWindowExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMaintenanceWindowExecutions,
        stubs: @stubs,
        params_class: Params::DescribeMaintenanceWindowExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_maintenance_window_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about upcoming executions of a maintenance window.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMaintenanceWindowScheduleInput}.
    #
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window to retrieve information about.</p>
    #
    # @option params [Array<Target>] :targets
    #   <p>The managed node ID or key-value pair to retrieve information about.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of resource you want to retrieve information about. For example,
    #       <code>INSTANCE</code>.</p>
    #
    # @option params [Array<PatchOrchestratorFilter>] :filters
    #   <p>Filters used to limit the range of results. For example, you can limit maintenance window
    #      executions to only those scheduled before or after a certain date and time.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeMaintenanceWindowScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_schedule(
    #     window_id: 'WindowId',
    #     targets: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     resource_type: 'INSTANCE', # accepts ["INSTANCE", "RESOURCE_GROUP"]
    #     filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMaintenanceWindowScheduleOutput
    #   resp.data.scheduled_window_executions #=> Array<ScheduledWindowExecution>
    #   resp.data.scheduled_window_executions[0] #=> Types::ScheduledWindowExecution
    #   resp.data.scheduled_window_executions[0].window_id #=> String
    #   resp.data.scheduled_window_executions[0].name #=> String
    #   resp.data.scheduled_window_executions[0].execution_time #=> String
    #   resp.data.next_token #=> String
    #
    def describe_maintenance_window_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMaintenanceWindowScheduleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMaintenanceWindowScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMaintenanceWindowSchedule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeMaintenanceWindowSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMaintenanceWindowSchedule,
        stubs: @stubs,
        params_class: Params::DescribeMaintenanceWindowScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_maintenance_window_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the targets registered with the maintenance window.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMaintenanceWindowTargetsInput}.
    #
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window whose targets should be retrieved.</p>
    #
    # @option params [Array<MaintenanceWindowFilter>] :filters
    #   <p>Optional filters that can be used to narrow down the scope of the returned window targets.
    #      The supported filter keys are <code>Type</code>, <code>WindowTargetId</code>, and
    #       <code>OwnerInformation</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeMaintenanceWindowTargetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_targets(
    #     window_id: 'WindowId', # required
    #     filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMaintenanceWindowTargetsOutput
    #   resp.data.targets #=> Array<MaintenanceWindowTarget>
    #   resp.data.targets[0] #=> Types::MaintenanceWindowTarget
    #   resp.data.targets[0].window_id #=> String
    #   resp.data.targets[0].window_target_id #=> String
    #   resp.data.targets[0].resource_type #=> String, one of ["INSTANCE", "RESOURCE_GROUP"]
    #   resp.data.targets[0].targets #=> Array<Target>
    #   resp.data.targets[0].targets[0] #=> Types::Target
    #   resp.data.targets[0].targets[0].key #=> String
    #   resp.data.targets[0].targets[0].values #=> Array<String>
    #   resp.data.targets[0].targets[0].values[0] #=> String
    #   resp.data.targets[0].owner_information #=> String
    #   resp.data.targets[0].name #=> String
    #   resp.data.targets[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def describe_maintenance_window_targets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMaintenanceWindowTargetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMaintenanceWindowTargetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMaintenanceWindowTargets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeMaintenanceWindowTargets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMaintenanceWindowTargets,
        stubs: @stubs,
        params_class: Params::DescribeMaintenanceWindowTargetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_maintenance_window_targets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tasks in a maintenance window.</p>
    #          <note>
    #             <p>For maintenance window tasks without a specified target, you can't supply values for
    #      <code>--max-errors</code> and <code>--max-concurrency</code>. Instead, the system inserts a
    #     placeholder value of <code>1</code>, which may be reported in the response to this command.
    #     These values don't affect the running of your task and can be ignored.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeMaintenanceWindowTasksInput}.
    #
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window whose tasks should be retrieved.</p>
    #
    # @option params [Array<MaintenanceWindowFilter>] :filters
    #   <p>Optional filters used to narrow down the scope of the returned tasks. The supported filter
    #      keys are <code>WindowTaskId</code>, <code>TaskArn</code>, <code>Priority</code>, and
    #       <code>TaskType</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeMaintenanceWindowTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_tasks(
    #     window_id: 'WindowId', # required
    #     filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMaintenanceWindowTasksOutput
    #   resp.data.tasks #=> Array<MaintenanceWindowTask>
    #   resp.data.tasks[0] #=> Types::MaintenanceWindowTask
    #   resp.data.tasks[0].window_id #=> String
    #   resp.data.tasks[0].window_task_id #=> String
    #   resp.data.tasks[0].task_arn #=> String
    #   resp.data.tasks[0].type #=> String, one of ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"]
    #   resp.data.tasks[0].targets #=> Array<Target>
    #   resp.data.tasks[0].targets[0] #=> Types::Target
    #   resp.data.tasks[0].targets[0].key #=> String
    #   resp.data.tasks[0].targets[0].values #=> Array<String>
    #   resp.data.tasks[0].targets[0].values[0] #=> String
    #   resp.data.tasks[0].task_parameters #=> Hash<String, MaintenanceWindowTaskParameterValueExpression>
    #   resp.data.tasks[0].task_parameters['key'] #=> Types::MaintenanceWindowTaskParameterValueExpression
    #   resp.data.tasks[0].task_parameters['key'].values #=> Array<String>
    #   resp.data.tasks[0].task_parameters['key'].values[0] #=> String
    #   resp.data.tasks[0].priority #=> Integer
    #   resp.data.tasks[0].logging_info #=> Types::LoggingInfo
    #   resp.data.tasks[0].logging_info.s3_bucket_name #=> String
    #   resp.data.tasks[0].logging_info.s3_key_prefix #=> String
    #   resp.data.tasks[0].logging_info.s3_region #=> String
    #   resp.data.tasks[0].service_role_arn #=> String
    #   resp.data.tasks[0].max_concurrency #=> String
    #   resp.data.tasks[0].max_errors #=> String
    #   resp.data.tasks[0].name #=> String
    #   resp.data.tasks[0].description #=> String
    #   resp.data.tasks[0].cutoff_behavior #=> String, one of ["CONTINUE_TASK", "CANCEL_TASK"]
    #   resp.data.next_token #=> String
    #
    def describe_maintenance_window_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMaintenanceWindowTasksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMaintenanceWindowTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMaintenanceWindowTasks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::DescribeMaintenanceWindowTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMaintenanceWindowTasks,
        stubs: @stubs,
        params_class: Params::DescribeMaintenanceWindowTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_maintenance_window_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the maintenance windows in an Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMaintenanceWindowsInput}.
    #
    # @option params [Array<MaintenanceWindowFilter>] :filters
    #   <p>Optional filters used to narrow down the scope of the returned maintenance windows.
    #      Supported filter keys are <code>Name</code> and <code>Enabled</code>. For example,
    #       <code>Name=MyMaintenanceWindow</code> and <code>Enabled=True</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeMaintenanceWindowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_windows(
    #     filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMaintenanceWindowsOutput
    #   resp.data.window_identities #=> Array<MaintenanceWindowIdentity>
    #   resp.data.window_identities[0] #=> Types::MaintenanceWindowIdentity
    #   resp.data.window_identities[0].window_id #=> String
    #   resp.data.window_identities[0].name #=> String
    #   resp.data.window_identities[0].description #=> String
    #   resp.data.window_identities[0].enabled #=> Boolean
    #   resp.data.window_identities[0].duration #=> Integer
    #   resp.data.window_identities[0].cutoff #=> Integer
    #   resp.data.window_identities[0].schedule #=> String
    #   resp.data.window_identities[0].schedule_timezone #=> String
    #   resp.data.window_identities[0].schedule_offset #=> Integer
    #   resp.data.window_identities[0].end_date #=> String
    #   resp.data.window_identities[0].start_date #=> String
    #   resp.data.window_identities[0].next_execution_time #=> String
    #   resp.data.next_token #=> String
    #
    def describe_maintenance_windows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMaintenanceWindowsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMaintenanceWindowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMaintenanceWindows
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribeMaintenanceWindows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMaintenanceWindows,
        stubs: @stubs,
        params_class: Params::DescribeMaintenanceWindowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_maintenance_windows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the maintenance window targets or tasks that a managed node is
    #    associated with.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMaintenanceWindowsForTargetInput}.
    #
    # @option params [Array<Target>] :targets
    #   <p>The managed node ID or key-value pair to retrieve information about.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of resource you want to retrieve information about. For example,
    #       <code>INSTANCE</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeMaintenanceWindowsForTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_windows_for_target(
    #     targets: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ], # required
    #     resource_type: 'INSTANCE', # required - accepts ["INSTANCE", "RESOURCE_GROUP"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMaintenanceWindowsForTargetOutput
    #   resp.data.window_identities #=> Array<MaintenanceWindowIdentityForTarget>
    #   resp.data.window_identities[0] #=> Types::MaintenanceWindowIdentityForTarget
    #   resp.data.window_identities[0].window_id #=> String
    #   resp.data.window_identities[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def describe_maintenance_windows_for_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMaintenanceWindowsForTargetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMaintenanceWindowsForTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMaintenanceWindowsForTarget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribeMaintenanceWindowsForTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMaintenanceWindowsForTarget,
        stubs: @stubs,
        params_class: Params::DescribeMaintenanceWindowsForTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_maintenance_windows_for_target
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Query a set of OpsItems. You must have permission in Identity and Access Management (IAM) to query a list of OpsItems. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html">Getting started with
    #     OpsCenter</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #          <p>Operations engineers and IT professionals use Amazon Web Services Systems Manager OpsCenter to view, investigate, and
    #    remediate operational issues impacting the performance and health of their Amazon Web Services resources. For
    #    more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html">OpsCenter</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOpsItemsInput}.
    #
    # @option params [Array<OpsItemFilter>] :ops_item_filters
    #   <p>One or more filters to limit the response.</p>
    #            <ul>
    #               <li>
    #                  <p>Key: CreatedTime</p>
    #                  <p>Operations: GreaterThan, LessThan</p>
    #               </li>
    #               <li>
    #                  <p>Key: LastModifiedBy</p>
    #                  <p>Operations: Contains, Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: LastModifiedTime</p>
    #                  <p>Operations: GreaterThan, LessThan</p>
    #               </li>
    #               <li>
    #                  <p>Key: Priority</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: Source</p>
    #                  <p>Operations: Contains, Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: Status</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: Title*</p>
    #                  <p>Operations: Equals,Contains</p>
    #               </li>
    #               <li>
    #                  <p>Key: OperationalData**</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: OperationalDataKey</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: OperationalDataValue</p>
    #                  <p>Operations: Equals, Contains</p>
    #               </li>
    #               <li>
    #                  <p>Key: OpsItemId</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: ResourceId</p>
    #                  <p>Operations: Contains</p>
    #               </li>
    #               <li>
    #                  <p>Key: AutomationId</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #            </ul>
    #            <p>*The Equals operator for Title matches the first 100 characters. If you specify more than
    #      100 characters, they system returns an error that the filter value exceeds the length
    #      limit.</p>
    #            <p>**If you filter the response by using the OperationalData operator, specify a key-value pair
    #      by using the following JSON format: {"key":"key_name","value":"a_value"}</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #
    # @return [Types::DescribeOpsItemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ops_items(
    #     ops_item_filters: [
    #       {
    #         key: 'Status', # required - accepts ["Status", "CreatedBy", "Source", "Priority", "Title", "OpsItemId", "CreatedTime", "LastModifiedTime", "ActualStartTime", "ActualEndTime", "PlannedStartTime", "PlannedEndTime", "OperationalData", "OperationalDataKey", "OperationalDataValue", "ResourceId", "AutomationId", "Category", "Severity", "OpsItemType", "ChangeRequestByRequesterArn", "ChangeRequestByRequesterName", "ChangeRequestByApproverArn", "ChangeRequestByApproverName", "ChangeRequestByTemplate", "ChangeRequestByTargetsResourceGroup", "InsightByType"]
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'Equal' # required - accepts ["Equal", "Contains", "GreaterThan", "LessThan"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOpsItemsOutput
    #   resp.data.next_token #=> String
    #   resp.data.ops_item_summaries #=> Array<OpsItemSummary>
    #   resp.data.ops_item_summaries[0] #=> Types::OpsItemSummary
    #   resp.data.ops_item_summaries[0].created_by #=> String
    #   resp.data.ops_item_summaries[0].created_time #=> Time
    #   resp.data.ops_item_summaries[0].last_modified_by #=> String
    #   resp.data.ops_item_summaries[0].last_modified_time #=> Time
    #   resp.data.ops_item_summaries[0].priority #=> Integer
    #   resp.data.ops_item_summaries[0].source #=> String
    #   resp.data.ops_item_summaries[0].status #=> String, one of ["Open", "InProgress", "Resolved", "Pending", "TimedOut", "Cancelling", "Cancelled", "Failed", "CompletedWithSuccess", "CompletedWithFailure", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "PendingApproval", "Approved", "Rejected", "Closed"]
    #   resp.data.ops_item_summaries[0].ops_item_id #=> String
    #   resp.data.ops_item_summaries[0].title #=> String
    #   resp.data.ops_item_summaries[0].operational_data #=> Hash<String, OpsItemDataValue>
    #   resp.data.ops_item_summaries[0].operational_data['key'] #=> Types::OpsItemDataValue
    #   resp.data.ops_item_summaries[0].operational_data['key'].value #=> String
    #   resp.data.ops_item_summaries[0].operational_data['key'].type #=> String, one of ["SearchableString", "String"]
    #   resp.data.ops_item_summaries[0].category #=> String
    #   resp.data.ops_item_summaries[0].severity #=> String
    #   resp.data.ops_item_summaries[0].ops_item_type #=> String
    #   resp.data.ops_item_summaries[0].actual_start_time #=> Time
    #   resp.data.ops_item_summaries[0].actual_end_time #=> Time
    #   resp.data.ops_item_summaries[0].planned_start_time #=> Time
    #   resp.data.ops_item_summaries[0].planned_end_time #=> Time
    #
    def describe_ops_items(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOpsItemsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOpsItemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOpsItems
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribeOpsItems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOpsItems,
        stubs: @stubs,
        params_class: Params::DescribeOpsItemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_ops_items
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get information about a parameter.</p>
    #          <p>Request results are returned on a best-effort basis. If you specify <code>MaxResults</code>
    #    in the request, the response includes information up to the limit specified. The number of items
    #    returned, however, can be between zero and the value of <code>MaxResults</code>. If the service
    #    reaches an internal limit while processing the results, it stops the operation and returns the
    #    matching values up to that point and a <code>NextToken</code>. You can specify the
    #     <code>NextToken</code> in a subsequent call to get the next set of results.</p>
    #          <important>
    #             <p>If you change the KMS key alias for the KMS key used to encrypt a parameter, then you must
    #     also update the key alias the parameter uses to reference KMS. Otherwise,
    #      <code>DescribeParameters</code> retrieves whatever the original key alias was
    #     referencing.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::DescribeParametersInput}.
    #
    # @option params [Array<ParametersFilter>] :filters
    #   <p>This data type is deprecated. Instead, use <code>ParameterFilters</code>.</p>
    #
    # @option params [Array<ParameterStringFilter>] :parameter_filters
    #   <p>Filters to limit the request results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribeParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_parameters(
    #     filters: [
    #       {
    #         key: 'Name', # required - accepts ["Name", "Type", "KeyId"]
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     parameter_filters: [
    #       {
    #         key: 'Key', # required
    #         option: 'Option',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeParametersOutput
    #   resp.data.parameters #=> Array<ParameterMetadata>
    #   resp.data.parameters[0] #=> Types::ParameterMetadata
    #   resp.data.parameters[0].name #=> String
    #   resp.data.parameters[0].type #=> String, one of ["String", "StringList", "SecureString"]
    #   resp.data.parameters[0].key_id #=> String
    #   resp.data.parameters[0].last_modified_date #=> Time
    #   resp.data.parameters[0].last_modified_user #=> String
    #   resp.data.parameters[0].description #=> String
    #   resp.data.parameters[0].allowed_pattern #=> String
    #   resp.data.parameters[0].version #=> Integer
    #   resp.data.parameters[0].tier #=> String, one of ["Standard", "Advanced", "Intelligent-Tiering"]
    #   resp.data.parameters[0].policies #=> Array<ParameterInlinePolicy>
    #   resp.data.parameters[0].policies[0] #=> Types::ParameterInlinePolicy
    #   resp.data.parameters[0].policies[0].policy_text #=> String
    #   resp.data.parameters[0].policies[0].policy_type #=> String
    #   resp.data.parameters[0].policies[0].policy_status #=> String
    #   resp.data.parameters[0].data_type #=> String
    #   resp.data.next_token #=> String
    #
    def describe_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeParametersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeParameters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterKey, Errors::InvalidFilterOption, Errors::InternalServerError, Errors::InvalidNextToken, Errors::InvalidFilterValue]),
        data_parser: Parsers::DescribeParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeParameters,
        stubs: @stubs,
        params_class: Params::DescribeParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the patch baselines in your Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePatchBaselinesInput}.
    #
    # @option params [Array<PatchOrchestratorFilter>] :filters
    #   <p>Each element in the array is a structure containing a key-value pair.</p>
    #            <p>Supported keys for <code>DescribePatchBaselines</code> include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NAME_PREFIX</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AWS-</code> | <code>My-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>OWNER</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AWS</code> | <code>Self</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>OPERATING_SYSTEM</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AMAZON_LINUX</code> | <code>SUSE</code> | <code>WINDOWS</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of patch baselines to return (per page).</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribePatchBaselinesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_patch_baselines(
    #     filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePatchBaselinesOutput
    #   resp.data.baseline_identities #=> Array<PatchBaselineIdentity>
    #   resp.data.baseline_identities[0] #=> Types::PatchBaselineIdentity
    #   resp.data.baseline_identities[0].baseline_id #=> String
    #   resp.data.baseline_identities[0].baseline_name #=> String
    #   resp.data.baseline_identities[0].operating_system #=> String, one of ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #   resp.data.baseline_identities[0].baseline_description #=> String
    #   resp.data.baseline_identities[0].default_baseline #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_patch_baselines(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePatchBaselinesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePatchBaselinesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePatchBaselines
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribePatchBaselines
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePatchBaselines,
        stubs: @stubs,
        params_class: Params::DescribePatchBaselinesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_patch_baselines
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns high-level aggregated patch compliance state information for a patch group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePatchGroupStateInput}.
    #
    # @option params [String] :patch_group
    #   <p>The name of the patch group whose patch snapshot should be retrieved.</p>
    #
    # @return [Types::DescribePatchGroupStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_patch_group_state(
    #     patch_group: 'PatchGroup' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePatchGroupStateOutput
    #   resp.data.instances #=> Integer
    #   resp.data.instances_with_installed_patches #=> Integer
    #   resp.data.instances_with_installed_other_patches #=> Integer
    #   resp.data.instances_with_installed_pending_reboot_patches #=> Integer
    #   resp.data.instances_with_installed_rejected_patches #=> Integer
    #   resp.data.instances_with_missing_patches #=> Integer
    #   resp.data.instances_with_failed_patches #=> Integer
    #   resp.data.instances_with_not_applicable_patches #=> Integer
    #   resp.data.instances_with_unreported_not_applicable_patches #=> Integer
    #   resp.data.instances_with_critical_non_compliant_patches #=> Integer
    #   resp.data.instances_with_security_non_compliant_patches #=> Integer
    #   resp.data.instances_with_other_non_compliant_patches #=> Integer
    #
    def describe_patch_group_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePatchGroupStateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePatchGroupStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePatchGroupState
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::DescribePatchGroupState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePatchGroupState,
        stubs: @stubs,
        params_class: Params::DescribePatchGroupStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_patch_group_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all patch groups that have been registered with patch baselines.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePatchGroupsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of patch groups to return (per page).</p>
    #
    # @option params [Array<PatchOrchestratorFilter>] :filters
    #   <p>Each element in the array is a structure containing a key-value pair.</p>
    #            <p>Supported keys for <code>DescribePatchGroups</code> include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NAME_PREFIX</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AWS-</code> | <code>My-</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>OPERATING_SYSTEM</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AMAZON_LINUX</code> | <code>SUSE</code> | <code>WINDOWS</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribePatchGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_patch_groups(
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePatchGroupsOutput
    #   resp.data.mappings #=> Array<PatchGroupPatchBaselineMapping>
    #   resp.data.mappings[0] #=> Types::PatchGroupPatchBaselineMapping
    #   resp.data.mappings[0].patch_group #=> String
    #   resp.data.mappings[0].baseline_identity #=> Types::PatchBaselineIdentity
    #   resp.data.mappings[0].baseline_identity.baseline_id #=> String
    #   resp.data.mappings[0].baseline_identity.baseline_name #=> String
    #   resp.data.mappings[0].baseline_identity.operating_system #=> String, one of ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #   resp.data.mappings[0].baseline_identity.baseline_description #=> String
    #   resp.data.mappings[0].baseline_identity.default_baseline #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_patch_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePatchGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePatchGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePatchGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribePatchGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePatchGroups,
        stubs: @stubs,
        params_class: Params::DescribePatchGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_patch_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the properties of available patches organized by product, product family,
    #    classification, severity, and other properties of available patches. You can use the reported
    #    properties in the filters you specify in requests for operations such as <a>CreatePatchBaseline</a>, <a>UpdatePatchBaseline</a>, <a>DescribeAvailablePatches</a>, and <a>DescribePatchBaselines</a>.</p>
    #          <p>The following section lists the properties that can be used in filters for each major
    #    operating system type:</p>
    #          <dl>
    #             <dt>AMAZON_LINUX</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>CLASSIFICATION</code> |
    #        <code>SEVERITY</code>
    #                </p>
    #             </dd>
    #             <dt>AMAZON_LINUX_2</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>CLASSIFICATION</code> |
    #        <code>SEVERITY</code>
    #                </p>
    #             </dd>
    #             <dt>CENTOS</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>CLASSIFICATION</code> |
    #        <code>SEVERITY</code>
    #                </p>
    #             </dd>
    #             <dt>DEBIAN</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>PRIORITY</code>
    #                </p>
    #             </dd>
    #             <dt>MACOS</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>CLASSIFICATION</code>
    #                </p>
    #             </dd>
    #             <dt>ORACLE_LINUX</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>CLASSIFICATION</code> |
    #        <code>SEVERITY</code>
    #                </p>
    #             </dd>
    #             <dt>REDHAT_ENTERPRISE_LINUX</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>CLASSIFICATION</code> |
    #        <code>SEVERITY</code>
    #                </p>
    #             </dd>
    #             <dt>SUSE</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>CLASSIFICATION</code> |
    #        <code>SEVERITY</code>
    #                </p>
    #             </dd>
    #             <dt>UBUNTU</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>PRIORITY</code>
    #                </p>
    #             </dd>
    #             <dt>WINDOWS</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>PRODUCT_FAMILY</code> |
    #        <code>CLASSIFICATION</code> | <code>MSRC_SEVERITY</code>
    #                </p>
    #             </dd>
    #          </dl>
    #
    # @param [Hash] params
    #   See {Types::DescribePatchPropertiesInput}.
    #
    # @option params [String] :operating_system
    #   <p>The operating system type for which to list patches.</p>
    #
    # @option params [String] :property
    #   <p>The patch property for which you want to view patch details. </p>
    #
    # @option params [String] :patch_set
    #   <p>Indicates whether to list patches for the Windows operating system or for applications
    #      released by Microsoft. Not applicable for the Linux or macOS operating systems.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::DescribePatchPropertiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_patch_properties(
    #     operating_system: 'WINDOWS', # required - accepts ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #     property: 'PRODUCT', # required - accepts ["PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "MSRC_SEVERITY", "PRIORITY", "SEVERITY"]
    #     patch_set: 'OS', # accepts ["OS", "APPLICATION"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePatchPropertiesOutput
    #   resp.data.properties #=> Array<Hash<String, String>>
    #   resp.data.properties[0] #=> Hash<String, String>
    #   resp.data.properties[0]['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def describe_patch_properties(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePatchPropertiesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePatchPropertiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePatchProperties
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribePatchProperties
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePatchProperties,
        stubs: @stubs,
        params_class: Params::DescribePatchPropertiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_patch_properties
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of all active sessions (both connected and disconnected) or terminated
    #    sessions from the past 30 days.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSessionsInput}.
    #
    # @option params [String] :state
    #   <p>The session status to retrieve a list of sessions for. For example, "Active".</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @option params [Array<SessionFilter>] :filters
    #   <p>One or more filters to limit the type of sessions returned by the request.</p>
    #
    # @return [Types::DescribeSessionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_sessions(
    #     state: 'Active', # required - accepts ["Active", "History"]
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         key: 'InvokedAfter', # required - accepts ["InvokedAfter", "InvokedBefore", "Target", "Owner", "Status", "SessionId"]
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSessionsOutput
    #   resp.data.sessions #=> Array<Session>
    #   resp.data.sessions[0] #=> Types::Session
    #   resp.data.sessions[0].session_id #=> String
    #   resp.data.sessions[0].target #=> String
    #   resp.data.sessions[0].status #=> String, one of ["Connected", "Connecting", "Disconnected", "Terminated", "Terminating", "Failed"]
    #   resp.data.sessions[0].start_date #=> Time
    #   resp.data.sessions[0].end_date #=> Time
    #   resp.data.sessions[0].document_name #=> String
    #   resp.data.sessions[0].owner #=> String
    #   resp.data.sessions[0].reason #=> String
    #   resp.data.sessions[0].details #=> String
    #   resp.data.sessions[0].output_url #=> Types::SessionManagerOutputUrl
    #   resp.data.sessions[0].output_url.s3_output_url #=> String
    #   resp.data.sessions[0].output_url.cloud_watch_output_url #=> String
    #   resp.data.sessions[0].max_session_duration #=> String
    #   resp.data.next_token #=> String
    #
    def describe_sessions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSessionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSessionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSessions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterKey, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::DescribeSessions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSessions,
        stubs: @stubs,
        params_class: Params::DescribeSessionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_sessions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the association between an OpsItem and a related item. For example, this API
    #    operation can delete an Incident Manager incident from an OpsItem. Incident Manager is a capability of
    #    Amazon Web Services Systems Manager.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateOpsItemRelatedItemInput}.
    #
    # @option params [String] :ops_item_id
    #   <p>The ID of the OpsItem for which you want to delete an association between the OpsItem and a
    #      related item.</p>
    #
    # @option params [String] :association_id
    #   <p>The ID of the association for which you want to delete an association between the OpsItem
    #      and a related item.</p>
    #
    # @return [Types::DisassociateOpsItemRelatedItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_ops_item_related_item(
    #     ops_item_id: 'OpsItemId', # required
    #     association_id: 'AssociationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateOpsItemRelatedItemOutput
    #
    def disassociate_ops_item_related_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateOpsItemRelatedItemInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateOpsItemRelatedItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateOpsItemRelatedItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OpsItemRelatedItemAssociationNotFoundException, Errors::OpsItemNotFoundException, Errors::OpsItemInvalidParameterException, Errors::InternalServerError]),
        data_parser: Parsers::DisassociateOpsItemRelatedItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateOpsItemRelatedItem,
        stubs: @stubs,
        params_class: Params::DisassociateOpsItemRelatedItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_ops_item_related_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get detailed information about a particular Automation execution.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAutomationExecutionInput}.
    #
    # @option params [String] :automation_execution_id
    #   <p>The unique identifier for an existing automation execution to examine. The execution ID is
    #      returned by StartAutomationExecution when the execution of an Automation runbook is
    #      initiated.</p>
    #
    # @return [Types::GetAutomationExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_automation_execution(
    #     automation_execution_id: 'AutomationExecutionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAutomationExecutionOutput
    #   resp.data.automation_execution #=> Types::AutomationExecution
    #   resp.data.automation_execution.automation_execution_id #=> String
    #   resp.data.automation_execution.document_name #=> String
    #   resp.data.automation_execution.document_version #=> String
    #   resp.data.automation_execution.execution_start_time #=> Time
    #   resp.data.automation_execution.execution_end_time #=> Time
    #   resp.data.automation_execution.automation_execution_status #=> String, one of ["Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed", "PendingApproval", "Approved", "Rejected", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "CompletedWithSuccess", "CompletedWithFailure"]
    #   resp.data.automation_execution.step_executions #=> Array<StepExecution>
    #   resp.data.automation_execution.step_executions[0] #=> Types::StepExecution
    #   resp.data.automation_execution.step_executions[0].step_name #=> String
    #   resp.data.automation_execution.step_executions[0].action #=> String
    #   resp.data.automation_execution.step_executions[0].timeout_seconds #=> Integer
    #   resp.data.automation_execution.step_executions[0].on_failure #=> String
    #   resp.data.automation_execution.step_executions[0].max_attempts #=> Integer
    #   resp.data.automation_execution.step_executions[0].execution_start_time #=> Time
    #   resp.data.automation_execution.step_executions[0].execution_end_time #=> Time
    #   resp.data.automation_execution.step_executions[0].step_status #=> String, one of ["Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed", "PendingApproval", "Approved", "Rejected", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "CompletedWithSuccess", "CompletedWithFailure"]
    #   resp.data.automation_execution.step_executions[0].response_code #=> String
    #   resp.data.automation_execution.step_executions[0].inputs #=> Hash<String, String>
    #   resp.data.automation_execution.step_executions[0].inputs['key'] #=> String
    #   resp.data.automation_execution.step_executions[0].outputs #=> Hash<String, Array<String>>
    #   resp.data.automation_execution.step_executions[0].outputs['key'] #=> Array<String>
    #   resp.data.automation_execution.step_executions[0].outputs['key'][0] #=> String
    #   resp.data.automation_execution.step_executions[0].response #=> String
    #   resp.data.automation_execution.step_executions[0].failure_message #=> String
    #   resp.data.automation_execution.step_executions[0].failure_details #=> Types::FailureDetails
    #   resp.data.automation_execution.step_executions[0].failure_details.failure_stage #=> String
    #   resp.data.automation_execution.step_executions[0].failure_details.failure_type #=> String
    #   resp.data.automation_execution.step_executions[0].failure_details.details #=> Hash<String, Array<String>>
    #   resp.data.automation_execution.step_executions[0].step_execution_id #=> String
    #   resp.data.automation_execution.step_executions[0].overridden_parameters #=> Hash<String, Array<String>>
    #   resp.data.automation_execution.step_executions[0].is_end #=> Boolean
    #   resp.data.automation_execution.step_executions[0].next_step #=> String
    #   resp.data.automation_execution.step_executions[0].is_critical #=> Boolean
    #   resp.data.automation_execution.step_executions[0].valid_next_steps #=> Array<String>
    #   resp.data.automation_execution.step_executions[0].valid_next_steps[0] #=> String
    #   resp.data.automation_execution.step_executions[0].targets #=> Array<Target>
    #   resp.data.automation_execution.step_executions[0].targets[0] #=> Types::Target
    #   resp.data.automation_execution.step_executions[0].targets[0].key #=> String
    #   resp.data.automation_execution.step_executions[0].targets[0].values #=> Array<String>
    #   resp.data.automation_execution.step_executions[0].targets[0].values[0] #=> String
    #   resp.data.automation_execution.step_executions[0].target_location #=> Types::TargetLocation
    #   resp.data.automation_execution.step_executions[0].target_location.accounts #=> Array<String>
    #   resp.data.automation_execution.step_executions[0].target_location.accounts[0] #=> String
    #   resp.data.automation_execution.step_executions[0].target_location.regions #=> Array<String>
    #   resp.data.automation_execution.step_executions[0].target_location.regions[0] #=> String
    #   resp.data.automation_execution.step_executions[0].target_location.target_location_max_concurrency #=> String
    #   resp.data.automation_execution.step_executions[0].target_location.target_location_max_errors #=> String
    #   resp.data.automation_execution.step_executions[0].target_location.execution_role_name #=> String
    #   resp.data.automation_execution.step_executions_truncated #=> Boolean
    #   resp.data.automation_execution.parameters #=> Hash<String, Array<String>>
    #   resp.data.automation_execution.outputs #=> Hash<String, Array<String>>
    #   resp.data.automation_execution.failure_message #=> String
    #   resp.data.automation_execution.mode #=> String, one of ["Auto", "Interactive"]
    #   resp.data.automation_execution.parent_automation_execution_id #=> String
    #   resp.data.automation_execution.executed_by #=> String
    #   resp.data.automation_execution.current_step_name #=> String
    #   resp.data.automation_execution.current_action #=> String
    #   resp.data.automation_execution.target_parameter_name #=> String
    #   resp.data.automation_execution.targets #=> Array<Target>
    #   resp.data.automation_execution.target_maps #=> Array<Hash<String, Array<String>>>
    #   resp.data.automation_execution.target_maps[0] #=> Hash<String, Array<String>>
    #   resp.data.automation_execution.target_maps[0]['key'] #=> Array<String>
    #   resp.data.automation_execution.target_maps[0]['key'][0] #=> String
    #   resp.data.automation_execution.resolved_targets #=> Types::ResolvedTargets
    #   resp.data.automation_execution.resolved_targets.parameter_values #=> Array<String>
    #   resp.data.automation_execution.resolved_targets.parameter_values[0] #=> String
    #   resp.data.automation_execution.resolved_targets.truncated #=> Boolean
    #   resp.data.automation_execution.max_concurrency #=> String
    #   resp.data.automation_execution.max_errors #=> String
    #   resp.data.automation_execution.target #=> String
    #   resp.data.automation_execution.target_locations #=> Array<TargetLocation>
    #   resp.data.automation_execution.progress_counters #=> Types::ProgressCounters
    #   resp.data.automation_execution.progress_counters.total_steps #=> Integer
    #   resp.data.automation_execution.progress_counters.success_steps #=> Integer
    #   resp.data.automation_execution.progress_counters.failed_steps #=> Integer
    #   resp.data.automation_execution.progress_counters.cancelled_steps #=> Integer
    #   resp.data.automation_execution.progress_counters.timed_out_steps #=> Integer
    #   resp.data.automation_execution.automation_subtype #=> String, one of ["ChangeRequest"]
    #   resp.data.automation_execution.scheduled_time #=> Time
    #   resp.data.automation_execution.runbooks #=> Array<Runbook>
    #   resp.data.automation_execution.runbooks[0] #=> Types::Runbook
    #   resp.data.automation_execution.runbooks[0].document_name #=> String
    #   resp.data.automation_execution.runbooks[0].document_version #=> String
    #   resp.data.automation_execution.runbooks[0].parameters #=> Hash<String, Array<String>>
    #   resp.data.automation_execution.runbooks[0].target_parameter_name #=> String
    #   resp.data.automation_execution.runbooks[0].targets #=> Array<Target>
    #   resp.data.automation_execution.runbooks[0].target_maps #=> Array<Hash<String, Array<String>>>
    #   resp.data.automation_execution.runbooks[0].max_concurrency #=> String
    #   resp.data.automation_execution.runbooks[0].max_errors #=> String
    #   resp.data.automation_execution.runbooks[0].target_locations #=> Array<TargetLocation>
    #   resp.data.automation_execution.ops_item_id #=> String
    #   resp.data.automation_execution.association_id #=> String
    #   resp.data.automation_execution.change_request_name #=> String
    #
    def get_automation_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAutomationExecutionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAutomationExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAutomationExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::AutomationExecutionNotFoundException]),
        data_parser: Parsers::GetAutomationExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAutomationExecution,
        stubs: @stubs,
        params_class: Params::GetAutomationExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_automation_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the state of a Amazon Web Services Systems Manager change calendar at the current time or a specified time. If
    #    you specify a time, <code>GetCalendarState</code> returns the state of the calendar at that
    #    specific time, and returns the next time that the change calendar state will transition. If you
    #    don't specify a time, <code>GetCalendarState</code> uses the current time. Change Calendar
    #    entries have two possible states: <code>OPEN</code> or <code>CLOSED</code>.</p>
    #          <p>If you specify more than one calendar in a request, the command returns the status of
    #     <code>OPEN</code> only if all calendars in the request are open. If one or more calendars in the
    #    request are closed, the status returned is <code>CLOSED</code>.</p>
    #          <p>For more information about Change Calendar, a capability of Amazon Web Services Systems Manager, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar.html">Amazon Web Services Systems Manager Change Calendar</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCalendarStateInput}.
    #
    # @option params [Array<String>] :calendar_names
    #   <p>The names or Amazon Resource Names (ARNs) of the Systems Manager documents (SSM documents) that
    #      represent the calendar entries for which you want to get the state.</p>
    #
    # @option params [String] :at_time
    #   <p>(Optional) The specific time for which you want to get calendar state information, in <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO 8601</a> format. If you don't specify a
    #      value or <code>AtTime</code>, the current time is used.</p>
    #
    # @return [Types::GetCalendarStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_calendar_state(
    #     calendar_names: [
    #       'member'
    #     ], # required
    #     at_time: 'AtTime'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCalendarStateOutput
    #   resp.data.state #=> String, one of ["OPEN", "CLOSED"]
    #   resp.data.at_time #=> String
    #   resp.data.next_transition_time #=> String
    #
    def get_calendar_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCalendarStateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCalendarStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCalendarState
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDocumentType, Errors::InvalidDocument, Errors::InternalServerError, Errors::UnsupportedCalendarException]),
        data_parser: Parsers::GetCalendarState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCalendarState,
        stubs: @stubs,
        params_class: Params::GetCalendarStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_calendar_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed information about command execution for an invocation or plugin.</p>
    #          <p>
    #             <code>GetCommandInvocation</code> only gives the execution status of a plugin in a document.
    #    To get the command execution status on a specific managed node, use <a>ListCommandInvocations</a>. To get the command execution status across managed nodes,
    #    use <a>ListCommands</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCommandInvocationInput}.
    #
    # @option params [String] :command_id
    #   <p>(Required) The parent command ID of the invocation plugin.</p>
    #
    # @option params [String] :instance_id
    #   <p>(Required) The ID of the managed node targeted by the command. A <i>managed
    #       node</i> can be an Amazon Elastic Compute Cloud (Amazon EC2) instance, edge device, and on-premises server or VM
    #      in your hybrid environment that is configured for Amazon Web Services Systems Manager.</p>
    #
    # @option params [String] :plugin_name
    #   <p>The name of the step for which you want detailed results. If the document contains only one
    #      step, you can omit the name and details for that step. If the document contains more than one
    #      step, you must specify the name of the step for which you want to view details. Be sure to
    #      specify the name of the step, not the name of a plugin like
    #      <code>aws:RunShellScript</code>.</p>
    #            <p>To find the <code>PluginName</code>, check the document content and find the name of the
    #      step you want details for. Alternatively, use <a>ListCommandInvocations</a> with the
    #       <code>CommandId</code> and <code>Details</code> parameters. The <code>PluginName</code> is the
    #       <code>Name</code> attribute of the <code>CommandPlugin</code> object in the
    #       <code>CommandPlugins</code> list.</p>
    #
    # @return [Types::GetCommandInvocationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_command_invocation(
    #     command_id: 'CommandId', # required
    #     instance_id: 'InstanceId', # required
    #     plugin_name: 'PluginName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCommandInvocationOutput
    #   resp.data.command_id #=> String
    #   resp.data.instance_id #=> String
    #   resp.data.comment #=> String
    #   resp.data.document_name #=> String
    #   resp.data.document_version #=> String
    #   resp.data.plugin_name #=> String
    #   resp.data.response_code #=> Integer
    #   resp.data.execution_start_date_time #=> String
    #   resp.data.execution_elapsed_time #=> String
    #   resp.data.execution_end_date_time #=> String
    #   resp.data.status #=> String, one of ["Pending", "InProgress", "Delayed", "Success", "Cancelled", "TimedOut", "Failed", "Cancelling"]
    #   resp.data.status_details #=> String
    #   resp.data.standard_output_content #=> String
    #   resp.data.standard_output_url #=> String
    #   resp.data.standard_error_content #=> String
    #   resp.data.standard_error_url #=> String
    #   resp.data.cloud_watch_output_config #=> Types::CloudWatchOutputConfig
    #   resp.data.cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.data.cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #
    def get_command_invocation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCommandInvocationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCommandInvocationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCommandInvocation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInstanceId, Errors::InvalidPluginName, Errors::InvalidCommandId, Errors::InvocationDoesNotExist, Errors::InternalServerError]),
        data_parser: Parsers::GetCommandInvocation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCommandInvocation,
        stubs: @stubs,
        params_class: Params::GetCommandInvocationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_command_invocation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the Session Manager connection status for a managed node to determine whether it is running
    #    and ready to receive Session Manager connections.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConnectionStatusInput}.
    #
    # @option params [String] :target
    #   <p>The managed node ID.</p>
    #
    # @return [Types::GetConnectionStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection_status(
    #     target: 'Target' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConnectionStatusOutput
    #   resp.data.target #=> String
    #   resp.data.status #=> String, one of ["Connected", "NotConnected"]
    #
    def get_connection_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConnectionStatusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConnectionStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConnectionStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::GetConnectionStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConnectionStatus,
        stubs: @stubs,
        params_class: Params::GetConnectionStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_connection_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the default patch baseline. Amazon Web Services Systems Manager supports creating multiple default patch
    #    baselines. For example, you can create a default patch baseline for each operating system.</p>
    #          <p>If you don't specify an operating system value, the default patch baseline for Windows is
    #    returned.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDefaultPatchBaselineInput}.
    #
    # @option params [String] :operating_system
    #   <p>Returns the default patch baseline for the specified operating system.</p>
    #
    # @return [Types::GetDefaultPatchBaselineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_default_patch_baseline(
    #     operating_system: 'WINDOWS' # accepts ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDefaultPatchBaselineOutput
    #   resp.data.baseline_id #=> String
    #   resp.data.operating_system #=> String, one of ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #
    def get_default_patch_baseline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDefaultPatchBaselineInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDefaultPatchBaselineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDefaultPatchBaseline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::GetDefaultPatchBaseline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDefaultPatchBaseline,
        stubs: @stubs,
        params_class: Params::GetDefaultPatchBaselineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_default_patch_baseline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the current snapshot for the patch baseline the managed node uses. This API is
    #    primarily used by the <code>AWS-RunPatchBaseline</code> Systems Manager document (SSM document).</p>
    #          <note>
    #             <p>If you run the command locally, such as with the Command Line Interface (CLI), the system attempts to use your local Amazon Web Services credentials and the operation fails. To avoid
    #     this, you can run the command in the Amazon Web Services Systems Manager console. Use Run Command, a capability of
    #     Amazon Web Services Systems Manager, with an SSM document that enables you to target a managed node with a script or
    #     command. For example, run the command using the <code>AWS-RunShellScript</code> document or the
    #      <code>AWS-RunPowerShellScript</code> document.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetDeployablePatchSnapshotForInstanceInput}.
    #
    # @option params [String] :instance_id
    #   <p>The ID of the managed node for which the appropriate patch snapshot should be
    #      retrieved.</p>
    #
    # @option params [String] :snapshot_id
    #   <p>The snapshot ID provided by the user when running <code>AWS-RunPatchBaseline</code>.</p>
    #
    # @option params [BaselineOverride] :baseline_override
    #   <p>Defines the basic information about a patch baseline override.</p>
    #
    # @return [Types::GetDeployablePatchSnapshotForInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployable_patch_snapshot_for_instance(
    #     instance_id: 'InstanceId', # required
    #     snapshot_id: 'SnapshotId', # required
    #     baseline_override: {
    #       operating_system: 'WINDOWS', # accepts ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #       global_filters: {
    #         patch_filters: [
    #           {
    #             key: 'ARCH', # required - accepts ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"]
    #             values: [
    #               'member'
    #             ] # required
    #           }
    #         ] # required
    #       },
    #       approval_rules: {
    #         patch_rules: [
    #           {
    #             compliance_level: 'CRITICAL', # accepts ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #             approve_after_days: 1,
    #             approve_until_date: 'ApproveUntilDate',
    #             enable_non_security: false
    #           }
    #         ] # required
    #       },
    #       approved_patches: [
    #         'member'
    #       ],
    #       approved_patches_compliance_level: 'CRITICAL', # accepts ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #       rejected_patches_action: 'ALLOW_AS_DEPENDENCY', # accepts ["ALLOW_AS_DEPENDENCY", "BLOCK"]
    #       approved_patches_enable_non_security: false,
    #       sources: [
    #         {
    #           name: 'Name', # required
    #           products: [
    #             'member'
    #           ], # required
    #           configuration: 'Configuration' # required
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeployablePatchSnapshotForInstanceOutput
    #   resp.data.instance_id #=> String
    #   resp.data.snapshot_id #=> String
    #   resp.data.snapshot_download_url #=> String
    #   resp.data.product #=> String
    #
    def get_deployable_patch_snapshot_for_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeployablePatchSnapshotForInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeployablePatchSnapshotForInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeployablePatchSnapshotForInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperatingSystem, Errors::UnsupportedFeatureRequiredException, Errors::InternalServerError]),
        data_parser: Parsers::GetDeployablePatchSnapshotForInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeployablePatchSnapshotForInstance,
        stubs: @stubs,
        params_class: Params::GetDeployablePatchSnapshotForInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_deployable_patch_snapshot_for_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the contents of the specified Amazon Web Services Systems Manager document (SSM document).</p>
    #
    # @param [Hash] params
    #   See {Types::GetDocumentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the SSM document.</p>
    #
    # @option params [String] :version_name
    #   <p>An optional field specifying the version of the artifact associated with the document. For
    #      example, "Release 12, Update 6". This value is unique across all versions of a document and can't
    #      be changed.</p>
    #
    # @option params [String] :document_version
    #   <p>The document version for which you want information.</p>
    #
    # @option params [String] :document_format
    #   <p>Returns the document in the specified format. The document format can be either JSON or
    #      YAML. JSON is the default format.</p>
    #
    # @return [Types::GetDocumentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_document(
    #     name: 'Name', # required
    #     version_name: 'VersionName',
    #     document_version: 'DocumentVersion',
    #     document_format: 'YAML' # accepts ["YAML", "JSON", "TEXT"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDocumentOutput
    #   resp.data.name #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.display_name #=> String
    #   resp.data.version_name #=> String
    #   resp.data.document_version #=> String
    #   resp.data.status #=> String, one of ["Creating", "Active", "Updating", "Deleting", "Failed"]
    #   resp.data.status_information #=> String
    #   resp.data.content #=> String
    #   resp.data.document_type #=> String, one of ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate"]
    #   resp.data.document_format #=> String, one of ["YAML", "JSON", "TEXT"]
    #   resp.data.requires #=> Array<DocumentRequires>
    #   resp.data.requires[0] #=> Types::DocumentRequires
    #   resp.data.requires[0].name #=> String
    #   resp.data.requires[0].version #=> String
    #   resp.data.attachments_content #=> Array<AttachmentContent>
    #   resp.data.attachments_content[0] #=> Types::AttachmentContent
    #   resp.data.attachments_content[0].name #=> String
    #   resp.data.attachments_content[0].size #=> Integer
    #   resp.data.attachments_content[0].member_hash #=> String
    #   resp.data.attachments_content[0].hash_type #=> String, one of ["Sha256"]
    #   resp.data.attachments_content[0].url #=> String
    #   resp.data.review_status #=> String, one of ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #
    def get_document(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDocumentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDocumentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDocument
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDocumentVersion, Errors::InvalidDocument, Errors::InternalServerError]),
        data_parser: Parsers::GetDocument
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDocument,
        stubs: @stubs,
        params_class: Params::GetDocumentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_document
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Query inventory information. This includes managed node status, such as <code>Stopped</code>
    #    or <code>Terminated</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInventoryInput}.
    #
    # @option params [Array<InventoryFilter>] :filters
    #   <p>One or more filters. Use a filter to return a more specific list of results.</p>
    #
    # @option params [Array<InventoryAggregator>] :aggregators
    #   <p>Returns counts of inventory types based on one or more expressions. For example, if you
    #      aggregate by using an expression that uses the <code>AWS:InstanceInformation.PlatformType</code>
    #      type, you can see a count of how many Windows and Linux managed nodes exist in your inventoried
    #      fleet.</p>
    #
    # @option params [Array<ResultAttribute>] :result_attributes
    #   <p>The list of inventory item types to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @return [Types::GetInventoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_inventory(
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         values: [
    #           'member'
    #         ], # required
    #         type: 'Equal' # accepts ["Equal", "NotEqual", "BeginWith", "LessThan", "GreaterThan", "Exists"]
    #       }
    #     ],
    #     aggregators: [
    #       {
    #         expression: 'Expression',
    #         groups: [
    #           {
    #             name: 'Name', # required
    #           }
    #         ]
    #       }
    #     ],
    #     result_attributes: [
    #       {
    #         type_name: 'TypeName' # required
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInventoryOutput
    #   resp.data.entities #=> Array<InventoryResultEntity>
    #   resp.data.entities[0] #=> Types::InventoryResultEntity
    #   resp.data.entities[0].id #=> String
    #   resp.data.entities[0].data #=> Hash<String, InventoryResultItem>
    #   resp.data.entities[0].data['key'] #=> Types::InventoryResultItem
    #   resp.data.entities[0].data['key'].type_name #=> String
    #   resp.data.entities[0].data['key'].schema_version #=> String
    #   resp.data.entities[0].data['key'].capture_time #=> String
    #   resp.data.entities[0].data['key'].content_hash #=> String
    #   resp.data.entities[0].data['key'].content #=> Array<Hash<String, String>>
    #   resp.data.entities[0].data['key'].content[0] #=> Hash<String, String>
    #   resp.data.entities[0].data['key'].content[0]['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def get_inventory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInventoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInventoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInventory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResultAttributeException, Errors::InvalidFilter, Errors::InvalidInventoryGroupException, Errors::InvalidTypeNameException, Errors::InternalServerError, Errors::InvalidAggregatorException, Errors::InvalidNextToken]),
        data_parser: Parsers::GetInventory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInventory,
        stubs: @stubs,
        params_class: Params::GetInventoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_inventory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Return a list of inventory type names for the account, or return a list of attribute names
    #    for a specific Inventory item type.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInventorySchemaInput}.
    #
    # @option params [String] :type_name
    #   <p>The type of inventory item to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [Boolean] :aggregator
    #   <p>Returns inventory schemas that support aggregation. For example, this call returns the
    #       <code>AWS:InstanceInformation</code> type, because it supports aggregation based on the
    #       <code>PlatformName</code>, <code>PlatformType</code>, and <code>PlatformVersion</code>
    #      attributes.</p>
    #
    # @option params [Boolean] :sub_type
    #   <p>Returns the sub-type schema for a specified inventory type.</p>
    #
    # @return [Types::GetInventorySchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_inventory_schema(
    #     type_name: 'TypeName',
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     aggregator: false,
    #     sub_type: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInventorySchemaOutput
    #   resp.data.schemas #=> Array<InventoryItemSchema>
    #   resp.data.schemas[0] #=> Types::InventoryItemSchema
    #   resp.data.schemas[0].type_name #=> String
    #   resp.data.schemas[0].version #=> String
    #   resp.data.schemas[0].attributes #=> Array<InventoryItemAttribute>
    #   resp.data.schemas[0].attributes[0] #=> Types::InventoryItemAttribute
    #   resp.data.schemas[0].attributes[0].name #=> String
    #   resp.data.schemas[0].attributes[0].data_type #=> String, one of ["string", "number"]
    #   resp.data.schemas[0].display_name #=> String
    #   resp.data.next_token #=> String
    #
    def get_inventory_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInventorySchemaInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInventorySchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInventorySchema
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTypeNameException, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::GetInventorySchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInventorySchema,
        stubs: @stubs,
        params_class: Params::GetInventorySchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_inventory_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a maintenance window.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMaintenanceWindowInput}.
    #
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window for which you want to retrieve information.</p>
    #
    # @return [Types::GetMaintenanceWindowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_maintenance_window(
    #     window_id: 'WindowId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMaintenanceWindowOutput
    #   resp.data.window_id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.start_date #=> String
    #   resp.data.end_date #=> String
    #   resp.data.schedule #=> String
    #   resp.data.schedule_timezone #=> String
    #   resp.data.schedule_offset #=> Integer
    #   resp.data.next_execution_time #=> String
    #   resp.data.duration #=> Integer
    #   resp.data.cutoff #=> Integer
    #   resp.data.allow_unassociated_targets #=> Boolean
    #   resp.data.enabled #=> Boolean
    #   resp.data.created_date #=> Time
    #   resp.data.modified_date #=> Time
    #
    def get_maintenance_window(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMaintenanceWindowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMaintenanceWindowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMaintenanceWindow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::GetMaintenanceWindow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMaintenanceWindow,
        stubs: @stubs,
        params_class: Params::GetMaintenanceWindowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_maintenance_window
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details about a specific a maintenance window execution.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMaintenanceWindowExecutionInput}.
    #
    # @option params [String] :window_execution_id
    #   <p>The ID of the maintenance window execution that includes the task.</p>
    #
    # @return [Types::GetMaintenanceWindowExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_maintenance_window_execution(
    #     window_execution_id: 'WindowExecutionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMaintenanceWindowExecutionOutput
    #   resp.data.window_execution_id #=> String
    #   resp.data.task_ids #=> Array<String>
    #   resp.data.task_ids[0] #=> String
    #   resp.data.status #=> String, one of ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"]
    #   resp.data.status_details #=> String
    #   resp.data.start_time #=> Time
    #   resp.data.end_time #=> Time
    #
    def get_maintenance_window_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMaintenanceWindowExecutionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMaintenanceWindowExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMaintenanceWindowExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::GetMaintenanceWindowExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMaintenanceWindowExecution,
        stubs: @stubs,
        params_class: Params::GetMaintenanceWindowExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_maintenance_window_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the details about a specific task run as part of a maintenance window
    #    execution.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMaintenanceWindowExecutionTaskInput}.
    #
    # @option params [String] :window_execution_id
    #   <p>The ID of the maintenance window execution that includes the task.</p>
    #
    # @option params [String] :task_id
    #   <p>The ID of the specific task execution in the maintenance window task that should be
    #      retrieved.</p>
    #
    # @return [Types::GetMaintenanceWindowExecutionTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_maintenance_window_execution_task(
    #     window_execution_id: 'WindowExecutionId', # required
    #     task_id: 'TaskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMaintenanceWindowExecutionTaskOutput
    #   resp.data.window_execution_id #=> String
    #   resp.data.task_execution_id #=> String
    #   resp.data.task_arn #=> String
    #   resp.data.service_role #=> String
    #   resp.data.type #=> String, one of ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"]
    #   resp.data.task_parameters #=> Array<Hash<String, MaintenanceWindowTaskParameterValueExpression>>
    #   resp.data.task_parameters[0] #=> Hash<String, MaintenanceWindowTaskParameterValueExpression>
    #   resp.data.task_parameters[0]['key'] #=> Types::MaintenanceWindowTaskParameterValueExpression
    #   resp.data.task_parameters[0]['key'].values #=> Array<String>
    #   resp.data.task_parameters[0]['key'].values[0] #=> String
    #   resp.data.priority #=> Integer
    #   resp.data.max_concurrency #=> String
    #   resp.data.max_errors #=> String
    #   resp.data.status #=> String, one of ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"]
    #   resp.data.status_details #=> String
    #   resp.data.start_time #=> Time
    #   resp.data.end_time #=> Time
    #
    def get_maintenance_window_execution_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMaintenanceWindowExecutionTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMaintenanceWindowExecutionTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMaintenanceWindowExecutionTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::GetMaintenanceWindowExecutionTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMaintenanceWindowExecutionTask,
        stubs: @stubs,
        params_class: Params::GetMaintenanceWindowExecutionTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_maintenance_window_execution_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a specific task running on a specific target.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMaintenanceWindowExecutionTaskInvocationInput}.
    #
    # @option params [String] :window_execution_id
    #   <p>The ID of the maintenance window execution for which the task is a part.</p>
    #
    # @option params [String] :task_id
    #   <p>The ID of the specific task in the maintenance window task that should be retrieved. </p>
    #
    # @option params [String] :invocation_id
    #   <p>The invocation ID to retrieve.</p>
    #
    # @return [Types::GetMaintenanceWindowExecutionTaskInvocationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_maintenance_window_execution_task_invocation(
    #     window_execution_id: 'WindowExecutionId', # required
    #     task_id: 'TaskId', # required
    #     invocation_id: 'InvocationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMaintenanceWindowExecutionTaskInvocationOutput
    #   resp.data.window_execution_id #=> String
    #   resp.data.task_execution_id #=> String
    #   resp.data.invocation_id #=> String
    #   resp.data.execution_id #=> String
    #   resp.data.task_type #=> String, one of ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"]
    #   resp.data.parameters #=> String
    #   resp.data.status #=> String, one of ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"]
    #   resp.data.status_details #=> String
    #   resp.data.start_time #=> Time
    #   resp.data.end_time #=> Time
    #   resp.data.owner_information #=> String
    #   resp.data.window_target_id #=> String
    #
    def get_maintenance_window_execution_task_invocation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMaintenanceWindowExecutionTaskInvocationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMaintenanceWindowExecutionTaskInvocationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMaintenanceWindowExecutionTaskInvocation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::GetMaintenanceWindowExecutionTaskInvocation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMaintenanceWindowExecutionTaskInvocation,
        stubs: @stubs,
        params_class: Params::GetMaintenanceWindowExecutionTaskInvocationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_maintenance_window_execution_task_invocation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the details of a maintenance window task.</p>
    #          <note>
    #             <p>For maintenance window tasks without a specified target, you can't supply values for
    #      <code>--max-errors</code> and <code>--max-concurrency</code>. Instead, the system inserts a
    #     placeholder value of <code>1</code>, which may be reported in the response to this command.
    #     These values don't affect the running of your task and can be ignored.</p>
    #          </note>
    #          <p>To retrieve a list of tasks in a maintenance window, instead use the <a>DescribeMaintenanceWindowTasks</a> command.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMaintenanceWindowTaskInput}.
    #
    # @option params [String] :window_id
    #   <p>The maintenance window ID that includes the task to retrieve.</p>
    #
    # @option params [String] :window_task_id
    #   <p>The maintenance window task ID to retrieve.</p>
    #
    # @return [Types::GetMaintenanceWindowTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_maintenance_window_task(
    #     window_id: 'WindowId', # required
    #     window_task_id: 'WindowTaskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMaintenanceWindowTaskOutput
    #   resp.data.window_id #=> String
    #   resp.data.window_task_id #=> String
    #   resp.data.targets #=> Array<Target>
    #   resp.data.targets[0] #=> Types::Target
    #   resp.data.targets[0].key #=> String
    #   resp.data.targets[0].values #=> Array<String>
    #   resp.data.targets[0].values[0] #=> String
    #   resp.data.task_arn #=> String
    #   resp.data.service_role_arn #=> String
    #   resp.data.task_type #=> String, one of ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"]
    #   resp.data.task_parameters #=> Hash<String, MaintenanceWindowTaskParameterValueExpression>
    #   resp.data.task_parameters['key'] #=> Types::MaintenanceWindowTaskParameterValueExpression
    #   resp.data.task_parameters['key'].values #=> Array<String>
    #   resp.data.task_parameters['key'].values[0] #=> String
    #   resp.data.task_invocation_parameters #=> Types::MaintenanceWindowTaskInvocationParameters
    #   resp.data.task_invocation_parameters.run_command #=> Types::MaintenanceWindowRunCommandParameters
    #   resp.data.task_invocation_parameters.run_command.comment #=> String
    #   resp.data.task_invocation_parameters.run_command.cloud_watch_output_config #=> Types::CloudWatchOutputConfig
    #   resp.data.task_invocation_parameters.run_command.cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.data.task_invocation_parameters.run_command.cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #   resp.data.task_invocation_parameters.run_command.document_hash #=> String
    #   resp.data.task_invocation_parameters.run_command.document_hash_type #=> String, one of ["Sha256", "Sha1"]
    #   resp.data.task_invocation_parameters.run_command.document_version #=> String
    #   resp.data.task_invocation_parameters.run_command.notification_config #=> Types::NotificationConfig
    #   resp.data.task_invocation_parameters.run_command.notification_config.notification_arn #=> String
    #   resp.data.task_invocation_parameters.run_command.notification_config.notification_events #=> Array<String>
    #   resp.data.task_invocation_parameters.run_command.notification_config.notification_events[0] #=> String, one of ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]
    #   resp.data.task_invocation_parameters.run_command.notification_config.notification_type #=> String, one of ["Command", "Invocation"]
    #   resp.data.task_invocation_parameters.run_command.output_s3_bucket_name #=> String
    #   resp.data.task_invocation_parameters.run_command.output_s3_key_prefix #=> String
    #   resp.data.task_invocation_parameters.run_command.parameters #=> Hash<String, Array<String>>
    #   resp.data.task_invocation_parameters.run_command.parameters['key'] #=> Array<String>
    #   resp.data.task_invocation_parameters.run_command.parameters['key'][0] #=> String
    #   resp.data.task_invocation_parameters.run_command.service_role_arn #=> String
    #   resp.data.task_invocation_parameters.run_command.timeout_seconds #=> Integer
    #   resp.data.task_invocation_parameters.automation #=> Types::MaintenanceWindowAutomationParameters
    #   resp.data.task_invocation_parameters.automation.document_version #=> String
    #   resp.data.task_invocation_parameters.automation.parameters #=> Hash<String, Array<String>>
    #   resp.data.task_invocation_parameters.automation.parameters['key'] #=> Array<String>
    #   resp.data.task_invocation_parameters.automation.parameters['key'][0] #=> String
    #   resp.data.task_invocation_parameters.step_functions #=> Types::MaintenanceWindowStepFunctionsParameters
    #   resp.data.task_invocation_parameters.step_functions.input #=> String
    #   resp.data.task_invocation_parameters.step_functions.name #=> String
    #   resp.data.task_invocation_parameters.lambda #=> Types::MaintenanceWindowLambdaParameters
    #   resp.data.task_invocation_parameters.lambda.client_context #=> String
    #   resp.data.task_invocation_parameters.lambda.qualifier #=> String
    #   resp.data.task_invocation_parameters.lambda.payload #=> String
    #   resp.data.priority #=> Integer
    #   resp.data.max_concurrency #=> String
    #   resp.data.max_errors #=> String
    #   resp.data.logging_info #=> Types::LoggingInfo
    #   resp.data.logging_info.s3_bucket_name #=> String
    #   resp.data.logging_info.s3_key_prefix #=> String
    #   resp.data.logging_info.s3_region #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.cutoff_behavior #=> String, one of ["CONTINUE_TASK", "CANCEL_TASK"]
    #
    def get_maintenance_window_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMaintenanceWindowTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMaintenanceWindowTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMaintenanceWindowTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::GetMaintenanceWindowTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMaintenanceWindowTask,
        stubs: @stubs,
        params_class: Params::GetMaintenanceWindowTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_maintenance_window_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get information about an OpsItem by using the ID. You must have permission in Identity and Access Management (IAM) to view information about an OpsItem. For more information,
    #    see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html">Getting started with
    #     OpsCenter</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #          <p>Operations engineers and IT professionals use Amazon Web Services Systems Manager OpsCenter to view, investigate, and
    #    remediate operational issues impacting the performance and health of their Amazon Web Services resources. For
    #    more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html">OpsCenter</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::GetOpsItemInput}.
    #
    # @option params [String] :ops_item_id
    #   <p>The ID of the OpsItem that you want to get.</p>
    #
    # @return [Types::GetOpsItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ops_item(
    #     ops_item_id: 'OpsItemId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOpsItemOutput
    #   resp.data.ops_item #=> Types::OpsItem
    #   resp.data.ops_item.created_by #=> String
    #   resp.data.ops_item.ops_item_type #=> String
    #   resp.data.ops_item.created_time #=> Time
    #   resp.data.ops_item.description #=> String
    #   resp.data.ops_item.last_modified_by #=> String
    #   resp.data.ops_item.last_modified_time #=> Time
    #   resp.data.ops_item.notifications #=> Array<OpsItemNotification>
    #   resp.data.ops_item.notifications[0] #=> Types::OpsItemNotification
    #   resp.data.ops_item.notifications[0].arn #=> String
    #   resp.data.ops_item.priority #=> Integer
    #   resp.data.ops_item.related_ops_items #=> Array<RelatedOpsItem>
    #   resp.data.ops_item.related_ops_items[0] #=> Types::RelatedOpsItem
    #   resp.data.ops_item.related_ops_items[0].ops_item_id #=> String
    #   resp.data.ops_item.status #=> String, one of ["Open", "InProgress", "Resolved", "Pending", "TimedOut", "Cancelling", "Cancelled", "Failed", "CompletedWithSuccess", "CompletedWithFailure", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "PendingApproval", "Approved", "Rejected", "Closed"]
    #   resp.data.ops_item.ops_item_id #=> String
    #   resp.data.ops_item.version #=> String
    #   resp.data.ops_item.title #=> String
    #   resp.data.ops_item.source #=> String
    #   resp.data.ops_item.operational_data #=> Hash<String, OpsItemDataValue>
    #   resp.data.ops_item.operational_data['key'] #=> Types::OpsItemDataValue
    #   resp.data.ops_item.operational_data['key'].value #=> String
    #   resp.data.ops_item.operational_data['key'].type #=> String, one of ["SearchableString", "String"]
    #   resp.data.ops_item.category #=> String
    #   resp.data.ops_item.severity #=> String
    #   resp.data.ops_item.actual_start_time #=> Time
    #   resp.data.ops_item.actual_end_time #=> Time
    #   resp.data.ops_item.planned_start_time #=> Time
    #   resp.data.ops_item.planned_end_time #=> Time
    #
    def get_ops_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOpsItemInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOpsItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOpsItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OpsItemNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::GetOpsItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOpsItem,
        stubs: @stubs,
        params_class: Params::GetOpsItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_ops_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>View operational metadata related to an application in Application Manager.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOpsMetadataInput}.
    #
    # @option params [String] :ops_metadata_arn
    #   <p>The Amazon Resource Name (ARN) of an OpsMetadata Object to view.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #
    # @return [Types::GetOpsMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ops_metadata(
    #     ops_metadata_arn: 'OpsMetadataArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOpsMetadataOutput
    #   resp.data.resource_id #=> String
    #   resp.data.metadata #=> Hash<String, MetadataValue>
    #   resp.data.metadata['key'] #=> Types::MetadataValue
    #   resp.data.metadata['key'].value #=> String
    #   resp.data.next_token #=> String
    #
    def get_ops_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOpsMetadataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOpsMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOpsMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OpsMetadataInvalidArgumentException, Errors::OpsMetadataNotFoundException, Errors::InternalServerError]),
        data_parser: Parsers::GetOpsMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOpsMetadata,
        stubs: @stubs,
        params_class: Params::GetOpsMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_ops_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>View a summary of operations metadata (OpsData) based on specified filters and aggregators.
    #    OpsData can include information about Amazon Web Services Systems Manager OpsCenter operational workitems (OpsItems) as
    #    well as information about any Amazon Web Services resource or service configured to report OpsData to Amazon Web Services Systems Manager
    #    Explorer. </p>
    #
    # @param [Hash] params
    #   See {Types::GetOpsSummaryInput}.
    #
    # @option params [String] :sync_name
    #   <p>Specify the name of a resource data sync to get.</p>
    #
    # @option params [Array<OpsFilter>] :filters
    #   <p>Optional filters used to scope down the returned OpsData. </p>
    #
    # @option params [Array<OpsAggregator>] :aggregators
    #   <p>Optional aggregators that return counts of OpsData based on one or more expressions.</p>
    #
    # @option params [Array<OpsResultAttribute>] :result_attributes
    #   <p>The OpsData data type to return.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @return [Types::GetOpsSummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ops_summary(
    #     sync_name: 'SyncName',
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         values: [
    #           'member'
    #         ], # required
    #         type: 'Equal' # accepts ["Equal", "NotEqual", "BeginWith", "LessThan", "GreaterThan", "Exists"]
    #       }
    #     ],
    #     aggregators: [
    #       {
    #         aggregator_type: 'AggregatorType',
    #         type_name: 'TypeName',
    #         attribute_name: 'AttributeName',
    #         values: {
    #           'key' => 'value'
    #         },
    #       }
    #     ],
    #     result_attributes: [
    #       {
    #         type_name: 'TypeName' # required
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOpsSummaryOutput
    #   resp.data.entities #=> Array<OpsEntity>
    #   resp.data.entities[0] #=> Types::OpsEntity
    #   resp.data.entities[0].id #=> String
    #   resp.data.entities[0].data #=> Hash<String, OpsEntityItem>
    #   resp.data.entities[0].data['key'] #=> Types::OpsEntityItem
    #   resp.data.entities[0].data['key'].capture_time #=> String
    #   resp.data.entities[0].data['key'].content #=> Array<Hash<String, String>>
    #   resp.data.entities[0].data['key'].content[0] #=> Hash<String, String>
    #   resp.data.entities[0].data['key'].content[0]['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def get_ops_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOpsSummaryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOpsSummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOpsSummary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilter, Errors::ResourceDataSyncNotFoundException, Errors::InvalidTypeNameException, Errors::InternalServerError, Errors::InvalidAggregatorException, Errors::InvalidNextToken]),
        data_parser: Parsers::GetOpsSummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOpsSummary,
        stubs: @stubs,
        params_class: Params::GetOpsSummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_ops_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get information about a single parameter by specifying the parameter name.</p>
    #          <note>
    #             <p>To get information about more than one parameter at a time, use the <a>GetParameters</a> operation.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetParameterInput}.
    #
    # @option params [String] :name
    #   <p>The name of the parameter you want to query.</p>
    #            <p>To query by parameter label, use <code>"Name": "name:label"</code>. To query by parameter
    #      version, use <code>"Name": "name:version"</code>.</p>
    #
    # @option params [Boolean] :with_decryption
    #   <p>Return decrypted values for secure string parameters. This flag is ignored for
    #       <code>String</code> and <code>StringList</code> parameter types.</p>
    #
    # @return [Types::GetParameterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameter(
    #     name: 'Name', # required
    #     with_decryption: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetParameterOutput
    #   resp.data.parameter #=> Types::Parameter
    #   resp.data.parameter.name #=> String
    #   resp.data.parameter.type #=> String, one of ["String", "StringList", "SecureString"]
    #   resp.data.parameter.value #=> String
    #   resp.data.parameter.version #=> Integer
    #   resp.data.parameter.selector #=> String
    #   resp.data.parameter.source_result #=> String
    #   resp.data.parameter.last_modified_date #=> Time
    #   resp.data.parameter.arn #=> String
    #   resp.data.parameter.data_type #=> String
    #
    def get_parameter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetParameterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetParameterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetParameter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidKeyId, Errors::ParameterVersionNotFound, Errors::InternalServerError, Errors::ParameterNotFound]),
        data_parser: Parsers::GetParameter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetParameter,
        stubs: @stubs,
        params_class: Params::GetParameterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_parameter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the history of all changes to a parameter.</p>
    #          <important>
    #             <p>If you change the KMS key alias for the KMS key used to encrypt a parameter, then you must
    #     also update the key alias the parameter uses to reference KMS. Otherwise,
    #      <code>GetParameterHistory</code> retrieves whatever the original key alias was
    #     referencing.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::GetParameterHistoryInput}.
    #
    # @option params [String] :name
    #   <p>The name of the parameter for which you want to review history.</p>
    #
    # @option params [Boolean] :with_decryption
    #   <p>Return decrypted values for secure string parameters. This flag is ignored for
    #       <code>String</code> and <code>StringList</code> parameter types.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::GetParameterHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameter_history(
    #     name: 'Name', # required
    #     with_decryption: false,
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetParameterHistoryOutput
    #   resp.data.parameters #=> Array<ParameterHistory>
    #   resp.data.parameters[0] #=> Types::ParameterHistory
    #   resp.data.parameters[0].name #=> String
    #   resp.data.parameters[0].type #=> String, one of ["String", "StringList", "SecureString"]
    #   resp.data.parameters[0].key_id #=> String
    #   resp.data.parameters[0].last_modified_date #=> Time
    #   resp.data.parameters[0].last_modified_user #=> String
    #   resp.data.parameters[0].description #=> String
    #   resp.data.parameters[0].value #=> String
    #   resp.data.parameters[0].allowed_pattern #=> String
    #   resp.data.parameters[0].version #=> Integer
    #   resp.data.parameters[0].labels #=> Array<String>
    #   resp.data.parameters[0].labels[0] #=> String
    #   resp.data.parameters[0].tier #=> String, one of ["Standard", "Advanced", "Intelligent-Tiering"]
    #   resp.data.parameters[0].policies #=> Array<ParameterInlinePolicy>
    #   resp.data.parameters[0].policies[0] #=> Types::ParameterInlinePolicy
    #   resp.data.parameters[0].policies[0].policy_text #=> String
    #   resp.data.parameters[0].policies[0].policy_type #=> String
    #   resp.data.parameters[0].policies[0].policy_status #=> String
    #   resp.data.parameters[0].data_type #=> String
    #   resp.data.next_token #=> String
    #
    def get_parameter_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetParameterHistoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetParameterHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetParameterHistory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidKeyId, Errors::InternalServerError, Errors::InvalidNextToken, Errors::ParameterNotFound]),
        data_parser: Parsers::GetParameterHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetParameterHistory,
        stubs: @stubs,
        params_class: Params::GetParameterHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_parameter_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get information about one or more parameters by specifying multiple parameter names.</p>
    #          <note>
    #             <p>To get information about a single parameter, you can use the <a>GetParameter</a>
    #     operation instead.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetParametersInput}.
    #
    # @option params [Array<String>] :names
    #   <p>Names of the parameters for which you want to query information.</p>
    #            <p>To query by parameter label, use <code>"Name": "name:label"</code>. To query by parameter
    #      version, use <code>"Name": "name:version"</code>.</p>
    #
    # @option params [Boolean] :with_decryption
    #   <p>Return decrypted secure string value. Return decrypted values for secure string parameters.
    #      This flag is ignored for <code>String</code> and <code>StringList</code> parameter types.</p>
    #
    # @return [Types::GetParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameters(
    #     names: [
    #       'member'
    #     ], # required
    #     with_decryption: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetParametersOutput
    #   resp.data.parameters #=> Array<Parameter>
    #   resp.data.parameters[0] #=> Types::Parameter
    #   resp.data.parameters[0].name #=> String
    #   resp.data.parameters[0].type #=> String, one of ["String", "StringList", "SecureString"]
    #   resp.data.parameters[0].value #=> String
    #   resp.data.parameters[0].version #=> Integer
    #   resp.data.parameters[0].selector #=> String
    #   resp.data.parameters[0].source_result #=> String
    #   resp.data.parameters[0].last_modified_date #=> Time
    #   resp.data.parameters[0].arn #=> String
    #   resp.data.parameters[0].data_type #=> String
    #   resp.data.invalid_parameters #=> Array<String>
    #   resp.data.invalid_parameters[0] #=> String
    #
    def get_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetParametersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetParameters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidKeyId, Errors::InternalServerError]),
        data_parser: Parsers::GetParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetParameters,
        stubs: @stubs,
        params_class: Params::GetParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve information about one or more parameters in a specific hierarchy. </p>
    #          <p>Request results are returned on a best-effort basis. If you specify <code>MaxResults</code>
    #    in the request, the response includes information up to the limit specified. The number of items
    #    returned, however, can be between zero and the value of <code>MaxResults</code>. If the service
    #    reaches an internal limit while processing the results, it stops the operation and returns the
    #    matching values up to that point and a <code>NextToken</code>. You can specify the
    #     <code>NextToken</code> in a subsequent call to get the next set of results.</p>
    #
    # @param [Hash] params
    #   See {Types::GetParametersByPathInput}.
    #
    # @option params [String] :path
    #   <p>The hierarchy for the parameter. Hierarchies start with a forward slash (/). The hierarchy
    #      is the parameter name except the last part of the parameter. For the API call to succeed, the
    #      last part of the parameter name can't be in the path. A parameter name hierarchy can have a
    #      maximum of 15 levels. Here is an example of a hierarchy:
    #       <code>/Finance/Prod/IAD/WinServ2016/license33 </code>
    #            </p>
    #
    # @option params [Boolean] :recursive
    #   <p>Retrieve all parameters within a hierarchy.</p>
    #            <important>
    #               <p>If a user has access to a path, then the user can access all levels of that path. For
    #       example, if a user has permission to access path <code>/a</code>, then the user can also access
    #        <code>/a/b</code>. Even if a user has explicitly been denied access in IAM for
    #       parameter <code>/a/b</code>, they can still call the GetParametersByPath API operation
    #       recursively for <code>/a</code> and view <code>/a/b</code>.</p>
    #            </important>
    #
    # @option params [Array<ParameterStringFilter>] :parameter_filters
    #   <p>Filters to limit the request results.</p>
    #            <note>
    #               <p>The following <code>Key</code> values are supported for <code>GetParametersByPath</code>:
    #        <code>Type</code>, <code>KeyId</code>, and <code>Label</code>.</p>
    #               <p>The following <code>Key</code> values aren't supported for
    #       <code>GetParametersByPath</code>: <code>tag</code>, <code>DataType</code>, <code>Name</code>,
    #        <code>Path</code>, and <code>Tier</code>.</p>
    #            </note>
    #
    # @option params [Boolean] :with_decryption
    #   <p>Retrieve all parameters in a hierarchy with their value decrypted.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    # @return [Types::GetParametersByPathOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameters_by_path(
    #     path: 'Path', # required
    #     recursive: false,
    #     parameter_filters: [
    #       {
    #         key: 'Key', # required
    #         option: 'Option',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     with_decryption: false,
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetParametersByPathOutput
    #   resp.data.parameters #=> Array<Parameter>
    #   resp.data.parameters[0] #=> Types::Parameter
    #   resp.data.parameters[0].name #=> String
    #   resp.data.parameters[0].type #=> String, one of ["String", "StringList", "SecureString"]
    #   resp.data.parameters[0].value #=> String
    #   resp.data.parameters[0].version #=> Integer
    #   resp.data.parameters[0].selector #=> String
    #   resp.data.parameters[0].source_result #=> String
    #   resp.data.parameters[0].last_modified_date #=> Time
    #   resp.data.parameters[0].arn #=> String
    #   resp.data.parameters[0].data_type #=> String
    #   resp.data.next_token #=> String
    #
    def get_parameters_by_path(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetParametersByPathInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetParametersByPathInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetParametersByPath
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterKey, Errors::InvalidKeyId, Errors::InvalidFilterOption, Errors::InternalServerError, Errors::InvalidNextToken, Errors::InvalidFilterValue]),
        data_parser: Parsers::GetParametersByPath
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetParametersByPath,
        stubs: @stubs,
        params_class: Params::GetParametersByPathOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_parameters_by_path
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a patch baseline.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPatchBaselineInput}.
    #
    # @option params [String] :baseline_id
    #   <p>The ID of the patch baseline to retrieve.</p>
    #            <note>
    #               <p>To retrieve information about an Amazon Web Services managed patch baseline, specify the full Amazon
    #       Resource Name (ARN) of the baseline. For example, for the baseline
    #        <code>AWS-AmazonLinuxDefaultPatchBaseline</code>, specify
    #        <code>arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0e392de35e7c563b7</code> instead of
    #        <code>pb-0e392de35e7c563b7</code>.</p>
    #            </note>
    #
    # @return [Types::GetPatchBaselineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_patch_baseline(
    #     baseline_id: 'BaselineId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPatchBaselineOutput
    #   resp.data.baseline_id #=> String
    #   resp.data.name #=> String
    #   resp.data.operating_system #=> String, one of ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #   resp.data.global_filters #=> Types::PatchFilterGroup
    #   resp.data.global_filters.patch_filters #=> Array<PatchFilter>
    #   resp.data.global_filters.patch_filters[0] #=> Types::PatchFilter
    #   resp.data.global_filters.patch_filters[0].key #=> String, one of ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"]
    #   resp.data.global_filters.patch_filters[0].values #=> Array<String>
    #   resp.data.global_filters.patch_filters[0].values[0] #=> String
    #   resp.data.approval_rules #=> Types::PatchRuleGroup
    #   resp.data.approval_rules.patch_rules #=> Array<PatchRule>
    #   resp.data.approval_rules.patch_rules[0] #=> Types::PatchRule
    #   resp.data.approval_rules.patch_rules[0].patch_filter_group #=> Types::PatchFilterGroup
    #   resp.data.approval_rules.patch_rules[0].compliance_level #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #   resp.data.approval_rules.patch_rules[0].approve_after_days #=> Integer
    #   resp.data.approval_rules.patch_rules[0].approve_until_date #=> String
    #   resp.data.approval_rules.patch_rules[0].enable_non_security #=> Boolean
    #   resp.data.approved_patches #=> Array<String>
    #   resp.data.approved_patches[0] #=> String
    #   resp.data.approved_patches_compliance_level #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #   resp.data.approved_patches_enable_non_security #=> Boolean
    #   resp.data.rejected_patches #=> Array<String>
    #   resp.data.rejected_patches_action #=> String, one of ["ALLOW_AS_DEPENDENCY", "BLOCK"]
    #   resp.data.patch_groups #=> Array<String>
    #   resp.data.patch_groups[0] #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.modified_date #=> Time
    #   resp.data.description #=> String
    #   resp.data.sources #=> Array<PatchSource>
    #   resp.data.sources[0] #=> Types::PatchSource
    #   resp.data.sources[0].name #=> String
    #   resp.data.sources[0].products #=> Array<String>
    #   resp.data.sources[0].products[0] #=> String
    #   resp.data.sources[0].configuration #=> String
    #
    def get_patch_baseline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPatchBaselineInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPatchBaselineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPatchBaseline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceId, Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::GetPatchBaseline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPatchBaseline,
        stubs: @stubs,
        params_class: Params::GetPatchBaselineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_patch_baseline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the patch baseline that should be used for the specified patch group.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPatchBaselineForPatchGroupInput}.
    #
    # @option params [String] :patch_group
    #   <p>The name of the patch group whose patch baseline should be retrieved.</p>
    #
    # @option params [String] :operating_system
    #   <p>Returns the operating system rule specified for patch groups using the patch
    #      baseline.</p>
    #
    # @return [Types::GetPatchBaselineForPatchGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_patch_baseline_for_patch_group(
    #     patch_group: 'PatchGroup', # required
    #     operating_system: 'WINDOWS' # accepts ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPatchBaselineForPatchGroupOutput
    #   resp.data.baseline_id #=> String
    #   resp.data.patch_group #=> String
    #   resp.data.operating_system #=> String, one of ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #
    def get_patch_baseline_for_patch_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPatchBaselineForPatchGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPatchBaselineForPatchGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPatchBaselineForPatchGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::GetPatchBaselineForPatchGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPatchBaselineForPatchGroup,
        stubs: @stubs,
        params_class: Params::GetPatchBaselineForPatchGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_patch_baseline_for_patch_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <code>ServiceSetting</code> is an account-level setting for an Amazon Web Services service. This setting
    #    defines how a user interacts with or uses a service or a feature of a service. For example, if an
    #    Amazon Web Services service charges money to the account based on feature or service usage, then the Amazon Web Services
    #    service team might create a default setting of <code>false</code>. This means the user can't use
    #    this feature unless they change the setting to <code>true</code> and intentionally opt in for a
    #    paid feature.</p>
    #          <p>Services map a <code>SettingId</code> object to a setting value. Amazon Web Services services teams define
    #    the default value for a <code>SettingId</code>. You can't create a new <code>SettingId</code>,
    #    but you can overwrite the default value if you have the <code>ssm:UpdateServiceSetting</code>
    #    permission for the setting. Use the <a>UpdateServiceSetting</a> API operation to
    #    change the default setting. Or use the <a>ResetServiceSetting</a> to change the value
    #    back to the original value defined by the Amazon Web Services service team.</p>
    #          <p>Query the current service setting for the Amazon Web Services account. </p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceSettingInput}.
    #
    # @option params [String] :setting_id
    #   <p>The ID of the service setting to get. The setting ID can be one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-destination</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-group-name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/documents/console/public-sharing-permission</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/default-parameter-tier</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/high-throughput-enabled</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/activation-tier</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::GetServiceSettingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_setting(
    #     setting_id: 'SettingId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceSettingOutput
    #   resp.data.service_setting #=> Types::ServiceSetting
    #   resp.data.service_setting.setting_id #=> String
    #   resp.data.service_setting.setting_value #=> String
    #   resp.data.service_setting.last_modified_date #=> Time
    #   resp.data.service_setting.last_modified_user #=> String
    #   resp.data.service_setting.arn #=> String
    #   resp.data.service_setting.status #=> String
    #
    def get_service_setting(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceSettingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceSettingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServiceSetting
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ServiceSettingNotFound]),
        data_parser: Parsers::GetServiceSetting
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServiceSetting,
        stubs: @stubs,
        params_class: Params::GetServiceSettingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service_setting
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A parameter label is a user-defined alias to help you manage different versions of a
    #    parameter. When you modify a parameter, Amazon Web Services Systems Manager automatically saves a new version and
    #    increments the version number by one. A label can help you remember the purpose of a parameter
    #    when there are multiple versions. </p>
    #          <p>Parameter labels have the following requirements and restrictions.</p>
    #          <ul>
    #             <li>
    #                <p>A version of a parameter can have a maximum of 10 labels.</p>
    #             </li>
    #             <li>
    #                <p>You can't attach the same label to different versions of the same parameter. For example,
    #      if version 1 has the label Production, then you can't attach Production to version 2.</p>
    #             </li>
    #             <li>
    #                <p>You can move a label from one version of a parameter to another.</p>
    #             </li>
    #             <li>
    #                <p>You can't create a label when you create a new parameter. You must attach a label to a
    #      specific version of a parameter.</p>
    #             </li>
    #             <li>
    #                <p>If you no longer want to use a parameter label, then you can either delete it or move it
    #      to a different version of a parameter.</p>
    #             </li>
    #             <li>
    #                <p>A label can have a maximum of 100 characters.</p>
    #             </li>
    #             <li>
    #                <p>Labels can contain letters (case sensitive), numbers, periods (.), hyphens (-), or
    #      underscores (_).</p>
    #             </li>
    #             <li>
    #                <p>Labels can't begin with a number, "<code>aws</code>" or "<code>ssm</code>" (not case
    #      sensitive). If a label fails to meet these requirements, then the label isn't associated with a
    #      parameter and the system displays it in the list of InvalidLabels.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::LabelParameterVersionInput}.
    #
    # @option params [String] :name
    #   <p>The parameter name on which you want to attach one or more labels.</p>
    #
    # @option params [Integer] :parameter_version
    #   <p>The specific version of the parameter on which you want to attach one or more labels. If no
    #      version is specified, the system attaches the label to the latest version.</p>
    #
    # @option params [Array<String>] :labels
    #   <p>One or more labels to attach to the specified parameter version.</p>
    #
    # @return [Types::LabelParameterVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.label_parameter_version(
    #     name: 'Name', # required
    #     parameter_version: 1,
    #     labels: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::LabelParameterVersionOutput
    #   resp.data.invalid_labels #=> Array<String>
    #   resp.data.invalid_labels[0] #=> String
    #   resp.data.parameter_version #=> Integer
    #
    def label_parameter_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::LabelParameterVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::LabelParameterVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::LabelParameterVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyUpdates, Errors::ParameterVersionNotFound, Errors::InternalServerError, Errors::ParameterNotFound, Errors::ParameterVersionLabelLimitExceeded]),
        data_parser: Parsers::LabelParameterVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::LabelParameterVersion,
        stubs: @stubs,
        params_class: Params::LabelParameterVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :label_parameter_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves all versions of an association for a specific association ID.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssociationVersionsInput}.
    #
    # @option params [String] :association_id
    #   <p>The association ID for which you want to view all versions.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    # @return [Types::ListAssociationVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_association_versions(
    #     association_id: 'AssociationId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssociationVersionsOutput
    #   resp.data.association_versions #=> Array<AssociationVersionInfo>
    #   resp.data.association_versions[0] #=> Types::AssociationVersionInfo
    #   resp.data.association_versions[0].association_id #=> String
    #   resp.data.association_versions[0].association_version #=> String
    #   resp.data.association_versions[0].created_date #=> Time
    #   resp.data.association_versions[0].name #=> String
    #   resp.data.association_versions[0].document_version #=> String
    #   resp.data.association_versions[0].parameters #=> Hash<String, Array<String>>
    #   resp.data.association_versions[0].parameters['key'] #=> Array<String>
    #   resp.data.association_versions[0].parameters['key'][0] #=> String
    #   resp.data.association_versions[0].targets #=> Array<Target>
    #   resp.data.association_versions[0].targets[0] #=> Types::Target
    #   resp.data.association_versions[0].targets[0].key #=> String
    #   resp.data.association_versions[0].targets[0].values #=> Array<String>
    #   resp.data.association_versions[0].targets[0].values[0] #=> String
    #   resp.data.association_versions[0].schedule_expression #=> String
    #   resp.data.association_versions[0].output_location #=> Types::InstanceAssociationOutputLocation
    #   resp.data.association_versions[0].output_location.s3_location #=> Types::S3OutputLocation
    #   resp.data.association_versions[0].output_location.s3_location.output_s3_region #=> String
    #   resp.data.association_versions[0].output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.data.association_versions[0].output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.data.association_versions[0].association_name #=> String
    #   resp.data.association_versions[0].max_errors #=> String
    #   resp.data.association_versions[0].max_concurrency #=> String
    #   resp.data.association_versions[0].compliance_severity #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"]
    #   resp.data.association_versions[0].sync_compliance #=> String, one of ["AUTO", "MANUAL"]
    #   resp.data.association_versions[0].apply_only_at_cron_interval #=> Boolean
    #   resp.data.association_versions[0].calendar_names #=> Array<String>
    #   resp.data.association_versions[0].calendar_names[0] #=> String
    #   resp.data.association_versions[0].target_locations #=> Array<TargetLocation>
    #   resp.data.association_versions[0].target_locations[0] #=> Types::TargetLocation
    #   resp.data.association_versions[0].target_locations[0].accounts #=> Array<String>
    #   resp.data.association_versions[0].target_locations[0].accounts[0] #=> String
    #   resp.data.association_versions[0].target_locations[0].regions #=> Array<String>
    #   resp.data.association_versions[0].target_locations[0].regions[0] #=> String
    #   resp.data.association_versions[0].target_locations[0].target_location_max_concurrency #=> String
    #   resp.data.association_versions[0].target_locations[0].target_location_max_errors #=> String
    #   resp.data.association_versions[0].target_locations[0].execution_role_name #=> String
    #   resp.data.association_versions[0].schedule_offset #=> Integer
    #   resp.data.association_versions[0].target_maps #=> Array<Hash<String, Array<String>>>
    #   resp.data.association_versions[0].target_maps[0] #=> Hash<String, Array<String>>
    #   resp.data.association_versions[0].target_maps[0]['key'] #=> Array<String>
    #   resp.data.association_versions[0].target_maps[0]['key'][0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_association_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssociationVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssociationVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssociationVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AssociationDoesNotExist, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::ListAssociationVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssociationVersions,
        stubs: @stubs,
        params_class: Params::ListAssociationVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_association_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns all State Manager associations in the current Amazon Web Services account and Amazon Web Services Region. You
    #    can limit the results to a specific State Manager association document or managed node by
    #    specifying a filter. State Manager is a capability of Amazon Web Services Systems Manager.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssociationsInput}.
    #
    # @option params [Array<AssociationFilter>] :association_filter_list
    #   <p>One or more filters. Use a filter to return a more specific list of results.</p>
    #            <note>
    #               <p>Filtering associations using the <code>InstanceID</code> attribute only returns legacy
    #       associations created using the <code>InstanceID</code> attribute. Associations targeting the
    #       managed node that are part of the Target Attributes <code>ResourceGroup</code> or
    #        <code>Tags</code> aren't returned.</p>
    #            </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::ListAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associations(
    #     association_filter_list: [
    #       {
    #         key: 'InstanceId', # required - accepts ["InstanceId", "Name", "AssociationId", "AssociationStatusName", "LastExecutedBefore", "LastExecutedAfter", "AssociationName", "ResourceGroupName"]
    #         value: 'value' # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssociationsOutput
    #   resp.data.associations #=> Array<Association>
    #   resp.data.associations[0] #=> Types::Association
    #   resp.data.associations[0].name #=> String
    #   resp.data.associations[0].instance_id #=> String
    #   resp.data.associations[0].association_id #=> String
    #   resp.data.associations[0].association_version #=> String
    #   resp.data.associations[0].document_version #=> String
    #   resp.data.associations[0].targets #=> Array<Target>
    #   resp.data.associations[0].targets[0] #=> Types::Target
    #   resp.data.associations[0].targets[0].key #=> String
    #   resp.data.associations[0].targets[0].values #=> Array<String>
    #   resp.data.associations[0].targets[0].values[0] #=> String
    #   resp.data.associations[0].last_execution_date #=> Time
    #   resp.data.associations[0].overview #=> Types::AssociationOverview
    #   resp.data.associations[0].overview.status #=> String
    #   resp.data.associations[0].overview.detailed_status #=> String
    #   resp.data.associations[0].overview.association_status_aggregated_count #=> Hash<String, Integer>
    #   resp.data.associations[0].overview.association_status_aggregated_count['key'] #=> Integer
    #   resp.data.associations[0].schedule_expression #=> String
    #   resp.data.associations[0].association_name #=> String
    #   resp.data.associations[0].schedule_offset #=> Integer
    #   resp.data.associations[0].target_maps #=> Array<Hash<String, Array<String>>>
    #   resp.data.associations[0].target_maps[0] #=> Hash<String, Array<String>>
    #   resp.data.associations[0].target_maps[0]['key'] #=> Array<String>
    #   resp.data.associations[0].target_maps[0]['key'][0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssociationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssociations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::ListAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssociations,
        stubs: @stubs,
        params_class: Params::ListAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>An invocation is copy of a command sent to a specific managed node. A command can apply to
    #    one or more managed nodes. A command invocation applies to one managed node. For example, if a
    #    user runs <code>SendCommand</code> against three managed nodes, then a command invocation is
    #    created for each requested managed node ID. <code>ListCommandInvocations</code> provide status
    #    about command execution.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCommandInvocationsInput}.
    #
    # @option params [String] :command_id
    #   <p>(Optional) The invocations for a specific command ID.</p>
    #
    # @option params [String] :instance_id
    #   <p>(Optional) The command execution details for a specific managed node ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>(Optional) The maximum number of items to return for this call. The call also returns a
    #      token that you can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>(Optional) The token for the next set of items to return. (You received this token from a
    #      previous call.)</p>
    #
    # @option params [Array<CommandFilter>] :filters
    #   <p>(Optional) One or more filters. Use a filter to return a more specific list of
    #      results.</p>
    #
    # @option params [Boolean] :details
    #   <p>(Optional) If set this returns the response of the command executions and any command
    #      output. The default value is <code>false</code>. </p>
    #
    # @return [Types::ListCommandInvocationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_command_invocations(
    #     command_id: 'CommandId',
    #     instance_id: 'InstanceId',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         key: 'InvokedAfter', # required - accepts ["InvokedAfter", "InvokedBefore", "Status", "ExecutionStage", "DocumentName"]
    #         value: 'value' # required
    #       }
    #     ],
    #     details: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCommandInvocationsOutput
    #   resp.data.command_invocations #=> Array<CommandInvocation>
    #   resp.data.command_invocations[0] #=> Types::CommandInvocation
    #   resp.data.command_invocations[0].command_id #=> String
    #   resp.data.command_invocations[0].instance_id #=> String
    #   resp.data.command_invocations[0].instance_name #=> String
    #   resp.data.command_invocations[0].comment #=> String
    #   resp.data.command_invocations[0].document_name #=> String
    #   resp.data.command_invocations[0].document_version #=> String
    #   resp.data.command_invocations[0].requested_date_time #=> Time
    #   resp.data.command_invocations[0].status #=> String, one of ["Pending", "InProgress", "Delayed", "Success", "Cancelled", "TimedOut", "Failed", "Cancelling"]
    #   resp.data.command_invocations[0].status_details #=> String
    #   resp.data.command_invocations[0].trace_output #=> String
    #   resp.data.command_invocations[0].standard_output_url #=> String
    #   resp.data.command_invocations[0].standard_error_url #=> String
    #   resp.data.command_invocations[0].command_plugins #=> Array<CommandPlugin>
    #   resp.data.command_invocations[0].command_plugins[0] #=> Types::CommandPlugin
    #   resp.data.command_invocations[0].command_plugins[0].name #=> String
    #   resp.data.command_invocations[0].command_plugins[0].status #=> String, one of ["Pending", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]
    #   resp.data.command_invocations[0].command_plugins[0].status_details #=> String
    #   resp.data.command_invocations[0].command_plugins[0].response_code #=> Integer
    #   resp.data.command_invocations[0].command_plugins[0].response_start_date_time #=> Time
    #   resp.data.command_invocations[0].command_plugins[0].response_finish_date_time #=> Time
    #   resp.data.command_invocations[0].command_plugins[0].output #=> String
    #   resp.data.command_invocations[0].command_plugins[0].standard_output_url #=> String
    #   resp.data.command_invocations[0].command_plugins[0].standard_error_url #=> String
    #   resp.data.command_invocations[0].command_plugins[0].output_s3_region #=> String
    #   resp.data.command_invocations[0].command_plugins[0].output_s3_bucket_name #=> String
    #   resp.data.command_invocations[0].command_plugins[0].output_s3_key_prefix #=> String
    #   resp.data.command_invocations[0].service_role #=> String
    #   resp.data.command_invocations[0].notification_config #=> Types::NotificationConfig
    #   resp.data.command_invocations[0].notification_config.notification_arn #=> String
    #   resp.data.command_invocations[0].notification_config.notification_events #=> Array<String>
    #   resp.data.command_invocations[0].notification_config.notification_events[0] #=> String, one of ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]
    #   resp.data.command_invocations[0].notification_config.notification_type #=> String, one of ["Command", "Invocation"]
    #   resp.data.command_invocations[0].cloud_watch_output_config #=> Types::CloudWatchOutputConfig
    #   resp.data.command_invocations[0].cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.data.command_invocations[0].cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_command_invocations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCommandInvocationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCommandInvocationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCommandInvocations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInstanceId, Errors::InvalidFilterKey, Errors::InvalidCommandId, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::ListCommandInvocations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCommandInvocations,
        stubs: @stubs,
        params_class: Params::ListCommandInvocationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_command_invocations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the commands requested by users of the Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCommandsInput}.
    #
    # @option params [String] :command_id
    #   <p>(Optional) If provided, lists only the specified command.</p>
    #
    # @option params [String] :instance_id
    #   <p>(Optional) Lists commands issued against this managed node ID.</p>
    #            <note>
    #               <p>You can't specify a managed node ID in the same command that you specify
    #        <code>Status</code> = <code>Pending</code>. This is because the command hasn't reached the
    #       managed node yet.</p>
    #            </note>
    #
    # @option params [Integer] :max_results
    #   <p>(Optional) The maximum number of items to return for this call. The call also returns a
    #      token that you can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>(Optional) The token for the next set of items to return. (You received this token from a
    #      previous call.)</p>
    #
    # @option params [Array<CommandFilter>] :filters
    #   <p>(Optional) One or more filters. Use a filter to return a more specific list of results.
    #     </p>
    #
    # @return [Types::ListCommandsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_commands(
    #     command_id: 'CommandId',
    #     instance_id: 'InstanceId',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         key: 'InvokedAfter', # required - accepts ["InvokedAfter", "InvokedBefore", "Status", "ExecutionStage", "DocumentName"]
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCommandsOutput
    #   resp.data.commands #=> Array<Command>
    #   resp.data.commands[0] #=> Types::Command
    #   resp.data.commands[0].command_id #=> String
    #   resp.data.commands[0].document_name #=> String
    #   resp.data.commands[0].document_version #=> String
    #   resp.data.commands[0].comment #=> String
    #   resp.data.commands[0].expires_after #=> Time
    #   resp.data.commands[0].parameters #=> Hash<String, Array<String>>
    #   resp.data.commands[0].parameters['key'] #=> Array<String>
    #   resp.data.commands[0].parameters['key'][0] #=> String
    #   resp.data.commands[0].instance_ids #=> Array<String>
    #   resp.data.commands[0].instance_ids[0] #=> String
    #   resp.data.commands[0].targets #=> Array<Target>
    #   resp.data.commands[0].targets[0] #=> Types::Target
    #   resp.data.commands[0].targets[0].key #=> String
    #   resp.data.commands[0].targets[0].values #=> Array<String>
    #   resp.data.commands[0].targets[0].values[0] #=> String
    #   resp.data.commands[0].requested_date_time #=> Time
    #   resp.data.commands[0].status #=> String, one of ["Pending", "InProgress", "Success", "Cancelled", "Failed", "TimedOut", "Cancelling"]
    #   resp.data.commands[0].status_details #=> String
    #   resp.data.commands[0].output_s3_region #=> String
    #   resp.data.commands[0].output_s3_bucket_name #=> String
    #   resp.data.commands[0].output_s3_key_prefix #=> String
    #   resp.data.commands[0].max_concurrency #=> String
    #   resp.data.commands[0].max_errors #=> String
    #   resp.data.commands[0].target_count #=> Integer
    #   resp.data.commands[0].completed_count #=> Integer
    #   resp.data.commands[0].error_count #=> Integer
    #   resp.data.commands[0].delivery_timed_out_count #=> Integer
    #   resp.data.commands[0].service_role #=> String
    #   resp.data.commands[0].notification_config #=> Types::NotificationConfig
    #   resp.data.commands[0].notification_config.notification_arn #=> String
    #   resp.data.commands[0].notification_config.notification_events #=> Array<String>
    #   resp.data.commands[0].notification_config.notification_events[0] #=> String, one of ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]
    #   resp.data.commands[0].notification_config.notification_type #=> String, one of ["Command", "Invocation"]
    #   resp.data.commands[0].cloud_watch_output_config #=> Types::CloudWatchOutputConfig
    #   resp.data.commands[0].cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.data.commands[0].cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #   resp.data.commands[0].timeout_seconds #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_commands(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCommandsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCommandsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCommands
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInstanceId, Errors::InvalidFilterKey, Errors::InvalidCommandId, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::ListCommands
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCommands,
        stubs: @stubs,
        params_class: Params::ListCommandsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_commands
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>For a specified resource ID, this API operation returns a list of compliance statuses for
    #    different resource types. Currently, you can only specify one resource ID per call. List results
    #    depend on the criteria specified in the filter.</p>
    #
    # @param [Hash] params
    #   See {Types::ListComplianceItemsInput}.
    #
    # @option params [Array<ComplianceStringFilter>] :filters
    #   <p>One or more compliance filters. Use a filter to return a more specific list of
    #      results.</p>
    #
    # @option params [Array<String>] :resource_ids
    #   <p>The ID for the resources from which to get compliance information. Currently, you can only
    #      specify one resource ID.</p>
    #
    # @option params [Array<String>] :resource_types
    #   <p>The type of resource from which to get compliance information. Currently, the only supported
    #      resource type is <code>ManagedInstance</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @return [Types::ListComplianceItemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_compliance_items(
    #     filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ],
    #         type: 'EQUAL' # accepts ["EQUAL", "NOT_EQUAL", "BEGIN_WITH", "LESS_THAN", "GREATER_THAN"]
    #       }
    #     ],
    #     resource_ids: [
    #       'member'
    #     ],
    #     resource_types: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListComplianceItemsOutput
    #   resp.data.compliance_items #=> Array<ComplianceItem>
    #   resp.data.compliance_items[0] #=> Types::ComplianceItem
    #   resp.data.compliance_items[0].compliance_type #=> String
    #   resp.data.compliance_items[0].resource_type #=> String
    #   resp.data.compliance_items[0].resource_id #=> String
    #   resp.data.compliance_items[0].id #=> String
    #   resp.data.compliance_items[0].title #=> String
    #   resp.data.compliance_items[0].status #=> String, one of ["COMPLIANT", "NON_COMPLIANT"]
    #   resp.data.compliance_items[0].severity #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #   resp.data.compliance_items[0].execution_summary #=> Types::ComplianceExecutionSummary
    #   resp.data.compliance_items[0].execution_summary.execution_time #=> Time
    #   resp.data.compliance_items[0].execution_summary.execution_id #=> String
    #   resp.data.compliance_items[0].execution_summary.execution_type #=> String
    #   resp.data.compliance_items[0].details #=> Hash<String, String>
    #   resp.data.compliance_items[0].details['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_compliance_items(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListComplianceItemsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListComplianceItemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListComplianceItems
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceId, Errors::InvalidFilter, Errors::InternalServerError, Errors::InvalidNextToken, Errors::InvalidResourceType]),
        data_parser: Parsers::ListComplianceItems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListComplianceItems,
        stubs: @stubs,
        params_class: Params::ListComplianceItemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_compliance_items
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a summary count of compliant and non-compliant resources for a compliance type. For
    #    example, this call can return State Manager associations, patches, or custom compliance types
    #    according to the filter criteria that you specify.</p>
    #
    # @param [Hash] params
    #   See {Types::ListComplianceSummariesInput}.
    #
    # @option params [Array<ComplianceStringFilter>] :filters
    #   <p>One or more compliance or inventory filters. Use a filter to return a more specific list of
    #      results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. Currently, you can specify null or 50.
    #      The call also returns a token that you can specify in a subsequent call to get the next set of
    #      results.</p>
    #
    # @return [Types::ListComplianceSummariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_compliance_summaries(
    #     filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ],
    #         type: 'EQUAL' # accepts ["EQUAL", "NOT_EQUAL", "BEGIN_WITH", "LESS_THAN", "GREATER_THAN"]
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListComplianceSummariesOutput
    #   resp.data.compliance_summary_items #=> Array<ComplianceSummaryItem>
    #   resp.data.compliance_summary_items[0] #=> Types::ComplianceSummaryItem
    #   resp.data.compliance_summary_items[0].compliance_type #=> String
    #   resp.data.compliance_summary_items[0].compliant_summary #=> Types::CompliantSummary
    #   resp.data.compliance_summary_items[0].compliant_summary.compliant_count #=> Integer
    #   resp.data.compliance_summary_items[0].compliant_summary.severity_summary #=> Types::SeveritySummary
    #   resp.data.compliance_summary_items[0].compliant_summary.severity_summary.critical_count #=> Integer
    #   resp.data.compliance_summary_items[0].compliant_summary.severity_summary.high_count #=> Integer
    #   resp.data.compliance_summary_items[0].compliant_summary.severity_summary.medium_count #=> Integer
    #   resp.data.compliance_summary_items[0].compliant_summary.severity_summary.low_count #=> Integer
    #   resp.data.compliance_summary_items[0].compliant_summary.severity_summary.informational_count #=> Integer
    #   resp.data.compliance_summary_items[0].compliant_summary.severity_summary.unspecified_count #=> Integer
    #   resp.data.compliance_summary_items[0].non_compliant_summary #=> Types::NonCompliantSummary
    #   resp.data.compliance_summary_items[0].non_compliant_summary.non_compliant_count #=> Integer
    #   resp.data.compliance_summary_items[0].non_compliant_summary.severity_summary #=> Types::SeveritySummary
    #   resp.data.next_token #=> String
    #
    def list_compliance_summaries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListComplianceSummariesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListComplianceSummariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListComplianceSummaries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilter, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::ListComplianceSummaries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListComplianceSummaries,
        stubs: @stubs,
        params_class: Params::ListComplianceSummariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_compliance_summaries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Information about approval reviews for a version of a change template in Change Manager.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDocumentMetadataHistoryInput}.
    #
    # @option params [String] :name
    #   <p>The name of the change template.</p>
    #
    # @option params [String] :document_version
    #   <p>The version of the change template.</p>
    #
    # @option params [String] :metadata
    #   <p>The type of data for which details are being requested. Currently, the only supported value
    #      is <code>DocumentReviews</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @return [Types::ListDocumentMetadataHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_document_metadata_history(
    #     name: 'Name', # required
    #     document_version: 'DocumentVersion',
    #     metadata: 'DocumentReviews', # required - accepts ["DocumentReviews"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDocumentMetadataHistoryOutput
    #   resp.data.name #=> String
    #   resp.data.document_version #=> String
    #   resp.data.author #=> String
    #   resp.data.metadata #=> Types::DocumentMetadataResponseInfo
    #   resp.data.metadata.reviewer_response #=> Array<DocumentReviewerResponseSource>
    #   resp.data.metadata.reviewer_response[0] #=> Types::DocumentReviewerResponseSource
    #   resp.data.metadata.reviewer_response[0].create_time #=> Time
    #   resp.data.metadata.reviewer_response[0].updated_time #=> Time
    #   resp.data.metadata.reviewer_response[0].review_status #=> String, one of ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #   resp.data.metadata.reviewer_response[0].comment #=> Array<DocumentReviewCommentSource>
    #   resp.data.metadata.reviewer_response[0].comment[0] #=> Types::DocumentReviewCommentSource
    #   resp.data.metadata.reviewer_response[0].comment[0].type #=> String, one of ["Comment"]
    #   resp.data.metadata.reviewer_response[0].comment[0].content #=> String
    #   resp.data.metadata.reviewer_response[0].reviewer #=> String
    #   resp.data.next_token #=> String
    #
    def list_document_metadata_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDocumentMetadataHistoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDocumentMetadataHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDocumentMetadataHistory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDocumentVersion, Errors::InvalidDocument, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::ListDocumentMetadataHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDocumentMetadataHistory,
        stubs: @stubs,
        params_class: Params::ListDocumentMetadataHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_document_metadata_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all versions for a document.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDocumentVersionsInput}.
    #
    # @option params [String] :name
    #   <p>The name of the document. You can specify an Amazon Resource Name (ARN).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::ListDocumentVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_document_versions(
    #     name: 'Name', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDocumentVersionsOutput
    #   resp.data.document_versions #=> Array<DocumentVersionInfo>
    #   resp.data.document_versions[0] #=> Types::DocumentVersionInfo
    #   resp.data.document_versions[0].name #=> String
    #   resp.data.document_versions[0].display_name #=> String
    #   resp.data.document_versions[0].document_version #=> String
    #   resp.data.document_versions[0].version_name #=> String
    #   resp.data.document_versions[0].created_date #=> Time
    #   resp.data.document_versions[0].is_default_version #=> Boolean
    #   resp.data.document_versions[0].document_format #=> String, one of ["YAML", "JSON", "TEXT"]
    #   resp.data.document_versions[0].status #=> String, one of ["Creating", "Active", "Updating", "Deleting", "Failed"]
    #   resp.data.document_versions[0].status_information #=> String
    #   resp.data.document_versions[0].review_status #=> String, one of ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #   resp.data.next_token #=> String
    #
    def list_document_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDocumentVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDocumentVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDocumentVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDocument, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::ListDocumentVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDocumentVersions,
        stubs: @stubs,
        params_class: Params::ListDocumentVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_document_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns all Systems Manager (SSM) documents in the current Amazon Web Services account and Amazon Web Services Region. You can
    #    limit the results of this request by using a filter.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDocumentsInput}.
    #
    # @option params [Array<DocumentFilter>] :document_filter_list
    #   <p>This data type is deprecated. Instead, use <code>Filters</code>.</p>
    #
    # @option params [Array<DocumentKeyValuesFilter>] :filters
    #   <p>One or more <code>DocumentKeyValuesFilter</code> objects. Use a filter to return a more
    #      specific list of results. For keys, you can specify one or more key-value pair tags that have
    #      been applied to a document. Other valid keys include <code>Owner</code>, <code>Name</code>,
    #       <code>PlatformTypes</code>, <code>DocumentType</code>, and <code>TargetType</code>. For example,
    #      to return documents you own use <code>Key=Owner,Values=Self</code>. To specify a custom key-value
    #      pair, use the format <code>Key=tag:tagName,Values=valueName</code>.</p>
    #            <note>
    #               <p>This API operation only supports filtering documents by using a single tag key and one or
    #       more tag values. For example: <code>Key=tag:tagName,Values=valueName1,valueName2</code>
    #               </p>
    #            </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::ListDocumentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_documents(
    #     document_filter_list: [
    #       {
    #         key: 'Name', # required - accepts ["Name", "Owner", "PlatformTypes", "DocumentType"]
    #         value: 'value' # required
    #       }
    #     ],
    #     filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDocumentsOutput
    #   resp.data.document_identifiers #=> Array<DocumentIdentifier>
    #   resp.data.document_identifiers[0] #=> Types::DocumentIdentifier
    #   resp.data.document_identifiers[0].name #=> String
    #   resp.data.document_identifiers[0].created_date #=> Time
    #   resp.data.document_identifiers[0].display_name #=> String
    #   resp.data.document_identifiers[0].owner #=> String
    #   resp.data.document_identifiers[0].version_name #=> String
    #   resp.data.document_identifiers[0].platform_types #=> Array<String>
    #   resp.data.document_identifiers[0].platform_types[0] #=> String, one of ["Windows", "Linux", "MacOS"]
    #   resp.data.document_identifiers[0].document_version #=> String
    #   resp.data.document_identifiers[0].document_type #=> String, one of ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate"]
    #   resp.data.document_identifiers[0].schema_version #=> String
    #   resp.data.document_identifiers[0].document_format #=> String, one of ["YAML", "JSON", "TEXT"]
    #   resp.data.document_identifiers[0].target_type #=> String
    #   resp.data.document_identifiers[0].tags #=> Array<Tag>
    #   resp.data.document_identifiers[0].tags[0] #=> Types::Tag
    #   resp.data.document_identifiers[0].tags[0].key #=> String
    #   resp.data.document_identifiers[0].tags[0].value #=> String
    #   resp.data.document_identifiers[0].requires #=> Array<DocumentRequires>
    #   resp.data.document_identifiers[0].requires[0] #=> Types::DocumentRequires
    #   resp.data.document_identifiers[0].requires[0].name #=> String
    #   resp.data.document_identifiers[0].requires[0].version #=> String
    #   resp.data.document_identifiers[0].review_status #=> String, one of ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #   resp.data.document_identifiers[0].author #=> String
    #   resp.data.next_token #=> String
    #
    def list_documents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDocumentsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDocumentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDocuments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterKey, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::ListDocuments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDocuments,
        stubs: @stubs,
        params_class: Params::ListDocumentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_documents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A list of inventory items returned by the request.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInventoryEntriesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The managed node ID for which you want inventory information.</p>
    #
    # @option params [String] :type_name
    #   <p>The type of inventory item for which you want information.</p>
    #
    # @option params [Array<InventoryFilter>] :filters
    #   <p>One or more filters. Use a filter to return a more specific list of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @return [Types::ListInventoryEntriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_inventory_entries(
    #     instance_id: 'InstanceId', # required
    #     type_name: 'TypeName', # required
    #     filters: [
    #       {
    #         key: 'Key', # required
    #         values: [
    #           'member'
    #         ], # required
    #         type: 'Equal' # accepts ["Equal", "NotEqual", "BeginWith", "LessThan", "GreaterThan", "Exists"]
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInventoryEntriesOutput
    #   resp.data.type_name #=> String
    #   resp.data.instance_id #=> String
    #   resp.data.schema_version #=> String
    #   resp.data.capture_time #=> String
    #   resp.data.entries #=> Array<Hash<String, String>>
    #   resp.data.entries[0] #=> Hash<String, String>
    #   resp.data.entries[0]['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_inventory_entries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInventoryEntriesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInventoryEntriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInventoryEntries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInstanceId, Errors::InvalidFilter, Errors::InvalidTypeNameException, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::ListInventoryEntries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInventoryEntries,
        stubs: @stubs,
        params_class: Params::ListInventoryEntriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_inventory_entries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all OpsItem events in the current Amazon Web Services Region and Amazon Web Services account. You can
    #    limit the results to events associated with specific OpsItems by specifying a filter.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOpsItemEventsInput}.
    #
    # @option params [Array<OpsItemEventFilter>] :filters
    #   <p>One or more OpsItem filters. Use a filter to return a more specific list of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results. </p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    # @return [Types::ListOpsItemEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ops_item_events(
    #     filters: [
    #       {
    #         key: 'OpsItemId', # required - accepts ["OpsItemId"]
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'Equal' # required - accepts ["Equal"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOpsItemEventsOutput
    #   resp.data.next_token #=> String
    #   resp.data.summaries #=> Array<OpsItemEventSummary>
    #   resp.data.summaries[0] #=> Types::OpsItemEventSummary
    #   resp.data.summaries[0].ops_item_id #=> String
    #   resp.data.summaries[0].event_id #=> String
    #   resp.data.summaries[0].source #=> String
    #   resp.data.summaries[0].detail_type #=> String
    #   resp.data.summaries[0].detail #=> String
    #   resp.data.summaries[0].created_by #=> Types::OpsItemIdentity
    #   resp.data.summaries[0].created_by.arn #=> String
    #   resp.data.summaries[0].created_time #=> Time
    #
    def list_ops_item_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOpsItemEventsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOpsItemEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOpsItemEvents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OpsItemNotFoundException, Errors::OpsItemLimitExceededException, Errors::OpsItemInvalidParameterException, Errors::InternalServerError]),
        data_parser: Parsers::ListOpsItemEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOpsItemEvents,
        stubs: @stubs,
        params_class: Params::ListOpsItemEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_ops_item_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all related-item resources associated with a Systems Manager OpsCenter OpsItem. OpsCenter is a
    #    capability of Amazon Web Services Systems Manager.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOpsItemRelatedItemsInput}.
    #
    # @option params [String] :ops_item_id
    #   <p>The ID of the OpsItem for which you want to list all related-item resources.</p>
    #
    # @option params [Array<OpsItemRelatedItemsFilter>] :filters
    #   <p>One or more OpsItem filters. Use a filter to return a more specific list of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    #
    # @return [Types::ListOpsItemRelatedItemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ops_item_related_items(
    #     ops_item_id: 'OpsItemId',
    #     filters: [
    #       {
    #         key: 'ResourceType', # required - accepts ["ResourceType", "AssociationId", "ResourceUri"]
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'Equal' # required - accepts ["Equal"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOpsItemRelatedItemsOutput
    #   resp.data.next_token #=> String
    #   resp.data.summaries #=> Array<OpsItemRelatedItemSummary>
    #   resp.data.summaries[0] #=> Types::OpsItemRelatedItemSummary
    #   resp.data.summaries[0].ops_item_id #=> String
    #   resp.data.summaries[0].association_id #=> String
    #   resp.data.summaries[0].resource_type #=> String
    #   resp.data.summaries[0].association_type #=> String
    #   resp.data.summaries[0].resource_uri #=> String
    #   resp.data.summaries[0].created_by #=> Types::OpsItemIdentity
    #   resp.data.summaries[0].created_by.arn #=> String
    #   resp.data.summaries[0].created_time #=> Time
    #   resp.data.summaries[0].last_modified_by #=> Types::OpsItemIdentity
    #   resp.data.summaries[0].last_modified_time #=> Time
    #
    def list_ops_item_related_items(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOpsItemRelatedItemsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOpsItemRelatedItemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOpsItemRelatedItems
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OpsItemInvalidParameterException, Errors::InternalServerError]),
        data_parser: Parsers::ListOpsItemRelatedItems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOpsItemRelatedItems,
        stubs: @stubs,
        params_class: Params::ListOpsItemRelatedItemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_ops_item_related_items
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Amazon Web Services Systems Manager calls this API operation when displaying all Application Manager OpsMetadata objects or
    #    blobs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOpsMetadataInput}.
    #
    # @option params [Array<OpsMetadataFilter>] :filters
    #   <p>One or more filters to limit the number of OpsMetadata objects returned by the call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #
    # @return [Types::ListOpsMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ops_metadata(
    #     filters: [
    #       {
    #         key: 'Key', # required
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
    #   resp.data #=> Types::ListOpsMetadataOutput
    #   resp.data.ops_metadata_list #=> Array<OpsMetadata>
    #   resp.data.ops_metadata_list[0] #=> Types::OpsMetadata
    #   resp.data.ops_metadata_list[0].resource_id #=> String
    #   resp.data.ops_metadata_list[0].ops_metadata_arn #=> String
    #   resp.data.ops_metadata_list[0].last_modified_date #=> Time
    #   resp.data.ops_metadata_list[0].last_modified_user #=> String
    #   resp.data.ops_metadata_list[0].creation_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_ops_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOpsMetadataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOpsMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOpsMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OpsMetadataInvalidArgumentException, Errors::InternalServerError]),
        data_parser: Parsers::ListOpsMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOpsMetadata,
        stubs: @stubs,
        params_class: Params::ListOpsMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_ops_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a resource-level summary count. The summary includes information about compliant and
    #    non-compliant statuses and detailed compliance-item severity counts, according to the filter
    #    criteria you specify.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResourceComplianceSummariesInput}.
    #
    # @option params [Array<ComplianceStringFilter>] :filters
    #   <p>One or more filters. Use a filter to return a more specific list of results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @return [Types::ListResourceComplianceSummariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_compliance_summaries(
    #     filters: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ],
    #         type: 'EQUAL' # accepts ["EQUAL", "NOT_EQUAL", "BEGIN_WITH", "LESS_THAN", "GREATER_THAN"]
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourceComplianceSummariesOutput
    #   resp.data.resource_compliance_summary_items #=> Array<ResourceComplianceSummaryItem>
    #   resp.data.resource_compliance_summary_items[0] #=> Types::ResourceComplianceSummaryItem
    #   resp.data.resource_compliance_summary_items[0].compliance_type #=> String
    #   resp.data.resource_compliance_summary_items[0].resource_type #=> String
    #   resp.data.resource_compliance_summary_items[0].resource_id #=> String
    #   resp.data.resource_compliance_summary_items[0].status #=> String, one of ["COMPLIANT", "NON_COMPLIANT"]
    #   resp.data.resource_compliance_summary_items[0].overall_severity #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #   resp.data.resource_compliance_summary_items[0].execution_summary #=> Types::ComplianceExecutionSummary
    #   resp.data.resource_compliance_summary_items[0].execution_summary.execution_time #=> Time
    #   resp.data.resource_compliance_summary_items[0].execution_summary.execution_id #=> String
    #   resp.data.resource_compliance_summary_items[0].execution_summary.execution_type #=> String
    #   resp.data.resource_compliance_summary_items[0].compliant_summary #=> Types::CompliantSummary
    #   resp.data.resource_compliance_summary_items[0].compliant_summary.compliant_count #=> Integer
    #   resp.data.resource_compliance_summary_items[0].compliant_summary.severity_summary #=> Types::SeveritySummary
    #   resp.data.resource_compliance_summary_items[0].compliant_summary.severity_summary.critical_count #=> Integer
    #   resp.data.resource_compliance_summary_items[0].compliant_summary.severity_summary.high_count #=> Integer
    #   resp.data.resource_compliance_summary_items[0].compliant_summary.severity_summary.medium_count #=> Integer
    #   resp.data.resource_compliance_summary_items[0].compliant_summary.severity_summary.low_count #=> Integer
    #   resp.data.resource_compliance_summary_items[0].compliant_summary.severity_summary.informational_count #=> Integer
    #   resp.data.resource_compliance_summary_items[0].compliant_summary.severity_summary.unspecified_count #=> Integer
    #   resp.data.resource_compliance_summary_items[0].non_compliant_summary #=> Types::NonCompliantSummary
    #   resp.data.resource_compliance_summary_items[0].non_compliant_summary.non_compliant_count #=> Integer
    #   resp.data.resource_compliance_summary_items[0].non_compliant_summary.severity_summary #=> Types::SeveritySummary
    #   resp.data.next_token #=> String
    #
    def list_resource_compliance_summaries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourceComplianceSummariesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourceComplianceSummariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourceComplianceSummaries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilter, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::ListResourceComplianceSummaries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourceComplianceSummaries,
        stubs: @stubs,
        params_class: Params::ListResourceComplianceSummariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resource_compliance_summaries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists your resource data sync configurations. Includes information about the last time a
    #    sync attempted to start, the last sync status, and the last time a sync successfully
    #    completed.</p>
    #          <p>The number of sync configurations might be too large to return using a single call to
    #     <code>ListResourceDataSync</code>. You can limit the number of sync configurations returned by
    #    using the <code>MaxResults</code> parameter. To determine whether there are more sync
    #    configurations to list, check the value of <code>NextToken</code> in the output. If there are
    #    more sync configurations to list, you can request them by specifying the <code>NextToken</code>
    #    returned in the call to the parameter of a subsequent call. </p>
    #
    # @param [Hash] params
    #   See {Types::ListResourceDataSyncInput}.
    #
    # @option params [String] :sync_type
    #   <p>View a list of resource data syncs according to the sync type. Specify
    #       <code>SyncToDestination</code> to view resource data syncs that synchronize data to an Amazon S3 bucket. Specify <code>SyncFromSource</code> to view resource data syncs from Organizations
    #      or from multiple Amazon Web Services Regions.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    #
    # @return [Types::ListResourceDataSyncOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_data_sync(
    #     sync_type: 'SyncType',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourceDataSyncOutput
    #   resp.data.resource_data_sync_items #=> Array<ResourceDataSyncItem>
    #   resp.data.resource_data_sync_items[0] #=> Types::ResourceDataSyncItem
    #   resp.data.resource_data_sync_items[0].sync_name #=> String
    #   resp.data.resource_data_sync_items[0].sync_type #=> String
    #   resp.data.resource_data_sync_items[0].sync_source #=> Types::ResourceDataSyncSourceWithState
    #   resp.data.resource_data_sync_items[0].sync_source.source_type #=> String
    #   resp.data.resource_data_sync_items[0].sync_source.aws_organizations_source #=> Types::ResourceDataSyncAwsOrganizationsSource
    #   resp.data.resource_data_sync_items[0].sync_source.aws_organizations_source.organization_source_type #=> String
    #   resp.data.resource_data_sync_items[0].sync_source.aws_organizations_source.organizational_units #=> Array<ResourceDataSyncOrganizationalUnit>
    #   resp.data.resource_data_sync_items[0].sync_source.aws_organizations_source.organizational_units[0] #=> Types::ResourceDataSyncOrganizationalUnit
    #   resp.data.resource_data_sync_items[0].sync_source.aws_organizations_source.organizational_units[0].organizational_unit_id #=> String
    #   resp.data.resource_data_sync_items[0].sync_source.source_regions #=> Array<String>
    #   resp.data.resource_data_sync_items[0].sync_source.source_regions[0] #=> String
    #   resp.data.resource_data_sync_items[0].sync_source.include_future_regions #=> Boolean
    #   resp.data.resource_data_sync_items[0].sync_source.state #=> String
    #   resp.data.resource_data_sync_items[0].sync_source.enable_all_ops_data_sources #=> Boolean
    #   resp.data.resource_data_sync_items[0].s3_destination #=> Types::ResourceDataSyncS3Destination
    #   resp.data.resource_data_sync_items[0].s3_destination.bucket_name #=> String
    #   resp.data.resource_data_sync_items[0].s3_destination.prefix #=> String
    #   resp.data.resource_data_sync_items[0].s3_destination.sync_format #=> String, one of ["JsonSerDe"]
    #   resp.data.resource_data_sync_items[0].s3_destination.region #=> String
    #   resp.data.resource_data_sync_items[0].s3_destination.awskms_key_arn #=> String
    #   resp.data.resource_data_sync_items[0].s3_destination.destination_data_sharing #=> Types::ResourceDataSyncDestinationDataSharing
    #   resp.data.resource_data_sync_items[0].s3_destination.destination_data_sharing.destination_data_sharing_type #=> String
    #   resp.data.resource_data_sync_items[0].last_sync_time #=> Time
    #   resp.data.resource_data_sync_items[0].last_successful_sync_time #=> Time
    #   resp.data.resource_data_sync_items[0].sync_last_modified_time #=> Time
    #   resp.data.resource_data_sync_items[0].last_status #=> String, one of ["Successful", "Failed", "InProgress"]
    #   resp.data.resource_data_sync_items[0].sync_created_time #=> Time
    #   resp.data.resource_data_sync_items[0].last_sync_status_message #=> String
    #   resp.data.next_token #=> String
    #
    def list_resource_data_sync(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourceDataSyncInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourceDataSyncInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourceDataSync
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceDataSyncInvalidConfigurationException, Errors::InternalServerError, Errors::InvalidNextToken]),
        data_parser: Parsers::ListResourceDataSync
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourceDataSync,
        stubs: @stubs,
        params_class: Params::ListResourceDataSyncOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resource_data_sync
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the tags assigned to the specified resource.</p>
    #          <p>For information about the ID format for each supported resource type, see <a>AddTagsToResource</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_type
    #   <p>Returns a list of tags for a specific resource type.</p>
    #
    # @option params [String] :resource_id
    #   <p>The resource ID for which you want to see a list of tags.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_type: 'Document', # required - accepts ["Document", "ManagedInstance", "MaintenanceWindow", "Parameter", "PatchBaseline", "OpsItem", "OpsMetadata", "Automation"]
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tag_list #=> Array<Tag>
    #   resp.data.tag_list[0] #=> Types::Tag
    #   resp.data.tag_list[0].key #=> String
    #   resp.data.tag_list[0].value #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceId, Errors::InternalServerError, Errors::InvalidResourceType]),
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

    # <p>Shares a Amazon Web Services Systems Manager document (SSM document)publicly or privately. If you share a document
    #    privately, you must specify the Amazon Web Services user account IDs for those people who can use the
    #    document. If you share a document publicly, you must specify <i>All</i> as the
    #    account ID.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyDocumentPermissionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the document that you want to share.</p>
    #
    # @option params [String] :permission_type
    #   <p>The permission type for the document. The permission type can be
    #      <i>Share</i>.</p>
    #
    # @option params [Array<String>] :account_ids_to_add
    #   <p>The Amazon Web Services user accounts that should have access to the document. The account IDs can
    #      either be a group of account IDs or <i>All</i>.</p>
    #
    # @option params [Array<String>] :account_ids_to_remove
    #   <p>The Amazon Web Services user accounts that should no longer have access to the document. The Amazon Web Services
    #      user account can either be a group of account IDs or <i>All</i>. This action has a
    #      higher priority than <i>AccountIdsToAdd</i>. If you specify an account ID to add
    #      and the same ID to remove, the system removes access to the document.</p>
    #
    # @option params [String] :shared_document_version
    #   <p>(Optional) The version of the document to share. If it isn't specified, the system choose
    #      the <code>Default</code> version to share.</p>
    #
    # @return [Types::ModifyDocumentPermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_document_permission(
    #     name: 'Name', # required
    #     permission_type: 'Share', # required - accepts ["Share"]
    #     account_ids_to_add: [
    #       'member'
    #     ],
    #     shared_document_version: 'SharedDocumentVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyDocumentPermissionOutput
    #
    def modify_document_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyDocumentPermissionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyDocumentPermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyDocumentPermission
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DocumentLimitExceeded, Errors::InvalidDocument, Errors::DocumentPermissionLimit, Errors::InternalServerError, Errors::InvalidPermissionType]),
        data_parser: Parsers::ModifyDocumentPermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyDocumentPermission,
        stubs: @stubs,
        params_class: Params::ModifyDocumentPermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_document_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a compliance type and other compliance details on a designated resource. This
    #    operation lets you register custom compliance details with a resource. This call overwrites
    #    existing compliance information on the resource, so you must provide a full list of compliance
    #    items each time that you send the request.</p>
    #          <p>ComplianceType can be one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>ExecutionId: The execution ID when the patch, association, or custom compliance item was
    #      applied.</p>
    #             </li>
    #             <li>
    #                <p>ExecutionType: Specify patch, association, or Custom:<code>string</code>.</p>
    #             </li>
    #             <li>
    #                <p>ExecutionTime. The time the patch, association, or custom compliance item was applied to
    #      the managed node.</p>
    #             </li>
    #             <li>
    #                <p>Id: The patch, association, or custom compliance ID.</p>
    #             </li>
    #             <li>
    #                <p>Title: A title.</p>
    #             </li>
    #             <li>
    #                <p>Status: The status of the compliance item. For example, <code>approved</code> for patches,
    #      or <code>Failed</code> for associations.</p>
    #             </li>
    #             <li>
    #                <p>Severity: A patch severity. For example, <code>critical</code>.</p>
    #             </li>
    #             <li>
    #                <p>DocumentName: An SSM document name. For example, <code>AWS-RunPatchBaseline</code>.</p>
    #             </li>
    #             <li>
    #                <p>DocumentVersion: An SSM document version number. For example, 4.</p>
    #             </li>
    #             <li>
    #                <p>Classification: A patch classification. For example, <code>security updates</code>.</p>
    #             </li>
    #             <li>
    #                <p>PatchBaselineId: A patch baseline ID.</p>
    #             </li>
    #             <li>
    #                <p>PatchSeverity: A patch severity. For example, <code>Critical</code>.</p>
    #             </li>
    #             <li>
    #                <p>PatchState: A patch state. For example, <code>InstancesWithFailedPatches</code>.</p>
    #             </li>
    #             <li>
    #                <p>PatchGroup: The name of a patch group.</p>
    #             </li>
    #             <li>
    #                <p>InstalledTime: The time the association, patch, or custom compliance item was applied to
    #      the resource. Specify the time by using the following format: yyyy-MM-dd'T'HH:mm:ss'Z'</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutComplianceItemsInput}.
    #
    # @option params [String] :resource_id
    #   <p>Specify an ID for this resource. For a managed node, this is the node ID.</p>
    #
    # @option params [String] :resource_type
    #   <p>Specify the type of resource. <code>ManagedInstance</code> is currently the only supported
    #      resource type.</p>
    #
    # @option params [String] :compliance_type
    #   <p>Specify the compliance type. For example, specify Association (for a State Manager
    #      association), Patch, or Custom:<code>string</code>.</p>
    #
    # @option params [ComplianceExecutionSummary] :execution_summary
    #   <p>A summary of the call execution that includes an execution ID, the type of execution (for
    #      example, <code>Command</code>), and the date/time of the execution using a datetime object that
    #      is saved in the following format: yyyy-MM-dd'T'HH:mm:ss'Z'.</p>
    #
    # @option params [Array<ComplianceItemEntry>] :items
    #   <p>Information about the compliance as defined by the resource type. For example, for a patch
    #      compliance type, <code>Items</code> includes information about the PatchSeverity, Classification,
    #      and so on.</p>
    #
    # @option params [String] :item_content_hash
    #   <p>MD5 or SHA-256 content hash. The content hash is used to determine if existing information
    #      should be overwritten or ignored. If the content hashes match, the request to put compliance
    #      information is ignored.</p>
    #
    # @option params [String] :upload_type
    #   <p>The mode for uploading compliance items. You can specify <code>COMPLETE</code> or
    #       <code>PARTIAL</code>. In <code>COMPLETE</code> mode, the system overwrites all existing
    #      compliance information for the resource. You must provide a full list of compliance items each
    #      time you send the request.</p>
    #            <p>In <code>PARTIAL</code> mode, the system overwrites compliance information for a specific
    #      association. The association must be configured with <code>SyncCompliance</code> set to
    #       <code>MANUAL</code>. By default, all requests use <code>COMPLETE</code> mode.</p>
    #            <note>
    #               <p>This attribute is only valid for association compliance.</p>
    #            </note>
    #
    # @return [Types::PutComplianceItemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_compliance_items(
    #     resource_id: 'ResourceId', # required
    #     resource_type: 'ResourceType', # required
    #     compliance_type: 'ComplianceType', # required
    #     execution_summary: {
    #       execution_time: Time.now, # required
    #       execution_id: 'ExecutionId',
    #       execution_type: 'ExecutionType'
    #     }, # required
    #     items: [
    #       {
    #         id: 'Id',
    #         title: 'Title',
    #         severity: 'CRITICAL', # required - accepts ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #         status: 'COMPLIANT', # required - accepts ["COMPLIANT", "NON_COMPLIANT"]
    #         details: {
    #           'key' => 'value'
    #         }
    #       }
    #     ], # required
    #     item_content_hash: 'ItemContentHash',
    #     upload_type: 'COMPLETE' # accepts ["COMPLETE", "PARTIAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutComplianceItemsOutput
    #
    def put_compliance_items(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutComplianceItemsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutComplianceItemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutComplianceItems
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ItemSizeLimitExceededException, Errors::ComplianceTypeCountLimitExceededException, Errors::InvalidItemContentException, Errors::InvalidResourceId, Errors::TotalSizeLimitExceededException, Errors::InternalServerError, Errors::InvalidResourceType]),
        data_parser: Parsers::PutComplianceItems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutComplianceItems,
        stubs: @stubs,
        params_class: Params::PutComplianceItemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_compliance_items
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Bulk update custom inventory items on one or more managed nodes. The request adds an
    #    inventory item, if it doesn't already exist, or updates an inventory item, if it does
    #    exist.</p>
    #
    # @param [Hash] params
    #   See {Types::PutInventoryInput}.
    #
    # @option params [String] :instance_id
    #   <p>An managed node ID where you want to add or update inventory items.</p>
    #
    # @option params [Array<InventoryItem>] :items
    #   <p>The inventory items that you want to add or update on managed nodes.</p>
    #
    # @return [Types::PutInventoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_inventory(
    #     instance_id: 'InstanceId', # required
    #     items: [
    #       {
    #         type_name: 'TypeName', # required
    #         schema_version: 'SchemaVersion', # required
    #         capture_time: 'CaptureTime', # required
    #         content_hash: 'ContentHash',
    #         content: [
    #           {
    #             'key' => 'value'
    #           }
    #         ],
    #         context: {
    #           'key' => 'value'
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutInventoryOutput
    #   resp.data.message #=> String
    #
    def put_inventory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutInventoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutInventoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutInventory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ItemSizeLimitExceededException, Errors::InvalidItemContentException, Errors::ItemContentMismatchException, Errors::CustomSchemaCountLimitExceededException, Errors::UnsupportedInventorySchemaVersionException, Errors::UnsupportedInventoryItemContextException, Errors::TotalSizeLimitExceededException, Errors::InternalServerError, Errors::InvalidInventoryItemContextException, Errors::InvalidInstanceId, Errors::SubTypeCountLimitExceededException, Errors::InvalidTypeNameException]),
        data_parser: Parsers::PutInventory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutInventory,
        stubs: @stubs,
        params_class: Params::PutInventoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_inventory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add a parameter to the system.</p>
    #
    # @param [Hash] params
    #   See {Types::PutParameterInput}.
    #
    # @option params [String] :name
    #   <p>The fully qualified name of the parameter that you want to add to the system. The fully
    #      qualified name includes the complete hierarchy of the parameter path and name. For parameters in
    #      a hierarchy, you must include a leading forward slash character (/) when you create or reference
    #      a parameter. For example: <code>/Dev/DBServer/MySQL/db-string13</code>
    #            </p>
    #            <p>Naming Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Parameter names are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>A parameter name must be unique within an Amazon Web Services Region</p>
    #               </li>
    #               <li>
    #                  <p>A parameter name can't be prefixed with "<code>aws</code>" or "<code>ssm</code>"
    #        (case-insensitive).</p>
    #               </li>
    #               <li>
    #                  <p>Parameter names can include only the following symbols and letters:
    #         <code>a-zA-Z0-9_.-</code>
    #                  </p>
    #                  <p>In addition, the slash character ( / ) is used to delineate hierarchies in parameter
    #        names. For example: <code>/Dev/Production/East/Project-ABC/MyParameter</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A parameter name can't include spaces.</p>
    #               </li>
    #               <li>
    #                  <p>Parameter hierarchies are limited to a maximum depth of fifteen levels.</p>
    #               </li>
    #            </ul>
    #            <p>For additional information about valid values for parameter names, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-su-create.html">Creating Systems Manager parameters</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <note>
    #               <p>The maximum length constraint of 2048 characters listed below includes 1037 characters
    #       reserved for internal use by Systems Manager. The maximum length for a parameter name that you create is
    #       1011 characters. This includes the characters in the ARN that precede the name you specify, such
    #       as <code>arn:aws:ssm:us-east-2:111122223333:parameter/</code>.</p>
    #            </note>
    #
    # @option params [String] :description
    #   <p>Information about the parameter that you want to add to the system. Optional but
    #      recommended.</p>
    #            <important>
    #               <p>Don't enter personally identifiable information in this field.</p>
    #            </important>
    #
    # @option params [String] :value
    #   <p>The parameter value that you want to add to the system. Standard parameters have a value
    #      limit of 4 KB. Advanced parameters have a value limit of 8 KB.</p>
    #            <note>
    #               <p>Parameters can't be referenced or nested in the values of other parameters. You can't
    #       include <code>{{}}</code> or <code>{{ssm:<i>parameter-name</i>}}</code> in a
    #       parameter value.</p>
    #            </note>
    #
    # @option params [String] :type
    #   <p>The type of parameter that you want to add to the system.</p>
    #            <note>
    #               <p>
    #                  <code>SecureString</code> isn't currently supported for CloudFormation templates.</p>
    #            </note>
    #            <p>Items in a <code>StringList</code> must be separated by a comma (,). You can't
    #      use other punctuation or special character to escape items in the list. If you have a parameter
    #      value that requires a comma, then use the <code>String</code> data type.</p>
    #            <important>
    #               <p>Specifying a parameter type isn't required when updating a parameter. You must specify a
    #       parameter type when creating a parameter.</p>
    #            </important>
    #
    # @option params [String] :key_id
    #   <p>The Key Management Service (KMS) ID that you want to use to encrypt a
    #      parameter. Either the default KMS key automatically assigned to your Amazon Web Services account
    #      or a custom key. Required for parameters that use the <code>SecureString</code>
    #      data type.</p>
    #            <p>If you don't specify a key ID, the system uses the default key associated with your
    #      Amazon Web Services account.</p>
    #            <ul>
    #               <li>
    #                  <p>To use your default KMS key, choose the <code>SecureString</code> data type, and do <i>not</i> specify the <code>Key ID</code> when you create the parameter. The system automatically populates
    #         <code>Key ID</code> with your default KMS key.</p>
    #               </li>
    #               <li>
    #                  <p>To use a custom KMS key, choose the <code>SecureString</code>
    #        data type with the <code>Key ID</code> parameter.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :overwrite
    #   <p>Overwrite an existing parameter. The default value is <code>false</code>.</p>
    #
    # @option params [String] :allowed_pattern
    #   <p>A regular expression used to validate the parameter value. For example, for String types
    #      with values restricted to numbers, you can specify the following: AllowedPattern=^\d+$ </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
    #      different ways, such as by purpose, owner, or environment. For example, you might want to tag a
    #      Systems Manager parameter to identify the type of resource to which it applies, the environment, or the
    #      type of configuration data referenced by the parameter. In this case, you could specify the
    #      following key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=Resource,Value=S3bucket</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=ParameterType,Value=LicenseKey</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>To add tags to an existing Systems Manager parameter, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </note>
    #
    # @option params [String] :tier
    #   <p>The parameter tier to assign to a parameter.</p>
    #            <p>Parameter Store offers a standard tier and an advanced tier for parameters. Standard
    #      parameters have a content size limit of 4 KB and can't be configured to use parameter policies.
    #      You can create a maximum of 10,000 standard parameters for each Region in an Amazon Web Services account.
    #      Standard parameters are offered at no additional cost. </p>
    #            <p>Advanced parameters have a content size limit of 8 KB and can be configured to use parameter
    #      policies. You can create a maximum of 100,000 advanced parameters for each Region in an
    #      Amazon Web Services account. Advanced parameters incur a charge. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html">Standard and
    #       advanced parameter tiers</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <p>You can change a standard parameter to an advanced parameter any time. But you can't revert
    #      an advanced parameter to a standard parameter. Reverting an advanced parameter to a standard
    #      parameter would result in data loss because the system would truncate the size of the parameter
    #      from 8 KB to 4 KB. Reverting would also remove any policies attached to the parameter. Lastly,
    #      advanced parameters use a different form of encryption than standard parameters. </p>
    #            <p>If you no longer need an advanced parameter, or if you no longer want to incur charges for
    #      an advanced parameter, you must delete it and recreate it as a new standard parameter. </p>
    #            <p>
    #               <b>Using the Default Tier Configuration</b>
    #            </p>
    #            <p>In <code>PutParameter</code> requests, you can specify the tier to create the parameter in.
    #      Whenever you specify a tier in the request, Parameter Store creates or updates the parameter
    #      according to that request. However, if you don't specify a tier in a request, Parameter Store
    #      assigns the tier based on the current Parameter Store default tier configuration.</p>
    #            <p>The default tier when you begin using Parameter Store is the standard-parameter tier. If you
    #      use the advanced-parameter tier, you can specify one of the following as the default:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Advanced</b>: With this option, Parameter Store evaluates all
    #        requests as advanced parameters. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Intelligent-Tiering</b>: With this option, Parameter Store
    #        evaluates each request to determine if the parameter is standard or advanced. </p>
    #                  <p>If the request doesn't include any options that require an advanced parameter, the
    #        parameter is created in the standard-parameter tier. If one or more options requiring an
    #        advanced parameter are included in the request, Parameter Store create a parameter in the
    #        advanced-parameter tier.</p>
    #                  <p>This approach helps control your parameter-related costs by always creating standard
    #        parameters unless an advanced parameter is necessary. </p>
    #               </li>
    #            </ul>
    #            <p>Options that require an advanced parameter include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>The content size of the parameter is more than 4 KB.</p>
    #               </li>
    #               <li>
    #                  <p>The parameter uses a parameter policy.</p>
    #               </li>
    #               <li>
    #                  <p>More than 10,000 parameters already exist in your Amazon Web Services account in the current
    #        Amazon Web Services Region.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about configuring the default tier option, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/ps-default-tier.html">Specifying a
    #       default parameter tier</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [String] :policies
    #   <p>One or more policies to apply to a parameter. This operation takes a JSON array. Parameter
    #      Store, a capability of Amazon Web Services Systems Manager supports the following policy types:</p>
    #            <p>Expiration: This policy deletes the parameter after it expires. When you create the policy,
    #      you specify the expiration date. You can update the expiration date and time by updating the
    #      policy. Updating the <i>parameter</i> doesn't affect the expiration date and time.
    #      When the expiration time is reached, Parameter Store deletes the parameter.</p>
    #            <p>ExpirationNotification: This policy initiates an event in Amazon CloudWatch Events that
    #      notifies you about the expiration. By using this policy, you can receive notification before or
    #      after the expiration time is reached, in units of days or hours.</p>
    #            <p>NoChangeNotification: This policy initiates a CloudWatch Events event if a parameter hasn't
    #      been modified for a specified period of time. This policy type is useful when, for example, a
    #      secret needs to be changed within a period of time, but it hasn't been changed.</p>
    #            <p>All existing policies are preserved until you send new policies or an empty policy. For more
    #      information about parameter policies, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html">Assigning parameter
    #       policies</a>. </p>
    #
    # @option params [String] :data_type
    #   <p>The data type for a <code>String</code> parameter. Supported data types include plain text
    #      and Amazon Machine Image (AMI) IDs.</p>
    #            <p>
    #               <b>The following data type values are supported.</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>text</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>aws:ec2:image</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>aws:ssm:integration</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>When you create a <code>String</code> parameter and specify <code>aws:ec2:image</code>,
    #      Amazon Web Services Systems Manager validates the parameter value is in the required format, such as
    #       <code>ami-12345abcdeEXAMPLE</code>, and that the specified AMI is available in your
    #      Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-ec2-aliases.html">Native parameter support
    #       for Amazon Machine Image (AMI) IDs</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @return [Types::PutParameterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_parameter(
    #     name: 'Name', # required
    #     description: 'Description',
    #     value: 'Value', # required
    #     type: 'String', # accepts ["String", "StringList", "SecureString"]
    #     key_id: 'KeyId',
    #     overwrite: false,
    #     allowed_pattern: 'AllowedPattern',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     tier: 'Standard', # accepts ["Standard", "Advanced", "Intelligent-Tiering"]
    #     policies: 'Policies',
    #     data_type: 'DataType'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutParameterOutput
    #   resp.data.version #=> Integer
    #   resp.data.tier #=> String, one of ["Standard", "Advanced", "Intelligent-Tiering"]
    #
    def put_parameter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutParameterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutParameterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutParameter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyUpdates, Errors::PoliciesLimitExceededException, Errors::InvalidKeyId, Errors::HierarchyTypeMismatchException, Errors::ParameterAlreadyExists, Errors::InternalServerError, Errors::HierarchyLevelLimitExceededException, Errors::InvalidPolicyTypeException, Errors::InvalidAllowedPatternException, Errors::IncompatiblePolicyException, Errors::ParameterLimitExceeded, Errors::ParameterPatternMismatchException, Errors::UnsupportedParameterType, Errors::ParameterMaxVersionLimitExceeded, Errors::InvalidPolicyAttributeException]),
        data_parser: Parsers::PutParameter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutParameter,
        stubs: @stubs,
        params_class: Params::PutParameterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_parameter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Defines the default patch baseline for the relevant operating system.</p>
    #          <p>To reset the Amazon Web Services-predefined patch baseline as the default, specify the full patch baseline
    #    Amazon Resource Name (ARN) as the baseline ID value. For example, for CentOS, specify
    #     <code>arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0574b43a65ea646ed</code> instead of
    #     <code>pb-0574b43a65ea646ed</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterDefaultPatchBaselineInput}.
    #
    # @option params [String] :baseline_id
    #   <p>The ID of the patch baseline that should be the default patch baseline.</p>
    #
    # @return [Types::RegisterDefaultPatchBaselineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_default_patch_baseline(
    #     baseline_id: 'BaselineId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterDefaultPatchBaselineOutput
    #   resp.data.baseline_id #=> String
    #
    def register_default_patch_baseline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterDefaultPatchBaselineInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterDefaultPatchBaselineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterDefaultPatchBaseline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidResourceId, Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::RegisterDefaultPatchBaseline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterDefaultPatchBaseline,
        stubs: @stubs,
        params_class: Params::RegisterDefaultPatchBaselineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_default_patch_baseline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a patch baseline for a patch group.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterPatchBaselineForPatchGroupInput}.
    #
    # @option params [String] :baseline_id
    #   <p>The ID of the patch baseline to register with the patch group.</p>
    #
    # @option params [String] :patch_group
    #   <p>The name of the patch group to be registered with the patch baseline.</p>
    #
    # @return [Types::RegisterPatchBaselineForPatchGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_patch_baseline_for_patch_group(
    #     baseline_id: 'BaselineId', # required
    #     patch_group: 'PatchGroup' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterPatchBaselineForPatchGroupOutput
    #   resp.data.baseline_id #=> String
    #   resp.data.patch_group #=> String
    #
    def register_patch_baseline_for_patch_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterPatchBaselineForPatchGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterPatchBaselineForPatchGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterPatchBaselineForPatchGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::InvalidResourceId, Errors::DoesNotExistException, Errors::ResourceLimitExceededException, Errors::InternalServerError]),
        data_parser: Parsers::RegisterPatchBaselineForPatchGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterPatchBaselineForPatchGroup,
        stubs: @stubs,
        params_class: Params::RegisterPatchBaselineForPatchGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_patch_baseline_for_patch_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a target with a maintenance window.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterTargetWithMaintenanceWindowInput}.
    #
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window the target should be registered with.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of target being registered with the maintenance window.</p>
    #
    # @option params [Array<Target>] :targets
    #   <p>The targets to register with the maintenance window. In other words, the managed nodes to
    #      run commands on when the maintenance window runs.</p>
    #            <note>
    #               <p>If a single maintenance window task is registered with multiple targets, its task
    #       invocations occur sequentially and not in parallel. If your task must run on multiple targets at
    #       the same time, register a task for each target individually and assign each task the same
    #       priority level.</p>
    #            </note>
    #            <p>You can specify targets using managed node IDs, resource group names, or tags that have been
    #      applied to managed nodes.</p>
    #            <p>
    #               <b>Example 1</b>: Specify managed node IDs</p>
    #            <p>
    #               <code>Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>,<instance-id-3></code>
    #            </p>
    #            <p>
    #               <b>Example 2</b>: Use tag key-pairs applied to managed
    #      nodes</p>
    #            <p>
    #               <code>Key=tag:<my-tag-key>,Values=<my-tag-value-1>,<my-tag-value-2></code>
    #            </p>
    #            <p>
    #               <b>Example 3</b>: Use tag-keys applied to managed nodes</p>
    #            <p>
    #               <code>Key=tag-key,Values=<my-tag-key-1>,<my-tag-key-2></code>
    #            </p>
    #
    #            <p>
    #               <b>Example 4</b>: Use resource group names</p>
    #            <p>
    #               <code>Key=resource-groups:Name,Values=<resource-group-name></code>
    #            </p>
    #            <p>
    #               <b>Example 5</b>: Use filters for resource group types</p>
    #            <p>
    #               <code>Key=resource-groups:ResourceTypeFilters,Values=<resource-type-1>,<resource-type-2></code>
    #            </p>
    #            <note>
    #               <p>For <code>Key=resource-groups:ResourceTypeFilters</code>, specify resource types in the
    #       following format</p>
    #               <p>
    #                  <code>Key=resource-groups:ResourceTypeFilters,Values=AWS::EC2::INSTANCE,AWS::EC2::VPC</code>
    #               </p>
    #            </note>
    #
    #            <p>For more information about these examples formats, including the best use case for each one,
    #      see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/mw-cli-tutorial-targets-examples.html">Examples: Register
    #       targets with a maintenance window</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [String] :owner_information
    #   <p>User-provided value that will be included in any Amazon CloudWatch Events events raised while
    #      running tasks for these targets in this maintenance window.</p>
    #
    # @option params [String] :name
    #   <p>An optional name for the target.</p>
    #
    # @option params [String] :description
    #   <p>An optional description for the target.</p>
    #
    # @option params [String] :client_token
    #   <p>User-provided idempotency token.</p>
    #
    # @return [Types::RegisterTargetWithMaintenanceWindowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_target_with_maintenance_window(
    #     window_id: 'WindowId', # required
    #     resource_type: 'INSTANCE', # required - accepts ["INSTANCE", "RESOURCE_GROUP"]
    #     targets: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ], # required
    #     owner_information: 'OwnerInformation',
    #     name: 'Name',
    #     description: 'Description',
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterTargetWithMaintenanceWindowOutput
    #   resp.data.window_target_id #=> String
    #
    def register_target_with_maintenance_window(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterTargetWithMaintenanceWindowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterTargetWithMaintenanceWindowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterTargetWithMaintenanceWindow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatch, Errors::DoesNotExistException, Errors::ResourceLimitExceededException, Errors::InternalServerError]),
        data_parser: Parsers::RegisterTargetWithMaintenanceWindow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterTargetWithMaintenanceWindow,
        stubs: @stubs,
        params_class: Params::RegisterTargetWithMaintenanceWindowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_target_with_maintenance_window
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a new task to a maintenance window.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterTaskWithMaintenanceWindowInput}.
    #
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window the task should be added to.</p>
    #
    # @option params [Array<Target>] :targets
    #   <p>The targets (either managed nodes or maintenance window targets).</p>
    #            <note>
    #               <p>One or more targets must be specified for maintenance window Run Command-type tasks.
    #       Depending on the task, targets are optional for other maintenance window task types (Automation,
    #        Lambda, and Step Functions). For more information about running tasks
    #       that don't specify targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">Registering
    #        maintenance window tasks without targets</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            </note>
    #            <p>Specify managed nodes using the following format: </p>
    #            <p>
    #               <code>Key=InstanceIds,Values=<instance-id-1>,<instance-id-2></code>
    #            </p>
    #            <p>Specify maintenance window targets using the following format:</p>
    #            <p>
    #               <code>Key=WindowTargetIds,Values=<window-target-id-1>,<window-target-id-2></code>
    #            </p>
    #
    # @option params [String] :task_arn
    #   <p>The ARN of the task to run.</p>
    #
    # @option params [String] :service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role for Amazon Web Services Systems Manager to assume when running a
    #     maintenance window task. If you do not specify a service role ARN, Systems Manager uses your account's
    #     service-linked role.  If no service-linked role for Systems Manager exists in your account, it is created when you run
    #     <code>RegisterTaskWithMaintenanceWindow</code>.</p>
    #            <p>For more information, see the following topics in the in the <i>Amazon Web Services Systems Manager User Guide</i>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions">Using
    #       service-linked roles for Systems Manager</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role">Should I use a service-linked role or a custom service role to run maintenance window tasks?
    #      </a>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :task_type
    #   <p>The type of task being registered.</p>
    #
    # @option params [Hash<String, MaintenanceWindowTaskParameterValueExpression>] :task_parameters
    #   <p>The parameters that should be passed to the task when it is run.</p>
    #            <note>
    #               <p>
    #                  <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
    #         instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
    #         about how Systems Manager handles these options for the supported maintenance window task
    #         types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #
    # @option params [MaintenanceWindowTaskInvocationParameters] :task_invocation_parameters
    #   <p>The parameters that the task should use during execution. Populate only the fields that
    #      match the task type. All other fields should be empty. </p>
    #
    # @option params [Integer] :priority
    #   <p>The priority of the task in the maintenance window, the lower the number the higher the
    #      priority. Tasks in a maintenance window are scheduled in priority order with tasks that have the
    #      same priority scheduled in parallel.</p>
    #
    # @option params [String] :max_concurrency
    #   <p>The maximum number of targets this task can be run for, in parallel.</p>
    #            <note>
    #               <p>Although this element is listed as "Required: No", a value can be omitted only when you are
    #       registering or updating a <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
    #        task</a> You must provide a value in all other cases.</p>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    #       affect the running of your task.</p>
    #            </note>
    #
    # @option params [String] :max_errors
    #   <p>The maximum number of errors allowed before this task stops being scheduled.</p>
    #            <note>
    #               <p>Although this element is listed as "Required: No", a value can be omitted only when you are
    #       registering or updating a <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
    #        task</a> You must provide a value in all other cases.</p>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    #       affect the running of your task.</p>
    #            </note>
    #
    # @option params [LoggingInfo] :logging_info
    #   <p>A structure containing information about an Amazon Simple Storage Service (Amazon S3) bucket
    #      to write managed node-level logs to. </p>
    #            <note>
    #               <p>
    #                  <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
    #         <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
    #         For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
    #         window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #
    # @option params [String] :name
    #   <p>An optional name for the task.</p>
    #
    # @option params [String] :description
    #   <p>An optional description for the task.</p>
    #
    # @option params [String] :client_token
    #   <p>User-provided idempotency token.</p>
    #
    # @option params [String] :cutoff_behavior
    #   <p>Indicates whether tasks should continue to run after the cutoff time specified in the
    #      maintenance windows is reached. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE_TASK</code>: When the cutoff time is reached, any tasks that are running
    #        continue. The default value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCEL_TASK</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>For Automation, Lambda, Step Functions tasks: When the cutoff
    #          time is reached, any task invocations that are already running continue, but no new task
    #          invocations are started.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Run Command tasks: When the cutoff time is reached, the system sends a <a>CancelCommand</a> operation that attempts to cancel the command associated with the
    #          task. However, there is no guarantee that the command will be terminated and the underlying
    #          process stopped.</p>
    #                     </li>
    #                  </ul>
    #                  <p>The status for tasks that are not completed is <code>TIMED_OUT</code>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::RegisterTaskWithMaintenanceWindowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_task_with_maintenance_window(
    #     window_id: 'WindowId', # required
    #     targets: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     task_arn: 'TaskArn', # required
    #     service_role_arn: 'ServiceRoleArn',
    #     task_type: 'RUN_COMMAND', # required - accepts ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"]
    #     task_parameters: {
    #       'key' => {
    #         values: [
    #           'member'
    #         ]
    #       }
    #     },
    #     task_invocation_parameters: {
    #       run_command: {
    #         comment: 'Comment',
    #         cloud_watch_output_config: {
    #           cloud_watch_log_group_name: 'CloudWatchLogGroupName',
    #           cloud_watch_output_enabled: false
    #         },
    #         document_hash: 'DocumentHash',
    #         document_hash_type: 'Sha256', # accepts ["Sha256", "Sha1"]
    #         document_version: 'DocumentVersion',
    #         notification_config: {
    #           notification_arn: 'NotificationArn',
    #           notification_events: [
    #             'All' # accepts ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]
    #           ],
    #           notification_type: 'Command' # accepts ["Command", "Invocation"]
    #         },
    #         output_s3_bucket_name: 'OutputS3BucketName',
    #         output_s3_key_prefix: 'OutputS3KeyPrefix',
    #         parameters: {
    #           'key' => [
    #             'member'
    #           ]
    #         },
    #         service_role_arn: 'ServiceRoleArn',
    #         timeout_seconds: 1
    #       },
    #       automation: {
    #         document_version: 'DocumentVersion',
    #         parameters: {
    #           'key' => [
    #             'member'
    #           ]
    #         }
    #       },
    #       step_functions: {
    #         input: 'Input',
    #         name: 'Name'
    #       },
    #       lambda: {
    #         client_context: 'ClientContext',
    #         qualifier: 'Qualifier',
    #         payload: 'Payload'
    #       }
    #     },
    #     priority: 1,
    #     max_concurrency: 'MaxConcurrency',
    #     max_errors: 'MaxErrors',
    #     logging_info: {
    #       s3_bucket_name: 'S3BucketName', # required
    #       s3_key_prefix: 'S3KeyPrefix',
    #       s3_region: 'S3Region' # required
    #     },
    #     name: 'Name',
    #     description: 'Description',
    #     client_token: 'ClientToken',
    #     cutoff_behavior: 'CONTINUE_TASK' # accepts ["CONTINUE_TASK", "CANCEL_TASK"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterTaskWithMaintenanceWindowOutput
    #   resp.data.window_task_id #=> String
    #
    def register_task_with_maintenance_window(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterTaskWithMaintenanceWindowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterTaskWithMaintenanceWindowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterTaskWithMaintenanceWindow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FeatureNotAvailableException, Errors::IdempotentParameterMismatch, Errors::DoesNotExistException, Errors::ResourceLimitExceededException, Errors::InternalServerError]),
        data_parser: Parsers::RegisterTaskWithMaintenanceWindow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterTaskWithMaintenanceWindow,
        stubs: @stubs,
        params_class: Params::RegisterTaskWithMaintenanceWindowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_task_with_maintenance_window
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes tag keys from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsFromResourceInput}.
    #
    # @option params [String] :resource_type
    #   <p>The type of resource from which you want to remove a tag.</p>
    #            <note>
    #               <p>The <code>ManagedInstance</code> type for this API operation is only for on-premises
    #       managed nodes. Specify the name of the managed node in the following format:
    #         <code>mi-<i>ID_number</i>
    #                  </code>. For example,
    #       <code>mi-1a2b3c4d5e6f</code>.</p>
    #            </note>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource from which you want to remove tags. For example:</p>
    #            <p>ManagedInstance: mi-012345abcde</p>
    #            <p>MaintenanceWindow: mw-012345abcde</p>
    #            <p>
    #               <code>Automation</code>: <code>example-c160-4567-8519-012345abcde</code>
    #            </p>
    #            <p>PatchBaseline: pb-012345abcde</p>
    #            <p>OpsMetadata object: <code>ResourceID</code> for tagging is created from the Amazon Resource
    #      Name (ARN) for the object. Specifically, <code>ResourceID</code> is created from the strings that
    #      come after the word <code>opsmetadata</code> in the ARN. For example, an OpsMetadata object with
    #      an ARN of <code>arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager</code>
    #      has a <code>ResourceID</code> of either <code>aws/ssm/MyGroup/appmanager</code> or
    #       <code>/aws/ssm/MyGroup/appmanager</code>.</p>
    #            <p>For the Document and Parameter values, use the name of the resource.</p>
    #            <note>
    #               <p>The <code>ManagedInstance</code> type for this API operation is only for on-premises
    #       managed nodes. Specify the name of the managed node in the following format: mi-ID_number. For
    #       example, mi-1a2b3c4d5e6f.</p>
    #            </note>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Tag keys that you want to remove from the specified resource.</p>
    #
    # @return [Types::RemoveTagsFromResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource(
    #     resource_type: 'Document', # required - accepts ["Document", "ManagedInstance", "MaintenanceWindow", "Parameter", "PatchBaseline", "OpsItem", "OpsMetadata", "Automation"]
    #     resource_id: 'ResourceId', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveTagsFromResourceOutput
    #
    def remove_tags_from_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveTagsFromResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveTagsFromResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveTagsFromResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyUpdates, Errors::InvalidResourceId, Errors::InternalServerError, Errors::InvalidResourceType]),
        data_parser: Parsers::RemoveTagsFromResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveTagsFromResource,
        stubs: @stubs,
        params_class: Params::RemoveTagsFromResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_tags_from_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <code>ServiceSetting</code> is an account-level setting for an Amazon Web Services service. This setting
    #    defines how a user interacts with or uses a service or a feature of a service. For example, if an
    #    Amazon Web Services service charges money to the account based on feature or service usage, then the Amazon Web Services
    #    service team might create a default setting of "false". This means the user can't use this
    #    feature unless they change the setting to "true" and intentionally opt in for a paid
    #    feature.</p>
    #          <p>Services map a <code>SettingId</code> object to a setting value. Amazon Web Services services teams define
    #    the default value for a <code>SettingId</code>. You can't create a new <code>SettingId</code>,
    #    but you can overwrite the default value if you have the <code>ssm:UpdateServiceSetting</code>
    #    permission for the setting. Use the <a>GetServiceSetting</a> API operation to view the
    #    current value. Use the <a>UpdateServiceSetting</a> API operation to change the default
    #    setting. </p>
    #          <p>Reset the service setting for the account to the default value as provisioned by the Amazon Web Services
    #    service team. </p>
    #
    # @param [Hash] params
    #   See {Types::ResetServiceSettingInput}.
    #
    # @option params [String] :setting_id
    #   <p>The Amazon Resource Name (ARN) of the service setting to reset. The setting ID can be one of
    #      the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-destination</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-group-name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/documents/console/public-sharing-permission</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/default-parameter-tier</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/high-throughput-enabled</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/activation-tier</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ResetServiceSettingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_service_setting(
    #     setting_id: 'SettingId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetServiceSettingOutput
    #   resp.data.service_setting #=> Types::ServiceSetting
    #   resp.data.service_setting.setting_id #=> String
    #   resp.data.service_setting.setting_value #=> String
    #   resp.data.service_setting.last_modified_date #=> Time
    #   resp.data.service_setting.last_modified_user #=> String
    #   resp.data.service_setting.arn #=> String
    #   resp.data.service_setting.status #=> String
    #
    def reset_service_setting(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetServiceSettingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetServiceSettingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetServiceSetting
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyUpdates, Errors::InternalServerError, Errors::ServiceSettingNotFound]),
        data_parser: Parsers::ResetServiceSetting
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetServiceSetting,
        stubs: @stubs,
        params_class: Params::ResetServiceSettingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_service_setting
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Reconnects a session to a managed node after it has been disconnected. Connections can be
    #    resumed for disconnected sessions, but not terminated sessions.</p>
    #          <note>
    #             <p>This command is primarily for use by client machines to automatically reconnect during
    #     intermittent network issues. It isn't intended for any other use.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ResumeSessionInput}.
    #
    # @option params [String] :session_id
    #   <p>The ID of the disconnected session to resume.</p>
    #
    # @return [Types::ResumeSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_session(
    #     session_id: 'SessionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResumeSessionOutput
    #   resp.data.session_id #=> String
    #   resp.data.token_value #=> String
    #   resp.data.stream_url #=> String
    #
    def resume_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResumeSessionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResumeSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResumeSession
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::ResumeSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResumeSession,
        stubs: @stubs,
        params_class: Params::ResumeSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resume_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends a signal to an Automation execution to change the current behavior or status of the
    #    execution. </p>
    #
    # @param [Hash] params
    #   See {Types::SendAutomationSignalInput}.
    #
    # @option params [String] :automation_execution_id
    #   <p>The unique identifier for an existing Automation execution that you want to send the signal
    #      to.</p>
    #
    # @option params [String] :signal_type
    #   <p>The type of signal to send to an Automation execution. </p>
    #
    # @option params [Hash<String, Array<String>>] :payload
    #   <p>The data sent with the signal. The data schema depends on the type of signal used in the
    #      request.</p>
    #            <p>For <code>Approve</code> and <code>Reject</code> signal types, the payload is an optional
    #      comment that you can send with the signal type. For example:</p>
    #            <p>
    #               <code>Comment="Looks good"</code>
    #            </p>
    #            <p>For <code>StartStep</code> and <code>Resume</code> signal types, you must send the name of
    #      the Automation step to start or resume as the payload. For example:</p>
    #            <p>
    #               <code>StepName="step1"</code>
    #            </p>
    #            <p>For the <code>StopStep</code> signal type, you must send the step execution ID as the
    #      payload. For example:</p>
    #            <p>
    #               <code>StepExecutionId="97fff367-fc5a-4299-aed8-0123456789ab"</code>
    #            </p>
    #
    # @return [Types::SendAutomationSignalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_automation_signal(
    #     automation_execution_id: 'AutomationExecutionId', # required
    #     signal_type: 'Approve', # required - accepts ["Approve", "Reject", "StartStep", "StopStep", "Resume"]
    #     payload: {
    #       'key' => [
    #         'member'
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendAutomationSignalOutput
    #
    def send_automation_signal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendAutomationSignalInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendAutomationSignalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendAutomationSignal
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidAutomationSignalException, Errors::AutomationStepNotFoundException, Errors::InternalServerError, Errors::AutomationExecutionNotFoundException]),
        data_parser: Parsers::SendAutomationSignal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendAutomationSignal,
        stubs: @stubs,
        params_class: Params::SendAutomationSignalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_automation_signal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Runs commands on one or more managed nodes.</p>
    #
    # @param [Hash] params
    #   See {Types::SendCommandInput}.
    #
    # @option params [Array<String>] :instance_ids
    #   <p>The IDs of the managed nodes where the command should run. Specifying managed node IDs is
    #      most useful when you are targeting a limited number of managed nodes, though you can specify up
    #      to 50 IDs.</p>
    #            <p>To target a larger number of managed nodes, or if you prefer not to list individual node
    #      IDs, we recommend using the <code>Targets</code> option instead. Using <code>Targets</code>,
    #      which accepts tag key-value pairs to identify the managed nodes to send commands to, you can a
    #      send command to tens, hundreds, or thousands of nodes at once.</p>
    #            <p>For more information about how to use targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Using targets and rate
    #       controls to send commands to a fleet</a> in the
    #      <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [Array<Target>] :targets
    #   <p>An array of search criteria that targets managed nodes using a <code>Key,Value</code>
    #      combination that you specify. Specifying targets is most useful when you want to send a command
    #      to a large number of managed nodes at once. Using <code>Targets</code>, which accepts tag
    #      key-value pairs to identify managed nodes, you can send a command to tens, hundreds, or thousands
    #      of nodes at once.</p>
    #            <p>To send a command to a smaller number of managed nodes, you can use the
    #       <code>InstanceIds</code> option instead.</p>
    #            <p>For more information about how to use targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Sending commands to a
    #       fleet</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [String] :document_name
    #   <p>The name of the Amazon Web Services Systems Manager document (SSM document) to run. This can be a public document or a
    #      custom document. To run a shared document belonging to another account, specify the document
    #      Amazon Resource Name (ARN). For more information about how to use shared documents, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html">Using shared
    #       SSM documents</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <note>
    #               <p>If you specify a document name or ARN that hasn't been shared with your account, you
    #       receive an <code>InvalidDocument</code> error. </p>
    #            </note>
    #
    # @option params [String] :document_version
    #   <p>The SSM document version to use in the request. You can specify $DEFAULT, $LATEST, or a
    #      specific version number. If you run commands by using the Command Line Interface (Amazon Web Services CLI), then
    #      you must escape the first two options by using a backslash. If you specify a version number, then
    #      you don't need to use the backslash. For example:</p>
    #            <p>--document-version "\$DEFAULT"</p>
    #            <p>--document-version "\$LATEST"</p>
    #            <p>--document-version "3"</p>
    #
    # @option params [String] :document_hash
    #   <p>The Sha256 or Sha1 hash created by the system when the document was created. </p>
    #            <note>
    #               <p>Sha1 hashes have been deprecated.</p>
    #            </note>
    #
    # @option params [String] :document_hash_type
    #   <p>Sha256 or Sha1.</p>
    #            <note>
    #               <p>Sha1 hashes have been deprecated.</p>
    #            </note>
    #
    # @option params [Integer] :timeout_seconds
    #   <p>If this time is reached and the command hasn't already started running, it won't run.</p>
    #
    # @option params [String] :comment
    #   <p>User-specified information about the command, such as a brief description of what the
    #      command should do.</p>
    #
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>The required and optional parameters specified in the document being run.</p>
    #
    # @option params [String] :output_s3_region
    #   <p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager
    #      automatically determines the Amazon Web Services Region of the S3 bucket.</p>
    #
    # @option params [String] :output_s3_bucket_name
    #   <p>The name of the S3 bucket where command execution responses should be stored.</p>
    #
    # @option params [String] :output_s3_key_prefix
    #   <p>The directory structure within the S3 bucket where the responses should be stored.</p>
    #
    # @option params [String] :max_concurrency
    #   <p>(Optional) The maximum number of managed nodes that are allowed to run the command at the
    #      same time. You can specify a number such as 10 or a percentage such as 10%. The default value is
    #       <code>50</code>. For more information about how to use <code>MaxConcurrency</code>, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-velocity">Using
    #       concurrency controls</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [String] :max_errors
    #   <p>The maximum number of errors allowed without the command failing. When the command fails one
    #      more time beyond the value of <code>MaxErrors</code>, the systems stops sending the command to
    #      additional targets. You can specify a number like 10 or a percentage like 10%. The default value
    #      is <code>0</code>. For more information about how to use <code>MaxErrors</code>, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-maxerrors">Using
    #       error controls</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [String] :service_role_arn
    #   <p>The ARN of the Identity and Access Management (IAM) service role to use to publish
    #       Amazon Simple Notification Service (Amazon SNS) notifications for Run Command commands.</p>
    #
    # @option params [NotificationConfig] :notification_config
    #   <p>Configurations for sending notifications.</p>
    #
    # @option params [CloudWatchOutputConfig] :cloud_watch_output_config
    #   <p>Enables Amazon Web Services Systems Manager to send Run Command output to Amazon CloudWatch Logs. Run Command is a
    #      capability of Amazon Web Services Systems Manager.</p>
    #
    # @return [Types::SendCommandOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_command(
    #     instance_ids: [
    #       'member'
    #     ],
    #     targets: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     document_name: 'DocumentName', # required
    #     document_version: 'DocumentVersion',
    #     document_hash: 'DocumentHash',
    #     document_hash_type: 'Sha256', # accepts ["Sha256", "Sha1"]
    #     timeout_seconds: 1,
    #     comment: 'Comment',
    #     parameters: {
    #       'key' => [
    #         'member'
    #       ]
    #     },
    #     output_s3_region: 'OutputS3Region',
    #     output_s3_bucket_name: 'OutputS3BucketName',
    #     output_s3_key_prefix: 'OutputS3KeyPrefix',
    #     max_concurrency: 'MaxConcurrency',
    #     max_errors: 'MaxErrors',
    #     service_role_arn: 'ServiceRoleArn',
    #     notification_config: {
    #       notification_arn: 'NotificationArn',
    #       notification_events: [
    #         'All' # accepts ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]
    #       ],
    #       notification_type: 'Command' # accepts ["Command", "Invocation"]
    #     },
    #     cloud_watch_output_config: {
    #       cloud_watch_log_group_name: 'CloudWatchLogGroupName',
    #       cloud_watch_output_enabled: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendCommandOutput
    #   resp.data.command #=> Types::Command
    #   resp.data.command.command_id #=> String
    #   resp.data.command.document_name #=> String
    #   resp.data.command.document_version #=> String
    #   resp.data.command.comment #=> String
    #   resp.data.command.expires_after #=> Time
    #   resp.data.command.parameters #=> Hash<String, Array<String>>
    #   resp.data.command.parameters['key'] #=> Array<String>
    #   resp.data.command.parameters['key'][0] #=> String
    #   resp.data.command.instance_ids #=> Array<String>
    #   resp.data.command.instance_ids[0] #=> String
    #   resp.data.command.targets #=> Array<Target>
    #   resp.data.command.targets[0] #=> Types::Target
    #   resp.data.command.targets[0].key #=> String
    #   resp.data.command.targets[0].values #=> Array<String>
    #   resp.data.command.targets[0].values[0] #=> String
    #   resp.data.command.requested_date_time #=> Time
    #   resp.data.command.status #=> String, one of ["Pending", "InProgress", "Success", "Cancelled", "Failed", "TimedOut", "Cancelling"]
    #   resp.data.command.status_details #=> String
    #   resp.data.command.output_s3_region #=> String
    #   resp.data.command.output_s3_bucket_name #=> String
    #   resp.data.command.output_s3_key_prefix #=> String
    #   resp.data.command.max_concurrency #=> String
    #   resp.data.command.max_errors #=> String
    #   resp.data.command.target_count #=> Integer
    #   resp.data.command.completed_count #=> Integer
    #   resp.data.command.error_count #=> Integer
    #   resp.data.command.delivery_timed_out_count #=> Integer
    #   resp.data.command.service_role #=> String
    #   resp.data.command.notification_config #=> Types::NotificationConfig
    #   resp.data.command.notification_config.notification_arn #=> String
    #   resp.data.command.notification_config.notification_events #=> Array<String>
    #   resp.data.command.notification_config.notification_events[0] #=> String, one of ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]
    #   resp.data.command.notification_config.notification_type #=> String, one of ["Command", "Invocation"]
    #   resp.data.command.cloud_watch_output_config #=> Types::CloudWatchOutputConfig
    #   resp.data.command.cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.data.command.cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #   resp.data.command.timeout_seconds #=> Integer
    #
    def send_command(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendCommandInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendCommandInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendCommand
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDocumentVersion, Errors::InvalidRole, Errors::InvalidInstanceId, Errors::InvalidNotificationConfig, Errors::InvalidDocument, Errors::InvalidParameters, Errors::InvalidOutputFolder, Errors::MaxDocumentSizeExceeded, Errors::UnsupportedPlatformType, Errors::DuplicateInstanceId, Errors::InternalServerError]),
        data_parser: Parsers::SendCommand
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendCommand,
        stubs: @stubs,
        params_class: Params::SendCommandOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_command
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Runs an association immediately and only one time. This operation can be helpful when
    #    troubleshooting associations.</p>
    #
    # @param [Hash] params
    #   See {Types::StartAssociationsOnceInput}.
    #
    # @option params [Array<String>] :association_ids
    #   <p>The association IDs that you want to run immediately and only one time.</p>
    #
    # @return [Types::StartAssociationsOnceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_associations_once(
    #     association_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartAssociationsOnceOutput
    #
    def start_associations_once(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartAssociationsOnceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartAssociationsOnceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartAssociationsOnce
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidAssociation, Errors::AssociationDoesNotExist]),
        data_parser: Parsers::StartAssociationsOnce
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartAssociationsOnce,
        stubs: @stubs,
        params_class: Params::StartAssociationsOnceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_associations_once
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiates execution of an Automation runbook.</p>
    #
    # @param [Hash] params
    #   See {Types::StartAutomationExecutionInput}.
    #
    # @option params [String] :document_name
    #   <p>The name of the SSM document to run. This can be a public document or a custom document. To
    #      run a shared document belonging to another account, specify the document ARN. For more
    #      information about how to use shared documents, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html">Using shared SSM documents</a>
    #      in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [String] :document_version
    #   <p>The version of the Automation runbook to use for this execution.</p>
    #
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>A key-value map of execution parameters, which match the declared parameters in the
    #      Automation runbook.</p>
    #
    # @option params [String] :client_token
    #   <p>User-provided idempotency token. The token must be unique, is case insensitive, enforces the
    #      UUID format, and can't be reused.</p>
    #
    # @option params [String] :mode
    #   <p>The execution mode of the automation. Valid modes include the following: Auto and
    #      Interactive. The default mode is Auto.</p>
    #
    # @option params [String] :target_parameter_name
    #   <p>The name of the parameter used as the target resource for the rate-controlled execution.
    #      Required if you specify targets.</p>
    #
    # @option params [Array<Target>] :targets
    #   <p>A key-value mapping to target resources. Required if you specify TargetParameterName.</p>
    #
    # @option params [Array<Hash<String, Array<String>>>] :target_maps
    #   <p>A key-value mapping of document parameters to target resources. Both Targets and TargetMaps
    #      can't be specified together.</p>
    #
    # @option params [String] :max_concurrency
    #   <p>The maximum number of targets allowed to run this task in parallel. You can specify a
    #      number, such as 10, or a percentage, such as 10%. The default value is <code>10</code>.</p>
    #
    # @option params [String] :max_errors
    #   <p>The number of errors that are allowed before the system stops running the automation on
    #      additional targets. You can specify either an absolute number of errors, for example 10, or a
    #      percentage of the target set, for example 10%. If you specify 3, for example, the system stops
    #      running the automation when the fourth error is received. If you specify 0, then the system stops
    #      running the automation on additional targets after the first error result is returned. If you run
    #      an automation on 50 resources and set max-errors to 10%, then the system stops running the
    #      automation on additional targets when the sixth error is received.</p>
    #            <p>Executions that are already running an automation when max-errors is reached are allowed to
    #      complete, but some of these executions may fail as well. If you need to ensure that there won't
    #      be more than max-errors failed executions, set max-concurrency to 1 so the executions proceed one
    #      at a time.</p>
    #
    # @option params [Array<TargetLocation>] :target_locations
    #   <p>A location is a combination of Amazon Web Services Regions and/or Amazon Web Services accounts where you want to run the
    #      automation. Use this operation to start an automation in multiple Amazon Web Services Regions and multiple
    #      Amazon Web Services accounts. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html">Running Automation workflows in multiple Amazon Web Services Regions and Amazon Web Services accounts</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. You can specify a maximum of five tags for
    #      an automation. Tags enable you to categorize a resource in different ways, such as by purpose,
    #      owner, or environment. For example, you might want to tag an automation to identify an
    #      environment or operating system. In this case, you could specify the following key-value
    #      pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=environment,Value=test</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>To add tags to an existing automation, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </note>
    #
    # @return [Types::StartAutomationExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_automation_execution(
    #     document_name: 'DocumentName', # required
    #     document_version: 'DocumentVersion',
    #     parameters: {
    #       'key' => [
    #         'member'
    #       ]
    #     },
    #     client_token: 'ClientToken',
    #     mode: 'Auto', # accepts ["Auto", "Interactive"]
    #     target_parameter_name: 'TargetParameterName',
    #     targets: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     target_maps: [
    #       {
    #         'key' => [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_concurrency: 'MaxConcurrency',
    #     max_errors: 'MaxErrors',
    #     target_locations: [
    #       {
    #         accounts: [
    #           'member'
    #         ],
    #         regions: [
    #           'member'
    #         ],
    #         target_location_max_concurrency: 'TargetLocationMaxConcurrency',
    #         target_location_max_errors: 'TargetLocationMaxErrors',
    #         execution_role_name: 'ExecutionRoleName'
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartAutomationExecutionOutput
    #   resp.data.automation_execution_id #=> String
    #
    def start_automation_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartAutomationExecutionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartAutomationExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartAutomationExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatch, Errors::AutomationDefinitionNotFoundException, Errors::InvalidTarget, Errors::AutomationDefinitionVersionNotFoundException, Errors::AutomationExecutionLimitExceededException, Errors::InternalServerError, Errors::InvalidAutomationExecutionParametersException]),
        data_parser: Parsers::StartAutomationExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartAutomationExecution,
        stubs: @stubs,
        params_class: Params::StartAutomationExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_automation_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a change request for Change Manager. The Automation runbooks specified in the
    #    change request run only after all required approvals for the change request have been
    #    received.</p>
    #
    # @param [Hash] params
    #   See {Types::StartChangeRequestExecutionInput}.
    #
    # @option params [Time] :scheduled_time
    #   <p>The date and time specified in the change request to run the Automation runbooks.</p>
    #            <note>
    #               <p>The Automation runbooks specified for the runbook workflow can't run until all required
    #       approvals for the change request have been received.</p>
    #            </note>
    #
    # @option params [String] :document_name
    #   <p>The name of the change template document to run during the runbook workflow.</p>
    #
    # @option params [String] :document_version
    #   <p>The version of the change template document to run during the runbook workflow.</p>
    #
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>A key-value map of parameters that match the declared parameters in the change template
    #      document.</p>
    #
    # @option params [String] :change_request_name
    #   <p>The name of the change request associated with the runbook workflow to be run.</p>
    #
    # @option params [String] :client_token
    #   <p>The user-provided idempotency token. The token must be unique, is case insensitive, enforces
    #      the UUID format, and can't be reused.</p>
    #
    # @option params [Boolean] :auto_approve
    #   <p>Indicates whether the change request can be approved automatically without the need for
    #      manual approvals.</p>
    #            <p>If <code>AutoApprovable</code> is enabled in a change template, then setting
    #       <code>AutoApprove</code> to <code>true</code> in <code>StartChangeRequestExecution</code>
    #      creates a change request that bypasses approver review.</p>
    #            <note>
    #               <p>Change Calendar restrictions are not bypassed in this scenario. If the state of an
    #       associated calendar is <code>CLOSED</code>, change freeze approvers must still grant permission
    #       for this change request to run. If they don't, the change won't be processed until the calendar
    #       state is again <code>OPEN</code>. </p>
    #            </note>
    #
    # @option params [Array<Runbook>] :runbooks
    #   <p>Information about the Automation runbooks that are run during the runbook workflow.</p>
    #            <note>
    #               <p>The Automation runbooks specified for the runbook workflow can't run until all required
    #       approvals for the change request have been received.</p>
    #            </note>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. You can specify a maximum of five tags for
    #      a change request. Tags enable you to categorize a resource in different ways, such as by
    #      purpose, owner, or environment. For example, you might want to tag a change request to identify
    #      an environment or target Amazon Web Services Region. In this case, you could specify the following key-value
    #      pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=Environment,Value=Production</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=Region,Value=us-east-2</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Time] :scheduled_end_time
    #   <p>The time that the requester expects the runbook workflow related to the change request to
    #      complete. The time is an estimate only that the requester provides for reviewers.</p>
    #
    # @option params [String] :change_details
    #   <p>User-provided details about the change. If no details are provided, content specified in the
    #       <b>Template information</b> section of the associated change template
    #      is added.</p>
    #
    # @return [Types::StartChangeRequestExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_change_request_execution(
    #     scheduled_time: Time.now,
    #     document_name: 'DocumentName', # required
    #     document_version: 'DocumentVersion',
    #     parameters: {
    #       'key' => [
    #         'member'
    #       ]
    #     },
    #     change_request_name: 'ChangeRequestName',
    #     client_token: 'ClientToken',
    #     auto_approve: false,
    #     runbooks: [
    #       {
    #         document_name: 'DocumentName', # required
    #         document_version: 'DocumentVersion',
    #         target_parameter_name: 'TargetParameterName',
    #         targets: [
    #           {
    #             key: 'Key',
    #             values: [
    #               'member'
    #             ]
    #           }
    #         ],
    #         target_maps: [
    #           {
    #             'key' => [
    #               'member'
    #             ]
    #           }
    #         ],
    #         max_concurrency: 'MaxConcurrency',
    #         max_errors: 'MaxErrors',
    #         target_locations: [
    #           {
    #             accounts: [
    #               'member'
    #             ],
    #             regions: [
    #               'member'
    #             ],
    #             target_location_max_concurrency: 'TargetLocationMaxConcurrency',
    #             target_location_max_errors: 'TargetLocationMaxErrors',
    #             execution_role_name: 'ExecutionRoleName'
    #           }
    #         ]
    #       }
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     scheduled_end_time: Time.now,
    #     change_details: 'ChangeDetails'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartChangeRequestExecutionOutput
    #   resp.data.automation_execution_id #=> String
    #
    def start_change_request_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartChangeRequestExecutionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartChangeRequestExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartChangeRequestExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AutomationDefinitionNotApprovedException, Errors::IdempotentParameterMismatch, Errors::AutomationDefinitionNotFoundException, Errors::AutomationDefinitionVersionNotFoundException, Errors::AutomationExecutionLimitExceededException, Errors::InternalServerError, Errors::InvalidAutomationExecutionParametersException]),
        data_parser: Parsers::StartChangeRequestExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartChangeRequestExecution,
        stubs: @stubs,
        params_class: Params::StartChangeRequestExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_change_request_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiates a connection to a target (for example, a managed node) for a Session Manager session.
    #    Returns a URL and token that can be used to open a WebSocket connection for sending input and
    #    receiving outputs.</p>
    #          <note>
    #             <p>Amazon Web Services CLI usage: <code>start-session</code> is an interactive command that requires the Session Manager
    #     plugin to be installed on the client machine making the call. For information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html">Install
    #      the Session Manager plugin for the Amazon Web Services CLI</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #             <p>Amazon Web Services Tools for PowerShell usage: Start-SSMSession isn't currently supported by Amazon Web Services Tools
    #     for PowerShell on Windows local machines.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::StartSessionInput}.
    #
    # @option params [String] :target
    #   <p>The managed node to connect to for the session.</p>
    #
    # @option params [String] :document_name
    #   <p>The name of the SSM document to define the parameters and plugin settings for the session.
    #      For example, <code>SSM-SessionManagerRunShell</code>. You can call the <a>GetDocument</a> API to verify the document exists before attempting to start a session.
    #      If no document name is provided, a shell to the managed node is launched by default.</p>
    #
    # @option params [String] :reason
    #   <p>The reason for connecting to the instance. This value is included in the details for the
    #       Amazon CloudWatch Events event created when you start the session.</p>
    #
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>The values you want to specify for the parameters defined in the Session
    #      document.</p>
    #
    # @return [Types::StartSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_session(
    #     target: 'Target', # required
    #     document_name: 'DocumentName',
    #     reason: 'Reason',
    #     parameters: {
    #       'key' => [
    #         'member'
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartSessionOutput
    #   resp.data.session_id #=> String
    #   resp.data.token_value #=> String
    #   resp.data.stream_url #=> String
    #
    def start_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartSessionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartSession
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TargetNotConnected, Errors::InvalidDocument, Errors::InternalServerError]),
        data_parser: Parsers::StartSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartSession,
        stubs: @stubs,
        params_class: Params::StartSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stop an Automation that is currently running.</p>
    #
    # @param [Hash] params
    #   See {Types::StopAutomationExecutionInput}.
    #
    # @option params [String] :automation_execution_id
    #   <p>The execution ID of the Automation to stop.</p>
    #
    # @option params [String] :type
    #   <p>The stop request type. Valid types include the following: Cancel and Complete. The default
    #      type is Cancel.</p>
    #
    # @return [Types::StopAutomationExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_automation_execution(
    #     automation_execution_id: 'AutomationExecutionId', # required
    #     type: 'Complete' # accepts ["Complete", "Cancel"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopAutomationExecutionOutput
    #
    def stop_automation_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopAutomationExecutionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopAutomationExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopAutomationExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidAutomationStatusUpdateException, Errors::InternalServerError, Errors::AutomationExecutionNotFoundException]),
        data_parser: Parsers::StopAutomationExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopAutomationExecution,
        stubs: @stubs,
        params_class: Params::StopAutomationExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_automation_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Permanently ends a session and closes the data connection between the Session Manager client and
    #    SSM Agent on the managed node. A terminated session can't be resumed.</p>
    #
    # @param [Hash] params
    #   See {Types::TerminateSessionInput}.
    #
    # @option params [String] :session_id
    #   <p>The ID of the session to terminate.</p>
    #
    # @return [Types::TerminateSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_session(
    #     session_id: 'SessionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TerminateSessionOutput
    #   resp.data.session_id #=> String
    #
    def terminate_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TerminateSessionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TerminateSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TerminateSession
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::TerminateSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TerminateSession,
        stubs: @stubs,
        params_class: Params::TerminateSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :terminate_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Remove a label or labels from a parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::UnlabelParameterVersionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the parameter from which you want to delete one or more labels.</p>
    #
    # @option params [Integer] :parameter_version
    #   <p>The specific version of the parameter which you want to delete one or more labels from. If
    #      it isn't present, the call will fail.</p>
    #
    # @option params [Array<String>] :labels
    #   <p>One or more labels to delete from the specified parameter version.</p>
    #
    # @return [Types::UnlabelParameterVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unlabel_parameter_version(
    #     name: 'Name', # required
    #     parameter_version: 1, # required
    #     labels: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UnlabelParameterVersionOutput
    #   resp.data.removed_labels #=> Array<String>
    #   resp.data.removed_labels[0] #=> String
    #   resp.data.invalid_labels #=> Array<String>
    #
    def unlabel_parameter_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UnlabelParameterVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UnlabelParameterVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UnlabelParameterVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyUpdates, Errors::ParameterVersionNotFound, Errors::InternalServerError, Errors::ParameterNotFound]),
        data_parser: Parsers::UnlabelParameterVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UnlabelParameterVersion,
        stubs: @stubs,
        params_class: Params::UnlabelParameterVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :unlabel_parameter_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an association. You can update the association name and version, the document
    #    version, schedule, parameters, and Amazon Simple Storage Service (Amazon S3) output. When you
    #    call <code>UpdateAssociation</code>, the system removes all optional parameters from the request
    #    and overwrites the association with null values for those parameters. This is by design. You must
    #    specify all optional parameters in the call, even if you are not changing the parameters. This
    #    includes the <code>Name</code> parameter. Before calling this API action, we recommend that you
    #    call the <a>DescribeAssociation</a> API operation and make a note of all optional
    #    parameters required for your <code>UpdateAssociation</code> call.</p>
    #
    #          <p>In order to call this API operation, your Identity and Access Management (IAM) user
    #    account, group, or role must be configured with permission to call the <a>DescribeAssociation</a> API operation. If you don't have permission to call
    #     <code>DescribeAssociation</code>, then you receive the following error: <code>An error occurred
    #     (AccessDeniedException) when calling the UpdateAssociation operation: User: <user_arn>
    #     isn't authorized to perform: ssm:DescribeAssociation on resource:
    #    <resource_arn></code>
    #          </p>
    #          <important>
    #             <p>When you update an association, the association immediately runs against the specified
    #     targets. You can add the <code>ApplyOnlyAtCronInterval</code> parameter to run the association
    #     during the next schedule run.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateAssociationInput}.
    #
    # @option params [String] :association_id
    #   <p>The ID of the association you want to update. </p>
    #
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>The parameters you want to update for the association. If you create a parameter using
    #      Parameter Store, a capability of Amazon Web Services Systems Manager, you can reference the parameter using
    #       <code>{{ssm:parameter-name}}</code>.</p>
    #
    # @option params [String] :document_version
    #   <p>The document version you want update for the association. </p>
    #            <important>
    #               <p>State Manager doesn't support running associations that use a new version of a document if
    #       that document is shared from another account. State Manager always runs the <code>default</code>
    #       version of a document if shared from another account, even though the Systems Manager console shows that a
    #       new version was processed. If you want to run an association using a new version of a document
    #       shared form another account, you must set the document version to <code>default</code>.</p>
    #            </important>
    #
    # @option params [String] :schedule_expression
    #   <p>The cron expression used to schedule the association that you want to update.</p>
    #
    # @option params [InstanceAssociationOutputLocation] :output_location
    #   <p>An S3 bucket where you want to store the results of this request.</p>
    #
    # @option params [String] :name
    #   <p>The name of the SSM Command document or Automation runbook that contains the configuration
    #      information for the managed node.</p>
    #            <p>You can specify Amazon Web Services-predefined documents, documents you created, or a document that is
    #      shared with you from another account.</p>
    #            <p>For Systems Manager document (SSM document) that are shared with you from other Amazon Web Services accounts, you
    #      must specify the complete SSM document ARN, in the following format:</p>
    #            <p>
    #               <code>arn:aws:ssm:<i>region</i>:<i>account-id</i>:document/<i>document-name</i>
    #               </code>
    #            </p>
    #            <p>For example:</p>
    #            <p>
    #               <code>arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document</code>
    #            </p>
    #            <p>For Amazon Web Services-predefined documents and SSM documents you created in your account, you only need
    #      to specify the document name. For example, <code>AWS-ApplyPatchBaseline</code> or
    #       <code>My-Document</code>.</p>
    #
    # @option params [Array<Target>] :targets
    #   <p>The targets of the association.</p>
    #
    # @option params [String] :association_name
    #   <p>The name of the association that you want to update.</p>
    #
    # @option params [String] :association_version
    #   <p>This parameter is provided for concurrency control purposes. You must specify the latest
    #      association version in the service. If you want to ensure that this request succeeds, either
    #      specify <code>$LATEST</code>, or omit this parameter.</p>
    #
    # @option params [String] :automation_target_parameter_name
    #   <p>Choose the parameter that will define how your automation will branch out. This target is
    #      required for associations that use an Automation runbook and target resources by using rate
    #      controls. Automation is a capability of Amazon Web Services Systems Manager.</p>
    #
    # @option params [String] :max_errors
    #   <p>The number of errors that are allowed before the system stops sending requests to run the
    #      association on additional targets. You can specify either an absolute number of errors, for
    #      example 10, or a percentage of the target set, for example 10%. If you specify 3, for example,
    #      the system stops sending requests when the fourth error is received. If you specify 0, then the
    #      system stops sending requests after the first error is returned. If you run an association on 50
    #      managed nodes and set <code>MaxError</code> to 10%, then the system stops sending the request
    #      when the sixth error is received.</p>
    #            <p>Executions that are already running an association when <code>MaxErrors</code> is reached
    #      are allowed to complete, but some of these executions may fail as well. If you need to ensure
    #      that there won't be more than max-errors failed executions, set <code>MaxConcurrency</code> to 1
    #      so that executions proceed one at a time.</p>
    #
    # @option params [String] :max_concurrency
    #   <p>The maximum number of targets allowed to run the association at the same time. You can
    #      specify a number, for example 10, or a percentage of the target set, for example 10%. The default
    #      value is 100%, which means all targets run the association at the same time.</p>
    #            <p>If a new managed node starts and attempts to run an association while Systems Manager is running
    #       <code>MaxConcurrency</code> associations, the association is allowed to run. During the next
    #      association interval, the new managed node will process its association within the limit
    #      specified for <code>MaxConcurrency</code>.</p>
    #
    # @option params [String] :compliance_severity
    #   <p>The severity level to assign to the association.</p>
    #
    # @option params [String] :sync_compliance
    #   <p>The mode for generating association compliance. You can specify <code>AUTO</code> or
    #       <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association
    #      execution to determine the compliance status. If the association execution runs successfully,
    #      then the association is <code>COMPLIANT</code>. If the association execution doesn't run
    #      successfully, the association is <code>NON-COMPLIANT</code>.</p>
    #            <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter
    #      for the <a>PutComplianceItems</a> API operation. In this case, compliance data isn't
    #      managed by State Manager, a capability of Amazon Web Services Systems Manager. It is managed by your direct call to the
    #       <a>PutComplianceItems</a> API operation.</p>
    #            <p>By default, all associations use <code>AUTO</code> mode.</p>
    #
    # @option params [Boolean] :apply_only_at_cron_interval
    #   <p>By default, when you update an association, the system runs it immediately after it is
    #      updated and then according to the schedule you specified. Specify this option if you don't want
    #      an association to run immediately after you update it. This parameter isn't supported for rate
    #      expressions.</p>
    #
    #            <p>If you chose this option when you created an association and later you edit that association
    #      or you make changes to the SSM document on which that association is based (by using the
    #      Documents page in the console), State Manager applies the association at the next specified cron
    #      interval. For example, if you chose the <code>Latest</code> version of an SSM document when you
    #      created an association and you edit the association by choosing a different document version on
    #      the Documents page, State Manager applies the association at the next specified cron interval if
    #      you previously selected this option. If this option wasn't selected, State Manager immediately
    #      runs the association.</p>
    #            <p>You can reset this option. To do so, specify the <code>no-apply-only-at-cron-interval</code>
    #      parameter when you update the association from the command line. This parameter forces the
    #      association to run immediately after updating it and according to the interval specified.</p>
    #
    # @option params [Array<String>] :calendar_names
    #   <p>The names or Amazon Resource Names (ARNs) of the Change Calendar type documents you want to
    #      gate your associations under. The associations only run when that change calendar is open. For
    #      more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar">Amazon Web Services Systems Manager Change
    #       Calendar</a>.</p>
    #
    # @option params [Array<TargetLocation>] :target_locations
    #   <p>A location is a combination of Amazon Web Services Regions and Amazon Web Services accounts where you want to run the
    #      association. Use this action to update an association in multiple Regions and multiple
    #      accounts.</p>
    #
    # @option params [Integer] :schedule_offset
    #   <p>Number of days to wait after the scheduled day to run an association. For example, if you
    #      specified a cron schedule of <code>cron(0 0 ? * THU#2 *)</code>, you could specify an offset of 3
    #      to run the association each Sunday after the second Thursday of the month. For more information
    #      about cron schedules for associations, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html">Reference: Cron
    #       and rate expressions for Systems Manager</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #            <note>
    #               <p>To use offsets, you must specify the <code>ApplyOnlyAtCronInterval</code> parameter. This
    #       option tells the system not to run an association immediately after you create it. </p>
    #            </note>
    #
    # @option params [Array<Hash<String, Array<String>>>] :target_maps
    #   <p>A key-value mapping of document parameters to target resources. Both Targets and TargetMaps
    #      can't be specified together.</p>
    #
    # @return [Types::UpdateAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_association(
    #     association_id: 'AssociationId', # required
    #     parameters: {
    #       'key' => [
    #         'member'
    #       ]
    #     },
    #     document_version: 'DocumentVersion',
    #     schedule_expression: 'ScheduleExpression',
    #     output_location: {
    #       s3_location: {
    #         output_s3_region: 'OutputS3Region',
    #         output_s3_bucket_name: 'OutputS3BucketName',
    #         output_s3_key_prefix: 'OutputS3KeyPrefix'
    #       }
    #     },
    #     name: 'Name',
    #     targets: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     association_name: 'AssociationName',
    #     association_version: 'AssociationVersion',
    #     automation_target_parameter_name: 'AutomationTargetParameterName',
    #     max_errors: 'MaxErrors',
    #     max_concurrency: 'MaxConcurrency',
    #     compliance_severity: 'CRITICAL', # accepts ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"]
    #     sync_compliance: 'AUTO', # accepts ["AUTO", "MANUAL"]
    #     apply_only_at_cron_interval: false,
    #     calendar_names: [
    #       'member'
    #     ],
    #     target_locations: [
    #       {
    #         accounts: [
    #           'member'
    #         ],
    #         regions: [
    #           'member'
    #         ],
    #         target_location_max_concurrency: 'TargetLocationMaxConcurrency',
    #         target_location_max_errors: 'TargetLocationMaxErrors',
    #         execution_role_name: 'ExecutionRoleName'
    #       }
    #     ],
    #     schedule_offset: 1,
    #     target_maps: [
    #       {
    #         'key' => [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAssociationOutput
    #   resp.data.association_description #=> Types::AssociationDescription
    #   resp.data.association_description.name #=> String
    #   resp.data.association_description.instance_id #=> String
    #   resp.data.association_description.association_version #=> String
    #   resp.data.association_description.date #=> Time
    #   resp.data.association_description.last_update_association_date #=> Time
    #   resp.data.association_description.status #=> Types::AssociationStatus
    #   resp.data.association_description.status.date #=> Time
    #   resp.data.association_description.status.name #=> String, one of ["Pending", "Success", "Failed"]
    #   resp.data.association_description.status.message #=> String
    #   resp.data.association_description.status.additional_info #=> String
    #   resp.data.association_description.overview #=> Types::AssociationOverview
    #   resp.data.association_description.overview.status #=> String
    #   resp.data.association_description.overview.detailed_status #=> String
    #   resp.data.association_description.overview.association_status_aggregated_count #=> Hash<String, Integer>
    #   resp.data.association_description.overview.association_status_aggregated_count['key'] #=> Integer
    #   resp.data.association_description.document_version #=> String
    #   resp.data.association_description.automation_target_parameter_name #=> String
    #   resp.data.association_description.parameters #=> Hash<String, Array<String>>
    #   resp.data.association_description.parameters['key'] #=> Array<String>
    #   resp.data.association_description.parameters['key'][0] #=> String
    #   resp.data.association_description.association_id #=> String
    #   resp.data.association_description.targets #=> Array<Target>
    #   resp.data.association_description.targets[0] #=> Types::Target
    #   resp.data.association_description.targets[0].key #=> String
    #   resp.data.association_description.targets[0].values #=> Array<String>
    #   resp.data.association_description.targets[0].values[0] #=> String
    #   resp.data.association_description.schedule_expression #=> String
    #   resp.data.association_description.output_location #=> Types::InstanceAssociationOutputLocation
    #   resp.data.association_description.output_location.s3_location #=> Types::S3OutputLocation
    #   resp.data.association_description.output_location.s3_location.output_s3_region #=> String
    #   resp.data.association_description.output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.data.association_description.output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.data.association_description.last_execution_date #=> Time
    #   resp.data.association_description.last_successful_execution_date #=> Time
    #   resp.data.association_description.association_name #=> String
    #   resp.data.association_description.max_errors #=> String
    #   resp.data.association_description.max_concurrency #=> String
    #   resp.data.association_description.compliance_severity #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"]
    #   resp.data.association_description.sync_compliance #=> String, one of ["AUTO", "MANUAL"]
    #   resp.data.association_description.apply_only_at_cron_interval #=> Boolean
    #   resp.data.association_description.calendar_names #=> Array<String>
    #   resp.data.association_description.calendar_names[0] #=> String
    #   resp.data.association_description.target_locations #=> Array<TargetLocation>
    #   resp.data.association_description.target_locations[0] #=> Types::TargetLocation
    #   resp.data.association_description.target_locations[0].accounts #=> Array<String>
    #   resp.data.association_description.target_locations[0].accounts[0] #=> String
    #   resp.data.association_description.target_locations[0].regions #=> Array<String>
    #   resp.data.association_description.target_locations[0].regions[0] #=> String
    #   resp.data.association_description.target_locations[0].target_location_max_concurrency #=> String
    #   resp.data.association_description.target_locations[0].target_location_max_errors #=> String
    #   resp.data.association_description.target_locations[0].execution_role_name #=> String
    #   resp.data.association_description.schedule_offset #=> Integer
    #   resp.data.association_description.target_maps #=> Array<Hash<String, Array<String>>>
    #   resp.data.association_description.target_maps[0] #=> Hash<String, Array<String>>
    #   resp.data.association_description.target_maps[0]['key'] #=> Array<String>
    #   resp.data.association_description.target_maps[0]['key'][0] #=> String
    #
    def update_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAssociationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAssociation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidAssociationVersion, Errors::TooManyUpdates, Errors::InvalidTarget, Errors::InternalServerError, Errors::InvalidSchedule, Errors::InvalidDocumentVersion, Errors::InvalidTargetMaps, Errors::AssociationDoesNotExist, Errors::AssociationVersionLimitExceeded, Errors::InvalidDocument, Errors::InvalidParameters, Errors::InvalidUpdate, Errors::InvalidOutputLocation]),
        data_parser: Parsers::UpdateAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAssociation,
        stubs: @stubs,
        params_class: Params::UpdateAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the status of the Amazon Web Services Systems Manager document (SSM document) associated with the specified
    #    managed node.</p>
    #          <p>
    #             <code>UpdateAssociationStatus</code> is primarily used by the Amazon Web Services Systems Manager Agent (SSM Agent) to
    #    report status updates about your associations and is only used for associations created with the
    #     <code>InstanceId</code> legacy parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAssociationStatusInput}.
    #
    # @option params [String] :name
    #   <p>The name of the SSM document.</p>
    #
    # @option params [String] :instance_id
    #   <p>The managed node ID.</p>
    #
    # @option params [AssociationStatus] :association_status
    #   <p>The association status.</p>
    #
    # @return [Types::UpdateAssociationStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_association_status(
    #     name: 'Name', # required
    #     instance_id: 'InstanceId', # required
    #     association_status: {
    #       date: Time.now, # required
    #       name: 'Pending', # required - accepts ["Pending", "Success", "Failed"]
    #       message: 'Message', # required
    #       additional_info: 'AdditionalInfo'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAssociationStatusOutput
    #   resp.data.association_description #=> Types::AssociationDescription
    #   resp.data.association_description.name #=> String
    #   resp.data.association_description.instance_id #=> String
    #   resp.data.association_description.association_version #=> String
    #   resp.data.association_description.date #=> Time
    #   resp.data.association_description.last_update_association_date #=> Time
    #   resp.data.association_description.status #=> Types::AssociationStatus
    #   resp.data.association_description.status.date #=> Time
    #   resp.data.association_description.status.name #=> String, one of ["Pending", "Success", "Failed"]
    #   resp.data.association_description.status.message #=> String
    #   resp.data.association_description.status.additional_info #=> String
    #   resp.data.association_description.overview #=> Types::AssociationOverview
    #   resp.data.association_description.overview.status #=> String
    #   resp.data.association_description.overview.detailed_status #=> String
    #   resp.data.association_description.overview.association_status_aggregated_count #=> Hash<String, Integer>
    #   resp.data.association_description.overview.association_status_aggregated_count['key'] #=> Integer
    #   resp.data.association_description.document_version #=> String
    #   resp.data.association_description.automation_target_parameter_name #=> String
    #   resp.data.association_description.parameters #=> Hash<String, Array<String>>
    #   resp.data.association_description.parameters['key'] #=> Array<String>
    #   resp.data.association_description.parameters['key'][0] #=> String
    #   resp.data.association_description.association_id #=> String
    #   resp.data.association_description.targets #=> Array<Target>
    #   resp.data.association_description.targets[0] #=> Types::Target
    #   resp.data.association_description.targets[0].key #=> String
    #   resp.data.association_description.targets[0].values #=> Array<String>
    #   resp.data.association_description.targets[0].values[0] #=> String
    #   resp.data.association_description.schedule_expression #=> String
    #   resp.data.association_description.output_location #=> Types::InstanceAssociationOutputLocation
    #   resp.data.association_description.output_location.s3_location #=> Types::S3OutputLocation
    #   resp.data.association_description.output_location.s3_location.output_s3_region #=> String
    #   resp.data.association_description.output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.data.association_description.output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.data.association_description.last_execution_date #=> Time
    #   resp.data.association_description.last_successful_execution_date #=> Time
    #   resp.data.association_description.association_name #=> String
    #   resp.data.association_description.max_errors #=> String
    #   resp.data.association_description.max_concurrency #=> String
    #   resp.data.association_description.compliance_severity #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"]
    #   resp.data.association_description.sync_compliance #=> String, one of ["AUTO", "MANUAL"]
    #   resp.data.association_description.apply_only_at_cron_interval #=> Boolean
    #   resp.data.association_description.calendar_names #=> Array<String>
    #   resp.data.association_description.calendar_names[0] #=> String
    #   resp.data.association_description.target_locations #=> Array<TargetLocation>
    #   resp.data.association_description.target_locations[0] #=> Types::TargetLocation
    #   resp.data.association_description.target_locations[0].accounts #=> Array<String>
    #   resp.data.association_description.target_locations[0].accounts[0] #=> String
    #   resp.data.association_description.target_locations[0].regions #=> Array<String>
    #   resp.data.association_description.target_locations[0].regions[0] #=> String
    #   resp.data.association_description.target_locations[0].target_location_max_concurrency #=> String
    #   resp.data.association_description.target_locations[0].target_location_max_errors #=> String
    #   resp.data.association_description.target_locations[0].execution_role_name #=> String
    #   resp.data.association_description.schedule_offset #=> Integer
    #   resp.data.association_description.target_maps #=> Array<Hash<String, Array<String>>>
    #   resp.data.association_description.target_maps[0] #=> Hash<String, Array<String>>
    #   resp.data.association_description.target_maps[0]['key'] #=> Array<String>
    #   resp.data.association_description.target_maps[0]['key'][0] #=> String
    #
    def update_association_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAssociationStatusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAssociationStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAssociationStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyUpdates, Errors::InvalidInstanceId, Errors::AssociationDoesNotExist, Errors::InvalidDocument, Errors::InternalServerError, Errors::StatusUnchanged]),
        data_parser: Parsers::UpdateAssociationStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAssociationStatus,
        stubs: @stubs,
        params_class: Params::UpdateAssociationStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_association_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates one or more values for an SSM document.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDocumentInput}.
    #
    # @option params [String] :content
    #   <p>A valid JSON or YAML string.</p>
    #
    # @option params [Array<AttachmentsSource>] :attachments
    #   <p>A list of key-value pairs that describe attachments to a version of a document.</p>
    #
    # @option params [String] :name
    #   <p>The name of the SSM document that you want to update.</p>
    #
    # @option params [String] :display_name
    #   <p>The friendly name of the SSM document that you want to update. This value can differ for
    #      each version of the document. If you don't specify a value for this parameter in your request,
    #      the existing value is applied to the new document version.</p>
    #
    # @option params [String] :version_name
    #   <p>An optional field specifying the version of the artifact you are updating with the document.
    #      For example, "Release 12, Update 6". This value is unique across all versions of a document, and
    #      can't be changed.</p>
    #
    # @option params [String] :document_version
    #   <p>The version of the document that you want to update. Currently, Systems Manager supports updating only
    #      the latest version of the document. You can specify the version number of the latest version or
    #      use the <code>$LATEST</code> variable.</p>
    #            <note>
    #               <p>If you change a document version for a State Manager association, Systems Manager immediately runs
    #       the association unless you previously specifed the <code>apply-only-at-cron-interval</code>
    #       parameter.</p>
    #            </note>
    #
    # @option params [String] :document_format
    #   <p>Specify the document format for the new document version. Systems Manager supports JSON and YAML
    #      documents. JSON is the default format.</p>
    #
    # @option params [String] :target_type
    #   <p>Specify a new target type for the document.</p>
    #
    # @return [Types::UpdateDocumentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_document(
    #     content: 'Content', # required
    #     attachments: [
    #       {
    #         key: 'SourceUrl', # accepts ["SourceUrl", "S3FileUrl", "AttachmentReference"]
    #         values: [
    #           'member'
    #         ],
    #         name: 'Name'
    #       }
    #     ],
    #     name: 'Name', # required
    #     display_name: 'DisplayName',
    #     version_name: 'VersionName',
    #     document_version: 'DocumentVersion',
    #     document_format: 'YAML', # accepts ["YAML", "JSON", "TEXT"]
    #     target_type: 'TargetType'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDocumentOutput
    #   resp.data.document_description #=> Types::DocumentDescription
    #   resp.data.document_description.sha1 #=> String
    #   resp.data.document_description.member_hash #=> String
    #   resp.data.document_description.hash_type #=> String, one of ["Sha256", "Sha1"]
    #   resp.data.document_description.name #=> String
    #   resp.data.document_description.display_name #=> String
    #   resp.data.document_description.version_name #=> String
    #   resp.data.document_description.owner #=> String
    #   resp.data.document_description.created_date #=> Time
    #   resp.data.document_description.status #=> String, one of ["Creating", "Active", "Updating", "Deleting", "Failed"]
    #   resp.data.document_description.status_information #=> String
    #   resp.data.document_description.document_version #=> String
    #   resp.data.document_description.description #=> String
    #   resp.data.document_description.parameters #=> Array<DocumentParameter>
    #   resp.data.document_description.parameters[0] #=> Types::DocumentParameter
    #   resp.data.document_description.parameters[0].name #=> String
    #   resp.data.document_description.parameters[0].type #=> String, one of ["String", "StringList"]
    #   resp.data.document_description.parameters[0].description #=> String
    #   resp.data.document_description.parameters[0].default_value #=> String
    #   resp.data.document_description.platform_types #=> Array<String>
    #   resp.data.document_description.platform_types[0] #=> String, one of ["Windows", "Linux", "MacOS"]
    #   resp.data.document_description.document_type #=> String, one of ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate"]
    #   resp.data.document_description.schema_version #=> String
    #   resp.data.document_description.latest_version #=> String
    #   resp.data.document_description.default_version #=> String
    #   resp.data.document_description.document_format #=> String, one of ["YAML", "JSON", "TEXT"]
    #   resp.data.document_description.target_type #=> String
    #   resp.data.document_description.tags #=> Array<Tag>
    #   resp.data.document_description.tags[0] #=> Types::Tag
    #   resp.data.document_description.tags[0].key #=> String
    #   resp.data.document_description.tags[0].value #=> String
    #   resp.data.document_description.attachments_information #=> Array<AttachmentInformation>
    #   resp.data.document_description.attachments_information[0] #=> Types::AttachmentInformation
    #   resp.data.document_description.attachments_information[0].name #=> String
    #   resp.data.document_description.requires #=> Array<DocumentRequires>
    #   resp.data.document_description.requires[0] #=> Types::DocumentRequires
    #   resp.data.document_description.requires[0].name #=> String
    #   resp.data.document_description.requires[0].version #=> String
    #   resp.data.document_description.author #=> String
    #   resp.data.document_description.review_information #=> Array<ReviewInformation>
    #   resp.data.document_description.review_information[0] #=> Types::ReviewInformation
    #   resp.data.document_description.review_information[0].reviewed_time #=> Time
    #   resp.data.document_description.review_information[0].status #=> String, one of ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #   resp.data.document_description.review_information[0].reviewer #=> String
    #   resp.data.document_description.approved_version #=> String
    #   resp.data.document_description.pending_review_version #=> String
    #   resp.data.document_description.review_status #=> String, one of ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #   resp.data.document_description.category #=> Array<String>
    #   resp.data.document_description.category[0] #=> String
    #   resp.data.document_description.category_enum #=> Array<String>
    #   resp.data.document_description.category_enum[0] #=> String
    #
    def update_document(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDocumentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDocumentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDocument
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateDocumentContent, Errors::InvalidDocumentOperation, Errors::InvalidDocumentVersion, Errors::InvalidDocumentContent, Errors::InvalidDocument, Errors::MaxDocumentSizeExceeded, Errors::DocumentVersionLimitExceeded, Errors::InternalServerError, Errors::InvalidDocumentSchemaVersion, Errors::DuplicateDocumentVersionName]),
        data_parser: Parsers::UpdateDocument
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDocument,
        stubs: @stubs,
        params_class: Params::UpdateDocumentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_document
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Set the default version of a document. </p>
    #          <note>
    #             <p>If you change a document version for a State Manager association, Systems Manager immediately runs
    #     the association unless you previously specifed the <code>apply-only-at-cron-interval</code>
    #     parameter.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateDocumentDefaultVersionInput}.
    #
    # @option params [String] :name
    #   <p>The name of a custom document that you want to set as the default version.</p>
    #
    # @option params [String] :document_version
    #   <p>The version of a custom document that you want to set as the default version.</p>
    #
    # @return [Types::UpdateDocumentDefaultVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_document_default_version(
    #     name: 'Name', # required
    #     document_version: 'DocumentVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDocumentDefaultVersionOutput
    #   resp.data.description #=> Types::DocumentDefaultVersionDescription
    #   resp.data.description.name #=> String
    #   resp.data.description.default_version #=> String
    #   resp.data.description.default_version_name #=> String
    #
    def update_document_default_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDocumentDefaultVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDocumentDefaultVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDocumentDefaultVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDocumentVersion, Errors::InvalidDocument, Errors::InternalServerError, Errors::InvalidDocumentSchemaVersion]),
        data_parser: Parsers::UpdateDocumentDefaultVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDocumentDefaultVersion,
        stubs: @stubs,
        params_class: Params::UpdateDocumentDefaultVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_document_default_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates information related to approval reviews for a specific version of a change template
    #    in Change Manager.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDocumentMetadataInput}.
    #
    # @option params [String] :name
    #   <p>The name of the change template for which a version's metadata is to be updated.</p>
    #
    # @option params [String] :document_version
    #   <p>The version of a change template in which to update approval metadata.</p>
    #
    # @option params [DocumentReviews] :document_reviews
    #   <p>The change template review details to update.</p>
    #
    # @return [Types::UpdateDocumentMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_document_metadata(
    #     name: 'Name', # required
    #     document_version: 'DocumentVersion',
    #     document_reviews: {
    #       action: 'SendForReview', # required - accepts ["SendForReview", "UpdateReview", "Approve", "Reject"]
    #       comment: [
    #         {
    #           type: 'Comment', # accepts ["Comment"]
    #           content: 'Content'
    #         }
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDocumentMetadataOutput
    #
    def update_document_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDocumentMetadataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDocumentMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDocumentMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDocumentOperation, Errors::InvalidDocumentVersion, Errors::InvalidDocument, Errors::InternalServerError]),
        data_parser: Parsers::UpdateDocumentMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDocumentMetadata,
        stubs: @stubs,
        params_class: Params::UpdateDocumentMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_document_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing maintenance window. Only specified parameters are modified.</p>
    #          <note>
    #             <p>The value you specify for <code>Duration</code> determines the specific end time for the
    #     maintenance window based on the time it begins. No maintenance window tasks are permitted to
    #     start after the resulting endtime minus the number of hours you specify for <code>Cutoff</code>.
    #     For example, if the maintenance window starts at 3 PM, the duration is three hours, and the
    #     value you specify for <code>Cutoff</code> is one hour, no maintenance window tasks can start
    #     after 5 PM.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateMaintenanceWindowInput}.
    #
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window to update.</p>
    #
    # @option params [String] :name
    #   <p>The name of the maintenance window.</p>
    #
    # @option params [String] :description
    #   <p>An optional description for the update request.</p>
    #
    # @option params [String] :start_date
    #   <p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
    #      become active. <code>StartDate</code> allows you to delay activation of the maintenance window
    #      until the specified future date.</p>
    #
    # @option params [String] :end_date
    #   <p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
    #      become inactive. <code>EndDate</code> allows you to set a date and time in the future when the
    #      maintenance window will no longer run.</p>
    #
    # @option params [String] :schedule
    #   <p>The schedule of the maintenance window in the form of a cron or rate expression.</p>
    #
    # @option params [String] :schedule_timezone
    #   <p>The time zone that the scheduled maintenance window executions are based on, in Internet
    #      Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or
    #      "Asia/Seoul". For more information, see the <a href="https://www.iana.org/time-zones">Time
    #       Zone Database</a> on the IANA website.</p>
    #
    # @option params [Integer] :schedule_offset
    #   <p>The number of days to wait after the date and time specified by a cron expression before
    #      running the maintenance window.</p>
    #            <p>For example, the following cron expression schedules a maintenance window to run the third
    #      Tuesday of every month at 11:30 PM.</p>
    #            <p>
    #               <code>cron(30 23 ? * TUE#3 *)</code>
    #            </p>
    #            <p>If the schedule offset is <code>2</code>, the maintenance window won't run until two days
    #      later.</p>
    #
    # @option params [Integer] :duration
    #   <p>The duration of the maintenance window in hours.</p>
    #
    # @option params [Integer] :cutoff
    #   <p>The number of hours before the end of the maintenance window that Amazon Web Services Systems Manager stops scheduling
    #      new tasks for execution.</p>
    #
    # @option params [Boolean] :allow_unassociated_targets
    #   <p>Whether targets must be registered with the maintenance window before tasks can be defined
    #      for those targets.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>Whether the maintenance window is enabled.</p>
    #
    # @option params [Boolean] :replace
    #   <p>If <code>True</code>, then all fields that are required by the <a>CreateMaintenanceWindow</a> operation are also required for this API request. Optional
    #      fields that aren't specified are set to null. </p>
    #
    # @return [Types::UpdateMaintenanceWindowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_maintenance_window(
    #     window_id: 'WindowId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     start_date: 'StartDate',
    #     end_date: 'EndDate',
    #     schedule: 'Schedule',
    #     schedule_timezone: 'ScheduleTimezone',
    #     schedule_offset: 1,
    #     duration: 1,
    #     cutoff: 1,
    #     allow_unassociated_targets: false,
    #     enabled: false,
    #     replace: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMaintenanceWindowOutput
    #   resp.data.window_id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.start_date #=> String
    #   resp.data.end_date #=> String
    #   resp.data.schedule #=> String
    #   resp.data.schedule_timezone #=> String
    #   resp.data.schedule_offset #=> Integer
    #   resp.data.duration #=> Integer
    #   resp.data.cutoff #=> Integer
    #   resp.data.allow_unassociated_targets #=> Boolean
    #   resp.data.enabled #=> Boolean
    #
    def update_maintenance_window(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMaintenanceWindowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMaintenanceWindowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMaintenanceWindow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::UpdateMaintenanceWindow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMaintenanceWindow,
        stubs: @stubs,
        params_class: Params::UpdateMaintenanceWindowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_maintenance_window
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the target of an existing maintenance window. You
    #    can change the following:</p>
    #
    #          <ul>
    #             <li>
    #                <p>Name</p>
    #             </li>
    #             <li>
    #                <p>Description</p>
    #             </li>
    #             <li>
    #                <p>Owner</p>
    #             </li>
    #             <li>
    #                <p>IDs for an ID target</p>
    #             </li>
    #             <li>
    #                <p>Tags for a Tag target</p>
    #             </li>
    #             <li>
    #                <p>From any supported tag type to another. The three supported tag types are ID target, Tag
    #      target, and resource group. For more information, see <a>Target</a>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>If a parameter is null, then the corresponding field isn't modified.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateMaintenanceWindowTargetInput}.
    #
    # @option params [String] :window_id
    #   <p>The maintenance window ID with which to modify the target.</p>
    #
    # @option params [String] :window_target_id
    #   <p>The target ID to modify.</p>
    #
    # @option params [Array<Target>] :targets
    #   <p>The targets to add or replace.</p>
    #
    # @option params [String] :owner_information
    #   <p>User-provided value that will be included in any Amazon CloudWatch Events events raised while
    #      running tasks for these targets in this maintenance window.</p>
    #
    # @option params [String] :name
    #   <p>A name for the update.</p>
    #
    # @option params [String] :description
    #   <p>An optional description for the update.</p>
    #
    # @option params [Boolean] :replace
    #   <p>If <code>True</code>, then all fields that are required by the <a>RegisterTargetWithMaintenanceWindow</a> operation are also required for this API
    #      request. Optional fields that aren't specified are set to null.</p>
    #
    # @return [Types::UpdateMaintenanceWindowTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_maintenance_window_target(
    #     window_id: 'WindowId', # required
    #     window_target_id: 'WindowTargetId', # required
    #     targets: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     owner_information: 'OwnerInformation',
    #     name: 'Name',
    #     description: 'Description',
    #     replace: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMaintenanceWindowTargetOutput
    #   resp.data.window_id #=> String
    #   resp.data.window_target_id #=> String
    #   resp.data.targets #=> Array<Target>
    #   resp.data.targets[0] #=> Types::Target
    #   resp.data.targets[0].key #=> String
    #   resp.data.targets[0].values #=> Array<String>
    #   resp.data.targets[0].values[0] #=> String
    #   resp.data.owner_information #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #
    def update_maintenance_window_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMaintenanceWindowTargetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMaintenanceWindowTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMaintenanceWindowTarget
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::UpdateMaintenanceWindowTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMaintenanceWindowTarget,
        stubs: @stubs,
        params_class: Params::UpdateMaintenanceWindowTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_maintenance_window_target
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies a task assigned to a maintenance window. You can't change the task type, but you
    #    can change the following values:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>TaskARN</code>. For example, you can change a <code>RUN_COMMAND</code> task from
    #       <code>AWS-RunPowerShellScript</code> to <code>AWS-RunShellScript</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ServiceRoleArn</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TaskInvocationParameters</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Priority</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MaxConcurrency</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MaxErrors</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>One or more targets must be specified for maintenance window Run Command-type tasks.
    #     Depending on the task, targets are optional for other maintenance window task types (Automation,
    #      Lambda, and Step Functions). For more information about running tasks
    #     that don't specify targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">Registering
    #      maintenance window tasks without targets</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #          </note>
    #          <p>If the value for a parameter in <code>UpdateMaintenanceWindowTask</code> is null, then the
    #    corresponding field isn't modified. If you set <code>Replace</code> to true, then all fields
    #    required by the <a>RegisterTaskWithMaintenanceWindow</a> operation are required for
    #    this request. Optional fields that aren't specified are set to null.</p>
    #          <important>
    #             <p>When you update a maintenance window task that has options specified in
    #      <code>TaskInvocationParameters</code>, you must provide again all the
    #      <code>TaskInvocationParameters</code> values that you want to retain. The values you don't
    #     specify again are removed. For example, suppose that when you registered a Run Command task, you
    #     specified <code>TaskInvocationParameters</code> values for <code>Comment</code>,
    #      <code>NotificationConfig</code>, and <code>OutputS3BucketName</code>. If you update the
    #     maintenance window task and specify only a different <code>OutputS3BucketName</code> value, the
    #     values for <code>Comment</code> and <code>NotificationConfig</code> are removed.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateMaintenanceWindowTaskInput}.
    #
    # @option params [String] :window_id
    #   <p>The maintenance window ID that contains the task to modify.</p>
    #
    # @option params [String] :window_task_id
    #   <p>The task ID to modify.</p>
    #
    # @option params [Array<Target>] :targets
    #   <p>The targets (either managed nodes or tags) to modify. Managed nodes are specified using the
    #      format <code>Key=instanceids,Values=instanceID_1,instanceID_2</code>. Tags are specified using
    #      the format <code> Key=tag_name,Values=tag_value</code>. </p>
    #            <note>
    #               <p>One or more targets must be specified for maintenance window Run Command-type tasks.
    #       Depending on the task, targets are optional for other maintenance window task types (Automation,
    #        Lambda, and Step Functions). For more information about running tasks
    #       that don't specify targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">Registering
    #        maintenance window tasks without targets</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            </note>
    #
    # @option params [String] :task_arn
    #   <p>The task ARN to modify.</p>
    #
    # @option params [String] :service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role for Amazon Web Services Systems Manager to assume when running a
    #     maintenance window task. If you do not specify a service role ARN, Systems Manager uses your account's
    #     service-linked role.  If no service-linked role for Systems Manager exists in your account, it is created when you run
    #     <code>RegisterTaskWithMaintenanceWindow</code>.</p>
    #            <p>For more information, see the following topics in the in the <i>Amazon Web Services Systems Manager User Guide</i>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions">Using
    #       service-linked roles for Systems Manager</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role">Should I use a service-linked role or a custom service role to run maintenance window tasks?
    #      </a>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Hash<String, MaintenanceWindowTaskParameterValueExpression>] :task_parameters
    #   <p>The parameters to modify.</p>
    #            <note>
    #               <p>
    #                  <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
    #         instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
    #         about how Systems Manager handles these options for the supported maintenance window task
    #         types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #            <p>The map has the following format:</p>
    #            <p>Key: string, between 1 and 255 characters</p>
    #            <p>Value: an array of strings, each string is between 1 and 255 characters</p>
    #
    # @option params [MaintenanceWindowTaskInvocationParameters] :task_invocation_parameters
    #   <p>The parameters that the task should use during execution. Populate only the fields that
    #      match the task type. All other fields should be empty.</p>
    #            <important>
    #               <p>When you update a maintenance window task that has options specified in
    #        <code>TaskInvocationParameters</code>, you must provide again all the
    #        <code>TaskInvocationParameters</code> values that you want to retain. The values you don't
    #       specify again are removed. For example, suppose that when you registered a Run Command task, you
    #       specified <code>TaskInvocationParameters</code> values for <code>Comment</code>,
    #        <code>NotificationConfig</code>, and <code>OutputS3BucketName</code>. If you update the
    #       maintenance window task and specify only a different <code>OutputS3BucketName</code> value, the
    #       values for <code>Comment</code> and <code>NotificationConfig</code> are removed.</p>
    #            </important>
    #
    # @option params [Integer] :priority
    #   <p>The new task priority to specify. The lower the number, the higher the priority. Tasks that
    #      have the same priority are scheduled in parallel.</p>
    #
    # @option params [String] :max_concurrency
    #   <p>The new <code>MaxConcurrency</code> value you want to specify. <code>MaxConcurrency</code>
    #      is the number of targets that are allowed to run this task, in parallel.</p>
    #            <note>
    #               <p>Although this element is listed as "Required: No", a value can be omitted only when you are
    #       registering or updating a <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
    #        task</a> You must provide a value in all other cases.</p>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    #       affect the running of your task.</p>
    #            </note>
    #
    # @option params [String] :max_errors
    #   <p>The new <code>MaxErrors</code> value to specify. <code>MaxErrors</code> is the maximum
    #      number of errors that are allowed before the task stops being scheduled.</p>
    #            <note>
    #               <p>Although this element is listed as "Required: No", a value can be omitted only when you are
    #       registering or updating a <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
    #        task</a> You must provide a value in all other cases.</p>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    #       affect the running of your task.</p>
    #            </note>
    #
    # @option params [LoggingInfo] :logging_info
    #   <p>The new logging location in Amazon S3 to specify.</p>
    #            <note>
    #               <p>
    #                  <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
    #         <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
    #         For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
    #         window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #
    # @option params [String] :name
    #   <p>The new task name to specify.</p>
    #
    # @option params [String] :description
    #   <p>The new task description to specify.</p>
    #
    # @option params [Boolean] :replace
    #   <p>If True, then all fields that are required by the <a>RegisterTaskWithMaintenanceWindow</a> operation are also required for this API request.
    #      Optional fields that aren't specified are set to null.</p>
    #
    # @option params [String] :cutoff_behavior
    #   <p>Indicates whether tasks should continue to run after the cutoff time specified in the
    #      maintenance windows is reached. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE_TASK</code>: When the cutoff time is reached, any tasks that are running
    #        continue. The default value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCEL_TASK</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>For Automation, Lambda, Step Functions tasks: When the cutoff
    #          time is reached, any task invocations that are already running continue, but no new task
    #          invocations are started.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Run Command tasks: When the cutoff time is reached, the system sends a <a>CancelCommand</a> operation that attempts to cancel the command associated with the
    #          task. However, there is no guarantee that the command will be terminated and the underlying
    #          process stopped.</p>
    #                     </li>
    #                  </ul>
    #                  <p>The status for tasks that are not completed is <code>TIMED_OUT</code>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateMaintenanceWindowTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_maintenance_window_task(
    #     window_id: 'WindowId', # required
    #     window_task_id: 'WindowTaskId', # required
    #     targets: [
    #       {
    #         key: 'Key',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     task_arn: 'TaskArn',
    #     service_role_arn: 'ServiceRoleArn',
    #     task_parameters: {
    #       'key' => {
    #         values: [
    #           'member'
    #         ]
    #       }
    #     },
    #     task_invocation_parameters: {
    #       run_command: {
    #         comment: 'Comment',
    #         cloud_watch_output_config: {
    #           cloud_watch_log_group_name: 'CloudWatchLogGroupName',
    #           cloud_watch_output_enabled: false
    #         },
    #         document_hash: 'DocumentHash',
    #         document_hash_type: 'Sha256', # accepts ["Sha256", "Sha1"]
    #         document_version: 'DocumentVersion',
    #         notification_config: {
    #           notification_arn: 'NotificationArn',
    #           notification_events: [
    #             'All' # accepts ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]
    #           ],
    #           notification_type: 'Command' # accepts ["Command", "Invocation"]
    #         },
    #         output_s3_bucket_name: 'OutputS3BucketName',
    #         output_s3_key_prefix: 'OutputS3KeyPrefix',
    #         parameters: {
    #           'key' => [
    #             'member'
    #           ]
    #         },
    #         service_role_arn: 'ServiceRoleArn',
    #         timeout_seconds: 1
    #       },
    #       automation: {
    #         document_version: 'DocumentVersion',
    #         parameters: {
    #           'key' => [
    #             'member'
    #           ]
    #         }
    #       },
    #       step_functions: {
    #         input: 'Input',
    #         name: 'Name'
    #       },
    #       lambda: {
    #         client_context: 'ClientContext',
    #         qualifier: 'Qualifier',
    #         payload: 'Payload'
    #       }
    #     },
    #     priority: 1,
    #     max_concurrency: 'MaxConcurrency',
    #     max_errors: 'MaxErrors',
    #     logging_info: {
    #       s3_bucket_name: 'S3BucketName', # required
    #       s3_key_prefix: 'S3KeyPrefix',
    #       s3_region: 'S3Region' # required
    #     },
    #     name: 'Name',
    #     description: 'Description',
    #     replace: false,
    #     cutoff_behavior: 'CONTINUE_TASK' # accepts ["CONTINUE_TASK", "CANCEL_TASK"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMaintenanceWindowTaskOutput
    #   resp.data.window_id #=> String
    #   resp.data.window_task_id #=> String
    #   resp.data.targets #=> Array<Target>
    #   resp.data.targets[0] #=> Types::Target
    #   resp.data.targets[0].key #=> String
    #   resp.data.targets[0].values #=> Array<String>
    #   resp.data.targets[0].values[0] #=> String
    #   resp.data.task_arn #=> String
    #   resp.data.service_role_arn #=> String
    #   resp.data.task_parameters #=> Hash<String, MaintenanceWindowTaskParameterValueExpression>
    #   resp.data.task_parameters['key'] #=> Types::MaintenanceWindowTaskParameterValueExpression
    #   resp.data.task_parameters['key'].values #=> Array<String>
    #   resp.data.task_parameters['key'].values[0] #=> String
    #   resp.data.task_invocation_parameters #=> Types::MaintenanceWindowTaskInvocationParameters
    #   resp.data.task_invocation_parameters.run_command #=> Types::MaintenanceWindowRunCommandParameters
    #   resp.data.task_invocation_parameters.run_command.comment #=> String
    #   resp.data.task_invocation_parameters.run_command.cloud_watch_output_config #=> Types::CloudWatchOutputConfig
    #   resp.data.task_invocation_parameters.run_command.cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.data.task_invocation_parameters.run_command.cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #   resp.data.task_invocation_parameters.run_command.document_hash #=> String
    #   resp.data.task_invocation_parameters.run_command.document_hash_type #=> String, one of ["Sha256", "Sha1"]
    #   resp.data.task_invocation_parameters.run_command.document_version #=> String
    #   resp.data.task_invocation_parameters.run_command.notification_config #=> Types::NotificationConfig
    #   resp.data.task_invocation_parameters.run_command.notification_config.notification_arn #=> String
    #   resp.data.task_invocation_parameters.run_command.notification_config.notification_events #=> Array<String>
    #   resp.data.task_invocation_parameters.run_command.notification_config.notification_events[0] #=> String, one of ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]
    #   resp.data.task_invocation_parameters.run_command.notification_config.notification_type #=> String, one of ["Command", "Invocation"]
    #   resp.data.task_invocation_parameters.run_command.output_s3_bucket_name #=> String
    #   resp.data.task_invocation_parameters.run_command.output_s3_key_prefix #=> String
    #   resp.data.task_invocation_parameters.run_command.parameters #=> Hash<String, Array<String>>
    #   resp.data.task_invocation_parameters.run_command.parameters['key'] #=> Array<String>
    #   resp.data.task_invocation_parameters.run_command.parameters['key'][0] #=> String
    #   resp.data.task_invocation_parameters.run_command.service_role_arn #=> String
    #   resp.data.task_invocation_parameters.run_command.timeout_seconds #=> Integer
    #   resp.data.task_invocation_parameters.automation #=> Types::MaintenanceWindowAutomationParameters
    #   resp.data.task_invocation_parameters.automation.document_version #=> String
    #   resp.data.task_invocation_parameters.automation.parameters #=> Hash<String, Array<String>>
    #   resp.data.task_invocation_parameters.automation.parameters['key'] #=> Array<String>
    #   resp.data.task_invocation_parameters.automation.parameters['key'][0] #=> String
    #   resp.data.task_invocation_parameters.step_functions #=> Types::MaintenanceWindowStepFunctionsParameters
    #   resp.data.task_invocation_parameters.step_functions.input #=> String
    #   resp.data.task_invocation_parameters.step_functions.name #=> String
    #   resp.data.task_invocation_parameters.lambda #=> Types::MaintenanceWindowLambdaParameters
    #   resp.data.task_invocation_parameters.lambda.client_context #=> String
    #   resp.data.task_invocation_parameters.lambda.qualifier #=> String
    #   resp.data.task_invocation_parameters.lambda.payload #=> String
    #   resp.data.priority #=> Integer
    #   resp.data.max_concurrency #=> String
    #   resp.data.max_errors #=> String
    #   resp.data.logging_info #=> Types::LoggingInfo
    #   resp.data.logging_info.s3_bucket_name #=> String
    #   resp.data.logging_info.s3_key_prefix #=> String
    #   resp.data.logging_info.s3_region #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.cutoff_behavior #=> String, one of ["CONTINUE_TASK", "CANCEL_TASK"]
    #
    def update_maintenance_window_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMaintenanceWindowTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMaintenanceWindowTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMaintenanceWindowTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::UpdateMaintenanceWindowTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMaintenanceWindowTask,
        stubs: @stubs,
        params_class: Params::UpdateMaintenanceWindowTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_maintenance_window_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the Identity and Access Management (IAM) role that is assigned to the
    #    on-premises server, edge device, or virtual machines (VM). IAM roles are first
    #    assigned to these hybrid nodes during the activation process. For more information, see <a>CreateActivation</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateManagedInstanceRoleInput}.
    #
    # @option params [String] :instance_id
    #   <p>The ID of the managed node where you want to update the role.</p>
    #
    # @option params [String] :iam_role
    #   <p>The IAM role you want to assign or change.</p>
    #
    # @return [Types::UpdateManagedInstanceRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_managed_instance_role(
    #     instance_id: 'InstanceId', # required
    #     iam_role: 'IamRole' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateManagedInstanceRoleOutput
    #
    def update_managed_instance_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateManagedInstanceRoleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateManagedInstanceRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateManagedInstanceRole
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInstanceId, Errors::InternalServerError]),
        data_parser: Parsers::UpdateManagedInstanceRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateManagedInstanceRole,
        stubs: @stubs,
        params_class: Params::UpdateManagedInstanceRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_managed_instance_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Edit or change an OpsItem. You must have permission in Identity and Access Management (IAM) to update an OpsItem. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html">Getting started with
    #     OpsCenter</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #          <p>Operations engineers and IT professionals use Amazon Web Services Systems Manager OpsCenter to view, investigate, and
    #    remediate operational issues impacting the performance and health of their Amazon Web Services resources. For
    #    more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html">OpsCenter</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateOpsItemInput}.
    #
    # @option params [String] :description
    #   <p>Update the information about the OpsItem. Provide enough information so that users reading
    #      this OpsItem for the first time understand the issue. </p>
    #
    # @option params [Hash<String, OpsItemDataValue>] :operational_data
    #   <p>Add new keys or edit existing key-value pairs of the OperationalData map in the OpsItem
    #      object.</p>
    #            <p>Operational data is custom data that provides useful reference details about the OpsItem.
    #      For example, you can specify log files, error strings, license keys, troubleshooting tips, or
    #      other relevant data. You enter operational data as key-value pairs. The key has a maximum length
    #      of 128 characters. The value has a maximum size of 20 KB.</p>
    #            <important>
    #               <p>Operational data keys <i>can't</i> begin with the following:
    #        <code>amazon</code>, <code>aws</code>, <code>amzn</code>, <code>ssm</code>,
    #        <code>/amazon</code>, <code>/aws</code>, <code>/amzn</code>, <code>/ssm</code>.</p>
    #            </important>
    #            <p>You can choose to make the data searchable by other users in the account or you can restrict
    #      search access. Searchable data means that all users with access to the OpsItem Overview page (as
    #      provided by the <a>DescribeOpsItems</a> API operation) can view and search on the
    #      specified data. Operational data that isn't searchable is only viewable by users who have access
    #      to the OpsItem (as provided by the <a>GetOpsItem</a> API operation).</p>
    #            <p>Use the <code>/aws/resources</code> key in OperationalData to specify a related resource in
    #      the request. Use the <code>/aws/automations</code> key in OperationalData to associate an
    #      Automation runbook with the OpsItem. To view Amazon Web Services CLI example commands that use these keys, see
    #       <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems">Creating OpsItems manually</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [Array<String>] :operational_data_to_delete
    #   <p>Keys that you want to remove from the OperationalData map.</p>
    #
    # @option params [Array<OpsItemNotification>] :notifications
    #   <p>The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this
    #      OpsItem is edited or changed.</p>
    #
    # @option params [Integer] :priority
    #   <p>The importance of this OpsItem in relation to other OpsItems in the system.</p>
    #
    # @option params [Array<RelatedOpsItem>] :related_ops_items
    #   <p>One or more OpsItems that share something in common with the current OpsItems. For example,
    #      related OpsItems can include OpsItems with similar error messages, impacted resources, or
    #      statuses for the impacted resource.</p>
    #
    # @option params [String] :status
    #   <p>The OpsItem status. Status can be <code>Open</code>, <code>In Progress</code>, or
    #       <code>Resolved</code>. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems.html#OpsCenter-working-with-OpsItems-editing-details">Editing OpsItem details</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [String] :ops_item_id
    #   <p>The ID of the OpsItem.</p>
    #
    # @option params [String] :title
    #   <p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>
    #
    # @option params [String] :category
    #   <p>Specify a new category for an OpsItem.</p>
    #
    # @option params [String] :severity
    #   <p>Specify a new severity for an OpsItem.</p>
    #
    # @option params [Time] :actual_start_time
    #   <p>The time a runbook workflow started. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    #
    # @option params [Time] :actual_end_time
    #   <p>The time a runbook workflow ended. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    #
    # @option params [Time] :planned_start_time
    #   <p>The time specified in a change request for a runbook workflow to start. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    #
    # @option params [Time] :planned_end_time
    #   <p>The time specified in a change request for a runbook workflow to end. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    #
    # @return [Types::UpdateOpsItemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ops_item(
    #     description: 'Description',
    #     operational_data: {
    #       'key' => {
    #         value: 'Value',
    #         type: 'SearchableString' # accepts ["SearchableString", "String"]
    #       }
    #     },
    #     operational_data_to_delete: [
    #       'member'
    #     ],
    #     notifications: [
    #       {
    #         arn: 'Arn'
    #       }
    #     ],
    #     priority: 1,
    #     related_ops_items: [
    #       {
    #         ops_item_id: 'OpsItemId' # required
    #       }
    #     ],
    #     status: 'Open', # accepts ["Open", "InProgress", "Resolved", "Pending", "TimedOut", "Cancelling", "Cancelled", "Failed", "CompletedWithSuccess", "CompletedWithFailure", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "PendingApproval", "Approved", "Rejected", "Closed"]
    #     ops_item_id: 'OpsItemId', # required
    #     title: 'Title',
    #     category: 'Category',
    #     severity: 'Severity',
    #     actual_start_time: Time.now,
    #     actual_end_time: Time.now,
    #     planned_start_time: Time.now,
    #     planned_end_time: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateOpsItemOutput
    #
    def update_ops_item(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateOpsItemInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateOpsItemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateOpsItem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OpsItemAlreadyExistsException, Errors::OpsItemNotFoundException, Errors::OpsItemLimitExceededException, Errors::OpsItemInvalidParameterException, Errors::InternalServerError]),
        data_parser: Parsers::UpdateOpsItem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateOpsItem,
        stubs: @stubs,
        params_class: Params::UpdateOpsItemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_ops_item
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Amazon Web Services Systems Manager calls this API operation when you edit OpsMetadata in Application Manager.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateOpsMetadataInput}.
    #
    # @option params [String] :ops_metadata_arn
    #   <p>The Amazon Resource Name (ARN) of the OpsMetadata Object to update.</p>
    #
    # @option params [Hash<String, MetadataValue>] :metadata_to_update
    #   <p>Metadata to add to an OpsMetadata object.</p>
    #
    # @option params [Array<String>] :keys_to_delete
    #   <p>The metadata keys to delete from the OpsMetadata object. </p>
    #
    # @return [Types::UpdateOpsMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ops_metadata(
    #     ops_metadata_arn: 'OpsMetadataArn', # required
    #     metadata_to_update: {
    #       'key' => {
    #         value: 'Value'
    #       }
    #     },
    #     keys_to_delete: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateOpsMetadataOutput
    #   resp.data.ops_metadata_arn #=> String
    #
    def update_ops_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateOpsMetadataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateOpsMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateOpsMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OpsMetadataKeyLimitExceededException, Errors::OpsMetadataInvalidArgumentException, Errors::OpsMetadataNotFoundException, Errors::InternalServerError, Errors::OpsMetadataTooManyUpdatesException]),
        data_parser: Parsers::UpdateOpsMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateOpsMetadata,
        stubs: @stubs,
        params_class: Params::UpdateOpsMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_ops_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies an existing patch baseline. Fields not specified in the request are left
    #    unchanged.</p>
    #          <note>
    #             <p>For information about valid key-value pairs in <code>PatchFilters</code> for each supported
    #     operating system type, see <a>PatchFilter</a>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdatePatchBaselineInput}.
    #
    # @option params [String] :baseline_id
    #   <p>The ID of the patch baseline to update.</p>
    #
    # @option params [String] :name
    #   <p>The name of the patch baseline.</p>
    #
    # @option params [PatchFilterGroup] :global_filters
    #   <p>A set of global filters used to include patches in the baseline.</p>
    #
    # @option params [PatchRuleGroup] :approval_rules
    #   <p>A set of rules used to include patches in the baseline.</p>
    #
    # @option params [Array<String>] :approved_patches
    #   <p>A list of explicitly approved patches for the baseline.</p>
    #            <p>For information about accepted formats for lists of approved patches and rejected patches,
    #                           see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">About
    #                           package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [String] :approved_patches_compliance_level
    #   <p>Assigns a new compliance severity level to an existing patch baseline.</p>
    #
    # @option params [Boolean] :approved_patches_enable_non_security
    #   <p>Indicates whether the list of approved patches includes non-security updates that should be
    #      applied to the managed nodes. The default value is <code>false</code>. Applies to Linux managed
    #      nodes only.</p>
    #
    # @option params [Array<String>] :rejected_patches
    #   <p>A list of explicitly rejected patches for the baseline.</p>
    #            <p>For information about accepted formats for lists of approved patches and rejected patches,
    #                           see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">About
    #                           package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #
    # @option params [String] :rejected_patches_action
    #   <p>The action for Patch Manager to take on patches included in the
    #       <code>RejectedPackages</code> list.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ALLOW_AS_DEPENDENCY</code>
    #                     </b>: A package in the
    #         <code>Rejected</code> patches list is installed only if it is a dependency of another package.
    #        It is considered compliant with the patch baseline, and its status is reported as
    #         <code>InstalledOther</code>. This is the default action if no option is specified.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BLOCK</code>
    #                     </b>: Packages in the
    #         <code>RejectedPatches</code> list, and packages that include them as dependencies, aren't
    #        installed under any circumstances. If a package was installed before it was added to the
    #         <code>Rejected</code> patches list, it is considered non-compliant with the patch baseline,
    #        and its status is reported as <code>InstalledRejected</code>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :description
    #   <p>A description of the patch baseline.</p>
    #
    # @option params [Array<PatchSource>] :sources
    #   <p>Information about the patches to use to update the managed nodes, including target operating
    #      systems and source repositories. Applies to Linux managed nodes only.</p>
    #
    # @option params [Boolean] :replace
    #   <p>If True, then all fields that are required by the <a>CreatePatchBaseline</a>
    #      operation are also required for this API request. Optional fields that aren't specified are set
    #      to null.</p>
    #
    # @return [Types::UpdatePatchBaselineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_patch_baseline(
    #     baseline_id: 'BaselineId', # required
    #     name: 'Name',
    #     global_filters: {
    #       patch_filters: [
    #         {
    #           key: 'ARCH', # required - accepts ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"]
    #           values: [
    #             'member'
    #           ] # required
    #         }
    #       ] # required
    #     },
    #     approval_rules: {
    #       patch_rules: [
    #         {
    #           compliance_level: 'CRITICAL', # accepts ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #           approve_after_days: 1,
    #           approve_until_date: 'ApproveUntilDate',
    #           enable_non_security: false
    #         }
    #       ] # required
    #     },
    #     approved_patches: [
    #       'member'
    #     ],
    #     approved_patches_compliance_level: 'CRITICAL', # accepts ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #     approved_patches_enable_non_security: false,
    #     rejected_patches_action: 'ALLOW_AS_DEPENDENCY', # accepts ["ALLOW_AS_DEPENDENCY", "BLOCK"]
    #     description: 'Description',
    #     sources: [
    #       {
    #         name: 'Name', # required
    #         products: [
    #           'member'
    #         ], # required
    #         configuration: 'Configuration' # required
    #       }
    #     ],
    #     replace: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePatchBaselineOutput
    #   resp.data.baseline_id #=> String
    #   resp.data.name #=> String
    #   resp.data.operating_system #=> String, one of ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX"]
    #   resp.data.global_filters #=> Types::PatchFilterGroup
    #   resp.data.global_filters.patch_filters #=> Array<PatchFilter>
    #   resp.data.global_filters.patch_filters[0] #=> Types::PatchFilter
    #   resp.data.global_filters.patch_filters[0].key #=> String, one of ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"]
    #   resp.data.global_filters.patch_filters[0].values #=> Array<String>
    #   resp.data.global_filters.patch_filters[0].values[0] #=> String
    #   resp.data.approval_rules #=> Types::PatchRuleGroup
    #   resp.data.approval_rules.patch_rules #=> Array<PatchRule>
    #   resp.data.approval_rules.patch_rules[0] #=> Types::PatchRule
    #   resp.data.approval_rules.patch_rules[0].patch_filter_group #=> Types::PatchFilterGroup
    #   resp.data.approval_rules.patch_rules[0].compliance_level #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #   resp.data.approval_rules.patch_rules[0].approve_after_days #=> Integer
    #   resp.data.approval_rules.patch_rules[0].approve_until_date #=> String
    #   resp.data.approval_rules.patch_rules[0].enable_non_security #=> Boolean
    #   resp.data.approved_patches #=> Array<String>
    #   resp.data.approved_patches[0] #=> String
    #   resp.data.approved_patches_compliance_level #=> String, one of ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"]
    #   resp.data.approved_patches_enable_non_security #=> Boolean
    #   resp.data.rejected_patches #=> Array<String>
    #   resp.data.rejected_patches_action #=> String, one of ["ALLOW_AS_DEPENDENCY", "BLOCK"]
    #   resp.data.created_date #=> Time
    #   resp.data.modified_date #=> Time
    #   resp.data.description #=> String
    #   resp.data.sources #=> Array<PatchSource>
    #   resp.data.sources[0] #=> Types::PatchSource
    #   resp.data.sources[0].name #=> String
    #   resp.data.sources[0].products #=> Array<String>
    #   resp.data.sources[0].products[0] #=> String
    #   resp.data.sources[0].configuration #=> String
    #
    def update_patch_baseline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePatchBaselineInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePatchBaselineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePatchBaseline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DoesNotExistException, Errors::InternalServerError]),
        data_parser: Parsers::UpdatePatchBaseline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePatchBaseline,
        stubs: @stubs,
        params_class: Params::UpdatePatchBaselineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_patch_baseline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a resource data sync. After you create a resource data sync for a Region, you can't
    #    change the account options for that sync. For example, if you create a sync in the us-east-2
    #    (Ohio) Region and you choose the <code>Include only the current account</code> option, you can't
    #    edit that sync later and choose the <code>Include all accounts from my Organizations
    #     configuration</code> option. Instead, you must delete the first resource data sync, and create a
    #    new one.</p>
    #          <note>
    #             <p>This API operation only supports a resource data sync that was created with a
    #     SyncFromSource <code>SyncType</code>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateResourceDataSyncInput}.
    #
    # @option params [String] :sync_name
    #   <p>The name of the resource data sync you want to update.</p>
    #
    # @option params [String] :sync_type
    #   <p>The type of resource data sync. The supported <code>SyncType</code> is
    #      SyncFromSource.</p>
    #
    # @option params [ResourceDataSyncSource] :sync_source
    #   <p>Specify information about the data sources to synchronize.</p>
    #
    # @return [Types::UpdateResourceDataSyncOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_data_sync(
    #     sync_name: 'SyncName', # required
    #     sync_type: 'SyncType', # required
    #     sync_source: {
    #       source_type: 'SourceType', # required
    #       aws_organizations_source: {
    #         organization_source_type: 'OrganizationSourceType', # required
    #         organizational_units: [
    #           {
    #             organizational_unit_id: 'OrganizationalUnitId'
    #           }
    #         ]
    #       },
    #       source_regions: [
    #         'member'
    #       ], # required
    #       include_future_regions: false,
    #       enable_all_ops_data_sources: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResourceDataSyncOutput
    #
    def update_resource_data_sync(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResourceDataSyncInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResourceDataSyncInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResourceDataSync
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceDataSyncInvalidConfigurationException, Errors::ResourceDataSyncNotFoundException, Errors::InternalServerError, Errors::ResourceDataSyncConflictException]),
        data_parser: Parsers::UpdateResourceDataSync
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResourceDataSync,
        stubs: @stubs,
        params_class: Params::UpdateResourceDataSyncOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resource_data_sync
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <code>ServiceSetting</code> is an account-level setting for an Amazon Web Services service. This setting
    #    defines how a user interacts with or uses a service or a feature of a service. For example, if an
    #    Amazon Web Services service charges money to the account based on feature or service usage, then the Amazon Web Services
    #    service team might create a default setting of "false". This means the user can't use this
    #    feature unless they change the setting to "true" and intentionally opt in for a paid
    #    feature.</p>
    #          <p>Services map a <code>SettingId</code> object to a setting value. Amazon Web Services services teams define
    #    the default value for a <code>SettingId</code>. You can't create a new <code>SettingId</code>,
    #    but you can overwrite the default value if you have the <code>ssm:UpdateServiceSetting</code>
    #    permission for the setting. Use the <a>GetServiceSetting</a> API operation to view the
    #    current value. Or, use the <a>ResetServiceSetting</a> to change the value back to the
    #    original value defined by the Amazon Web Services service team.</p>
    #          <p>Update the service setting for the account. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateServiceSettingInput}.
    #
    # @option params [String] :setting_id
    #   <p>The Amazon Resource Name (ARN) of the service setting to reset. For example,
    #       <code>arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled</code>.
    #      The setting ID can be one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-destination</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-group-name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/documents/console/public-sharing-permission</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/default-parameter-tier</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/high-throughput-enabled</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/activation-tier</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :setting_value
    #   <p>The new value to specify for the service setting. The following list specifies the available
    #      values for each setting.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/default-parameter-tier</code>: <code>Standard</code>,
    #         <code>Advanced</code>, <code>Intelligent-Tiering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/high-throughput-enabled</code>: <code>true</code> or
    #         <code>false</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/activation-tier</code>: <code>true</code> or
    #         <code>false</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-destination</code>: <code>CloudWatch</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-group-name</code>: the name of an Amazon CloudWatch Logs log group</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/documents/console/public-sharing-permission</code>: <code>Enable</code> or
    #         <code>Disable</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/activation-tier</code>: <code>standard</code> or
    #         <code>advanced</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateServiceSettingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_setting(
    #     setting_id: 'SettingId', # required
    #     setting_value: 'SettingValue' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServiceSettingOutput
    #
    def update_service_setting(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServiceSettingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServiceSettingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateServiceSetting
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyUpdates, Errors::InternalServerError, Errors::ServiceSettingNotFound]),
        data_parser: Parsers::UpdateServiceSetting
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateServiceSetting,
        stubs: @stubs,
        params_class: Params::UpdateServiceSettingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_service_setting
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
