# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::CloudDirectory
  # An API client for AmazonCloudDirectory_20170111
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Cloud Directory</fullname>
  #          <p>Amazon Cloud Directory is a component of the AWS Directory Service that simplifies the
  #       development and management of cloud-scale web, mobile, and IoT applications. This guide
  #       describes the Cloud Directory operations that you can call programmatically and includes
  #       detailed information on data types and errors. For information about Cloud Directory features, see <a href="https://aws.amazon.com/directoryservice/">AWS Directory
  #         Service</a> and the <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/what_is_cloud_directory.html">Amazon Cloud Directory Developer Guide</a>.</p>
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
    def initialize(config = AWS::SDK::CloudDirectory::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds a new <a>Facet</a> to an object. An object can have more than one facet applied on it.</p>
    #
    # @param [Hash] params
    #   See {Types::AddFacetToObjectInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #
    # @option params [SchemaFacet] :schema_facet
    #   <p>Identifiers for the facet that you are adding to the object. See <a>SchemaFacet</a> for details.</p>
    #
    # @option params [Array<AttributeKeyAndValue>] :object_attribute_list
    #   <p>Attributes on the facet that you are adding to the object.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>A reference to the object you are adding the specified facet to.</p>
    #
    # @return [Types::AddFacetToObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_facet_to_object(
    #     directory_arn: 'DirectoryArn', # required
    #     schema_facet: {
    #       schema_arn: 'SchemaArn',
    #       facet_name: 'FacetName'
    #     }, # required
    #     object_attribute_list: [
    #       {
    #         key: {
    #           schema_arn: 'SchemaArn', # required
    #           facet_name: 'FacetName', # required
    #           name: 'Name' # required
    #         }, # required
    #         value: {
    #           # One of:
    #           string_value: 'StringValue',
    #           binary_value: 'BinaryValue',
    #           boolean_value: false,
    #           number_value: 'NumberValue',
    #           datetime_value: Time.now
    #         } # required
    #       }
    #     ],
    #     object_reference: {
    #       selector: 'Selector'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddFacetToObjectOutput
    #
    def add_facet_to_object(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddFacetToObjectInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddFacetToObjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddFacetToObject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AddFacetToObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddFacetToObject,
        stubs: @stubs,
        params_class: Params::AddFacetToObjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_facet_to_object
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Copies the input published schema, at the specified version, into the <a>Directory</a> with the same
    #       name and version as that of the published schema.</p>
    #
    # @param [Hash] params
    #   See {Types::ApplySchemaInput}.
    #
    # @option params [String] :published_schema_arn
    #   <p>Published schema Amazon Resource Name (ARN) that needs to be copied. For more
    #         information, see <a>arns</a>.</p>
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         into which the schema is copied. For more information, see <a>arns</a>.</p>
    #
    # @return [Types::ApplySchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.apply_schema(
    #     published_schema_arn: 'PublishedSchemaArn', # required
    #     directory_arn: 'DirectoryArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ApplySchemaOutput
    #   resp.data.applied_schema_arn #=> String
    #   resp.data.directory_arn #=> String
    #
    def apply_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ApplySchemaInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ApplySchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ApplySchema
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::SchemaAlreadyExistsException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InvalidAttachmentException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ApplySchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ApplySchema,
        stubs: @stubs,
        params_class: Params::ApplySchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :apply_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches an existing object to another object. An object can be accessed in two
    #       ways:</p>
    #          <ol>
    #             <li>
    #                <p>Using the path</p>
    #             </li>
    #             <li>
    #                <p>Using <code>ObjectIdentifier</code>
    #                </p>
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::AttachObjectInput}.
    #
    # @option params [String] :directory_arn
    #   <p>Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where both objects reside. For more information, see <a>arns</a>.</p>
    #
    # @option params [ObjectReference] :parent_reference
    #   <p>The parent object reference.</p>
    #
    # @option params [ObjectReference] :child_reference
    #   <p>The child object reference to be attached to the object.</p>
    #
    # @option params [String] :link_name
    #   <p>The link name with which the child object is attached to the parent.</p>
    #
    # @return [Types::AttachObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_object(
    #     directory_arn: 'DirectoryArn', # required
    #     parent_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     link_name: 'LinkName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachObjectOutput
    #   resp.data.attached_object_identifier #=> String
    #
    def attach_object(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachObjectInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachObjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachObject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::LinkNameAlreadyInUseException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InvalidAttachmentException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AttachObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachObject,
        stubs: @stubs,
        params_class: Params::AttachObjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_object
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches a policy object to a regular object. An object can have a limited number of attached
    #       policies.</p>
    #
    # @param [Hash] params
    #   See {Types::AttachPolicyInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where both objects reside. For more information, see <a>arns</a>.</p>
    #
    # @option params [ObjectReference] :policy_reference
    #   <p>The reference that is associated with the policy object.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>The reference that identifies the object to which the policy will be
    #         attached.</p>
    #
    # @return [Types::AttachPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_policy(
    #     directory_arn: 'DirectoryArn', # required
    #     policy_reference: {
    #       selector: 'Selector'
    #     }, # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachPolicyOutput
    #
    def attach_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotPolicyException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AttachPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachPolicy,
        stubs: @stubs,
        params_class: Params::AttachPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches the specified object to the specified index.</p>
    #
    # @param [Hash] params
    #   See {Types::AttachToIndexInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where the object and index
    #         exist.</p>
    #
    # @option params [ObjectReference] :index_reference
    #   <p>A reference to the index that you are attaching the object to.</p>
    #
    # @option params [ObjectReference] :target_reference
    #   <p>A reference to the object that you are attaching to the index.</p>
    #
    # @return [Types::AttachToIndexOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_to_index(
    #     directory_arn: 'DirectoryArn', # required
    #     index_reference: {
    #       selector: 'Selector'
    #     }, # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachToIndexOutput
    #   resp.data.attached_object_identifier #=> String
    #
    def attach_to_index(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachToIndexInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachToIndexInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachToIndex
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::LimitExceededException, Errors::NotIndexException, Errors::IndexedAttributeMissingException, Errors::LinkNameAlreadyInUseException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InvalidAttachmentException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AttachToIndex
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachToIndex,
        stubs: @stubs,
        params_class: Params::AttachToIndexOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_to_index
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches a typed link to a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AttachTypedLinkInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to attach the typed
    #         link.</p>
    #
    # @option params [ObjectReference] :source_object_reference
    #   <p>Identifies the source object that the typed link will attach to.</p>
    #
    # @option params [ObjectReference] :target_object_reference
    #   <p>Identifies the target object that the typed link will attach to.</p>
    #
    # @option params [TypedLinkSchemaAndFacetName] :typed_link_facet
    #   <p>Identifies the typed link facet that is associated with the typed link.</p>
    #
    # @option params [Array<AttributeNameAndValue>] :attributes
    #   <p>A set of attributes that are associated with the typed link.</p>
    #
    # @return [Types::AttachTypedLinkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_typed_link(
    #     directory_arn: 'DirectoryArn', # required
    #     source_object_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     typed_link_facet: {
    #       schema_arn: 'SchemaArn', # required
    #       typed_link_name: 'TypedLinkName' # required
    #     }, # required
    #     attributes: [
    #       {
    #         attribute_name: 'AttributeName', # required
    #         value: {
    #           # One of:
    #           string_value: 'StringValue',
    #           binary_value: 'BinaryValue',
    #           boolean_value: false,
    #           number_value: 'NumberValue',
    #           datetime_value: Time.now
    #         } # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachTypedLinkOutput
    #   resp.data.typed_link_specifier #=> Types::TypedLinkSpecifier
    #   resp.data.typed_link_specifier.typed_link_facet #=> Types::TypedLinkSchemaAndFacetName
    #   resp.data.typed_link_specifier.typed_link_facet.schema_arn #=> String
    #   resp.data.typed_link_specifier.typed_link_facet.typed_link_name #=> String
    #   resp.data.typed_link_specifier.source_object_reference #=> Types::ObjectReference
    #   resp.data.typed_link_specifier.source_object_reference.selector #=> String
    #   resp.data.typed_link_specifier.target_object_reference #=> Types::ObjectReference
    #   resp.data.typed_link_specifier.identity_attribute_values #=> Array<AttributeNameAndValue>
    #   resp.data.typed_link_specifier.identity_attribute_values[0] #=> Types::AttributeNameAndValue
    #   resp.data.typed_link_specifier.identity_attribute_values[0].attribute_name #=> String
    #   resp.data.typed_link_specifier.identity_attribute_values[0].value #=> TypedAttributeValue
    #
    def attach_typed_link(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachTypedLinkInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachTypedLinkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachTypedLink
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InvalidAttachmentException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AttachTypedLink
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachTypedLink,
        stubs: @stubs,
        params_class: Params::AttachTypedLinkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_typed_link
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Performs all the read operations in a batch. </p>
    #
    # @param [Hash] params
    #   See {Types::BatchReadInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
    #         For more information, see <a>arns</a>.</p>
    #
    # @option params [Array<BatchReadOperation>] :operations
    #   <p>A list of operations that are part of the batch.</p>
    #
    # @option params [String] :consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #
    # @return [Types::BatchReadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_read(
    #     directory_arn: 'DirectoryArn', # required
    #     operations: [
    #       {
    #         list_object_attributes: {
    #           object_reference: {
    #             selector: 'Selector'
    #           }, # required
    #           next_token: 'NextToken',
    #           max_results: 1,
    #           facet_filter: {
    #             schema_arn: 'SchemaArn',
    #             facet_name: 'FacetName'
    #           }
    #         },
    #         list_object_children: {
    #           next_token: 'NextToken',
    #           max_results: 1
    #         },
    #         list_attached_indices: {
    #           next_token: 'NextToken',
    #           max_results: 1
    #         },
    #         list_object_parent_paths: {
    #           next_token: 'NextToken',
    #           max_results: 1
    #         },
    #         get_object_information: {
    #         },
    #         get_object_attributes: {
    #           attribute_names: [
    #             'member'
    #           ] # required
    #         },
    #         list_object_parents: {
    #           next_token: 'NextToken',
    #           max_results: 1
    #         },
    #         list_object_policies: {
    #           next_token: 'NextToken',
    #           max_results: 1
    #         },
    #         list_policy_attachments: {
    #           next_token: 'NextToken',
    #           max_results: 1
    #         },
    #         lookup_policy: {
    #           next_token: 'NextToken',
    #           max_results: 1
    #         },
    #         list_index: {
    #           ranges_on_indexed_values: [
    #             {
    #               attribute_key: {
    #                 schema_arn: 'SchemaArn', # required
    #                 facet_name: 'FacetName', # required
    #                 name: 'Name' # required
    #               },
    #               range: {
    #                 start_mode: 'FIRST', # required - accepts ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"]
    #                 start_value: {
    #                   # One of:
    #                   string_value: 'StringValue',
    #                   binary_value: 'BinaryValue',
    #                   boolean_value: false,
    #                   number_value: 'NumberValue',
    #                   datetime_value: Time.now
    #                 },
    #                 end_mode: 'FIRST', # required - accepts ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"]
    #               }
    #             }
    #           ],
    #           max_results: 1,
    #           next_token: 'NextToken'
    #         },
    #         list_outgoing_typed_links: {
    #           filter_attribute_ranges: [
    #             {
    #               attribute_name: 'AttributeName',
    #             }
    #           ],
    #           filter_typed_link: {
    #             schema_arn: 'SchemaArn', # required
    #             typed_link_name: 'TypedLinkName' # required
    #           },
    #           next_token: 'NextToken',
    #           max_results: 1
    #         },
    #         list_incoming_typed_links: {
    #           next_token: 'NextToken',
    #           max_results: 1
    #         },
    #         get_link_attributes: {
    #           typed_link_specifier: {
    #             identity_attribute_values: [
    #               {
    #                 attribute_name: 'AttributeName', # required
    #               }
    #             ] # required
    #           }, # required
    #         }
    #       }
    #     ], # required
    #     consistency_level: 'SERIALIZABLE' # accepts ["SERIALIZABLE", "EVENTUAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchReadOutput
    #   resp.data.responses #=> Array<BatchReadOperationResponse>
    #   resp.data.responses[0] #=> Types::BatchReadOperationResponse
    #   resp.data.responses[0].successful_response #=> Types::BatchReadSuccessfulResponse
    #   resp.data.responses[0].successful_response.list_object_attributes #=> Types::BatchListObjectAttributesResponse
    #   resp.data.responses[0].successful_response.list_object_attributes.attributes #=> Array<AttributeKeyAndValue>
    #   resp.data.responses[0].successful_response.list_object_attributes.attributes[0] #=> Types::AttributeKeyAndValue
    #   resp.data.responses[0].successful_response.list_object_attributes.attributes[0].key #=> Types::AttributeKey
    #   resp.data.responses[0].successful_response.list_object_attributes.attributes[0].key.schema_arn #=> String
    #   resp.data.responses[0].successful_response.list_object_attributes.attributes[0].key.facet_name #=> String
    #   resp.data.responses[0].successful_response.list_object_attributes.attributes[0].key.name #=> String
    #   resp.data.responses[0].successful_response.list_object_attributes.attributes[0].value #=> TypedAttributeValue
    #   resp.data.responses[0].successful_response.list_object_attributes.next_token #=> String
    #   resp.data.responses[0].successful_response.list_object_children #=> Types::BatchListObjectChildrenResponse
    #   resp.data.responses[0].successful_response.list_object_children.children #=> Hash<String, String>
    #   resp.data.responses[0].successful_response.list_object_children.children['key'] #=> String
    #   resp.data.responses[0].successful_response.list_object_children.next_token #=> String
    #   resp.data.responses[0].successful_response.get_object_information #=> Types::BatchGetObjectInformationResponse
    #   resp.data.responses[0].successful_response.get_object_information.schema_facets #=> Array<SchemaFacet>
    #   resp.data.responses[0].successful_response.get_object_information.schema_facets[0] #=> Types::SchemaFacet
    #   resp.data.responses[0].successful_response.get_object_information.schema_facets[0].schema_arn #=> String
    #   resp.data.responses[0].successful_response.get_object_information.schema_facets[0].facet_name #=> String
    #   resp.data.responses[0].successful_response.get_object_information.object_identifier #=> String
    #   resp.data.responses[0].successful_response.get_object_attributes #=> Types::BatchGetObjectAttributesResponse
    #   resp.data.responses[0].successful_response.get_object_attributes.attributes #=> Array<AttributeKeyAndValue>
    #   resp.data.responses[0].successful_response.list_attached_indices #=> Types::BatchListAttachedIndicesResponse
    #   resp.data.responses[0].successful_response.list_attached_indices.index_attachments #=> Array<IndexAttachment>
    #   resp.data.responses[0].successful_response.list_attached_indices.index_attachments[0] #=> Types::IndexAttachment
    #   resp.data.responses[0].successful_response.list_attached_indices.index_attachments[0].indexed_attributes #=> Array<AttributeKeyAndValue>
    #   resp.data.responses[0].successful_response.list_attached_indices.index_attachments[0].object_identifier #=> String
    #   resp.data.responses[0].successful_response.list_attached_indices.next_token #=> String
    #   resp.data.responses[0].successful_response.list_object_parent_paths #=> Types::BatchListObjectParentPathsResponse
    #   resp.data.responses[0].successful_response.list_object_parent_paths.path_to_object_identifiers_list #=> Array<PathToObjectIdentifiers>
    #   resp.data.responses[0].successful_response.list_object_parent_paths.path_to_object_identifiers_list[0] #=> Types::PathToObjectIdentifiers
    #   resp.data.responses[0].successful_response.list_object_parent_paths.path_to_object_identifiers_list[0].path #=> String
    #   resp.data.responses[0].successful_response.list_object_parent_paths.path_to_object_identifiers_list[0].object_identifiers #=> Array<String>
    #   resp.data.responses[0].successful_response.list_object_parent_paths.path_to_object_identifiers_list[0].object_identifiers[0] #=> String
    #   resp.data.responses[0].successful_response.list_object_parent_paths.next_token #=> String
    #   resp.data.responses[0].successful_response.list_object_policies #=> Types::BatchListObjectPoliciesResponse
    #   resp.data.responses[0].successful_response.list_object_policies.attached_policy_ids #=> Array<String>
    #   resp.data.responses[0].successful_response.list_object_policies.next_token #=> String
    #   resp.data.responses[0].successful_response.list_policy_attachments #=> Types::BatchListPolicyAttachmentsResponse
    #   resp.data.responses[0].successful_response.list_policy_attachments.object_identifiers #=> Array<String>
    #   resp.data.responses[0].successful_response.list_policy_attachments.next_token #=> String
    #   resp.data.responses[0].successful_response.lookup_policy #=> Types::BatchLookupPolicyResponse
    #   resp.data.responses[0].successful_response.lookup_policy.policy_to_path_list #=> Array<PolicyToPath>
    #   resp.data.responses[0].successful_response.lookup_policy.policy_to_path_list[0] #=> Types::PolicyToPath
    #   resp.data.responses[0].successful_response.lookup_policy.policy_to_path_list[0].path #=> String
    #   resp.data.responses[0].successful_response.lookup_policy.policy_to_path_list[0].policies #=> Array<PolicyAttachment>
    #   resp.data.responses[0].successful_response.lookup_policy.policy_to_path_list[0].policies[0] #=> Types::PolicyAttachment
    #   resp.data.responses[0].successful_response.lookup_policy.policy_to_path_list[0].policies[0].policy_id #=> String
    #   resp.data.responses[0].successful_response.lookup_policy.policy_to_path_list[0].policies[0].object_identifier #=> String
    #   resp.data.responses[0].successful_response.lookup_policy.policy_to_path_list[0].policies[0].policy_type #=> String
    #   resp.data.responses[0].successful_response.lookup_policy.next_token #=> String
    #   resp.data.responses[0].successful_response.list_index #=> Types::BatchListIndexResponse
    #   resp.data.responses[0].successful_response.list_index.index_attachments #=> Array<IndexAttachment>
    #   resp.data.responses[0].successful_response.list_index.next_token #=> String
    #   resp.data.responses[0].successful_response.list_outgoing_typed_links #=> Types::BatchListOutgoingTypedLinksResponse
    #   resp.data.responses[0].successful_response.list_outgoing_typed_links.typed_link_specifiers #=> Array<TypedLinkSpecifier>
    #   resp.data.responses[0].successful_response.list_outgoing_typed_links.typed_link_specifiers[0] #=> Types::TypedLinkSpecifier
    #   resp.data.responses[0].successful_response.list_outgoing_typed_links.typed_link_specifiers[0].typed_link_facet #=> Types::TypedLinkSchemaAndFacetName
    #   resp.data.responses[0].successful_response.list_outgoing_typed_links.typed_link_specifiers[0].typed_link_facet.schema_arn #=> String
    #   resp.data.responses[0].successful_response.list_outgoing_typed_links.typed_link_specifiers[0].typed_link_facet.typed_link_name #=> String
    #   resp.data.responses[0].successful_response.list_outgoing_typed_links.typed_link_specifiers[0].source_object_reference #=> Types::ObjectReference
    #   resp.data.responses[0].successful_response.list_outgoing_typed_links.typed_link_specifiers[0].source_object_reference.selector #=> String
    #   resp.data.responses[0].successful_response.list_outgoing_typed_links.typed_link_specifiers[0].target_object_reference #=> Types::ObjectReference
    #   resp.data.responses[0].successful_response.list_outgoing_typed_links.typed_link_specifiers[0].identity_attribute_values #=> Array<AttributeNameAndValue>
    #   resp.data.responses[0].successful_response.list_outgoing_typed_links.typed_link_specifiers[0].identity_attribute_values[0] #=> Types::AttributeNameAndValue
    #   resp.data.responses[0].successful_response.list_outgoing_typed_links.typed_link_specifiers[0].identity_attribute_values[0].attribute_name #=> String
    #   resp.data.responses[0].successful_response.list_outgoing_typed_links.typed_link_specifiers[0].identity_attribute_values[0].value #=> TypedAttributeValue
    #   resp.data.responses[0].successful_response.list_outgoing_typed_links.next_token #=> String
    #   resp.data.responses[0].successful_response.list_incoming_typed_links #=> Types::BatchListIncomingTypedLinksResponse
    #   resp.data.responses[0].successful_response.list_incoming_typed_links.link_specifiers #=> Array<TypedLinkSpecifier>
    #   resp.data.responses[0].successful_response.list_incoming_typed_links.next_token #=> String
    #   resp.data.responses[0].successful_response.get_link_attributes #=> Types::BatchGetLinkAttributesResponse
    #   resp.data.responses[0].successful_response.get_link_attributes.attributes #=> Array<AttributeKeyAndValue>
    #   resp.data.responses[0].successful_response.list_object_parents #=> Types::BatchListObjectParentsResponse
    #   resp.data.responses[0].successful_response.list_object_parents.parent_links #=> Array<ObjectIdentifierAndLinkNameTuple>
    #   resp.data.responses[0].successful_response.list_object_parents.parent_links[0] #=> Types::ObjectIdentifierAndLinkNameTuple
    #   resp.data.responses[0].successful_response.list_object_parents.parent_links[0].object_identifier #=> String
    #   resp.data.responses[0].successful_response.list_object_parents.parent_links[0].link_name #=> String
    #   resp.data.responses[0].successful_response.list_object_parents.next_token #=> String
    #   resp.data.responses[0].exception_response #=> Types::BatchReadException
    #   resp.data.responses[0].exception_response.type #=> String, one of ["ValidationException", "InvalidArnException", "ResourceNotFoundException", "InvalidNextTokenException", "AccessDeniedException", "NotNodeException", "FacetValidationException", "CannotListParentOfRootException", "NotIndexException", "NotPolicyException", "DirectoryNotEnabledException", "LimitExceededException", "InternalServiceException"]
    #   resp.data.responses[0].exception_response.message #=> String
    #
    def batch_read(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchReadInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchReadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchRead
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException]),
        data_parser: Parsers::BatchRead
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchRead,
        stubs: @stubs,
        params_class: Params::BatchReadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_read
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Performs all the write operations in a batch. Either all the operations succeed or
    #       none.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchWriteInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
    #         For more information, see <a>arns</a>.</p>
    #
    # @option params [Array<BatchWriteOperation>] :operations
    #   <p>A list of operations that are part of the batch.</p>
    #
    # @return [Types::BatchWriteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_write(
    #     directory_arn: 'DirectoryArn', # required
    #     operations: [
    #       {
    #         create_object: {
    #           schema_facet: [
    #             {
    #               schema_arn: 'SchemaArn',
    #               facet_name: 'FacetName'
    #             }
    #           ], # required
    #           object_attribute_list: [
    #             {
    #               key: {
    #                 schema_arn: 'SchemaArn', # required
    #                 facet_name: 'FacetName', # required
    #                 name: 'Name' # required
    #               }, # required
    #               value: {
    #                 # One of:
    #                 string_value: 'StringValue',
    #                 binary_value: 'BinaryValue',
    #                 boolean_value: false,
    #                 number_value: 'NumberValue',
    #                 datetime_value: Time.now
    #               } # required
    #             }
    #           ], # required
    #           parent_reference: {
    #             selector: 'Selector'
    #           },
    #           link_name: 'LinkName',
    #           batch_reference_name: 'BatchReferenceName'
    #         },
    #         attach_object: {
    #           link_name: 'LinkName' # required
    #         },
    #         detach_object: {
    #           link_name: 'LinkName', # required
    #           batch_reference_name: 'BatchReferenceName'
    #         },
    #         update_object_attributes: {
    #           attribute_updates: [
    #             {
    #               object_attribute_action: {
    #                 object_attribute_action_type: 'CREATE_OR_UPDATE', # accepts ["CREATE_OR_UPDATE", "DELETE"]
    #               }
    #             }
    #           ] # required
    #         },
    #         delete_object: {
    #         },
    #         add_facet_to_object: {
    #         },
    #         remove_facet_from_object: {
    #         },
    #         attach_policy: {
    #         },
    #         detach_policy: {
    #         },
    #         create_index: {
    #           is_unique: false, # required
    #           link_name: 'LinkName',
    #           batch_reference_name: 'BatchReferenceName'
    #         },
    #         attach_to_index: {
    #         },
    #         detach_from_index: {
    #         },
    #         attach_typed_link: {
    #           typed_link_facet: {
    #             schema_arn: 'SchemaArn', # required
    #             typed_link_name: 'TypedLinkName' # required
    #           }, # required
    #           attributes: [
    #             {
    #               attribute_name: 'AttributeName', # required
    #             }
    #           ] # required
    #         },
    #         detach_typed_link: {
    #           typed_link_specifier: {
    #           } # required
    #         },
    #         update_link_attributes: {
    #           attribute_updates: [
    #             {
    #               attribute_action: {
    #                 attribute_action_type: 'CREATE_OR_UPDATE', # accepts ["CREATE_OR_UPDATE", "DELETE"]
    #               }
    #             }
    #           ] # required
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchWriteOutput
    #   resp.data.responses #=> Array<BatchWriteOperationResponse>
    #   resp.data.responses[0] #=> Types::BatchWriteOperationResponse
    #   resp.data.responses[0].create_object #=> Types::BatchCreateObjectResponse
    #   resp.data.responses[0].create_object.object_identifier #=> String
    #   resp.data.responses[0].attach_object #=> Types::BatchAttachObjectResponse
    #   resp.data.responses[0].attach_object.attached_object_identifier #=> String
    #   resp.data.responses[0].detach_object #=> Types::BatchDetachObjectResponse
    #   resp.data.responses[0].detach_object.detached_object_identifier #=> String
    #   resp.data.responses[0].update_object_attributes #=> Types::BatchUpdateObjectAttributesResponse
    #   resp.data.responses[0].update_object_attributes.object_identifier #=> String
    #   resp.data.responses[0].delete_object #=> Types::BatchDeleteObjectResponse
    #   resp.data.responses[0].add_facet_to_object #=> Types::BatchAddFacetToObjectResponse
    #   resp.data.responses[0].remove_facet_from_object #=> Types::BatchRemoveFacetFromObjectResponse
    #   resp.data.responses[0].attach_policy #=> Types::BatchAttachPolicyResponse
    #   resp.data.responses[0].detach_policy #=> Types::BatchDetachPolicyResponse
    #   resp.data.responses[0].create_index #=> Types::BatchCreateIndexResponse
    #   resp.data.responses[0].create_index.object_identifier #=> String
    #   resp.data.responses[0].attach_to_index #=> Types::BatchAttachToIndexResponse
    #   resp.data.responses[0].attach_to_index.attached_object_identifier #=> String
    #   resp.data.responses[0].detach_from_index #=> Types::BatchDetachFromIndexResponse
    #   resp.data.responses[0].detach_from_index.detached_object_identifier #=> String
    #   resp.data.responses[0].attach_typed_link #=> Types::BatchAttachTypedLinkResponse
    #   resp.data.responses[0].attach_typed_link.typed_link_specifier #=> Types::TypedLinkSpecifier
    #   resp.data.responses[0].attach_typed_link.typed_link_specifier.typed_link_facet #=> Types::TypedLinkSchemaAndFacetName
    #   resp.data.responses[0].attach_typed_link.typed_link_specifier.typed_link_facet.schema_arn #=> String
    #   resp.data.responses[0].attach_typed_link.typed_link_specifier.typed_link_facet.typed_link_name #=> String
    #   resp.data.responses[0].attach_typed_link.typed_link_specifier.source_object_reference #=> Types::ObjectReference
    #   resp.data.responses[0].attach_typed_link.typed_link_specifier.source_object_reference.selector #=> String
    #   resp.data.responses[0].attach_typed_link.typed_link_specifier.target_object_reference #=> Types::ObjectReference
    #   resp.data.responses[0].attach_typed_link.typed_link_specifier.identity_attribute_values #=> Array<AttributeNameAndValue>
    #   resp.data.responses[0].attach_typed_link.typed_link_specifier.identity_attribute_values[0] #=> Types::AttributeNameAndValue
    #   resp.data.responses[0].attach_typed_link.typed_link_specifier.identity_attribute_values[0].attribute_name #=> String
    #   resp.data.responses[0].attach_typed_link.typed_link_specifier.identity_attribute_values[0].value #=> TypedAttributeValue
    #   resp.data.responses[0].detach_typed_link #=> Types::BatchDetachTypedLinkResponse
    #   resp.data.responses[0].update_link_attributes #=> Types::BatchUpdateLinkAttributesResponse
    #
    def batch_write(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchWriteInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchWriteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchWrite
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::BatchWriteException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException]),
        data_parser: Parsers::BatchWrite
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchWrite,
        stubs: @stubs,
        params_class: Params::BatchWriteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_write
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <a>Directory</a> by copying the published schema into the
    #       directory. A directory cannot be created without a schema.</p>
    #          <p>You can also quickly create a directory using a managed schema, called the
    #         <code>QuickStartSchema</code>. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_managed.html">Managed Schema</a> in the <i>Amazon Cloud Directory Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDirectoryInput}.
    #
    # @option params [String] :name
    #   <p>The name of the <a>Directory</a>. Should be unique per account, per
    #         region.</p>
    #
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) of the published schema that will be copied into the
    #         data <a>Directory</a>. For more information, see <a>arns</a>.</p>
    #
    # @return [Types::CreateDirectoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_directory(
    #     name: 'Name', # required
    #     schema_arn: 'SchemaArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDirectoryOutput
    #   resp.data.directory_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.object_identifier #=> String
    #   resp.data.applied_schema_arn #=> String
    #
    def create_directory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDirectoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDirectoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDirectory
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryAlreadyExistsException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateDirectory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDirectory,
        stubs: @stubs,
        params_class: Params::CreateDirectoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_directory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new <a>Facet</a> in a schema. Facet creation is allowed only
    #       in development or applied schemas.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFacetInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The schema ARN in which the new <a>Facet</a> will be created. For more
    #         information, see <a>arns</a>.</p>
    #
    # @option params [String] :name
    #   <p>The name of the <a>Facet</a>, which is unique for a given schema.</p>
    #
    # @option params [Array<FacetAttribute>] :attributes
    #   <p>The attributes that are associated with the <a>Facet</a>.</p>
    #
    # @option params [String] :object_type
    #   <p>Specifies whether a given object created from this facet is of type node, leaf node,
    #         policy or index.</p>
    #            <ul>
    #               <li>
    #                  <p>Node: Can have multiple children but one parent.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>Leaf node: Cannot have children but can have multiple parents.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>Policy: Allows you to store a policy document and policy type. For more
    #           information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>Index: Can be created with the Index API.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :facet_style
    #   <p>There are two different styles that you can define on any given facet, <code>Static</code> and <code>Dynamic</code>. For static facets, all attributes must be defined in the schema. For dynamic facets, attributes can be defined during data plane operations.</p>
    #
    # @return [Types::CreateFacetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_facet(
    #     schema_arn: 'SchemaArn', # required
    #     name: 'Name', # required
    #     attributes: [
    #       {
    #         name: 'Name', # required
    #         attribute_definition: {
    #           type: 'STRING', # required - accepts ["STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME", "VARIANT"]
    #           default_value: {
    #             # One of:
    #             string_value: 'StringValue',
    #             binary_value: 'BinaryValue',
    #             boolean_value: false,
    #             number_value: 'NumberValue',
    #             datetime_value: Time.now
    #           },
    #           is_immutable: false,
    #           rules: {
    #             'key' => {
    #               type: 'BINARY_LENGTH', # accepts ["BINARY_LENGTH", "NUMBER_COMPARISON", "STRING_FROM_SET", "STRING_LENGTH"]
    #               parameters: {
    #                 'key' => 'value'
    #               }
    #             }
    #           }
    #         },
    #         attribute_reference: {
    #           target_facet_name: 'TargetFacetName', # required
    #           target_attribute_name: 'TargetAttributeName' # required
    #         },
    #         required_behavior: 'REQUIRED_ALWAYS' # accepts ["REQUIRED_ALWAYS", "NOT_REQUIRED"]
    #       }
    #     ],
    #     object_type: 'NODE', # accepts ["NODE", "LEAF_NODE", "POLICY", "INDEX"]
    #     facet_style: 'STATIC' # accepts ["STATIC", "DYNAMIC"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFacetOutput
    #
    def create_facet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFacetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFacetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFacet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::InvalidArnException, Errors::FacetAlreadyExistsException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException, Errors::InvalidRuleException]),
        data_parser: Parsers::CreateFacet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFacet,
        stubs: @stubs,
        params_class: Params::CreateFacetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_facet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an index object. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.html">Indexing and search</a> for more information.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateIndexInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory where the index should be created.</p>
    #
    # @option params [Array<AttributeKey>] :ordered_indexed_attribute_list
    #   <p>Specifies the attributes that should be indexed on. Currently only a single attribute
    #         is supported.</p>
    #
    # @option params [Boolean] :is_unique
    #   <p>Indicates whether the attribute that is being indexed has unique values or
    #         not.</p>
    #
    # @option params [ObjectReference] :parent_reference
    #   <p>A reference to the parent object that contains the index object.</p>
    #
    # @option params [String] :link_name
    #   <p>The name of the link between the parent object and the index object.</p>
    #
    # @return [Types::CreateIndexOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_index(
    #     directory_arn: 'DirectoryArn', # required
    #     ordered_indexed_attribute_list: [
    #       {
    #         schema_arn: 'SchemaArn', # required
    #         facet_name: 'FacetName', # required
    #         name: 'Name' # required
    #       }
    #     ], # required
    #     is_unique: false, # required
    #     parent_reference: {
    #       selector: 'Selector'
    #     },
    #     link_name: 'LinkName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIndexOutput
    #   resp.data.object_identifier #=> String
    #
    def create_index(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIndexInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIndexInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIndex
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::LinkNameAlreadyInUseException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::UnsupportedIndexTypeException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateIndex
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIndex,
        stubs: @stubs,
        params_class: Params::CreateIndexOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_index
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an object in a <a>Directory</a>. Additionally attaches the object to
    #       a parent, if a parent reference and <code>LinkName</code> is specified. An object is simply a
    #       collection of <a>Facet</a> attributes. You can also use this API call to create a
    #       policy object, if the facet from which you create the object is a policy facet. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateObjectInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         in which the object will be created. For more information, see <a>arns</a>.</p>
    #
    # @option params [Array<SchemaFacet>] :schema_facets
    #   <p>A list of schema facets to be associated with the object. Do not provide minor version components. See <a>SchemaFacet</a> for details.</p>
    #
    # @option params [Array<AttributeKeyAndValue>] :object_attribute_list
    #   <p>The attribute map whose attribute ARN contains the key and attribute value as the map
    #         value.</p>
    #
    # @option params [ObjectReference] :parent_reference
    #   <p>If specified, the parent reference to which this object will be attached.</p>
    #
    # @option params [String] :link_name
    #   <p>The name of link that is used to attach this object to a parent.</p>
    #
    # @return [Types::CreateObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_object(
    #     directory_arn: 'DirectoryArn', # required
    #     schema_facets: [
    #       {
    #         schema_arn: 'SchemaArn',
    #         facet_name: 'FacetName'
    #       }
    #     ], # required
    #     object_attribute_list: [
    #       {
    #         key: {
    #           schema_arn: 'SchemaArn', # required
    #           facet_name: 'FacetName', # required
    #           name: 'Name' # required
    #         }, # required
    #         value: {
    #           # One of:
    #           string_value: 'StringValue',
    #           binary_value: 'BinaryValue',
    #           boolean_value: false,
    #           number_value: 'NumberValue',
    #           datetime_value: Time.now
    #         } # required
    #       }
    #     ],
    #     parent_reference: {
    #       selector: 'Selector'
    #     },
    #     link_name: 'LinkName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateObjectOutput
    #   resp.data.object_identifier #=> String
    #
    def create_object(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateObjectInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateObjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateObject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::LinkNameAlreadyInUseException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::UnsupportedIndexTypeException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateObject,
        stubs: @stubs,
        params_class: Params::CreateObjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_object
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new schema in a development state. A schema can exist in three
    #       phases:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <i>Development:</i> This is a mutable phase of the schema. All new
    #           schemas are in the development phase. Once the schema is finalized, it can be
    #           published.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <i>Published:</i> Published schemas are immutable and have a version
    #           associated with them.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <i>Applied:</i> Applied schemas are mutable in a way that allows you
    #           to add new schema facets. You can also add new, nonrequired attributes to existing schema
    #           facets. You can apply only published schemas to directories. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateSchemaInput}.
    #
    # @option params [String] :name
    #   <p>The name that is associated with the schema. This is unique to each account and in each
    #         region.</p>
    #
    # @return [Types::CreateSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_schema(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSchemaOutput
    #   resp.data.schema_arn #=> String
    #
    def create_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSchemaInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSchema
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::SchemaAlreadyExistsException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException]),
        data_parser: Parsers::CreateSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSchema,
        stubs: @stubs,
        params_class: Params::CreateSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <a>TypedLinkFacet</a>. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTypedLinkFacetInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #
    # @option params [TypedLinkFacet] :facet
    #   <p>
    #               <a>Facet</a> structure that is associated with the typed link
    #         facet.</p>
    #
    # @return [Types::CreateTypedLinkFacetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_typed_link_facet(
    #     schema_arn: 'SchemaArn', # required
    #     facet: {
    #       name: 'Name', # required
    #       attributes: [
    #         {
    #           name: 'Name', # required
    #           type: 'STRING', # required - accepts ["STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME", "VARIANT"]
    #           default_value: {
    #             # One of:
    #             string_value: 'StringValue',
    #             binary_value: 'BinaryValue',
    #             boolean_value: false,
    #             number_value: 'NumberValue',
    #             datetime_value: Time.now
    #           },
    #           is_immutable: false,
    #           rules: {
    #             'key' => {
    #               type: 'BINARY_LENGTH', # accepts ["BINARY_LENGTH", "NUMBER_COMPARISON", "STRING_FROM_SET", "STRING_LENGTH"]
    #               parameters: {
    #                 'key' => 'value'
    #               }
    #             }
    #           },
    #           required_behavior: 'REQUIRED_ALWAYS' # required - accepts ["REQUIRED_ALWAYS", "NOT_REQUIRED"]
    #         }
    #       ], # required
    #       identity_attribute_order: [
    #         'member'
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTypedLinkFacetOutput
    #
    def create_typed_link_facet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTypedLinkFacetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTypedLinkFacetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTypedLinkFacet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::InvalidArnException, Errors::FacetAlreadyExistsException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException, Errors::InvalidRuleException]),
        data_parser: Parsers::CreateTypedLinkFacet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTypedLinkFacet,
        stubs: @stubs,
        params_class: Params::CreateTypedLinkFacetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_typed_link_facet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a directory. Only disabled directories can be deleted. A deleted directory cannot be undone. Exercise extreme
    #         caution
    #         when deleting directories.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDirectoryInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory to delete.</p>
    #
    # @return [Types::DeleteDirectoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_directory(
    #     directory_arn: 'DirectoryArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDirectoryOutput
    #   resp.data.directory_arn #=> String
    #
    def delete_directory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDirectoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDirectoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDirectory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::DirectoryNotDisabledException, Errors::LimitExceededException, Errors::ValidationException, Errors::DirectoryDeletedException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteDirectory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDirectory,
        stubs: @stubs,
        params_class: Params::DeleteDirectoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_directory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a given <a>Facet</a>. All attributes and <a>Rule</a>s
    #       that are associated with the facet will be deleted. Only development schema facets are allowed
    #       deletion.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFacetInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.
    #         For more information, see <a>arns</a>.</p>
    #
    # @option params [String] :name
    #   <p>The name of the facet to delete.</p>
    #
    # @return [Types::DeleteFacetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_facet(
    #     schema_arn: 'SchemaArn', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFacetOutput
    #
    def delete_facet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFacetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFacetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFacet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetNotFoundException, Errors::FacetInUseException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteFacet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFacet,
        stubs: @stubs,
        params_class: Params::DeleteFacetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_facet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an object and its associated attributes. Only objects with no children and no
    #       parents can be deleted. The maximum number of attributes that can be deleted during an object deletion is 30. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html">Amazon Cloud Directory Limits</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteObjectInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>A reference that identifies the object.</p>
    #
    # @return [Types::DeleteObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_object(
    #     directory_arn: 'DirectoryArn', # required
    #     object_reference: {
    #       selector: 'Selector'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteObjectOutput
    #
    def delete_object(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteObjectInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteObjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteObject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ObjectNotDetachedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteObject,
        stubs: @stubs,
        params_class: Params::DeleteObjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_object
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a given schema. Schemas in a development and published state can only be deleted. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSchemaInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) of the development schema. For more information, see
    #           <a>arns</a>.</p>
    #
    # @return [Types::DeleteSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schema(
    #     schema_arn: 'SchemaArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSchemaOutput
    #   resp.data.schema_arn #=> String
    #
    def delete_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSchemaInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSchema
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::StillContainsLinksException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSchema,
        stubs: @stubs,
        params_class: Params::DeleteSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a <a>TypedLinkFacet</a>. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTypedLinkFacetInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #
    # @option params [String] :name
    #   <p>The unique name of the typed link facet.</p>
    #
    # @return [Types::DeleteTypedLinkFacetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_typed_link_facet(
    #     schema_arn: 'SchemaArn', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTypedLinkFacetOutput
    #
    def delete_typed_link_facet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTypedLinkFacetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTypedLinkFacetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTypedLinkFacet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetNotFoundException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteTypedLinkFacet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTypedLinkFacet,
        stubs: @stubs,
        params_class: Params::DeleteTypedLinkFacetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_typed_link_facet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detaches the specified object from the specified index.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachFromIndexInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory the index and object exist
    #         in.</p>
    #
    # @option params [ObjectReference] :index_reference
    #   <p>A reference to the index object.</p>
    #
    # @option params [ObjectReference] :target_reference
    #   <p>A reference to the object being detached from the index.</p>
    #
    # @return [Types::DetachFromIndexOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_from_index(
    #     directory_arn: 'DirectoryArn', # required
    #     index_reference: {
    #       selector: 'Selector'
    #     }, # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachFromIndexOutput
    #   resp.data.detached_object_identifier #=> String
    #
    def detach_from_index(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachFromIndexInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachFromIndexInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachFromIndex
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::ObjectAlreadyDetachedException, Errors::NotIndexException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DetachFromIndex
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachFromIndex,
        stubs: @stubs,
        params_class: Params::DetachFromIndexOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_from_index
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detaches a given object from the parent object. The object that is to be detached from the
    #       parent is specified by the link name.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachObjectInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where objects reside. For more information, see <a>arns</a>.</p>
    #
    # @option params [ObjectReference] :parent_reference
    #   <p>The parent reference from which the object with the specified link name is
    #         detached.</p>
    #
    # @option params [String] :link_name
    #   <p>The link name associated with the object that needs to be detached.</p>
    #
    # @return [Types::DetachObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_object(
    #     directory_arn: 'DirectoryArn', # required
    #     parent_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     link_name: 'LinkName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachObjectOutput
    #   resp.data.detached_object_identifier #=> String
    #
    def detach_object(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachObjectInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachObjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachObject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::NotNodeException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DetachObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachObject,
        stubs: @stubs,
        params_class: Params::DetachObjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_object
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detaches a policy from an object.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachPolicyInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where both objects reside. For more information, see <a>arns</a>.</p>
    #
    # @option params [ObjectReference] :policy_reference
    #   <p>Reference that identifies the policy object.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>Reference that identifies the object whose policy object will be detached.</p>
    #
    # @return [Types::DetachPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_policy(
    #     directory_arn: 'DirectoryArn', # required
    #     policy_reference: {
    #       selector: 'Selector'
    #     }, # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachPolicyOutput
    #
    def detach_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotPolicyException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DetachPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachPolicy,
        stubs: @stubs,
        params_class: Params::DetachPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detaches a typed link from a specified source and target object. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachTypedLinkInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to detach the typed
    #         link.</p>
    #
    # @option params [TypedLinkSpecifier] :typed_link_specifier
    #   <p>Used to accept a typed link specifier as input.</p>
    #
    # @return [Types::DetachTypedLinkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_typed_link(
    #     directory_arn: 'DirectoryArn', # required
    #     typed_link_specifier: {
    #       typed_link_facet: {
    #         schema_arn: 'SchemaArn', # required
    #         typed_link_name: 'TypedLinkName' # required
    #       }, # required
    #       source_object_reference: {
    #         selector: 'Selector'
    #       }, # required
    #       identity_attribute_values: [
    #         {
    #           attribute_name: 'AttributeName', # required
    #           value: {
    #             # One of:
    #             string_value: 'StringValue',
    #             binary_value: 'BinaryValue',
    #             boolean_value: false,
    #             number_value: 'NumberValue',
    #             datetime_value: Time.now
    #           } # required
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachTypedLinkOutput
    #
    def detach_typed_link(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachTypedLinkInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachTypedLinkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachTypedLink
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DetachTypedLink
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachTypedLink,
        stubs: @stubs,
        params_class: Params::DetachTypedLinkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_typed_link
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the specified directory. Disabled directories cannot be read or written to.
    #       Only enabled directories can be disabled. Disabled directories may be reenabled.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableDirectoryInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory to disable.</p>
    #
    # @return [Types::DisableDirectoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_directory(
    #     directory_arn: 'DirectoryArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableDirectoryOutput
    #   resp.data.directory_arn #=> String
    #
    def disable_directory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableDirectoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableDirectoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableDirectory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::DirectoryDeletedException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DisableDirectory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableDirectory,
        stubs: @stubs,
        params_class: Params::DisableDirectoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_directory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the specified directory. Only disabled directories can be enabled. Once
    #       enabled, the directory can then be read and written to.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableDirectoryInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory to enable.</p>
    #
    # @return [Types::EnableDirectoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_directory(
    #     directory_arn: 'DirectoryArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableDirectoryOutput
    #   resp.data.directory_arn #=> String
    #
    def enable_directory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableDirectoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableDirectoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableDirectory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::DirectoryDeletedException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::EnableDirectory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableDirectory,
        stubs: @stubs,
        params_class: Params::EnableDirectoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_directory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns current applied schema version ARN, including the minor version in use.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAppliedSchemaVersionInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The ARN of the applied schema.</p>
    #
    # @return [Types::GetAppliedSchemaVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_applied_schema_version(
    #     schema_arn: 'SchemaArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAppliedSchemaVersionOutput
    #   resp.data.applied_schema_arn #=> String
    #
    def get_applied_schema_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAppliedSchemaVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAppliedSchemaVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAppliedSchemaVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetAppliedSchemaVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAppliedSchemaVersion,
        stubs: @stubs,
        params_class: Params::GetAppliedSchemaVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_applied_schema_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves metadata about a directory.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDirectoryInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory.</p>
    #
    # @return [Types::GetDirectoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_directory(
    #     directory_arn: 'DirectoryArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDirectoryOutput
    #   resp.data.directory #=> Types::Directory
    #   resp.data.directory.name #=> String
    #   resp.data.directory.directory_arn #=> String
    #   resp.data.directory.state #=> String, one of ["ENABLED", "DISABLED", "DELETED"]
    #   resp.data.directory.creation_date_time #=> Time
    #
    def get_directory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDirectoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDirectoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDirectory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException]),
        data_parser: Parsers::GetDirectory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDirectory,
        stubs: @stubs,
        params_class: Params::GetDirectoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_directory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details of the <a>Facet</a>, such as facet name, attributes, <a>Rule</a>s, or <code>ObjectType</code>. You can call this on all kinds of schema
    #       facets -- published, development, or applied.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFacetInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.
    #         For more information, see <a>arns</a>.</p>
    #
    # @option params [String] :name
    #   <p>The name of the facet to retrieve.</p>
    #
    # @return [Types::GetFacetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_facet(
    #     schema_arn: 'SchemaArn', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFacetOutput
    #   resp.data.facet #=> Types::Facet
    #   resp.data.facet.name #=> String
    #   resp.data.facet.object_type #=> String, one of ["NODE", "LEAF_NODE", "POLICY", "INDEX"]
    #   resp.data.facet.facet_style #=> String, one of ["STATIC", "DYNAMIC"]
    #
    def get_facet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFacetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFacetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFacet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetNotFoundException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetFacet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFacet,
        stubs: @stubs,
        params_class: Params::GetFacetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_facet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves attributes that are associated with a typed link.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLinkAttributesInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the Directory where the typed link resides. For more information, see <a>arns</a> or <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    # @option params [TypedLinkSpecifier] :typed_link_specifier
    #   <p>Allows a typed link specifier to be accepted as input.</p>
    #
    # @option params [Array<String>] :attribute_names
    #   <p>A list of attribute names whose values will be retrieved.</p>
    #
    # @option params [String] :consistency_level
    #   <p>The consistency level at which to retrieve the attributes on a typed link.</p>
    #
    # @return [Types::GetLinkAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_link_attributes(
    #     directory_arn: 'DirectoryArn', # required
    #     typed_link_specifier: {
    #       typed_link_facet: {
    #         schema_arn: 'SchemaArn', # required
    #         typed_link_name: 'TypedLinkName' # required
    #       }, # required
    #       source_object_reference: {
    #         selector: 'Selector'
    #       }, # required
    #       identity_attribute_values: [
    #         {
    #           attribute_name: 'AttributeName', # required
    #           value: {
    #             # One of:
    #             string_value: 'StringValue',
    #             binary_value: 'BinaryValue',
    #             boolean_value: false,
    #             number_value: 'NumberValue',
    #             datetime_value: Time.now
    #           } # required
    #         }
    #       ] # required
    #     }, # required
    #     attribute_names: [
    #       'member'
    #     ], # required
    #     consistency_level: 'SERIALIZABLE' # accepts ["SERIALIZABLE", "EVENTUAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLinkAttributesOutput
    #   resp.data.attributes #=> Array<AttributeKeyAndValue>
    #   resp.data.attributes[0] #=> Types::AttributeKeyAndValue
    #   resp.data.attributes[0].key #=> Types::AttributeKey
    #   resp.data.attributes[0].key.schema_arn #=> String
    #   resp.data.attributes[0].key.facet_name #=> String
    #   resp.data.attributes[0].key.name #=> String
    #   resp.data.attributes[0].value #=> TypedAttributeValue
    #
    def get_link_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLinkAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLinkAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLinkAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetLinkAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLinkAttributes,
        stubs: @stubs,
        params_class: Params::GetLinkAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_link_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves attributes within a facet that are associated with an object.</p>
    #
    # @param [Hash] params
    #   See {Types::GetObjectAttributesInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>Reference that identifies the object whose attributes will be retrieved.</p>
    #
    # @option params [String] :consistency_level
    #   <p>The consistency level at which to retrieve the attributes on an object.</p>
    #
    # @option params [SchemaFacet] :schema_facet
    #   <p>Identifier for the facet whose attributes will be retrieved. See <a>SchemaFacet</a> for details.</p>
    #
    # @option params [Array<String>] :attribute_names
    #   <p>List of attribute names whose values will be retrieved.</p>
    #
    # @return [Types::GetObjectAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_object_attributes(
    #     directory_arn: 'DirectoryArn', # required
    #     object_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     consistency_level: 'SERIALIZABLE', # accepts ["SERIALIZABLE", "EVENTUAL"]
    #     schema_facet: {
    #       schema_arn: 'SchemaArn',
    #       facet_name: 'FacetName'
    #     }, # required
    #     attribute_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetObjectAttributesOutput
    #   resp.data.attributes #=> Array<AttributeKeyAndValue>
    #   resp.data.attributes[0] #=> Types::AttributeKeyAndValue
    #   resp.data.attributes[0].key #=> Types::AttributeKey
    #   resp.data.attributes[0].key.schema_arn #=> String
    #   resp.data.attributes[0].key.facet_name #=> String
    #   resp.data.attributes[0].key.name #=> String
    #   resp.data.attributes[0].value #=> TypedAttributeValue
    #
    def get_object_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetObjectAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetObjectAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetObjectAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetObjectAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetObjectAttributes,
        stubs: @stubs,
        params_class: Params::GetObjectAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_object_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves metadata about an object.</p>
    #
    # @param [Hash] params
    #   See {Types::GetObjectInformationInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory being retrieved.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>A reference to the object.</p>
    #
    # @option params [String] :consistency_level
    #   <p>The consistency level at which to retrieve the object information.</p>
    #
    # @return [Types::GetObjectInformationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_object_information(
    #     directory_arn: 'DirectoryArn', # required
    #     object_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     consistency_level: 'SERIALIZABLE' # accepts ["SERIALIZABLE", "EVENTUAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetObjectInformationOutput
    #   resp.data.schema_facets #=> Array<SchemaFacet>
    #   resp.data.schema_facets[0] #=> Types::SchemaFacet
    #   resp.data.schema_facets[0].schema_arn #=> String
    #   resp.data.schema_facets[0].facet_name #=> String
    #   resp.data.object_identifier #=> String
    #
    def get_object_information(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetObjectInformationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetObjectInformationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetObjectInformation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetObjectInformation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetObjectInformation,
        stubs: @stubs,
        params_class: Params::GetObjectInformationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_object_information
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a JSON representation of the schema. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json">JSON Schema Format</a> for more information.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSchemaAsJsonInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The ARN of the schema to retrieve.</p>
    #
    # @return [Types::GetSchemaAsJsonOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schema_as_json(
    #     schema_arn: 'SchemaArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSchemaAsJsonOutput
    #   resp.data.name #=> String
    #   resp.data.document #=> String
    #
    def get_schema_as_json(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSchemaAsJsonInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSchemaAsJsonInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSchemaAsJson
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetSchemaAsJson
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSchemaAsJson,
        stubs: @stubs,
        params_class: Params::GetSchemaAsJsonOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_schema_as_json
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the identity attribute order for a specific <a>TypedLinkFacet</a>. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTypedLinkFacetInformationInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #
    # @option params [String] :name
    #   <p>The unique name of the typed link facet.</p>
    #
    # @return [Types::GetTypedLinkFacetInformationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_typed_link_facet_information(
    #     schema_arn: 'SchemaArn', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTypedLinkFacetInformationOutput
    #   resp.data.identity_attribute_order #=> Array<String>
    #   resp.data.identity_attribute_order[0] #=> String
    #
    def get_typed_link_facet_information(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTypedLinkFacetInformationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTypedLinkFacetInformationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTypedLinkFacetInformation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetNotFoundException, Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetTypedLinkFacetInformation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTypedLinkFacetInformation,
        stubs: @stubs,
        params_class: Params::GetTypedLinkFacetInformationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_typed_link_facet_information
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists schema major versions applied to a directory. If <code>SchemaArn</code> is provided, lists the minor version.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppliedSchemaArnsInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory you are listing.</p>
    #
    # @option params [String] :schema_arn
    #   <p>The response for <code>ListAppliedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    # @return [Types::ListAppliedSchemaArnsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applied_schema_arns(
    #     directory_arn: 'DirectoryArn', # required
    #     schema_arn: 'SchemaArn',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppliedSchemaArnsOutput
    #   resp.data.schema_arns #=> Array<String>
    #   resp.data.schema_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_applied_schema_arns(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppliedSchemaArnsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppliedSchemaArnsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppliedSchemaArns
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListAppliedSchemaArns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppliedSchemaArns,
        stubs: @stubs,
        params_class: Params::ListAppliedSchemaArnsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_applied_schema_arns
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists indices attached to the specified object.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAttachedIndicesInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory.</p>
    #
    # @option params [ObjectReference] :target_reference
    #   <p>A reference to the object that has indices attached.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    # @option params [String] :consistency_level
    #   <p>The consistency level to use for this operation.</p>
    #
    # @return [Types::ListAttachedIndicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attached_indices(
    #     directory_arn: 'DirectoryArn', # required
    #     target_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     consistency_level: 'SERIALIZABLE' # accepts ["SERIALIZABLE", "EVENTUAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAttachedIndicesOutput
    #   resp.data.index_attachments #=> Array<IndexAttachment>
    #   resp.data.index_attachments[0] #=> Types::IndexAttachment
    #   resp.data.index_attachments[0].indexed_attributes #=> Array<AttributeKeyAndValue>
    #   resp.data.index_attachments[0].indexed_attributes[0] #=> Types::AttributeKeyAndValue
    #   resp.data.index_attachments[0].indexed_attributes[0].key #=> Types::AttributeKey
    #   resp.data.index_attachments[0].indexed_attributes[0].key.schema_arn #=> String
    #   resp.data.index_attachments[0].indexed_attributes[0].key.facet_name #=> String
    #   resp.data.index_attachments[0].indexed_attributes[0].key.name #=> String
    #   resp.data.index_attachments[0].indexed_attributes[0].value #=> TypedAttributeValue
    #   resp.data.index_attachments[0].object_identifier #=> String
    #   resp.data.next_token #=> String
    #
    def list_attached_indices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAttachedIndicesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAttachedIndicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAttachedIndices
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListAttachedIndices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAttachedIndices,
        stubs: @stubs,
        params_class: Params::ListAttachedIndicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_attached_indices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves each Amazon Resource Name (ARN) of schemas in the development
    #       state.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDevelopmentSchemaArnsInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    # @return [Types::ListDevelopmentSchemaArnsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_development_schema_arns(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDevelopmentSchemaArnsOutput
    #   resp.data.schema_arns #=> Array<String>
    #   resp.data.schema_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_development_schema_arns(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDevelopmentSchemaArnsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDevelopmentSchemaArnsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDevelopmentSchemaArns
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListDevelopmentSchemaArns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDevelopmentSchemaArns,
        stubs: @stubs,
        params_class: Params::ListDevelopmentSchemaArnsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_development_schema_arns
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists directories created within an account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDirectoriesInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    # @option params [String] :state
    #   <p>The state of the directories in the list. Can be either Enabled, Disabled, or
    #         Deleted.</p>
    #
    # @return [Types::ListDirectoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_directories(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     state: 'ENABLED' # accepts ["ENABLED", "DISABLED", "DELETED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDirectoriesOutput
    #   resp.data.directories #=> Array<Directory>
    #   resp.data.directories[0] #=> Types::Directory
    #   resp.data.directories[0].name #=> String
    #   resp.data.directories[0].directory_arn #=> String
    #   resp.data.directories[0].state #=> String, one of ["ENABLED", "DISABLED", "DELETED"]
    #   resp.data.directories[0].creation_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_directories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDirectoriesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDirectoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDirectories
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException]),
        data_parser: Parsers::ListDirectories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDirectories,
        stubs: @stubs,
        params_class: Params::ListDirectoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_directories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves attributes attached to the facet.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFacetAttributesInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The ARN of the schema where the facet resides.</p>
    #
    # @option params [String] :name
    #   <p>The name of the facet whose attributes will be retrieved.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    # @return [Types::ListFacetAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_facet_attributes(
    #     schema_arn: 'SchemaArn', # required
    #     name: 'Name', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFacetAttributesOutput
    #   resp.data.attributes #=> Array<FacetAttribute>
    #   resp.data.attributes[0] #=> Types::FacetAttribute
    #   resp.data.attributes[0].name #=> String
    #   resp.data.attributes[0].attribute_definition #=> Types::FacetAttributeDefinition
    #   resp.data.attributes[0].attribute_definition.type #=> String, one of ["STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME", "VARIANT"]
    #   resp.data.attributes[0].attribute_definition.default_value #=> TypedAttributeValue
    #   resp.data.attributes[0].attribute_definition.is_immutable #=> Boolean
    #   resp.data.attributes[0].attribute_definition.rules #=> Hash<String, Rule>
    #   resp.data.attributes[0].attribute_definition.rules['key'] #=> Types::Rule
    #   resp.data.attributes[0].attribute_definition.rules['key'].type #=> String, one of ["BINARY_LENGTH", "NUMBER_COMPARISON", "STRING_FROM_SET", "STRING_LENGTH"]
    #   resp.data.attributes[0].attribute_definition.rules['key'].parameters #=> Hash<String, String>
    #   resp.data.attributes[0].attribute_definition.rules['key'].parameters['key'] #=> String
    #   resp.data.attributes[0].attribute_reference #=> Types::FacetAttributeReference
    #   resp.data.attributes[0].attribute_reference.target_facet_name #=> String
    #   resp.data.attributes[0].attribute_reference.target_attribute_name #=> String
    #   resp.data.attributes[0].required_behavior #=> String, one of ["REQUIRED_ALWAYS", "NOT_REQUIRED"]
    #   resp.data.next_token #=> String
    #
    def list_facet_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFacetAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFacetAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFacetAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetNotFoundException, Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListFacetAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFacetAttributes,
        stubs: @stubs,
        params_class: Params::ListFacetAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_facet_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the names of facets that exist in a schema.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFacetNamesInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) to retrieve facet names from.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    # @return [Types::ListFacetNamesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_facet_names(
    #     schema_arn: 'SchemaArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFacetNamesOutput
    #   resp.data.facet_names #=> Array<String>
    #   resp.data.facet_names[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_facet_names(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFacetNamesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFacetNamesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFacetNames
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListFacetNames
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFacetNames,
        stubs: @stubs,
        params_class: Params::ListFacetNamesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_facet_names
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a>
    #       information for an object. It also supports filtering by typed link facet and identity
    #       attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIncomingTypedLinksInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to list the typed
    #         links.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>Reference that identifies the object whose attributes will be listed.</p>
    #
    # @option params [Array<TypedLinkAttributeRange>] :filter_attribute_ranges
    #   <p>Provides range filters for multiple attributes. When providing ranges to typed link
    #         selection, any inexact ranges must be specified at the end. Any attributes that do not have a
    #         range specified are presumed to match the entire range.</p>
    #
    # @option params [TypedLinkSchemaAndFacetName] :filter_typed_link
    #   <p>Filters are interpreted in the order of the attributes on the typed link facet, not the
    #         order in which they are supplied to any API calls.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    # @option params [String] :consistency_level
    #   <p>The consistency level to execute the request at.</p>
    #
    # @return [Types::ListIncomingTypedLinksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_incoming_typed_links(
    #     directory_arn: 'DirectoryArn', # required
    #     object_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     filter_attribute_ranges: [
    #       {
    #         attribute_name: 'AttributeName',
    #         range: {
    #           start_mode: 'FIRST', # required - accepts ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"]
    #           start_value: {
    #             # One of:
    #             string_value: 'StringValue',
    #             binary_value: 'BinaryValue',
    #             boolean_value: false,
    #             number_value: 'NumberValue',
    #             datetime_value: Time.now
    #           },
    #           end_mode: 'FIRST', # required - accepts ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"]
    #         } # required
    #       }
    #     ],
    #     filter_typed_link: {
    #       schema_arn: 'SchemaArn', # required
    #       typed_link_name: 'TypedLinkName' # required
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     consistency_level: 'SERIALIZABLE' # accepts ["SERIALIZABLE", "EVENTUAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIncomingTypedLinksOutput
    #   resp.data.link_specifiers #=> Array<TypedLinkSpecifier>
    #   resp.data.link_specifiers[0] #=> Types::TypedLinkSpecifier
    #   resp.data.link_specifiers[0].typed_link_facet #=> Types::TypedLinkSchemaAndFacetName
    #   resp.data.link_specifiers[0].typed_link_facet.schema_arn #=> String
    #   resp.data.link_specifiers[0].typed_link_facet.typed_link_name #=> String
    #   resp.data.link_specifiers[0].source_object_reference #=> Types::ObjectReference
    #   resp.data.link_specifiers[0].source_object_reference.selector #=> String
    #   resp.data.link_specifiers[0].target_object_reference #=> Types::ObjectReference
    #   resp.data.link_specifiers[0].identity_attribute_values #=> Array<AttributeNameAndValue>
    #   resp.data.link_specifiers[0].identity_attribute_values[0] #=> Types::AttributeNameAndValue
    #   resp.data.link_specifiers[0].identity_attribute_values[0].attribute_name #=> String
    #   resp.data.link_specifiers[0].identity_attribute_values[0].value #=> TypedAttributeValue
    #   resp.data.next_token #=> String
    #
    def list_incoming_typed_links(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIncomingTypedLinksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIncomingTypedLinksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIncomingTypedLinks
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListIncomingTypedLinks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIncomingTypedLinks,
        stubs: @stubs,
        params_class: Params::ListIncomingTypedLinksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_incoming_typed_links
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists objects attached to the specified index.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIndexInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory that the index exists in.</p>
    #
    # @option params [Array<ObjectAttributeRange>] :ranges_on_indexed_values
    #   <p>Specifies the ranges of indexed values that you want to query.</p>
    #
    # @option params [ObjectReference] :index_reference
    #   <p>The reference to the index to list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects in a single page to retrieve from the index during a request. For more information, see <a href="http://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html">Amazon Cloud Directory Limits</a>.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [String] :consistency_level
    #   <p>The consistency level to execute the request at.</p>
    #
    # @return [Types::ListIndexOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_index(
    #     directory_arn: 'DirectoryArn', # required
    #     ranges_on_indexed_values: [
    #       {
    #         attribute_key: {
    #           schema_arn: 'SchemaArn', # required
    #           facet_name: 'FacetName', # required
    #           name: 'Name' # required
    #         },
    #         range: {
    #           start_mode: 'FIRST', # required - accepts ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"]
    #           start_value: {
    #             # One of:
    #             string_value: 'StringValue',
    #             binary_value: 'BinaryValue',
    #             boolean_value: false,
    #             number_value: 'NumberValue',
    #             datetime_value: Time.now
    #           },
    #           end_mode: 'FIRST', # required - accepts ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"]
    #         }
    #       }
    #     ],
    #     index_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     consistency_level: 'SERIALIZABLE' # accepts ["SERIALIZABLE", "EVENTUAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIndexOutput
    #   resp.data.index_attachments #=> Array<IndexAttachment>
    #   resp.data.index_attachments[0] #=> Types::IndexAttachment
    #   resp.data.index_attachments[0].indexed_attributes #=> Array<AttributeKeyAndValue>
    #   resp.data.index_attachments[0].indexed_attributes[0] #=> Types::AttributeKeyAndValue
    #   resp.data.index_attachments[0].indexed_attributes[0].key #=> Types::AttributeKey
    #   resp.data.index_attachments[0].indexed_attributes[0].key.schema_arn #=> String
    #   resp.data.index_attachments[0].indexed_attributes[0].key.facet_name #=> String
    #   resp.data.index_attachments[0].indexed_attributes[0].key.name #=> String
    #   resp.data.index_attachments[0].indexed_attributes[0].value #=> TypedAttributeValue
    #   resp.data.index_attachments[0].object_identifier #=> String
    #   resp.data.next_token #=> String
    #
    def list_index(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIndexInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIndexInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIndex
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::NotIndexException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListIndex
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIndex,
        stubs: @stubs,
        params_class: Params::ListIndexOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_index
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the major version families of each managed schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.</p>
    #
    # @param [Hash] params
    #   See {Types::ListManagedSchemaArnsInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The response for ListManagedSchemaArns. When this parameter is used, all minor version ARNs for a major version are listed.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    # @return [Types::ListManagedSchemaArnsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_schema_arns(
    #     schema_arn: 'SchemaArn',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListManagedSchemaArnsOutput
    #   resp.data.schema_arns #=> Array<String>
    #   resp.data.schema_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_managed_schema_arns(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListManagedSchemaArnsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListManagedSchemaArnsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListManagedSchemaArns
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListManagedSchemaArns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListManagedSchemaArns,
        stubs: @stubs,
        params_class: Params::ListManagedSchemaArnsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_managed_schema_arns
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all attributes that are associated with an object.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListObjectAttributesInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>The reference that identifies the object whose attributes will be listed.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    # @option params [String] :consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #
    # @option params [SchemaFacet] :facet_filter
    #   <p>Used to filter the list of object attributes that are associated with a certain
    #         facet.</p>
    #
    # @return [Types::ListObjectAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_object_attributes(
    #     directory_arn: 'DirectoryArn', # required
    #     object_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     consistency_level: 'SERIALIZABLE', # accepts ["SERIALIZABLE", "EVENTUAL"]
    #     facet_filter: {
    #       schema_arn: 'SchemaArn',
    #       facet_name: 'FacetName'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListObjectAttributesOutput
    #   resp.data.attributes #=> Array<AttributeKeyAndValue>
    #   resp.data.attributes[0] #=> Types::AttributeKeyAndValue
    #   resp.data.attributes[0].key #=> Types::AttributeKey
    #   resp.data.attributes[0].key.schema_arn #=> String
    #   resp.data.attributes[0].key.facet_name #=> String
    #   resp.data.attributes[0].key.name #=> String
    #   resp.data.attributes[0].value #=> TypedAttributeValue
    #   resp.data.next_token #=> String
    #
    def list_object_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListObjectAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListObjectAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListObjectAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListObjectAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListObjectAttributes,
        stubs: @stubs,
        params_class: Params::ListObjectAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_object_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated list of child objects that are associated with a given
    #       object.</p>
    #
    # @param [Hash] params
    #   See {Types::ListObjectChildrenInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>The reference that identifies the object for which child objects are being
    #         listed.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    # @option params [String] :consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #
    # @return [Types::ListObjectChildrenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_object_children(
    #     directory_arn: 'DirectoryArn', # required
    #     object_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     consistency_level: 'SERIALIZABLE' # accepts ["SERIALIZABLE", "EVENTUAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListObjectChildrenOutput
    #   resp.data.children #=> Hash<String, String>
    #   resp.data.children['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_object_children(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListObjectChildrenInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListObjectChildrenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListObjectChildren
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::NotNodeException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListObjectChildren
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListObjectChildren,
        stubs: @stubs,
        params_class: Params::ListObjectChildrenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_object_children
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves all available parent paths for any object type such as node, leaf node,
    #       policy node, and index node objects. For more information about objects, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html">Directory Structure</a>.</p>
    #          <p>Use this API to evaluate all parents for an object. The call returns all objects from
    #       the root of the directory up to the requested object. The API returns the number of paths
    #       based on user-defined <code>MaxResults</code>, in case there are multiple paths to the parent.
    #       The order of the paths and nodes returned is consistent among multiple API calls unless the
    #       objects are deleted or moved. Paths not leading to the directory root are ignored from the
    #       target object.</p>
    #
    # @param [Hash] params
    #   See {Types::ListObjectParentPathsInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory to which the parent path applies.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>The reference that identifies the object whose parent paths are listed.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    # @return [Types::ListObjectParentPathsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_object_parent_paths(
    #     directory_arn: 'DirectoryArn', # required
    #     object_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListObjectParentPathsOutput
    #   resp.data.path_to_object_identifiers_list #=> Array<PathToObjectIdentifiers>
    #   resp.data.path_to_object_identifiers_list[0] #=> Types::PathToObjectIdentifiers
    #   resp.data.path_to_object_identifiers_list[0].path #=> String
    #   resp.data.path_to_object_identifiers_list[0].object_identifiers #=> Array<String>
    #   resp.data.path_to_object_identifiers_list[0].object_identifiers[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_object_parent_paths(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListObjectParentPathsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListObjectParentPathsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListObjectParentPaths
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListObjectParentPaths
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListObjectParentPaths,
        stubs: @stubs,
        params_class: Params::ListObjectParentPathsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_object_parent_paths
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists parent objects that are associated with a given object in pagination
    #       fashion.</p>
    #
    # @param [Hash] params
    #   See {Types::ListObjectParentsInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>The reference that identifies the object for which parent objects are being
    #         listed.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    # @option params [String] :consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #
    # @option params [Boolean] :include_all_links_to_each_parent
    #   <p>When set to True, returns all <a>ListObjectParentsResponse$ParentLinks</a>. There could be multiple links between a parent-child pair.</p>
    #
    # @return [Types::ListObjectParentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_object_parents(
    #     directory_arn: 'DirectoryArn', # required
    #     object_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     consistency_level: 'SERIALIZABLE', # accepts ["SERIALIZABLE", "EVENTUAL"]
    #     include_all_links_to_each_parent: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListObjectParentsOutput
    #   resp.data.parents #=> Hash<String, String>
    #   resp.data.parents['key'] #=> String
    #   resp.data.next_token #=> String
    #   resp.data.parent_links #=> Array<ObjectIdentifierAndLinkNameTuple>
    #   resp.data.parent_links[0] #=> Types::ObjectIdentifierAndLinkNameTuple
    #   resp.data.parent_links[0].object_identifier #=> String
    #   resp.data.parent_links[0].link_name #=> String
    #
    def list_object_parents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListObjectParentsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListObjectParentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListObjectParents
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CannotListParentOfRootException, Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListObjectParents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListObjectParents,
        stubs: @stubs,
        params_class: Params::ListObjectParentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_object_parents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns policies attached to an object in pagination fashion.</p>
    #
    # @param [Hash] params
    #   See {Types::ListObjectPoliciesInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where objects reside. For more information, see <a>arns</a>.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>Reference that identifies the object for which policies will be listed.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    # @option params [String] :consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #
    # @return [Types::ListObjectPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_object_policies(
    #     directory_arn: 'DirectoryArn', # required
    #     object_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     consistency_level: 'SERIALIZABLE' # accepts ["SERIALIZABLE", "EVENTUAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListObjectPoliciesOutput
    #   resp.data.attached_policy_ids #=> Array<String>
    #   resp.data.attached_policy_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_object_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListObjectPoliciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListObjectPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListObjectPolicies
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListObjectPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListObjectPolicies,
        stubs: @stubs,
        params_class: Params::ListObjectPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_object_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a>
    #       information for an object. It also supports filtering by typed link facet and identity
    #       attributes. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOutgoingTypedLinksInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) of the directory where you want to list the typed
    #         links.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>A reference that identifies the object whose attributes will be listed.</p>
    #
    # @option params [Array<TypedLinkAttributeRange>] :filter_attribute_ranges
    #   <p>Provides range filters for multiple attributes. When providing ranges to typed link
    #         selection, any inexact ranges must be specified at the end. Any attributes that do not have a
    #         range specified are presumed to match the entire range.</p>
    #
    # @option params [TypedLinkSchemaAndFacetName] :filter_typed_link
    #   <p>Filters are interpreted in the order of the attributes defined on the typed link facet,
    #         not the order they are supplied to any API calls.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    # @option params [String] :consistency_level
    #   <p>The consistency level to execute the request at.</p>
    #
    # @return [Types::ListOutgoingTypedLinksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_outgoing_typed_links(
    #     directory_arn: 'DirectoryArn', # required
    #     object_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     filter_attribute_ranges: [
    #       {
    #         attribute_name: 'AttributeName',
    #         range: {
    #           start_mode: 'FIRST', # required - accepts ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"]
    #           start_value: {
    #             # One of:
    #             string_value: 'StringValue',
    #             binary_value: 'BinaryValue',
    #             boolean_value: false,
    #             number_value: 'NumberValue',
    #             datetime_value: Time.now
    #           },
    #           end_mode: 'FIRST', # required - accepts ["FIRST", "LAST", "LAST_BEFORE_MISSING_VALUES", "INCLUSIVE", "EXCLUSIVE"]
    #         } # required
    #       }
    #     ],
    #     filter_typed_link: {
    #       schema_arn: 'SchemaArn', # required
    #       typed_link_name: 'TypedLinkName' # required
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     consistency_level: 'SERIALIZABLE' # accepts ["SERIALIZABLE", "EVENTUAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOutgoingTypedLinksOutput
    #   resp.data.typed_link_specifiers #=> Array<TypedLinkSpecifier>
    #   resp.data.typed_link_specifiers[0] #=> Types::TypedLinkSpecifier
    #   resp.data.typed_link_specifiers[0].typed_link_facet #=> Types::TypedLinkSchemaAndFacetName
    #   resp.data.typed_link_specifiers[0].typed_link_facet.schema_arn #=> String
    #   resp.data.typed_link_specifiers[0].typed_link_facet.typed_link_name #=> String
    #   resp.data.typed_link_specifiers[0].source_object_reference #=> Types::ObjectReference
    #   resp.data.typed_link_specifiers[0].source_object_reference.selector #=> String
    #   resp.data.typed_link_specifiers[0].target_object_reference #=> Types::ObjectReference
    #   resp.data.typed_link_specifiers[0].identity_attribute_values #=> Array<AttributeNameAndValue>
    #   resp.data.typed_link_specifiers[0].identity_attribute_values[0] #=> Types::AttributeNameAndValue
    #   resp.data.typed_link_specifiers[0].identity_attribute_values[0].attribute_name #=> String
    #   resp.data.typed_link_specifiers[0].identity_attribute_values[0].value #=> TypedAttributeValue
    #   resp.data.next_token #=> String
    #
    def list_outgoing_typed_links(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOutgoingTypedLinksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOutgoingTypedLinksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOutgoingTypedLinks
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListOutgoingTypedLinks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOutgoingTypedLinks,
        stubs: @stubs,
        params_class: Params::ListOutgoingTypedLinksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_outgoing_typed_links
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPolicyAttachmentsInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where objects reside. For more information, see <a>arns</a>.</p>
    #
    # @option params [ObjectReference] :policy_reference
    #   <p>The reference that identifies the policy object.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    # @option params [String] :consistency_level
    #   <p>Represents the manner and timing in which the successful write or update of an object
    #         is reflected in a subsequent read operation of that same object.</p>
    #
    # @return [Types::ListPolicyAttachmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_attachments(
    #     directory_arn: 'DirectoryArn', # required
    #     policy_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     consistency_level: 'SERIALIZABLE' # accepts ["SERIALIZABLE", "EVENTUAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPolicyAttachmentsOutput
    #   resp.data.object_identifiers #=> Array<String>
    #   resp.data.object_identifiers[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_policy_attachments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPolicyAttachmentsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPolicyAttachmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPolicyAttachments
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotPolicyException, Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListPolicyAttachments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPolicyAttachments,
        stubs: @stubs,
        params_class: Params::ListPolicyAttachmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_policy_attachments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the major version families of each published schema. If a major version ARN is provided as <code>SchemaArn</code>, the minor version revisions in that family are listed instead.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPublishedSchemaArnsInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The response for <code>ListPublishedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    # @return [Types::ListPublishedSchemaArnsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_published_schema_arns(
    #     schema_arn: 'SchemaArn',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPublishedSchemaArnsOutput
    #   resp.data.schema_arns #=> Array<String>
    #   resp.data.schema_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_published_schema_arns(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPublishedSchemaArnsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPublishedSchemaArnsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPublishedSchemaArns
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListPublishedSchemaArns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPublishedSchemaArns,
        stubs: @stubs,
        params_class: Params::ListPublishedSchemaArnsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_published_schema_arns
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns tags for a resource. Tagging is currently supported only for directories with a
    #       limit of 50 tags per directory. All 50 tags are returned for a given directory with this API
    #       call.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for
    #         directories.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token. This is for future use. Currently pagination is not supported for
    #         tagging.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The <code>MaxResults</code> parameter sets the maximum number of results returned in a
    #         single page. This is for future use and is not supported currently.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidTaggingRequestException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
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

    # <p>Returns a paginated list of all attribute definitions for a particular <a>TypedLinkFacet</a>. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTypedLinkFacetAttributesInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #
    # @option params [String] :name
    #   <p>The unique name of the typed link facet.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    # @return [Types::ListTypedLinkFacetAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_typed_link_facet_attributes(
    #     schema_arn: 'SchemaArn', # required
    #     name: 'Name', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTypedLinkFacetAttributesOutput
    #   resp.data.attributes #=> Array<TypedLinkAttributeDefinition>
    #   resp.data.attributes[0] #=> Types::TypedLinkAttributeDefinition
    #   resp.data.attributes[0].name #=> String
    #   resp.data.attributes[0].type #=> String, one of ["STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME", "VARIANT"]
    #   resp.data.attributes[0].default_value #=> TypedAttributeValue
    #   resp.data.attributes[0].is_immutable #=> Boolean
    #   resp.data.attributes[0].rules #=> Hash<String, Rule>
    #   resp.data.attributes[0].rules['key'] #=> Types::Rule
    #   resp.data.attributes[0].rules['key'].type #=> String, one of ["BINARY_LENGTH", "NUMBER_COMPARISON", "STRING_FROM_SET", "STRING_LENGTH"]
    #   resp.data.attributes[0].rules['key'].parameters #=> Hash<String, String>
    #   resp.data.attributes[0].rules['key'].parameters['key'] #=> String
    #   resp.data.attributes[0].required_behavior #=> String, one of ["REQUIRED_ALWAYS", "NOT_REQUIRED"]
    #   resp.data.next_token #=> String
    #
    def list_typed_link_facet_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTypedLinkFacetAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTypedLinkFacetAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTypedLinkFacetAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetNotFoundException, Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListTypedLinkFacetAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTypedLinkFacetAttributes,
        stubs: @stubs,
        params_class: Params::ListTypedLinkFacetAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_typed_link_facet_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated list of <code>TypedLink</code> facet names for a particular schema.
    #       For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTypedLinkFacetNamesInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve.</p>
    #
    # @return [Types::ListTypedLinkFacetNamesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_typed_link_facet_names(
    #     schema_arn: 'SchemaArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTypedLinkFacetNamesOutput
    #   resp.data.facet_names #=> Array<String>
    #   resp.data.facet_names[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_typed_link_facet_names(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTypedLinkFacetNamesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTypedLinkFacetNamesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTypedLinkFacetNames
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListTypedLinkFacetNames
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTypedLinkFacetNames,
        stubs: @stubs,
        params_class: Params::ListTypedLinkFacetNamesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_typed_link_facet_names
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all policies from the root of the <a>Directory</a> to the object
    #       specified. If there are no policies present, an empty list is returned. If policies are
    #       present, and if some objects don't have the policies attached, it returns the <code>ObjectIdentifier</code>
    #       for such objects. If policies are present, it returns <code>ObjectIdentifier</code>, <code>policyId</code>, and
    #       <code>policyType</code>. Paths that don't lead to the root from the target object are ignored. For more
    #       information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies">Policies</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::LookupPolicyInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
    #         For more information, see <a>arns</a>.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>Reference that identifies the object whose policies will be looked up.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be retrieved in a single call. This is an approximate
    #         number.</p>
    #
    # @return [Types::LookupPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.lookup_policy(
    #     directory_arn: 'DirectoryArn', # required
    #     object_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::LookupPolicyOutput
    #   resp.data.policy_to_path_list #=> Array<PolicyToPath>
    #   resp.data.policy_to_path_list[0] #=> Types::PolicyToPath
    #   resp.data.policy_to_path_list[0].path #=> String
    #   resp.data.policy_to_path_list[0].policies #=> Array<PolicyAttachment>
    #   resp.data.policy_to_path_list[0].policies[0] #=> Types::PolicyAttachment
    #   resp.data.policy_to_path_list[0].policies[0].policy_id #=> String
    #   resp.data.policy_to_path_list[0].policies[0].object_identifier #=> String
    #   resp.data.policy_to_path_list[0].policies[0].policy_type #=> String
    #   resp.data.next_token #=> String
    #
    def lookup_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::LookupPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::LookupPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::LookupPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::LookupPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::LookupPolicy,
        stubs: @stubs,
        params_class: Params::LookupPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :lookup_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Publishes a development schema with a major version and a recommended minor version.</p>
    #
    # @param [Hash] params
    #   See {Types::PublishSchemaInput}.
    #
    # @option params [String] :development_schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the development schema. For
    #         more information, see <a>arns</a>.</p>
    #
    # @option params [String] :version
    #   <p>The major version under which the schema will be published. Schemas have both a major and minor version associated with them.</p>
    #
    # @option params [String] :minor_version
    #   <p>The minor version under which the schema will be published. This parameter is recommended. Schemas have both a major and minor version associated with them.</p>
    #
    # @option params [String] :name
    #   <p>The new name under which the schema will be published. If this is not provided, the
    #         development schema is considered.</p>
    #
    # @return [Types::PublishSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_schema(
    #     development_schema_arn: 'DevelopmentSchemaArn', # required
    #     version: 'Version', # required
    #     minor_version: 'MinorVersion',
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PublishSchemaOutput
    #   resp.data.published_schema_arn #=> String
    #
    def publish_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PublishSchemaInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PublishSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PublishSchema
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::SchemaAlreadyPublishedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::PublishSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PublishSchema,
        stubs: @stubs,
        params_class: Params::PublishSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :publish_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows a schema to be updated using JSON upload. Only available for development schemas. See <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json">JSON Schema Format</a> for more information.</p>
    #
    # @param [Hash] params
    #   See {Types::PutSchemaFromJsonInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The ARN of the schema to update.</p>
    #
    # @option params [String] :document
    #   <p>The replacement JSON schema.</p>
    #
    # @return [Types::PutSchemaFromJsonOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_schema_from_json(
    #     schema_arn: 'SchemaArn', # required
    #     document: 'Document' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutSchemaFromJsonOutput
    #   resp.data.arn #=> String
    #
    def put_schema_from_json(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutSchemaFromJsonInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutSchemaFromJsonInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutSchemaFromJson
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidSchemaDocException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::InvalidRuleException]),
        data_parser: Parsers::PutSchemaFromJson
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutSchemaFromJson,
        stubs: @stubs,
        params_class: Params::PutSchemaFromJsonOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_schema_from_json
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified facet from the specified object.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveFacetFromObjectInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The ARN of the directory in which the object resides.</p>
    #
    # @option params [SchemaFacet] :schema_facet
    #   <p>The facet to remove. See <a>SchemaFacet</a> for details.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>A reference to the object to remove the facet from.</p>
    #
    # @return [Types::RemoveFacetFromObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_facet_from_object(
    #     directory_arn: 'DirectoryArn', # required
    #     schema_facet: {
    #       schema_arn: 'SchemaArn',
    #       facet_name: 'FacetName'
    #     }, # required
    #     object_reference: {
    #       selector: 'Selector'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveFacetFromObjectOutput
    #
    def remove_facet_from_object(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveFacetFromObjectInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveFacetFromObjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveFacetFromObject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::RemoveFacetFromObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveFacetFromObject,
        stubs: @stubs,
        params_class: Params::RemoveFacetFromObjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_facet_from_object
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>An API operation for adding tags to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for
    #         directories.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tag key-value pairs.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidTaggingRequestException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
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

    # <p>An API operation for removing tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for
    #         directories.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Keys of the tag that need to be removed from the resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidTaggingRequestException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
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

    # <p>Does the following:</p>
    #          <ol>
    #             <li>
    #                <p>Adds new <code>Attributes</code>, <code>Rules</code>, or <code>ObjectTypes</code>.</p>
    #             </li>
    #             <li>
    #                <p>Updates existing <code>Attributes</code>, <code>Rules</code>, or <code>ObjectTypes</code>.</p>
    #             </li>
    #             <li>
    #                <p>Deletes existing <code>Attributes</code>, <code>Rules</code>, or <code>ObjectTypes</code>.</p>
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::UpdateFacetInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.
    #         For more information, see <a>arns</a>.</p>
    #
    # @option params [String] :name
    #   <p>The name of the facet.</p>
    #
    # @option params [Array<FacetAttributeUpdate>] :attribute_updates
    #   <p>List of attributes that need to be updated in a given schema <a>Facet</a>.
    #         Each attribute is followed by <code>AttributeAction</code>, which specifies the type of update
    #         operation to perform. </p>
    #
    # @option params [String] :object_type
    #   <p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>
    #
    # @return [Types::UpdateFacetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_facet(
    #     schema_arn: 'SchemaArn', # required
    #     name: 'Name', # required
    #     attribute_updates: [
    #       {
    #         attribute: {
    #           name: 'Name', # required
    #           attribute_definition: {
    #             type: 'STRING', # required - accepts ["STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME", "VARIANT"]
    #             default_value: {
    #               # One of:
    #               string_value: 'StringValue',
    #               binary_value: 'BinaryValue',
    #               boolean_value: false,
    #               number_value: 'NumberValue',
    #               datetime_value: Time.now
    #             },
    #             is_immutable: false,
    #             rules: {
    #               'key' => {
    #                 type: 'BINARY_LENGTH', # accepts ["BINARY_LENGTH", "NUMBER_COMPARISON", "STRING_FROM_SET", "STRING_LENGTH"]
    #                 parameters: {
    #                   'key' => 'value'
    #                 }
    #               }
    #             }
    #           },
    #           attribute_reference: {
    #             target_facet_name: 'TargetFacetName', # required
    #             target_attribute_name: 'TargetAttributeName' # required
    #           },
    #           required_behavior: 'REQUIRED_ALWAYS' # accepts ["REQUIRED_ALWAYS", "NOT_REQUIRED"]
    #         },
    #         action: 'CREATE_OR_UPDATE' # accepts ["CREATE_OR_UPDATE", "DELETE"]
    #       }
    #     ],
    #     object_type: 'NODE' # accepts ["NODE", "LEAF_NODE", "POLICY", "INDEX"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFacetOutput
    #
    def update_facet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFacetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFacetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFacet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetNotFoundException, Errors::FacetValidationException, Errors::InvalidArnException, Errors::InvalidFacetUpdateException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException, Errors::InvalidRuleException]),
        data_parser: Parsers::UpdateFacet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFacet,
        stubs: @stubs,
        params_class: Params::UpdateFacetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_facet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a given typed link’s attributes. Attributes to be updated must not contribute to the typed link’s identity, as defined by its <code>IdentityAttributeOrder</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLinkAttributesInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the Directory where the updated typed link resides. For more information, see <a>arns</a> or <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    # @option params [TypedLinkSpecifier] :typed_link_specifier
    #   <p>Allows a typed link specifier to be accepted as input.</p>
    #
    # @option params [Array<LinkAttributeUpdate>] :attribute_updates
    #   <p>The attributes update structure.</p>
    #
    # @return [Types::UpdateLinkAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_link_attributes(
    #     directory_arn: 'DirectoryArn', # required
    #     typed_link_specifier: {
    #       typed_link_facet: {
    #         schema_arn: 'SchemaArn', # required
    #         typed_link_name: 'TypedLinkName' # required
    #       }, # required
    #       source_object_reference: {
    #         selector: 'Selector'
    #       }, # required
    #       identity_attribute_values: [
    #         {
    #           attribute_name: 'AttributeName', # required
    #           value: {
    #             # One of:
    #             string_value: 'StringValue',
    #             binary_value: 'BinaryValue',
    #             boolean_value: false,
    #             number_value: 'NumberValue',
    #             datetime_value: Time.now
    #           } # required
    #         }
    #       ] # required
    #     }, # required
    #     attribute_updates: [
    #       {
    #         attribute_key: {
    #           schema_arn: 'SchemaArn', # required
    #           facet_name: 'FacetName', # required
    #           name: 'Name' # required
    #         },
    #         attribute_action: {
    #           attribute_action_type: 'CREATE_OR_UPDATE', # accepts ["CREATE_OR_UPDATE", "DELETE"]
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLinkAttributesOutput
    #
    def update_link_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLinkAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLinkAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLinkAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateLinkAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLinkAttributes,
        stubs: @stubs,
        params_class: Params::UpdateLinkAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_link_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a given object's attributes.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateObjectAttributesInput}.
    #
    # @option params [String] :directory_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
    #         where the object resides. For more information, see <a>arns</a>.</p>
    #
    # @option params [ObjectReference] :object_reference
    #   <p>The reference that identifies the object.</p>
    #
    # @option params [Array<ObjectAttributeUpdate>] :attribute_updates
    #   <p>The attributes update structure.</p>
    #
    # @return [Types::UpdateObjectAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_object_attributes(
    #     directory_arn: 'DirectoryArn', # required
    #     object_reference: {
    #       selector: 'Selector'
    #     }, # required
    #     attribute_updates: [
    #       {
    #         object_attribute_key: {
    #           schema_arn: 'SchemaArn', # required
    #           facet_name: 'FacetName', # required
    #           name: 'Name' # required
    #         },
    #         object_attribute_action: {
    #           object_attribute_action_type: 'CREATE_OR_UPDATE', # accepts ["CREATE_OR_UPDATE", "DELETE"]
    #           object_attribute_update_value: {
    #             # One of:
    #             string_value: 'StringValue',
    #             binary_value: 'BinaryValue',
    #             boolean_value: false,
    #             number_value: 'NumberValue',
    #             datetime_value: Time.now
    #           }
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateObjectAttributesOutput
    #   resp.data.object_identifier #=> String
    #
    def update_object_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateObjectAttributesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateObjectAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateObjectAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetValidationException, Errors::LinkNameAlreadyInUseException, Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::DirectoryNotEnabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateObjectAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateObjectAttributes,
        stubs: @stubs,
        params_class: Params::UpdateObjectAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_object_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the schema name with a new name. Only development schema names can be
    #       updated.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSchemaInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) of the development schema. For more information, see
    #           <a>arns</a>.</p>
    #
    # @option params [String] :name
    #   <p>The name of the schema.</p>
    #
    # @return [Types::UpdateSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_schema(
    #     schema_arn: 'SchemaArn', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSchemaOutput
    #   resp.data.schema_arn #=> String
    #
    def update_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSchemaInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSchema
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSchema,
        stubs: @stubs,
        params_class: Params::UpdateSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a <a>TypedLinkFacet</a>. For more information, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTypedLinkFacetInput}.
    #
    # @option params [String] :schema_arn
    #   <p>The Amazon Resource Name (ARN) that is associated with the schema. For more
    #         information, see <a>arns</a>.</p>
    #
    # @option params [String] :name
    #   <p>The unique name of the typed link facet.</p>
    #
    # @option params [Array<TypedLinkFacetAttributeUpdate>] :attribute_updates
    #   <p>Attributes update structure.</p>
    #
    # @option params [Array<String>] :identity_attribute_order
    #   <p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed
    #         links considers the order that the attributes are defined on the typed link facet.  When
    #         providing ranges to a typed link selection, any inexact ranges must be specified at the end.
    #         Any attributes that do not have a range specified are presumed to match the entire range.
    #         Filters are interpreted in the order of the attributes on the typed link facet, not the order
    #         in which they are supplied to any API calls. For more information about identity attributes, see <a href="https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink">Typed Links</a>.</p>
    #
    # @return [Types::UpdateTypedLinkFacetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_typed_link_facet(
    #     schema_arn: 'SchemaArn', # required
    #     name: 'Name', # required
    #     attribute_updates: [
    #       {
    #         attribute: {
    #           name: 'Name', # required
    #           type: 'STRING', # required - accepts ["STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME", "VARIANT"]
    #           default_value: {
    #             # One of:
    #             string_value: 'StringValue',
    #             binary_value: 'BinaryValue',
    #             boolean_value: false,
    #             number_value: 'NumberValue',
    #             datetime_value: Time.now
    #           },
    #           is_immutable: false,
    #           rules: {
    #             'key' => {
    #               type: 'BINARY_LENGTH', # accepts ["BINARY_LENGTH", "NUMBER_COMPARISON", "STRING_FROM_SET", "STRING_LENGTH"]
    #               parameters: {
    #                 'key' => 'value'
    #               }
    #             }
    #           },
    #           required_behavior: 'REQUIRED_ALWAYS' # required - accepts ["REQUIRED_ALWAYS", "NOT_REQUIRED"]
    #         }, # required
    #         action: 'CREATE_OR_UPDATE' # required - accepts ["CREATE_OR_UPDATE", "DELETE"]
    #       }
    #     ], # required
    #     identity_attribute_order: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTypedLinkFacetOutput
    #
    def update_typed_link_facet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTypedLinkFacetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTypedLinkFacetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTypedLinkFacet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FacetNotFoundException, Errors::FacetValidationException, Errors::InvalidArnException, Errors::InvalidFacetUpdateException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InternalServiceException, Errors::ResourceNotFoundException, Errors::InvalidRuleException]),
        data_parser: Parsers::UpdateTypedLinkFacet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTypedLinkFacet,
        stubs: @stubs,
        params_class: Params::UpdateTypedLinkFacetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_typed_link_facet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Upgrades a single directory in-place using the <code>PublishedSchemaArn</code> with schema updates found in <code>MinorVersion</code>. Backwards-compatible minor version upgrades are instantaneously available for readers on all objects in the directory. Note: This is a synchronous API call and upgrades only one schema on a given directory per call. To upgrade multiple directories from one schema, you would need to call this API on each directory.</p>
    #
    # @param [Hash] params
    #   See {Types::UpgradeAppliedSchemaInput}.
    #
    # @option params [String] :published_schema_arn
    #   <p>The revision of the published schema to upgrade the directory to.</p>
    #
    # @option params [String] :directory_arn
    #   <p>The ARN for the directory to which the upgraded schema will be applied.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Used for testing whether the major version schemas are backward compatible or not. If schema compatibility fails, an exception would be thrown else the call would succeed but no changes will be saved. This parameter is optional.</p>
    #
    # @return [Types::UpgradeAppliedSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upgrade_applied_schema(
    #     published_schema_arn: 'PublishedSchemaArn', # required
    #     directory_arn: 'DirectoryArn', # required
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpgradeAppliedSchemaOutput
    #   resp.data.upgraded_schema_arn #=> String
    #   resp.data.directory_arn #=> String
    #
    def upgrade_applied_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpgradeAppliedSchemaInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpgradeAppliedSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpgradeAppliedSchema
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::SchemaAlreadyExistsException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InvalidAttachmentException, Errors::InternalServiceException, Errors::ResourceNotFoundException, Errors::IncompatibleSchemaException]),
        data_parser: Parsers::UpgradeAppliedSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpgradeAppliedSchema,
        stubs: @stubs,
        params_class: Params::UpgradeAppliedSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :upgrade_applied_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Upgrades a published schema under a new minor version revision using the current contents of <code>DevelopmentSchemaArn</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpgradePublishedSchemaInput}.
    #
    # @option params [String] :development_schema_arn
    #   <p>The ARN of the development schema with the changes used for the upgrade.</p>
    #
    # @option params [String] :published_schema_arn
    #   <p>The ARN of the published schema to be upgraded.</p>
    #
    # @option params [String] :minor_version
    #   <p>Identifies the minor version of the published schema that will be created. This parameter is NOT optional.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Used for testing whether the Development schema provided is backwards compatible, or not, with the publish schema provided by the user to be upgraded. If schema compatibility fails, an exception would be thrown else the call would succeed. This parameter is optional and defaults to false.</p>
    #
    # @return [Types::UpgradePublishedSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upgrade_published_schema(
    #     development_schema_arn: 'DevelopmentSchemaArn', # required
    #     published_schema_arn: 'PublishedSchemaArn', # required
    #     minor_version: 'MinorVersion', # required
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpgradePublishedSchemaOutput
    #   resp.data.upgraded_schema_arn #=> String
    #
    def upgrade_published_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpgradePublishedSchemaInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpgradePublishedSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpgradePublishedSchema
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::RetryableConflictException, Errors::AccessDeniedException, Errors::LimitExceededException, Errors::ValidationException, Errors::InvalidAttachmentException, Errors::InternalServiceException, Errors::ResourceNotFoundException, Errors::IncompatibleSchemaException]),
        data_parser: Parsers::UpgradePublishedSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpgradePublishedSchema,
        stubs: @stubs,
        params_class: Params::UpgradePublishedSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :upgrade_published_schema
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
