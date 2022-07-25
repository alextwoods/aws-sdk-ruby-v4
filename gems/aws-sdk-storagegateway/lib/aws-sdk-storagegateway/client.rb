# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::StorageGateway
  # An API client for StorageGateway_20130630
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Storage Gateway Service</fullname>
  #
  #          <p>Storage Gateway is the service that connects an on-premises software appliance
  #          with cloud-based storage to provide seamless and secure integration between an
  #          organization's on-premises IT environment and the Amazon Web Services storage
  #          infrastructure. The service enables you to securely upload data to the Amazon Web Services Cloud for cost effective backup and rapid disaster recovery.</p>
  #
  #          <p>Use the following links to get started using the <i>Storage Gateway
  #             Service API Reference</i>:</p>
  #
  #          <ul>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewayHTTPRequestsHeaders">Storage Gateway required request headers</a>: Describes the required
  #                headers that you must send with every POST request to Storage Gateway.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewaySigningRequests">Signing requests</a>: Storage Gateway requires that you authenticate
  #                every request you send; this topic describes how sign such a request.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#APIErrorResponses">Error responses</a>: Provides reference information about Storage Gateway errors.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_Operations.html">Operations in Storage Gateway</a>: Contains detailed descriptions of all Storage Gateway operations, their request parameters, response elements, possible errors, and
  #                examples of requests and responses.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/general/latest/gr/sg.html">Storage Gateway
  #                   endpoints and quotas</a>: Provides a list of each Amazon Web Services Region
  #                and the endpoints available for use with Storage Gateway.</p>
  #             </li>
  #          </ul>
  #
  #          <note>
  #             <p>Storage Gateway resource IDs are in uppercase. When you use these resource IDs
  #             with the Amazon EC2 API, EC2 expects resource IDs in lowercase. You must change
  #             your resource ID to lowercase to use it with the EC2 API. For example, in Storage
  #             Gateway the ID for a volume might be <code>vol-AA22BB012345DAF670</code>. When you use
  #             this ID with the EC2 API, you must change it to <code>vol-aa22bb012345daf670</code>.
  #             Otherwise, the EC2 API might not behave as expected.</p>
  #          </note>
  #
  #          <important>
  #             <p>IDs for Storage Gateway volumes and Amazon EBS snapshots created from gateway
  #             volumes are changing to a longer format. Starting in December 2016, all new volumes and
  #             snapshots will be created with a 17-character string. Starting in April 2016, you will
  #             be able to use these longer IDs so you can test your systems with the new format. For
  #             more information, see <a href="http://aws.amazon.com/ec2/faqs/#longer-ids">Longer EC2 and
  #                EBS resource IDs</a>.</p>
  #
  #             <p>For example, a volume Amazon Resource Name (ARN) with the longer volume ID format
  #             looks like the following:</p>
  #
  #             <p>
  #                <code>arn:aws:storagegateway:us-west-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABBCCDDEEFFG</code>.</p>
  #
  #             <p>A snapshot ID with the longer ID format looks like the following:
  #                <code>snap-78e226633445566ee</code>.</p>
  #
  #             <p>For more information, see <a href="http://forums.aws.amazon.com/ann.jspa?annID=3557">Announcement:
  #                Heads-up – Longer Storage Gateway volume and snapshot IDs coming in
  #             2016</a>.</p>
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
    def initialize(config = AWS::SDK::StorageGateway::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Activates the gateway you previously deployed on your host. In the activation process,
    #          you specify information such as the Amazon Web Services Region that you want to use for
    #          storing snapshots or tapes, the time zone for scheduled snapshots the gateway snapshot
    #          schedule window, an activation key, and a name for your gateway. The activation process
    #          also associates your gateway with your account. For more information, see <a>UpdateGatewayInformation</a>.</p>
    #          <note>
    #             <p>You must turn on the gateway VM before you can activate your gateway.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ActivateGatewayInput}.
    #
    # @option params [String] :activation_key
    #   <p>Your gateway activation key. You can obtain the activation key by sending an HTTP GET
    #            request with redirects enabled to the gateway IP address (port 80). The redirect URL
    #            returned in the response provides you the activation key for your gateway in the query
    #            string parameter <code>activationKey</code>. It may also include other activation-related
    #            parameters, however, these are merely defaults -- the arguments you pass to the
    #               <code>ActivateGateway</code> API call determine the actual configuration of your
    #            gateway.</p>
    #
    #
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html">Getting activation
    #               key</a> in the <i>Storage Gateway User Guide</i>.</p>
    #
    # @option params [String] :gateway_name
    #   <p>The name you configured for your gateway.</p>
    #
    # @option params [String] :gateway_timezone
    #   <p>A value that indicates the time zone you want to set for the gateway. The time zone is
    #            of the format "GMT-hr:mm" or "GMT+hr:mm". For example, GMT-4:00 indicates the time is 4
    #            hours behind GMT. GMT+2:00 indicates the time is 2 hours ahead of GMT. The time zone is
    #            used, for example, for scheduling snapshots and your gateway's maintenance
    #            schedule.</p>
    #
    # @option params [String] :gateway_region
    #   <p>A value that indicates the Amazon Web Services Region where you want to store your data.
    #            The gateway Amazon Web Services Region specified must be the same Amazon Web Services Region
    #            as the Amazon Web Services Region in your <code>Host</code> header in the request. For more
    #            information about available Amazon Web Services Regions and endpoints for Storage Gateway, see <a href="https://docs.aws.amazon.com/general/latest/gr/sg.html">
    #               Storage Gateway endpoints and quotas</a> in the <i>Amazon Web Services
    #               General Reference</i>.</p>
    #
    #            <p>Valid Values: See <a href="https://docs.aws.amazon.com/general/latest/gr/sg.html">
    #               Storage Gateway endpoints and quotas</a> in the <i>Amazon Web Services
    #               General Reference</i>.
    #
    #         </p>
    #
    # @option params [String] :gateway_type
    #   <p>A value that defines the type of gateway to activate. The type specified is critical to
    #            all later functions of the gateway and cannot be changed after activation. The default
    #            value is <code>CACHED</code>.</p>
    #
    #            <p>Valid Values: <code>STORED</code> | <code>CACHED</code> | <code>VTL</code> |
    #               <code>VTL_SNOW</code> | <code>FILE_S3</code> | <code>FILE_FSX_SMB</code>
    #            </p>
    #
    # @option params [String] :tape_drive_type
    #   <p>The value that indicates the type of tape drive to use for tape gateway. This field is
    #            optional.</p>
    #
    #            <p>Valid Values: <code>IBM-ULT3580-TD5</code>
    #            </p>
    #
    # @option params [String] :medium_changer_type
    #   <p>The value that indicates the type of medium changer to use for tape gateway. This field
    #            is optional.</p>
    #
    #            <p>Valid Values: <code>STK-L700</code> | <code>AWS-Gateway-VTL</code> |
    #               <code>IBM-03584L32-0402</code>
    #            </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of up to 50 tags that you can assign to the gateway. Each tag is a key-value
    #            pair.</p>
    #
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers that can be
    #               represented in UTF-8 format, and the following special characters: + - = . _ : / @. The
    #               maximum length of a tag's key is 128 characters, and the maximum length for a
    #               tag's value is 256 characters.</p>
    #            </note>
    #
    # @return [Types::ActivateGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_gateway(
    #     activation_key: 'ActivationKey', # required
    #     gateway_name: 'GatewayName', # required
    #     gateway_timezone: 'GatewayTimezone', # required
    #     gateway_region: 'GatewayRegion', # required
    #     gateway_type: 'GatewayType',
    #     tape_drive_type: 'TapeDriveType',
    #     medium_changer_type: 'MediumChangerType',
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
    #   resp.data #=> Types::ActivateGatewayOutput
    #   resp.data.gateway_arn #=> String
    #
    def activate_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ActivateGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ActivateGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ActivateGateway
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::ActivateGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ActivateGateway,
        stubs: @stubs,
        params_class: Params::ActivateGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :activate_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures one or more gateway local disks as cache for a gateway. This operation is
    #          only supported in the cached volume, tape, and file gateway type (see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html">How Storage Gateway works (architecture)</a>.</p>
    #
    #          <p>In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to
    #          add cache, and one or more disk IDs that you want to configure as cache.</p>
    #
    # @param [Hash] params
    #   See {Types::AddCacheInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [Array<String>] :disk_ids
    #   <p>An array of strings that identify disks that are to be configured as working storage.
    #            Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs
    #            from the <a>ListLocalDisks</a> API.</p>
    #
    # @return [Types::AddCacheOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_cache(
    #     gateway_arn: 'GatewayARN', # required
    #     disk_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddCacheOutput
    #   resp.data.gateway_arn #=> String
    #
    def add_cache(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddCacheInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddCacheInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddCache
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::AddCache
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddCache,
        stubs: @stubs,
        params_class: Params::AddCacheOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_cache
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to the specified resource. You use tags to add metadata to
    #          resources, which you can use to categorize these resources. For example, you can categorize
    #          resources by purpose, owner, environment, or team. Each tag consists of a key and a value,
    #          which you define. You can add tags to the following Storage Gateway resources:</p>
    #
    #          <ul>
    #             <li>
    #                <p>Storage gateways of all types</p>
    #             </li>
    #             <li>
    #                <p>Storage volumes</p>
    #             </li>
    #             <li>
    #                <p>Virtual tapes</p>
    #             </li>
    #             <li>
    #                <p>NFS and SMB file shares</p>
    #             </li>
    #             <li>
    #                <p>File System associations</p>
    #             </li>
    #          </ul>
    #
    #          <p>You can create a maximum of 50 tags for each resource. Virtual tapes and storage volumes
    #          that are recovered to a new gateway maintain their tags.</p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsToResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The key-value pair that represents the tag you want to add to the resource. The value
    #            can be an empty string.</p>
    #
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #
    # @return [Types::AddTagsToResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource(
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
    #   resp.data #=> Types::AddTagsToResourceOutput
    #   resp.data.resource_arn #=> String
    #
    def add_tags_to_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddTagsToResourceInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
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

    # <p>Configures one or more gateway local disks as upload buffer for a specified gateway.
    #          This operation is supported for the stored volume, cached volume, and tape gateway
    #          types.</p>
    #
    #          <p>In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to
    #          add upload buffer, and one or more disk IDs that you want to configure as upload
    #          buffer.</p>
    #
    # @param [Hash] params
    #   See {Types::AddUploadBufferInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [Array<String>] :disk_ids
    #   <p>An array of strings that identify disks that are to be configured as working storage.
    #            Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs
    #            from the <a>ListLocalDisks</a> API.</p>
    #
    # @return [Types::AddUploadBufferOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_upload_buffer(
    #     gateway_arn: 'GatewayARN', # required
    #     disk_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddUploadBufferOutput
    #   resp.data.gateway_arn #=> String
    #
    def add_upload_buffer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddUploadBufferInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddUploadBufferInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddUploadBuffer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::AddUploadBuffer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddUploadBuffer,
        stubs: @stubs,
        params_class: Params::AddUploadBufferOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_upload_buffer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures one or more gateway local disks as working storage for a gateway. This
    #          operation is only supported in the stored volume gateway type. This operation is deprecated
    #          in cached volume API version 20120630. Use <a>AddUploadBuffer</a>
    #          instead.</p>
    #
    #          <note>
    #             <p>Working storage is also referred to as upload buffer. You can also use the <a>AddUploadBuffer</a> operation to add upload buffer to a stored volume
    #             gateway.</p>
    #          </note>
    #
    #          <p>In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to
    #          add working storage, and one or more disk IDs that you want to configure as working
    #          storage.</p>
    #
    # @param [Hash] params
    #   See {Types::AddWorkingStorageInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [Array<String>] :disk_ids
    #   <p>An array of strings that identify disks that are to be configured as working storage.
    #            Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs
    #            from the <a>ListLocalDisks</a> API.</p>
    #
    # @return [Types::AddWorkingStorageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_working_storage(
    #     gateway_arn: 'GatewayARN', # required
    #     disk_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddWorkingStorageOutput
    #   resp.data.gateway_arn #=> String
    #
    def add_working_storage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddWorkingStorageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddWorkingStorageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddWorkingStorage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::AddWorkingStorage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddWorkingStorage,
        stubs: @stubs,
        params_class: Params::AddWorkingStorageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_working_storage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns a tape to a tape pool for archiving. The tape assigned to a pool is archived in
    #          the S3 storage class that is associated with the pool. When you use your backup application
    #          to eject the tape, the tape is archived directly into the S3 storage class (S3 Glacier or
    #          S3 Glacier Deep Archive) that corresponds to the pool.</p>
    #
    # @param [Hash] params
    #   See {Types::AssignTapePoolInput}.
    #
    # @option params [String] :tape_arn
    #   <p>The unique Amazon Resource Name (ARN) of the virtual tape that you want to add to the
    #            tape pool.</p>
    #
    # @option params [String] :pool_id
    #   <p>The ID of the pool that you want to add your tape to for archiving. The tape in this
    #            pool is archived in the S3 storage class that is associated with the pool. When you use
    #            your backup application to eject the tape, the tape is archived directly into the storage
    #            class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>
    #
    # @option params [Boolean] :bypass_governance_retention
    #   <p>Set permissions to bypass governance retention. If the lock type of the archived tape is
    #               <code>Governance</code>, the tape's archived age is not older than
    #               <code>RetentionLockInDays</code>, and the user does not already have
    #               <code>BypassGovernanceRetention</code>, setting this to TRUE enables the user to bypass
    #            the retention lock. This parameter is set to true by default for calls from the
    #            console.</p>
    #
    #            <p>Valid values: <code>TRUE</code> | <code>FALSE</code>
    #            </p>
    #
    # @return [Types::AssignTapePoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.assign_tape_pool(
    #     tape_arn: 'TapeARN', # required
    #     pool_id: 'PoolId', # required
    #     bypass_governance_retention: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssignTapePoolOutput
    #   resp.data.tape_arn #=> String
    #
    def assign_tape_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssignTapePoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssignTapePoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssignTapePool
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::AssignTapePool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssignTapePool,
        stubs: @stubs,
        params_class: Params::AssignTapePoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :assign_tape_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associate an Amazon FSx file system with the FSx File Gateway. After the
    #          association process is complete, the file shares on the Amazon FSx file system are
    #          available for access through the gateway. This operation only supports the FSx File Gateway
    #          type.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateFileSystemInput}.
    #
    # @option params [String] :user_name
    #   <p>The user name of the user credential that has permission to access the root share D$ of
    #            the Amazon FSx file system. The user account must belong to the Amazon FSx
    #            delegated admin user group.</p>
    #
    # @option params [String] :password
    #   <p>The password of the user credential.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique string value that you supply that is used by the FSx File Gateway to ensure
    #            idempotent file system association creation.</p>
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with
    #            the FSx File Gateway.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to the file system association. Each tag is
    #            a key-value pair.</p>
    #
    # @option params [String] :audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for the audit logs.</p>
    #
    # @option params [CacheAttributes] :cache_attributes
    #   <p>The refresh cache information for the file share or FSx file systems.</p>
    #
    # @option params [EndpointNetworkConfiguration] :endpoint_network_configuration
    #   <p>Specifies the network configuration information for the gateway associated with the
    #               Amazon FSx file system.</p>
    #            <note>
    #               <p>If multiple file systems are associated with this gateway, this parameter's
    #                  <code>IpAddresses</code> field is required.</p>
    #            </note>
    #
    # @return [Types::AssociateFileSystemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_file_system(
    #     user_name: 'UserName', # required
    #     password: 'Password', # required
    #     client_token: 'ClientToken', # required
    #     gateway_arn: 'GatewayARN', # required
    #     location_arn: 'LocationARN', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     audit_destination_arn: 'AuditDestinationARN',
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1
    #     },
    #     endpoint_network_configuration: {
    #       ip_addresses: [
    #         'member'
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateFileSystemOutput
    #   resp.data.file_system_association_arn #=> String
    #
    def associate_file_system(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateFileSystemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateFileSystemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateFileSystem
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::AssociateFileSystem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateFileSystem,
        stubs: @stubs,
        params_class: Params::AssociateFileSystemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_file_system
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Connects a volume to an iSCSI connection and then attaches the volume to the specified
    #          gateway. Detaching and attaching a volume enables you to recover your data from one gateway
    #          to a different gateway without creating a snapshot. It also makes it easier to move your
    #          volumes from an on-premises gateway to a gateway hosted on an Amazon EC2 instance.</p>
    #
    # @param [Hash] params
    #   See {Types::AttachVolumeInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway that you want to attach the volume
    #            to.</p>
    #
    # @option params [String] :target_name
    #   <p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
    #            suffix for the target ARN. For example, specifying <code>TargetName</code> as
    #               <i>myvolume</i> results in the target ARN of
    #               <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
    #            The target name must be unique across all volumes on a gateway.</p>
    #
    #            <p>If you don't specify a value, Storage Gateway uses the value that was previously
    #            used for this volume as the new target name.</p>
    #
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume to attach to the specified gateway.</p>
    #
    # @option params [String] :network_interface_id
    #   <p>The network interface of the gateway on which to expose the iSCSI target. Only IPv4
    #            addresses are accepted. Use <a>DescribeGatewayInformation</a> to get a list of
    #            the network interfaces available on a gateway.</p>
    #
    #            <p>Valid Values: A valid IP address.</p>
    #
    # @option params [String] :disk_id
    #   <p>The unique device ID or other distinguishing data that identifies the local disk used to
    #            create the volume. This value is only required when you are attaching a stored
    #            volume.</p>
    #
    # @return [Types::AttachVolumeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_volume(
    #     gateway_arn: 'GatewayARN', # required
    #     target_name: 'TargetName',
    #     volume_arn: 'VolumeARN', # required
    #     network_interface_id: 'NetworkInterfaceId', # required
    #     disk_id: 'DiskId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachVolumeOutput
    #   resp.data.volume_arn #=> String
    #   resp.data.target_arn #=> String
    #
    def attach_volume(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachVolumeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachVolumeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachVolume
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::AttachVolume
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachVolume,
        stubs: @stubs,
        params_class: Params::AttachVolumeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_volume
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after the archiving
    #          process is initiated. This operation is only supported in the tape gateway type.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelArchivalInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [String] :tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel archiving
    #            for.</p>
    #
    # @return [Types::CancelArchivalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_archival(
    #     gateway_arn: 'GatewayARN', # required
    #     tape_arn: 'TapeARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelArchivalOutput
    #   resp.data.tape_arn #=> String
    #
    def cancel_archival(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelArchivalInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelArchivalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelArchival
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::CancelArchival
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelArchival,
        stubs: @stubs,
        params_class: Params::CancelArchivalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_archival
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a gateway after
    #          the retrieval process is initiated. The virtual tape is returned to the VTS. This operation
    #          is only supported in the tape gateway type.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelRetrievalInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [String] :tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel retrieval
    #            for.</p>
    #
    # @return [Types::CancelRetrievalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_retrieval(
    #     gateway_arn: 'GatewayARN', # required
    #     tape_arn: 'TapeARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelRetrievalOutput
    #   resp.data.tape_arn #=> String
    #
    def cancel_retrieval(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelRetrievalInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelRetrievalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelRetrieval
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::CancelRetrieval
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelRetrieval,
        stubs: @stubs,
        params_class: Params::CancelRetrievalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_retrieval
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a cached volume on a specified cached volume gateway. This operation is only
    #          supported in the cached volume gateway type.</p>
    #
    #          <note>
    #             <p>Cache storage must be allocated to the gateway before you can create a cached volume.
    #             Use the <a>AddCache</a> operation to add cache storage to a gateway.</p>
    #          </note>
    #
    #          <p>In the request, you must specify the gateway, size of the volume in bytes, the iSCSI
    #          target name, an IP address on which to expose the target, and a unique client token. In
    #          response, the gateway creates the volume and returns information about it. This information
    #          includes the volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN that
    #          initiators can use to connect to the volume target.</p>
    #
    #          <p>Optionally, you can provide the ARN for an existing volume as the
    #             <code>SourceVolumeARN</code> for this cached volume, which creates an exact copy of the
    #          existing volume’s latest recovery point. The <code>VolumeSizeInBytes</code> value must be
    #          equal to or larger than the size of the copied volume, in bytes.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCachediSCSIVolumeInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [Integer] :volume_size_in_bytes
    #   <p>The size of the volume in bytes.</p>
    #
    # @option params [String] :snapshot_id
    #   <p>The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as the new cached
    #            volume. Specify this field if you want to create the iSCSI storage volume from a snapshot;
    #            otherwise, do not include this field. To list snapshots for your account use <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API
    #               Reference</i>.</p>
    #
    # @option params [String] :target_name
    #   <p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
    #            suffix for the target ARN. For example, specifying <code>TargetName</code> as
    #               <i>myvolume</i> results in the target ARN of
    #               <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
    #            The target name must be unique across all volumes on a gateway.</p>
    #
    #            <p>If you don't specify a value, Storage Gateway uses the value that was previously
    #            used for this volume as the new target name.</p>
    #
    # @option params [String] :source_volume_arn
    #   <p>The ARN for an existing volume. Specifying this ARN makes the new volume into an exact
    #            copy of the specified existing volume's latest recovery point. The
    #               <code>VolumeSizeInBytes</code> value for this new volume must be equal to or larger than
    #            the size of the existing volume, in bytes.</p>
    #
    # @option params [String] :network_interface_id
    #   <p>The network interface of the gateway on which to expose the iSCSI target. Only IPv4
    #            addresses are accepted. Use <a>DescribeGatewayInformation</a> to get a list of
    #            the network interfaces available on a gateway.</p>
    #
    #            <p>Valid Values: A valid IP address.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique identifier that you use to retry a request. If you retry a request, use the
    #            same <code>ClientToken</code> you specified in the initial request.</p>
    #
    # @option params [Boolean] :kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [String] :kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of up to 50 tags that you can assign to a cached volume. Each tag is a key-value
    #            pair.</p>
    #
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers that you can
    #               represent in UTF-8 format, and the following special characters: + - = . _ : / @. The
    #               maximum length of a tag's key is 128 characters, and the maximum length for a
    #               tag's value is 256 characters.</p>
    #            </note>
    #
    # @return [Types::CreateCachediSCSIVolumeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cachedi_scsi_volume(
    #     gateway_arn: 'GatewayARN', # required
    #     volume_size_in_bytes: 1, # required
    #     snapshot_id: 'SnapshotId',
    #     target_name: 'TargetName', # required
    #     source_volume_arn: 'SourceVolumeARN',
    #     network_interface_id: 'NetworkInterfaceId', # required
    #     client_token: 'ClientToken', # required
    #     kms_encrypted: false,
    #     kms_key: 'KMSKey',
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
    #   resp.data #=> Types::CreateCachediSCSIVolumeOutput
    #   resp.data.volume_arn #=> String
    #   resp.data.target_arn #=> String
    #
    def create_cachedi_scsi_volume(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCachediSCSIVolumeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCachediSCSIVolumeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCachediSCSIVolume
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::CreateCachediSCSIVolume
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCachediSCSIVolume,
        stubs: @stubs,
        params_class: Params::CreateCachediSCSIVolumeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cachedi_scsi_volume
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Network File System (NFS) file share on an existing S3 File Gateway. In
    #          Storage Gateway, a file share is a file system mount point backed by Amazon S3
    #          cloud storage. Storage Gateway exposes file shares using an NFS interface. This operation
    #          is only supported for S3 File Gateways.</p>
    #
    #          <important>
    #             <p>S3 File gateway requires Security Token Service (Amazon Web Services STS) to be
    #             activated to enable you to create a file share. Make sure Amazon Web Services STS is
    #             activated in the Amazon Web Services Region you are creating your S3 File Gateway in. If
    #                Amazon Web Services STS is not activated in the Amazon Web Services Region, activate
    #             it. For information about how to activate Amazon Web Services STS, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and
    #                deactivating Amazon Web Services STS in an Amazon Web Services Region</a> in the
    #                   <i>Identity and Access Management User Guide</i>.</p>
    #
    #             <p>S3 File Gateways do not support creating hard or symbolic links on a file
    #             share.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::CreateNFSFileShareInput}.
    #
    # @option params [String] :client_token
    #   <p>A unique string value that you supply that is used by S3 File Gateway to ensure
    #            idempotent file share creation.</p>
    #
    # @option params [NFSFileShareDefaults] :nfs_file_share_defaults
    #   <p>File share default values. Optional.</p>
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 File Gateway on which you want to create a file
    #            share.</p>
    #
    # @option params [Boolean] :kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [String] :kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    #
    # @option params [String] :role
    #   <p>The ARN of the Identity and Access Management (IAM) role that an S3 File Gateway assumes when it
    #            accesses the underlying storage.</p>
    #
    # @option params [String] :location_arn
    #   <p>A custom ARN for the backend storage used for storing data for file shares. It includes
    #            a resource ARN with an optional prefix concatenation. The prefix must end with a forward
    #            slash (/).</p>
    #            <note>
    #               <p>You can specify LocationARN as a bucket ARN, access point ARN or access point alias,
    #               as shown in the following examples.</p>
    #
    #               <p>Bucket ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:::my-bucket/prefix/</code>
    #               </p>
    #
    #               <p>Access point ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:region:account-id:accesspoint/access-point-name/prefix/</code>
    #               </p>
    #
    #               <p>If you specify an access point, the bucket policy must be configured to delegate
    #               access control to the access point. For information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html#access-points-delegating-control">Delegating access control to access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #               <p>Access point alias:</p>
    #               <p>
    #                  <code>test-ap-ab123cdef4gehijklmn5opqrstuvuse1a-s3alias</code>
    #               </p>
    #            </note>
    #
    # @option params [String] :default_storage_class
    #   <p>The default storage class for objects put into an Amazon S3 bucket by the S3
    #            File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>
    #
    #            <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
    #               <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
    #            </p>
    #
    # @option params [String] :object_acl
    #   <p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
    #            that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>
    #
    # @option params [Array<String>] :client_list
    #   <p>The list of clients that are allowed to access the S3 File Gateway. The list must
    #            contain either valid IP addresses or valid CIDR blocks.</p>
    #
    # @option params [String] :squash
    #   <p>A value that maps a user to anonymous user.</p>
    #
    #            <p>Valid values are the following:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RootSquash</code>: Only root is mapped to anonymous user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NoSquash</code>: No one is mapped to anonymous user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllSquash</code>: Everyone is mapped to anonymous user.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :read_only
    #   <p>A value that sets the write status of a file share. Set this value to <code>true</code>
    #            to set the write status to read-only, otherwise set to <code>false</code>.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Boolean] :guess_mime_type_enabled
    #   <p>A value that enables guessing of the MIME type for uploaded objects based on file
    #            extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
    #            to <code>false</code>. The default value is <code>true</code>.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Boolean] :requester_pays
    #   <p>A value that sets who pays the cost of the request and the cost associated with data
    #            download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
    #            the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
    #            the cost of storing data.</p>
    #
    #            <note>
    #               <p>
    #                  <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
    #               share, so make sure that the configuration on the file share is the same as the S3
    #               bucket configuration.</p>
    #            </note>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to the NFS file share. Each tag is a
    #            key-value pair.</p>
    #
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #
    # @option params [String] :file_share_name
    #   <p>The name of the file share. Optional.</p>
    #
    #            <note>
    #               <p>
    #                  <code>FileShareName</code> must be set if an S3 prefix name is set in
    #                  <code>LocationARN</code>, or if an access point or access point alias is used.</p>
    #            </note>
    #
    # @option params [CacheAttributes] :cache_attributes
    #   <p>Specifies refresh cache information for the file share.</p>
    #
    # @option params [String] :notification_policy
    #   <p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
    #            the number of seconds to wait after the last point in time a client wrote to a file before
    #            generating an <code>ObjectUploaded</code> notification. Because clients can make many small
    #            writes to files, it's best to set this parameter for as long as possible to avoid
    #            generating multiple notifications for the same file in a small time period.</p>
    #
    #            <note>
    #               <p>
    #                  <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
    #               uploading to Amazon S3, only the timing of the notification.</p>
    #            </note>
    #
    #            <p>The following example sets <code>NotificationPolicy</code> on with
    #               <code>SettlingTimeInSeconds</code> set to 60.</p>
    #
    #            <p>
    #               <code>{\"Upload\": {\"SettlingTimeInSeconds\": 60}}</code>
    #            </p>
    #
    #            <p>The following example sets <code>NotificationPolicy</code> off.</p>
    #
    #            <p>
    #               <code>{}</code>
    #            </p>
    #
    # @option params [String] :vpc_endpoint_dns_name
    #   <p>Specifies the DNS name for the VPC endpoint that the NFS file share uses to connect to
    #               Amazon S3.</p>
    #            <note>
    #               <p>This parameter is required for NFS file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    #
    # @option params [String] :bucket_region
    #   <p>Specifies the Region of the S3 bucket where the NFS file share stores files.</p>
    #            <note>
    #               <p>This parameter is required for NFS file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    #
    # @option params [String] :audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>
    #
    # @return [Types::CreateNFSFileShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_nfs_file_share(
    #     client_token: 'ClientToken', # required
    #     nfs_file_share_defaults: {
    #       file_mode: 'FileMode',
    #       directory_mode: 'DirectoryMode',
    #       group_id: 1,
    #       owner_id: 1
    #     },
    #     gateway_arn: 'GatewayARN', # required
    #     kms_encrypted: false,
    #     kms_key: 'KMSKey',
    #     role: 'Role', # required
    #     location_arn: 'LocationARN', # required
    #     default_storage_class: 'DefaultStorageClass',
    #     object_acl: 'private', # accepts ["private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "aws-exec-read"]
    #     client_list: [
    #       'member'
    #     ],
    #     squash: 'Squash',
    #     read_only: false,
    #     guess_mime_type_enabled: false,
    #     requester_pays: false,
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     file_share_name: 'FileShareName',
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1
    #     },
    #     notification_policy: 'NotificationPolicy',
    #     vpc_endpoint_dns_name: 'VPCEndpointDNSName',
    #     bucket_region: 'BucketRegion',
    #     audit_destination_arn: 'AuditDestinationARN'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateNFSFileShareOutput
    #   resp.data.file_share_arn #=> String
    #
    def create_nfs_file_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateNFSFileShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateNFSFileShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateNFSFileShare
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::CreateNFSFileShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateNFSFileShare,
        stubs: @stubs,
        params_class: Params::CreateNFSFileShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_nfs_file_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Server Message Block (SMB) file share on an existing S3 File Gateway. In
    #          Storage Gateway, a file share is a file system mount point backed by Amazon S3
    #          cloud storage. Storage Gateway exposes file shares using an SMB interface. This operation
    #          is only supported for S3 File Gateways.</p>
    #
    #          <important>
    #             <p>S3 File Gateways require Security Token Service (Amazon Web Services STS) to be
    #             activated to enable you to create a file share. Make sure that Amazon Web Services STS
    #             is activated in the Amazon Web Services Region you are creating your S3 File Gateway in.
    #             If Amazon Web Services STS is not activated in this Amazon Web Services Region, activate
    #             it. For information about how to activate Amazon Web Services STS, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and
    #                deactivating Amazon Web Services STS in an Amazon Web Services Region</a> in the
    #                   <i>Identity and Access Management User Guide</i>.</p>
    #
    #             <p>File gateways don't support creating hard or symbolic links on a file
    #             share.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::CreateSMBFileShareInput}.
    #
    # @option params [String] :client_token
    #   <p>A unique string value that you supply that is used by S3 File Gateway to ensure
    #            idempotent file share creation.</p>
    #
    # @option params [String] :gateway_arn
    #   <p>The ARN of the S3 File Gateway on which you want to create a file share.</p>
    #
    # @option params [Boolean] :kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [String] :kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    #
    # @option params [String] :role
    #   <p>The ARN of the Identity and Access Management (IAM) role that an S3 File Gateway assumes when it
    #            accesses the underlying storage.</p>
    #
    # @option params [String] :location_arn
    #   <p>A custom ARN for the backend storage used for storing data for file shares. It includes
    #            a resource ARN with an optional prefix concatenation. The prefix must end with a forward
    #            slash (/).</p>
    #            <note>
    #               <p>You can specify LocationARN as a bucket ARN, access point ARN or access point alias,
    #               as shown in the following examples.</p>
    #
    #               <p>Bucket ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:::my-bucket/prefix/</code>
    #               </p>
    #
    #               <p>Access point ARN:</p>
    #               <p>
    #                  <code>arn:aws:s3:region:account-id:accesspoint/access-point-name/prefix/</code>
    #               </p>
    #
    #               <p>If you specify an access point, the bucket policy must be configured to delegate
    #               access control to the access point. For information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html#access-points-delegating-control">Delegating access control to access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #
    #               <p>Access point alias:</p>
    #               <p>
    #                  <code>test-ap-ab123cdef4gehijklmn5opqrstuvuse1a-s3alias</code>
    #               </p>
    #            </note>
    #
    # @option params [String] :default_storage_class
    #   <p>The default storage class for objects put into an Amazon S3 bucket by the S3
    #            File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>
    #
    #            <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
    #               <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
    #            </p>
    #
    # @option params [String] :object_acl
    #   <p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
    #            that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>
    #
    # @option params [Boolean] :read_only
    #   <p>A value that sets the write status of a file share. Set this value to <code>true</code>
    #            to set the write status to read-only, otherwise set to <code>false</code>.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Boolean] :guess_mime_type_enabled
    #   <p>A value that enables guessing of the MIME type for uploaded objects based on file
    #            extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
    #            to <code>false</code>. The default value is <code>true</code>.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Boolean] :requester_pays
    #   <p>A value that sets who pays the cost of the request and the cost associated with data
    #            download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
    #            the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
    #            the cost of storing data.</p>
    #
    #            <note>
    #               <p>
    #                  <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
    #               share, so make sure that the configuration on the file share is the same as the S3
    #               bucket configuration.</p>
    #            </note>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Boolean] :smbacl_enabled
    #   <p>Set this value to <code>true</code> to enable access control list (ACL) on the SMB file
    #            share. Set it to <code>false</code> to map file and directory permissions to the POSIX
    #            permissions.</p>
    #
    #
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/smb-acl.html">Using Microsoft Windows ACLs to
    #               control access to an SMB file share</a> in the <i>Storage Gateway User
    #               Guide</i>.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Boolean] :access_based_enumeration
    #   <p>The files and folders on this share will only be visible to users with read
    #            access.</p>
    #
    # @option params [Array<String>] :admin_user_list
    #   <p>A list of users or groups in the Active Directory that will be granted administrator
    #            privileges on the file share. These users can do all file operations as the super-user.
    #            Acceptable formats include: <code>DOMAIN\User1</code>, <code>user1</code>,
    #               <code>@group1</code>, and <code>@DOMAIN\group1</code>.</p>
    #
    #            <important>
    #               <p>Use this option very carefully, because any user in this list can do anything they
    #               like on the file share, regardless of file permissions.</p>
    #            </important>
    #
    # @option params [Array<String>] :valid_user_list
    #   <p>A list of users or groups in the Active Directory that are allowed to access the file
    #               <a href=""></a> share. A group must be prefixed with the @ character. Acceptable formats
    #            include: <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    #
    # @option params [Array<String>] :invalid_user_list
    #   <p>A list of users or groups in the Active Directory that are not allowed to access the
    #            file share. A group must be prefixed with the @ character. Acceptable formats include:
    #               <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    #
    # @option params [String] :audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>
    #
    # @option params [String] :authentication
    #   <p>The authentication method that users use to access the file share. The default is
    #               <code>ActiveDirectory</code>.</p>
    #
    #            <p>Valid Values: <code>ActiveDirectory</code> | <code>GuestAccess</code>
    #            </p>
    #
    # @option params [String] :case_sensitivity
    #   <p>The case of an object name in an Amazon S3 bucket. For
    #               <code>ClientSpecified</code>, the client determines the case sensitivity. For
    #               <code>CaseSensitive</code>, the gateway determines the case sensitivity. The default
    #            value is <code>ClientSpecified</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to the NFS file share. Each tag is a
    #            key-value pair.</p>
    #
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #
    # @option params [String] :file_share_name
    #   <p>The name of the file share. Optional.</p>
    #
    #            <note>
    #               <p>
    #                  <code>FileShareName</code> must be set if an S3 prefix name is set in
    #                  <code>LocationARN</code>, or if an access point or access point alias is used.</p>
    #            </note>
    #
    # @option params [CacheAttributes] :cache_attributes
    #   <p>Specifies refresh cache information for the file share.</p>
    #
    # @option params [String] :notification_policy
    #   <p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
    #            the number of seconds to wait after the last point in time a client wrote to a file before
    #            generating an <code>ObjectUploaded</code> notification. Because clients can make many small
    #            writes to files, it's best to set this parameter for as long as possible to avoid
    #            generating multiple notifications for the same file in a small time period.</p>
    #
    #            <note>
    #               <p>
    #                  <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
    #               uploading to Amazon S3, only the timing of the notification.</p>
    #            </note>
    #
    #            <p>The following example sets <code>NotificationPolicy</code> on with
    #               <code>SettlingTimeInSeconds</code> set to 60.</p>
    #
    #            <p>
    #               <code>{\"Upload\": {\"SettlingTimeInSeconds\": 60}}</code>
    #            </p>
    #
    #            <p>The following example sets <code>NotificationPolicy</code> off.</p>
    #
    #            <p>
    #               <code>{}</code>
    #            </p>
    #
    # @option params [String] :vpc_endpoint_dns_name
    #   <p>Specifies the DNS name for the VPC endpoint that the SMB file share uses to connect to
    #               Amazon S3.</p>
    #            <note>
    #               <p>This parameter is required for SMB file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    #
    # @option params [String] :bucket_region
    #   <p>Specifies the Region of the S3 bucket where the SMB file share stores files.</p>
    #            <note>
    #               <p>This parameter is required for SMB file shares that connect to Amazon S3
    #               through a VPC endpoint, a VPC access point, or an access point alias that points to a
    #               VPC access point.</p>
    #            </note>
    #
    # @option params [Boolean] :oplocks_enabled
    #   <p>Specifies whether opportunistic locking is enabled for the SMB file share.</p>
    #            <note>
    #               <p>Enabling opportunistic locking on case-sensitive shares is not recommended for
    #               workloads that involve access to files with the same name in different case.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @return [Types::CreateSMBFileShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_smb_file_share(
    #     client_token: 'ClientToken', # required
    #     gateway_arn: 'GatewayARN', # required
    #     kms_encrypted: false,
    #     kms_key: 'KMSKey',
    #     role: 'Role', # required
    #     location_arn: 'LocationARN', # required
    #     default_storage_class: 'DefaultStorageClass',
    #     object_acl: 'private', # accepts ["private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "aws-exec-read"]
    #     read_only: false,
    #     guess_mime_type_enabled: false,
    #     requester_pays: false,
    #     smbacl_enabled: false,
    #     access_based_enumeration: false,
    #     admin_user_list: [
    #       'member'
    #     ],
    #     audit_destination_arn: 'AuditDestinationARN',
    #     authentication: 'Authentication',
    #     case_sensitivity: 'ClientSpecified', # accepts ["ClientSpecified", "CaseSensitive"]
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     file_share_name: 'FileShareName',
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1
    #     },
    #     notification_policy: 'NotificationPolicy',
    #     vpc_endpoint_dns_name: 'VPCEndpointDNSName',
    #     bucket_region: 'BucketRegion',
    #     oplocks_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSMBFileShareOutput
    #   resp.data.file_share_arn #=> String
    #
    def create_smb_file_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSMBFileShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSMBFileShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSMBFileShare
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::CreateSMBFileShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSMBFileShare,
        stubs: @stubs,
        params_class: Params::CreateSMBFileShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_smb_file_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiates a snapshot of a volume.</p>
    #
    #          <p>Storage Gateway provides the ability to back up point-in-time snapshots of your
    #          data to Amazon Simple Storage (Amazon S3) for durable off-site recovery, and also
    #          import the data to an Amazon Elastic Block Store (EBS) volume in Amazon Elastic Compute
    #          Cloud (EC2). You can take snapshots of your gateway volume on a scheduled or ad hoc basis.
    #          This API enables you to take an ad hoc snapshot. For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#SchedulingSnapshot">Editing a
    #             snapshot schedule</a>.</p>
    #
    #          <p>In the <code>CreateSnapshot</code> request, you identify the volume by providing its
    #          Amazon Resource Name (ARN). You must also provide description for the snapshot. When
    #             Storage Gateway takes the snapshot of specified volume, the snapshot and
    #          description appears in the Storage Gateway console. In response, Storage Gateway
    #          returns you a snapshot ID. You can use this snapshot ID to check the snapshot progress or
    #          later use it when you want to create a volume from a snapshot. This operation is only
    #          supported in stored and cached volume gateway type.</p>
    #
    #          <note>
    #             <p>To list or delete a snapshot, you must use the Amazon EC2 API. For more information,
    #             see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html">DescribeSnapshots</a>
    #             or <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteSnapshot.html">DeleteSnapshot</a> in the <i>Amazon Elastic Compute Cloud API
    #                Reference</i>.</p>
    #          </note>
    #
    #          <important>
    #             <p>Volume and snapshot IDs are changing to a longer length ID format. For more
    #             information, see the important note on the <a href="https://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html">Welcome</a> page.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::CreateSnapshotInput}.
    #
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes.</p>
    #
    # @option params [String] :snapshot_description
    #   <p>Textual description of the snapshot that appears in the Amazon EC2 console, Elastic
    #            Block Store snapshots panel in the <b>Description</b> field, and
    #            in the Storage Gateway snapshot <b>Details</b> pane,
    #               <b>Description</b> field.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value
    #            pair.</p>
    #
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #
    # @return [Types::CreateSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot(
    #     volume_arn: 'VolumeARN', # required
    #     snapshot_description: 'SnapshotDescription', # required
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
    #   resp.data #=> Types::CreateSnapshotOutput
    #   resp.data.volume_arn #=> String
    #   resp.data.snapshot_id #=> String
    #
    def create_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSnapshot
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException, Errors::ServiceUnavailableError]),
        data_parser: Parsers::CreateSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSnapshot,
        stubs: @stubs,
        params_class: Params::CreateSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiates a snapshot of a gateway from a volume recovery point. This operation is only
    #          supported in the cached volume gateway type.</p>
    #
    #          <p>A volume recovery point is a point in time at which all data of the volume is consistent
    #          and from which you can create a snapshot. To get a list of volume recovery point for cached
    #          volume gateway, use <a>ListVolumeRecoveryPoints</a>.</p>
    #
    #          <p>In the <code>CreateSnapshotFromVolumeRecoveryPoint</code> request, you identify the
    #          volume by providing its Amazon Resource Name (ARN). You must also provide a description for
    #          the snapshot. When the gateway takes a snapshot of the specified volume, the snapshot and
    #          its description appear in the Storage Gateway console.
    #           In response, the gateway returns
    #          you a snapshot ID. You can use this snapshot ID to check the snapshot progress or later use
    #          it when you want to create a volume from a snapshot.</p>
    #
    #          <note>
    #             <p>To list or delete a snapshot, you must use the Amazon EC2 API. For more information,
    #             see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html">DescribeSnapshots</a>
    #             or <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteSnapshot.html">DeleteSnapshot</a> in the <i>Amazon Elastic Compute Cloud API
    #                Reference</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateSnapshotFromVolumeRecoveryPointInput}.
    #
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for
    #            specified VolumeARN.</p>
    #
    # @option params [String] :snapshot_description
    #   <p>Textual description of the snapshot that appears in the Amazon EC2 console, Elastic
    #            Block Store snapshots panel in the <b>Description</b> field, and
    #            in the Storage Gateway snapshot <b>Details</b> pane,
    #               <b>Description</b> field.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value
    #            pair.</p>
    #
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #
    # @return [Types::CreateSnapshotFromVolumeRecoveryPointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot_from_volume_recovery_point(
    #     volume_arn: 'VolumeARN', # required
    #     snapshot_description: 'SnapshotDescription', # required
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
    #   resp.data #=> Types::CreateSnapshotFromVolumeRecoveryPointOutput
    #   resp.data.snapshot_id #=> String
    #   resp.data.volume_arn #=> String
    #   resp.data.volume_recovery_point_time #=> String
    #
    def create_snapshot_from_volume_recovery_point(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSnapshotFromVolumeRecoveryPointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSnapshotFromVolumeRecoveryPointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSnapshotFromVolumeRecoveryPoint
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException, Errors::ServiceUnavailableError]),
        data_parser: Parsers::CreateSnapshotFromVolumeRecoveryPoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSnapshotFromVolumeRecoveryPoint,
        stubs: @stubs,
        params_class: Params::CreateSnapshotFromVolumeRecoveryPointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_snapshot_from_volume_recovery_point
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a volume on a specified gateway. This operation is only supported in the stored
    #          volume gateway type.</p>
    #
    #          <p>The size of the volume to create is inferred from the disk size. You can choose to
    #          preserve existing data on the disk, create volume from an existing snapshot, or create an
    #          empty volume. If you choose to create an empty gateway volume, then any existing data on
    #          the disk is erased.</p>
    #
    #          <p>In the request, you must specify the gateway and the disk information on which you are
    #          creating the volume. In response, the gateway creates the volume and returns volume
    #          information such as the volume Amazon Resource Name (ARN), its size, and the iSCSI target
    #          ARN that initiators can use to connect to the volume target.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStorediSCSIVolumeInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [String] :disk_id
    #   <p>The unique identifier for the gateway local disk that is configured as a stored volume.
    #            Use <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html">ListLocalDisks</a> to
    #            list disk IDs for a gateway.</p>
    #
    # @option params [String] :snapshot_id
    #   <p>The snapshot ID (e.g., "snap-1122aabb") of the snapshot to restore as the new stored
    #            volume. Specify this field if you want to create the iSCSI storage volume from a snapshot;
    #            otherwise, do not include this field. To list snapshots for your account use <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API
    #               Reference</i>.</p>
    #
    # @option params [Boolean] :preserve_existing_data
    #   <p>Set to <code>true</code> if you want to preserve the data on the local disk. Otherwise,
    #            set to <code>false</code> to create an empty volume.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [String] :target_name
    #   <p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
    #            suffix for the target ARN. For example, specifying <code>TargetName</code> as
    #               <i>myvolume</i> results in the target ARN of
    #               <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
    #            The target name must be unique across all volumes on a gateway.</p>
    #
    #            <p>If you don't specify a value, Storage Gateway uses the value that was previously
    #            used for this volume as the new target name.</p>
    #
    # @option params [String] :network_interface_id
    #   <p>The network interface of the gateway on which to expose the iSCSI target. Only IPv4
    #            addresses are accepted. Use <a>DescribeGatewayInformation</a> to get a list of
    #            the network interfaces available on a gateway.</p>
    #
    #            <p>Valid Values: A valid IP address.</p>
    #
    # @option params [Boolean] :kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [String] :kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to a stored volume. Each tag is a key-value
    #            pair.</p>
    #
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #
    # @return [Types::CreateStorediSCSIVolumeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_storedi_scsi_volume(
    #     gateway_arn: 'GatewayARN', # required
    #     disk_id: 'DiskId', # required
    #     snapshot_id: 'SnapshotId',
    #     preserve_existing_data: false, # required
    #     target_name: 'TargetName', # required
    #     network_interface_id: 'NetworkInterfaceId', # required
    #     kms_encrypted: false,
    #     kms_key: 'KMSKey',
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
    #   resp.data #=> Types::CreateStorediSCSIVolumeOutput
    #   resp.data.volume_arn #=> String
    #   resp.data.volume_size_in_bytes #=> Integer
    #   resp.data.target_arn #=> String
    #
    def create_storedi_scsi_volume(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStorediSCSIVolumeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStorediSCSIVolumeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStorediSCSIVolume
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::CreateStorediSCSIVolume
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStorediSCSIVolume,
        stubs: @stubs,
        params_class: Params::CreateStorediSCSIVolumeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_storedi_scsi_volume
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new custom tape pool. You can use custom tape pool to enable tape retention
    #          lock on tapes that are archived in the custom pool.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTapePoolInput}.
    #
    # @option params [String] :pool_name
    #   <p>The name of the new custom tape pool.</p>
    #
    # @option params [String] :storage_class
    #   <p>The storage class that is associated with the new custom pool. When you use your backup
    #            application to eject the tape, the tape is archived directly into the storage class (S3
    #            Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>
    #
    # @option params [String] :retention_lock_type
    #   <p>Tape retention lock can be configured in two modes. When configured in governance mode,
    #               Amazon Web Services accounts with specific IAM permissions are authorized to remove the
    #            tape retention lock from archived virtual tapes. When configured in compliance mode, the
    #            tape retention lock cannot be removed by any user, including the root Amazon Web Services account.</p>
    #
    # @option params [Integer] :retention_lock_time_in_days
    #   <p>Tape retention lock time is set in days. Tape retention lock can be enabled for up to
    #            100 years (36,500 days).</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to tape pool. Each tag is a key-value
    #            pair.</p>
    #
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #
    # @return [Types::CreateTapePoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tape_pool(
    #     pool_name: 'PoolName', # required
    #     storage_class: 'DEEP_ARCHIVE', # required - accepts ["DEEP_ARCHIVE", "GLACIER"]
    #     retention_lock_type: 'COMPLIANCE', # accepts ["COMPLIANCE", "GOVERNANCE", "NONE"]
    #     retention_lock_time_in_days: 1,
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
    #   resp.data #=> Types::CreateTapePoolOutput
    #   resp.data.pool_arn #=> String
    #
    def create_tape_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTapePoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTapePoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTapePool
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::CreateTapePool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTapePool,
        stubs: @stubs,
        params_class: Params::CreateTapePoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_tape_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a virtual tape by using your own barcode. You write data to the virtual tape and
    #          then archive the tape. A barcode is unique and cannot be reused if it has already been used
    #          on a tape. This applies to barcodes used on deleted tapes. This operation is only supported
    #          in the tape gateway type.</p>
    #
    #          <note>
    #             <p>Cache storage must be allocated to the gateway before you can create a virtual tape.
    #             Use the <a>AddCache</a> operation to add cache storage to a gateway.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateTapeWithBarcodeInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the
    #            virtual tape with. Use the <a>ListGateways</a> operation to return a list of
    #            gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [Integer] :tape_size_in_bytes
    #   <p>The size, in bytes, of the virtual tape that you want to create.</p>
    #
    #            <note>
    #               <p>The size must be aligned by gigabyte (1024*1024*1024 bytes).</p>
    #            </note>
    #
    # @option params [String] :tape_barcode
    #   <p>The barcode that you want to assign to the tape.</p>
    #
    #            <note>
    #               <p>Barcodes cannot be reused. This includes barcodes used for tapes that have been
    #               deleted.</p>
    #            </note>
    #
    # @option params [Boolean] :kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [String] :kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    #
    # @option params [String] :pool_id
    #   <p>The ID of the pool that you want to add your tape to for archiving. The tape in this
    #            pool is archived in the S3 storage class that is associated with the pool. When you use
    #            your backup application to eject the tape, the tape is archived directly into the storage
    #            class (S3 Glacier or S3 Deep Archive) that corresponds to the pool.</p>
    #
    # @option params [Boolean] :worm
    #   <p>Set to <code>TRUE</code> if the tape you are creating is to be configured as a
    #            write-once-read-many (WORM) tape.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to a virtual tape that has a barcode. Each
    #            tag is a key-value pair.</p>
    #
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #
    # @return [Types::CreateTapeWithBarcodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tape_with_barcode(
    #     gateway_arn: 'GatewayARN', # required
    #     tape_size_in_bytes: 1, # required
    #     tape_barcode: 'TapeBarcode', # required
    #     kms_encrypted: false,
    #     kms_key: 'KMSKey',
    #     pool_id: 'PoolId',
    #     worm: false,
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
    #   resp.data #=> Types::CreateTapeWithBarcodeOutput
    #   resp.data.tape_arn #=> String
    #
    def create_tape_with_barcode(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTapeWithBarcodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTapeWithBarcodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTapeWithBarcode
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::CreateTapeWithBarcode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTapeWithBarcode,
        stubs: @stubs,
        params_class: Params::CreateTapeWithBarcodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_tape_with_barcode
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates one or more virtual tapes. You write data to the virtual tapes and then archive
    #          the tapes. This operation is only supported in the tape gateway type.</p>
    #
    #          <note>
    #             <p>Cache storage must be allocated to the gateway before you can create virtual tapes.
    #             Use the <a>AddCache</a> operation to add cache storage to a gateway.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateTapesInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the
    #            virtual tapes with. Use the <a>ListGateways</a> operation to return a list of
    #            gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [Integer] :tape_size_in_bytes
    #   <p>The size, in bytes, of the virtual tapes that you want to create.</p>
    #
    #            <note>
    #               <p>The size must be aligned by gigabyte (1024*1024*1024 bytes).</p>
    #            </note>
    #
    # @option params [String] :client_token
    #   <p>A unique identifier that you use to retry a request. If you retry a request, use the
    #            same <code>ClientToken</code> you specified in the initial request.</p>
    #
    #            <note>
    #               <p>Using the same <code>ClientToken</code> prevents creating the tape multiple
    #               times.</p>
    #            </note>
    #
    # @option params [Integer] :num_tapes_to_create
    #   <p>The number of virtual tapes that you want to create.</p>
    #
    # @option params [String] :tape_barcode_prefix
    #   <p>A prefix that you append to the barcode of the virtual tape you are creating. This
    #            prefix makes the barcode unique.</p>
    #
    #            <note>
    #               <p>The prefix must be 1-4 characters in length and must be one of the uppercase letters
    #               from A to Z.</p>
    #            </note>
    #
    # @option params [Boolean] :kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [String] :kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    #
    # @option params [String] :pool_id
    #   <p>The ID of the pool that you want to add your tape to for archiving. The tape in this
    #            pool is archived in the S3 storage class that is associated with the pool. When you use
    #            your backup application to eject the tape, the tape is archived directly into the storage
    #            class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>
    #
    # @option params [Boolean] :worm
    #   <p>Set to <code>TRUE</code> if the tape you are creating is to be configured as a
    #            write-once-read-many (WORM) tape.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to a virtual tape. Each tag is a key-value
    #            pair.</p>
    #
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #
    # @return [Types::CreateTapesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tapes(
    #     gateway_arn: 'GatewayARN', # required
    #     tape_size_in_bytes: 1, # required
    #     client_token: 'ClientToken', # required
    #     num_tapes_to_create: 1, # required
    #     tape_barcode_prefix: 'TapeBarcodePrefix', # required
    #     kms_encrypted: false,
    #     kms_key: 'KMSKey',
    #     pool_id: 'PoolId',
    #     worm: false,
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
    #   resp.data #=> Types::CreateTapesOutput
    #   resp.data.tape_ar_ns #=> Array<String>
    #   resp.data.tape_ar_ns[0] #=> String
    #
    def create_tapes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTapesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTapesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTapes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::CreateTapes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTapes,
        stubs: @stubs,
        params_class: Params::CreateTapesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_tapes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the automatic tape creation policy of a gateway. If you delete this policy, new
    #          virtual tapes must be created manually. Use the Amazon Resource Name (ARN) of the gateway
    #          in your request to remove the policy.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAutomaticTapeCreationPolicyInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::DeleteAutomaticTapeCreationPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_automatic_tape_creation_policy(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAutomaticTapeCreationPolicyOutput
    #   resp.data.gateway_arn #=> String
    #
    def delete_automatic_tape_creation_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAutomaticTapeCreationPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAutomaticTapeCreationPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAutomaticTapeCreationPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DeleteAutomaticTapeCreationPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAutomaticTapeCreationPolicy,
        stubs: @stubs,
        params_class: Params::DeleteAutomaticTapeCreationPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_automatic_tape_creation_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the bandwidth rate limits of a gateway. You can delete either the upload and
    #          download bandwidth rate limit, or you can delete both. If you delete only one of the
    #          limits, the other limit remains unchanged. To specify which gateway to work with, use the
    #          Amazon Resource Name (ARN) of the gateway in your request. This operation is supported only
    #          for the stored volume, cached volume, and tape gateway types.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBandwidthRateLimitInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [String] :bandwidth_type
    #   <p>One of the BandwidthType values that indicates the gateway bandwidth rate limit to
    #            delete.</p>
    #
    #            <p>Valid Values: <code>UPLOAD</code> | <code>DOWNLOAD</code> | <code>ALL</code>
    #            </p>
    #
    # @return [Types::DeleteBandwidthRateLimitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bandwidth_rate_limit(
    #     gateway_arn: 'GatewayARN', # required
    #     bandwidth_type: 'BandwidthType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBandwidthRateLimitOutput
    #   resp.data.gateway_arn #=> String
    #
    def delete_bandwidth_rate_limit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBandwidthRateLimitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBandwidthRateLimitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBandwidthRateLimit
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DeleteBandwidthRateLimit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBandwidthRateLimit,
        stubs: @stubs,
        params_class: Params::DeleteBandwidthRateLimitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_bandwidth_rate_limit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified
    #          iSCSI target and initiator pair. This operation is supported in volume and tape gateway
    #          types.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteChapCredentialsInput}.
    #
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for
    #            specified VolumeARN.</p>
    #
    # @option params [String] :initiator_name
    #   <p>The iSCSI initiator that connects to the target.</p>
    #
    # @return [Types::DeleteChapCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_chap_credentials(
    #     target_arn: 'TargetARN', # required
    #     initiator_name: 'InitiatorName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChapCredentialsOutput
    #   resp.data.target_arn #=> String
    #   resp.data.initiator_name #=> String
    #
    def delete_chap_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChapCredentialsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteChapCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteChapCredentials
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DeleteChapCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteChapCredentials,
        stubs: @stubs,
        params_class: Params::DeleteChapCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_chap_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a file share from an S3 File Gateway. This operation is only supported for S3
    #          File Gateways.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFileShareInput}.
    #
    # @option params [String] :file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share to be deleted.</p>
    #
    # @option params [Boolean] :force_delete
    #   <p>If this value is set to <code>true</code>, the operation deletes a file share
    #            immediately and aborts all data uploads to Amazon Web Services. Otherwise, the file share is
    #            not deleted until all data is uploaded to Amazon Web Services. This process aborts the data
    #            upload process, and the file share enters the <code>FORCE_DELETING</code> status.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @return [Types::DeleteFileShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file_share(
    #     file_share_arn: 'FileShareARN', # required
    #     force_delete: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFileShareOutput
    #   resp.data.file_share_arn #=> String
    #
    def delete_file_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFileShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFileShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFileShare
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DeleteFileShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFileShare,
        stubs: @stubs,
        params_class: Params::DeleteFileShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_file_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a gateway. To specify which gateway to delete, use the Amazon Resource Name
    #          (ARN) of the gateway in your request. The operation deletes the gateway; however, it does
    #          not delete the gateway virtual machine (VM) from your host computer.</p>
    #
    #          <p>After you delete a gateway, you cannot reactivate it. Completed snapshots of the gateway
    #          volumes are not deleted upon deleting the gateway, however, pending snapshots will not
    #          complete. After you delete a gateway, your next step is to remove it from your
    #          environment.</p>
    #
    #          <important>
    #             <p>You no longer pay software charges after the gateway is deleted; however, your
    #             existing Amazon EBS snapshots persist and you will continue to be billed for these
    #             snapshots. You can choose to remove all remaining Amazon EBS snapshots by canceling your
    #             Amazon EC2 subscription.  If you prefer not to cancel your Amazon EC2 subscription, you
    #             can delete your snapshots using the Amazon EC2 console. For more information, see the
    #                <a href="http://aws.amazon.com/storagegateway">Storage Gateway detail
    #             page</a>.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteGatewayInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::DeleteGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGatewayOutput
    #   resp.data.gateway_arn #=> String
    #
    def delete_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGateway
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DeleteGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGateway,
        stubs: @stubs,
        params_class: Params::DeleteGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a snapshot of a volume.</p>
    #
    #          <p>You can take snapshots of your gateway volumes on a scheduled or ad hoc basis. This API
    #          action enables you to delete a snapshot schedule for a volume. For more information, see
    #             <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/backing-up-volumes.html">Backing up your
    #             volumes</a>. In the <code>DeleteSnapshotSchedule</code> request, you identify the
    #          volume by providing its Amazon Resource Name (ARN). This operation is only supported for
    #          cached volume gateway types.</p>
    #
    #          <note>
    #
    #             <p>To list or delete a snapshot, you must use the Amazon EC2 API. For more information,
    #             go to <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html">DescribeSnapshots</a>
    #             in the <i>Amazon Elastic Compute Cloud API Reference</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteSnapshotScheduleInput}.
    #
    # @option params [String] :volume_arn
    #   <p>The volume which snapshot schedule to delete.</p>
    #
    # @return [Types::DeleteSnapshotScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot_schedule(
    #     volume_arn: 'VolumeARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSnapshotScheduleOutput
    #   resp.data.volume_arn #=> String
    #
    def delete_snapshot_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSnapshotScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSnapshotScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSnapshotSchedule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DeleteSnapshotSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSnapshotSchedule,
        stubs: @stubs,
        params_class: Params::DeleteSnapshotScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_snapshot_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified virtual tape. This operation is only supported in the tape gateway
    #          type.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTapeInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The unique Amazon Resource Name (ARN) of the gateway that the virtual tape to delete is
    #            associated with. Use the <a>ListGateways</a> operation to return a list of
    #            gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [String] :tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape to delete.</p>
    #
    # @option params [Boolean] :bypass_governance_retention
    #   <p>Set to <code>TRUE</code> to delete an archived tape that belongs to a custom pool with
    #            tape retention lock. Only archived tapes with tape retention lock set to
    #               <code>governance</code> can be deleted. Archived tapes with tape retention lock set to
    #               <code>compliance</code> can't be deleted.</p>
    #
    # @return [Types::DeleteTapeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tape(
    #     gateway_arn: 'GatewayARN', # required
    #     tape_arn: 'TapeARN', # required
    #     bypass_governance_retention: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTapeOutput
    #   resp.data.tape_arn #=> String
    #
    def delete_tape(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTapeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTapeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTape
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DeleteTape
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTape,
        stubs: @stubs,
        params_class: Params::DeleteTapeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_tape
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified virtual tape from the virtual tape shelf (VTS). This operation is
    #          only supported in the tape gateway type.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTapeArchiveInput}.
    #
    # @option params [String] :tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape to delete from the virtual tape shelf
    #            (VTS).</p>
    #
    # @option params [Boolean] :bypass_governance_retention
    #   <p>Set to <code>TRUE</code> to delete an archived tape that belongs to a custom pool with
    #            tape retention lock. Only archived tapes with tape retention lock set to
    #               <code>governance</code> can be deleted. Archived tapes with tape retention lock set to
    #               <code>compliance</code> can't be deleted.</p>
    #
    # @return [Types::DeleteTapeArchiveOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tape_archive(
    #     tape_arn: 'TapeARN', # required
    #     bypass_governance_retention: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTapeArchiveOutput
    #   resp.data.tape_arn #=> String
    #
    def delete_tape_archive(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTapeArchiveInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTapeArchiveInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTapeArchive
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DeleteTapeArchive
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTapeArchive,
        stubs: @stubs,
        params_class: Params::DeleteTapeArchiveOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_tape_archive
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a custom tape pool. A custom tape pool can only be deleted if there are no tapes
    #          in the pool and if there are no automatic tape creation policies that reference the custom
    #          tape pool.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTapePoolInput}.
    #
    # @option params [String] :pool_arn
    #   <p>The Amazon Resource Name (ARN) of the custom tape pool to delete.</p>
    #
    # @return [Types::DeleteTapePoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tape_pool(
    #     pool_arn: 'PoolARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTapePoolOutput
    #   resp.data.pool_arn #=> String
    #
    def delete_tape_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTapePoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTapePoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTapePool
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DeleteTapePool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTapePool,
        stubs: @stubs,
        params_class: Params::DeleteTapePoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_tape_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified storage volume that you previously created using the <a>CreateCachediSCSIVolume</a> or <a>CreateStorediSCSIVolume</a> API.
    #          This operation is only supported in the cached volume and stored volume types. For stored
    #          volume gateways, the local disk that was configured as the storage volume is not deleted.
    #          You can reuse the local disk to create another storage volume.</p>
    #
    #          <p>Before you delete a volume, make sure there are no iSCSI connections to the volume you
    #          are deleting. You should also make sure there is no snapshot in progress. You can use the
    #          Amazon Elastic Compute Cloud (Amazon EC2) API to query snapshots on the volume you are
    #          deleting and check the snapshot status. For more information, go to <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API
    #             Reference</i>.</p>
    #
    #          <p>In the request, you must provide the Amazon Resource Name (ARN) of the storage volume
    #          you want to delete.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVolumeInput}.
    #
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes.</p>
    #
    # @return [Types::DeleteVolumeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_volume(
    #     volume_arn: 'VolumeARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVolumeOutput
    #   resp.data.volume_arn #=> String
    #
    def delete_volume(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVolumeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVolumeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVolume
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DeleteVolume
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVolume,
        stubs: @stubs,
        params_class: Params::DeleteVolumeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_volume
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the most recent high availability monitoring test that was
    #          performed on the host in a cluster. If a test isn't performed, the status and start
    #          time in the response would be null.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAvailabilityMonitorTestInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::DescribeAvailabilityMonitorTestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_availability_monitor_test(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAvailabilityMonitorTestOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.status #=> String, one of ["COMPLETE", "FAILED", "PENDING"]
    #   resp.data.start_time #=> Time
    #
    def describe_availability_monitor_test(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAvailabilityMonitorTestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAvailabilityMonitorTestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAvailabilityMonitorTest
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeAvailabilityMonitorTest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAvailabilityMonitorTest,
        stubs: @stubs,
        params_class: Params::DescribeAvailabilityMonitorTestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_availability_monitor_test
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the bandwidth rate limits of a gateway. By default, these limits are not set,
    #          which means no bandwidth rate limiting is in effect. This operation is supported only for
    #          the stored volume, cached volume, and tape gateway types. To describe bandwidth rate limits
    #          for S3 file gateways, use <a>DescribeBandwidthRateLimitSchedule</a>.</p>
    #
    #          <p>This operation returns a value for a bandwidth rate limit only if the limit is set. If
    #          no limits are set for the gateway, then this operation returns only the gateway ARN in the
    #          response body. To specify which gateway to describe, use the Amazon Resource Name (ARN) of
    #          the gateway in your request.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBandwidthRateLimitInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::DescribeBandwidthRateLimitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bandwidth_rate_limit(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBandwidthRateLimitOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.average_upload_rate_limit_in_bits_per_sec #=> Integer
    #   resp.data.average_download_rate_limit_in_bits_per_sec #=> Integer
    #
    def describe_bandwidth_rate_limit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBandwidthRateLimitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBandwidthRateLimitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBandwidthRateLimit
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeBandwidthRateLimit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBandwidthRateLimit,
        stubs: @stubs,
        params_class: Params::DescribeBandwidthRateLimitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_bandwidth_rate_limit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns information about the bandwidth rate limit schedule of a gateway. By default,
    #          gateways do not have bandwidth rate limit schedules, which means no bandwidth rate limiting
    #          is in effect. This operation is supported only for volume, tape and S3 file gateways. FSx
    #          file gateways do not support bandwidth rate limits.</p>
    #
    #          <p>This operation returns information about a gateway's bandwidth rate limit schedule. A
    #          bandwidth rate limit schedule consists of one or more bandwidth rate limit intervals. A
    #          bandwidth rate limit interval defines a period of time on one or more days of the week,
    #          during which bandwidth rate limits are specified for uploading, downloading, or both. </p>
    #
    #          <p> A bandwidth rate limit interval consists of one or more days of the week, a start hour
    #          and minute, an ending hour and minute, and bandwidth rate limits for uploading and
    #          downloading </p>
    #
    #          <p> If no bandwidth rate limit schedule intervals are set for the gateway, this operation
    #          returns an empty response. To specify which gateway to describe, use the Amazon Resource
    #          Name (ARN) of the gateway in your request.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBandwidthRateLimitScheduleInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::DescribeBandwidthRateLimitScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bandwidth_rate_limit_schedule(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBandwidthRateLimitScheduleOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.bandwidth_rate_limit_intervals #=> Array<BandwidthRateLimitInterval>
    #   resp.data.bandwidth_rate_limit_intervals[0] #=> Types::BandwidthRateLimitInterval
    #   resp.data.bandwidth_rate_limit_intervals[0].start_hour_of_day #=> Integer
    #   resp.data.bandwidth_rate_limit_intervals[0].start_minute_of_hour #=> Integer
    #   resp.data.bandwidth_rate_limit_intervals[0].end_hour_of_day #=> Integer
    #   resp.data.bandwidth_rate_limit_intervals[0].end_minute_of_hour #=> Integer
    #   resp.data.bandwidth_rate_limit_intervals[0].days_of_week #=> Array<Integer>
    #   resp.data.bandwidth_rate_limit_intervals[0].days_of_week[0] #=> Integer
    #   resp.data.bandwidth_rate_limit_intervals[0].average_upload_rate_limit_in_bits_per_sec #=> Integer
    #   resp.data.bandwidth_rate_limit_intervals[0].average_download_rate_limit_in_bits_per_sec #=> Integer
    #
    def describe_bandwidth_rate_limit_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBandwidthRateLimitScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBandwidthRateLimitScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBandwidthRateLimitSchedule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeBandwidthRateLimitSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBandwidthRateLimitSchedule,
        stubs: @stubs,
        params_class: Params::DescribeBandwidthRateLimitScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_bandwidth_rate_limit_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the cache of a gateway. This operation is only supported in
    #          the cached volume, tape, and file gateway types.</p>
    #
    #          <p>The response includes disk IDs that are configured as cache, and it includes the amount
    #          of cache allocated and used.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCacheInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::DescribeCacheOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cache(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCacheOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.disk_ids #=> Array<String>
    #   resp.data.disk_ids[0] #=> String
    #   resp.data.cache_allocated_in_bytes #=> Integer
    #   resp.data.cache_used_percentage #=> Float
    #   resp.data.cache_dirty_percentage #=> Float
    #   resp.data.cache_hit_percentage #=> Float
    #   resp.data.cache_miss_percentage #=> Float
    #
    def describe_cache(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCacheInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCacheInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCache
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeCache
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCache,
        stubs: @stubs,
        params_class: Params::DescribeCacheOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cache
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a description of the gateway volumes specified in the request. This operation is
    #          only supported in the cached volume gateway types.</p>
    #
    #          <p>The list of gateway volumes in the request must be from one gateway. In the response,
    #             Storage Gateway returns volume information sorted by volume Amazon Resource Name
    #          (ARN).</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCachediSCSIVolumesInput}.
    #
    # @option params [Array<String>] :volume_ar_ns
    #   <p>An array of strings where each string represents the Amazon Resource Name (ARN) of a
    #            cached volume. All of the specified cached volumes must be from the same gateway. Use <a>ListVolumes</a> to get volume ARNs for a gateway.</p>
    #
    # @return [Types::DescribeCachediSCSIVolumesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cachedi_scsi_volumes(
    #     volume_ar_ns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCachediSCSIVolumesOutput
    #   resp.data.cachedi_scsi_volumes #=> Array<CachediSCSIVolume>
    #   resp.data.cachedi_scsi_volumes[0] #=> Types::CachediSCSIVolume
    #   resp.data.cachedi_scsi_volumes[0].volume_arn #=> String
    #   resp.data.cachedi_scsi_volumes[0].volume_id #=> String
    #   resp.data.cachedi_scsi_volumes[0].volume_type #=> String
    #   resp.data.cachedi_scsi_volumes[0].volume_status #=> String
    #   resp.data.cachedi_scsi_volumes[0].volume_attachment_status #=> String
    #   resp.data.cachedi_scsi_volumes[0].volume_size_in_bytes #=> Integer
    #   resp.data.cachedi_scsi_volumes[0].volume_progress #=> Float
    #   resp.data.cachedi_scsi_volumes[0].source_snapshot_id #=> String
    #   resp.data.cachedi_scsi_volumes[0].volumei_scsi_attributes #=> Types::VolumeiSCSIAttributes
    #   resp.data.cachedi_scsi_volumes[0].volumei_scsi_attributes.target_arn #=> String
    #   resp.data.cachedi_scsi_volumes[0].volumei_scsi_attributes.network_interface_id #=> String
    #   resp.data.cachedi_scsi_volumes[0].volumei_scsi_attributes.network_interface_port #=> Integer
    #   resp.data.cachedi_scsi_volumes[0].volumei_scsi_attributes.lun_number #=> Integer
    #   resp.data.cachedi_scsi_volumes[0].volumei_scsi_attributes.chap_enabled #=> Boolean
    #   resp.data.cachedi_scsi_volumes[0].created_date #=> Time
    #   resp.data.cachedi_scsi_volumes[0].volume_used_in_bytes #=> Integer
    #   resp.data.cachedi_scsi_volumes[0].kms_key #=> String
    #   resp.data.cachedi_scsi_volumes[0].target_name #=> String
    #
    def describe_cachedi_scsi_volumes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCachediSCSIVolumesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCachediSCSIVolumesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCachediSCSIVolumes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeCachediSCSIVolumes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCachediSCSIVolumes,
        stubs: @stubs,
        params_class: Params::DescribeCachediSCSIVolumesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cachedi_scsi_volumes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of Challenge-Handshake Authentication Protocol (CHAP) credentials
    #          information for a specified iSCSI target, one for each target-initiator pair. This
    #          operation is supported in the volume and tape gateway types.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeChapCredentialsInput}.
    #
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for
    #            specified VolumeARN.</p>
    #
    # @return [Types::DescribeChapCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_chap_credentials(
    #     target_arn: 'TargetARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChapCredentialsOutput
    #   resp.data.chap_credentials #=> Array<ChapInfo>
    #   resp.data.chap_credentials[0] #=> Types::ChapInfo
    #   resp.data.chap_credentials[0].target_arn #=> String
    #   resp.data.chap_credentials[0].secret_to_authenticate_initiator #=> String
    #   resp.data.chap_credentials[0].initiator_name #=> String
    #   resp.data.chap_credentials[0].secret_to_authenticate_target #=> String
    #
    def describe_chap_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChapCredentialsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChapCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChapCredentials
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeChapCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChapCredentials,
        stubs: @stubs,
        params_class: Params::DescribeChapCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_chap_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the file system association information. This operation is only supported for FSx
    #          File Gateways.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFileSystemAssociationsInput}.
    #
    # @option params [Array<String>] :file_system_association_arn_list
    #   <p>An array containing the Amazon Resource Name (ARN) of each file system association to be
    #            described.</p>
    #
    # @return [Types::DescribeFileSystemAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_file_system_associations(
    #     file_system_association_arn_list: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFileSystemAssociationsOutput
    #   resp.data.file_system_association_info_list #=> Array<FileSystemAssociationInfo>
    #   resp.data.file_system_association_info_list[0] #=> Types::FileSystemAssociationInfo
    #   resp.data.file_system_association_info_list[0].file_system_association_arn #=> String
    #   resp.data.file_system_association_info_list[0].location_arn #=> String
    #   resp.data.file_system_association_info_list[0].file_system_association_status #=> String
    #   resp.data.file_system_association_info_list[0].audit_destination_arn #=> String
    #   resp.data.file_system_association_info_list[0].gateway_arn #=> String
    #   resp.data.file_system_association_info_list[0].tags #=> Array<Tag>
    #   resp.data.file_system_association_info_list[0].tags[0] #=> Types::Tag
    #   resp.data.file_system_association_info_list[0].tags[0].key #=> String
    #   resp.data.file_system_association_info_list[0].tags[0].value #=> String
    #   resp.data.file_system_association_info_list[0].cache_attributes #=> Types::CacheAttributes
    #   resp.data.file_system_association_info_list[0].cache_attributes.cache_stale_timeout_in_seconds #=> Integer
    #   resp.data.file_system_association_info_list[0].endpoint_network_configuration #=> Types::EndpointNetworkConfiguration
    #   resp.data.file_system_association_info_list[0].endpoint_network_configuration.ip_addresses #=> Array<String>
    #   resp.data.file_system_association_info_list[0].endpoint_network_configuration.ip_addresses[0] #=> String
    #   resp.data.file_system_association_info_list[0].file_system_association_status_details #=> Array<FileSystemAssociationStatusDetail>
    #   resp.data.file_system_association_info_list[0].file_system_association_status_details[0] #=> Types::FileSystemAssociationStatusDetail
    #   resp.data.file_system_association_info_list[0].file_system_association_status_details[0].error_code #=> String
    #
    def describe_file_system_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFileSystemAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFileSystemAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFileSystemAssociations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeFileSystemAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFileSystemAssociations,
        stubs: @stubs,
        params_class: Params::DescribeFileSystemAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_file_system_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata about a gateway such as its name, network interfaces, configured time
    #          zone, and the state (whether the gateway is running or not). To specify which gateway to
    #          describe, use the Amazon Resource Name (ARN) of the gateway in your request.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGatewayInformationInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::DescribeGatewayInformationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_gateway_information(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGatewayInformationOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.gateway_id #=> String
    #   resp.data.gateway_name #=> String
    #   resp.data.gateway_timezone #=> String
    #   resp.data.gateway_state #=> String
    #   resp.data.gateway_network_interfaces #=> Array<NetworkInterface>
    #   resp.data.gateway_network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.gateway_network_interfaces[0].ipv4_address #=> String
    #   resp.data.gateway_network_interfaces[0].mac_address #=> String
    #   resp.data.gateway_network_interfaces[0].ipv6_address #=> String
    #   resp.data.gateway_type #=> String
    #   resp.data.next_update_availability_date #=> String
    #   resp.data.last_software_update #=> String
    #   resp.data.ec2_instance_id #=> String
    #   resp.data.ec2_instance_region #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.vpc_endpoint #=> String
    #   resp.data.cloud_watch_log_group_arn #=> String
    #   resp.data.host_environment #=> String, one of ["VMWARE", "HYPER-V", "EC2", "KVM", "OTHER", "SNOWBALL"]
    #   resp.data.endpoint_type #=> String
    #   resp.data.software_updates_end_date #=> String
    #   resp.data.deprecation_date #=> String
    #   resp.data.gateway_capacity #=> String, one of ["Small", "Medium", "Large"]
    #   resp.data.supported_gateway_capacities #=> Array<String>
    #   resp.data.supported_gateway_capacities[0] #=> String, one of ["Small", "Medium", "Large"]
    #   resp.data.host_environment_id #=> String
    #
    def describe_gateway_information(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGatewayInformationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGatewayInformationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGatewayInformation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeGatewayInformation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGatewayInformation,
        stubs: @stubs,
        params_class: Params::DescribeGatewayInformationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_gateway_information
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns your gateway's weekly maintenance start time including the day and time of
    #          the week. Note that values are in terms of the gateway's time zone.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMaintenanceStartTimeInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::DescribeMaintenanceStartTimeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_start_time(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMaintenanceStartTimeOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.hour_of_day #=> Integer
    #   resp.data.minute_of_hour #=> Integer
    #   resp.data.day_of_week #=> Integer
    #   resp.data.day_of_month #=> Integer
    #   resp.data.timezone #=> String
    #
    def describe_maintenance_start_time(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMaintenanceStartTimeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMaintenanceStartTimeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMaintenanceStartTime
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeMaintenanceStartTime
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMaintenanceStartTime,
        stubs: @stubs,
        params_class: Params::DescribeMaintenanceStartTimeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_maintenance_start_time
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a description for one or more Network File System (NFS) file shares from an S3 File
    #          Gateway. This operation is only supported for S3 File Gateways.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeNFSFileSharesInput}.
    #
    # @option params [Array<String>] :file_share_arn_list
    #   <p>An array containing the Amazon Resource Name (ARN) of each file share to be
    #            described.</p>
    #
    # @return [Types::DescribeNFSFileSharesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_nfs_file_shares(
    #     file_share_arn_list: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeNFSFileSharesOutput
    #   resp.data.nfs_file_share_info_list #=> Array<NFSFileShareInfo>
    #   resp.data.nfs_file_share_info_list[0] #=> Types::NFSFileShareInfo
    #   resp.data.nfs_file_share_info_list[0].nfs_file_share_defaults #=> Types::NFSFileShareDefaults
    #   resp.data.nfs_file_share_info_list[0].nfs_file_share_defaults.file_mode #=> String
    #   resp.data.nfs_file_share_info_list[0].nfs_file_share_defaults.directory_mode #=> String
    #   resp.data.nfs_file_share_info_list[0].nfs_file_share_defaults.group_id #=> Integer
    #   resp.data.nfs_file_share_info_list[0].nfs_file_share_defaults.owner_id #=> Integer
    #   resp.data.nfs_file_share_info_list[0].file_share_arn #=> String
    #   resp.data.nfs_file_share_info_list[0].file_share_id #=> String
    #   resp.data.nfs_file_share_info_list[0].file_share_status #=> String
    #   resp.data.nfs_file_share_info_list[0].gateway_arn #=> String
    #   resp.data.nfs_file_share_info_list[0].kms_encrypted #=> Boolean
    #   resp.data.nfs_file_share_info_list[0].kms_key #=> String
    #   resp.data.nfs_file_share_info_list[0].path #=> String
    #   resp.data.nfs_file_share_info_list[0].role #=> String
    #   resp.data.nfs_file_share_info_list[0].location_arn #=> String
    #   resp.data.nfs_file_share_info_list[0].default_storage_class #=> String
    #   resp.data.nfs_file_share_info_list[0].object_acl #=> String, one of ["private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "aws-exec-read"]
    #   resp.data.nfs_file_share_info_list[0].client_list #=> Array<String>
    #   resp.data.nfs_file_share_info_list[0].client_list[0] #=> String
    #   resp.data.nfs_file_share_info_list[0].squash #=> String
    #   resp.data.nfs_file_share_info_list[0].read_only #=> Boolean
    #   resp.data.nfs_file_share_info_list[0].guess_mime_type_enabled #=> Boolean
    #   resp.data.nfs_file_share_info_list[0].requester_pays #=> Boolean
    #   resp.data.nfs_file_share_info_list[0].tags #=> Array<Tag>
    #   resp.data.nfs_file_share_info_list[0].tags[0] #=> Types::Tag
    #   resp.data.nfs_file_share_info_list[0].tags[0].key #=> String
    #   resp.data.nfs_file_share_info_list[0].tags[0].value #=> String
    #   resp.data.nfs_file_share_info_list[0].file_share_name #=> String
    #   resp.data.nfs_file_share_info_list[0].cache_attributes #=> Types::CacheAttributes
    #   resp.data.nfs_file_share_info_list[0].cache_attributes.cache_stale_timeout_in_seconds #=> Integer
    #   resp.data.nfs_file_share_info_list[0].notification_policy #=> String
    #   resp.data.nfs_file_share_info_list[0].vpc_endpoint_dns_name #=> String
    #   resp.data.nfs_file_share_info_list[0].bucket_region #=> String
    #   resp.data.nfs_file_share_info_list[0].audit_destination_arn #=> String
    #
    def describe_nfs_file_shares(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeNFSFileSharesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeNFSFileSharesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeNFSFileShares
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeNFSFileShares
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeNFSFileShares,
        stubs: @stubs,
        params_class: Params::DescribeNFSFileSharesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_nfs_file_shares
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a description for one or more Server Message Block (SMB) file shares from a S3 File
    #          Gateway. This operation is only supported for S3 File Gateways.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSMBFileSharesInput}.
    #
    # @option params [Array<String>] :file_share_arn_list
    #   <p>An array containing the Amazon Resource Name (ARN) of each file share to be
    #            described.</p>
    #
    # @return [Types::DescribeSMBFileSharesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_smb_file_shares(
    #     file_share_arn_list: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSMBFileSharesOutput
    #   resp.data.smb_file_share_info_list #=> Array<SMBFileShareInfo>
    #   resp.data.smb_file_share_info_list[0] #=> Types::SMBFileShareInfo
    #   resp.data.smb_file_share_info_list[0].file_share_arn #=> String
    #   resp.data.smb_file_share_info_list[0].file_share_id #=> String
    #   resp.data.smb_file_share_info_list[0].file_share_status #=> String
    #   resp.data.smb_file_share_info_list[0].gateway_arn #=> String
    #   resp.data.smb_file_share_info_list[0].kms_encrypted #=> Boolean
    #   resp.data.smb_file_share_info_list[0].kms_key #=> String
    #   resp.data.smb_file_share_info_list[0].path #=> String
    #   resp.data.smb_file_share_info_list[0].role #=> String
    #   resp.data.smb_file_share_info_list[0].location_arn #=> String
    #   resp.data.smb_file_share_info_list[0].default_storage_class #=> String
    #   resp.data.smb_file_share_info_list[0].object_acl #=> String, one of ["private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "aws-exec-read"]
    #   resp.data.smb_file_share_info_list[0].read_only #=> Boolean
    #   resp.data.smb_file_share_info_list[0].guess_mime_type_enabled #=> Boolean
    #   resp.data.smb_file_share_info_list[0].requester_pays #=> Boolean
    #   resp.data.smb_file_share_info_list[0].smbacl_enabled #=> Boolean
    #   resp.data.smb_file_share_info_list[0].access_based_enumeration #=> Boolean
    #   resp.data.smb_file_share_info_list[0].admin_user_list #=> Array<String>
    #   resp.data.smb_file_share_info_list[0].admin_user_list[0] #=> String
    #   resp.data.smb_file_share_info_list[0].valid_user_list #=> Array<String>
    #   resp.data.smb_file_share_info_list[0].invalid_user_list #=> Array<String>
    #   resp.data.smb_file_share_info_list[0].audit_destination_arn #=> String
    #   resp.data.smb_file_share_info_list[0].authentication #=> String
    #   resp.data.smb_file_share_info_list[0].case_sensitivity #=> String, one of ["ClientSpecified", "CaseSensitive"]
    #   resp.data.smb_file_share_info_list[0].tags #=> Array<Tag>
    #   resp.data.smb_file_share_info_list[0].tags[0] #=> Types::Tag
    #   resp.data.smb_file_share_info_list[0].tags[0].key #=> String
    #   resp.data.smb_file_share_info_list[0].tags[0].value #=> String
    #   resp.data.smb_file_share_info_list[0].file_share_name #=> String
    #   resp.data.smb_file_share_info_list[0].cache_attributes #=> Types::CacheAttributes
    #   resp.data.smb_file_share_info_list[0].cache_attributes.cache_stale_timeout_in_seconds #=> Integer
    #   resp.data.smb_file_share_info_list[0].notification_policy #=> String
    #   resp.data.smb_file_share_info_list[0].vpc_endpoint_dns_name #=> String
    #   resp.data.smb_file_share_info_list[0].bucket_region #=> String
    #   resp.data.smb_file_share_info_list[0].oplocks_enabled #=> Boolean
    #
    def describe_smb_file_shares(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSMBFileSharesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSMBFileSharesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSMBFileShares
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeSMBFileShares
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSMBFileShares,
        stubs: @stubs,
        params_class: Params::DescribeSMBFileSharesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_smb_file_shares
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a description of a Server Message Block (SMB) file share settings from a file
    #          gateway. This operation is only supported for file gateways.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSMBSettingsInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::DescribeSMBSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_smb_settings(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSMBSettingsOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.domain_name #=> String
    #   resp.data.active_directory_status #=> String, one of ["ACCESS_DENIED", "DETACHED", "JOINED", "JOINING", "NETWORK_ERROR", "TIMEOUT", "UNKNOWN_ERROR"]
    #   resp.data.smb_guest_password_set #=> Boolean
    #   resp.data.smb_security_strategy #=> String, one of ["ClientSpecified", "MandatorySigning", "MandatoryEncryption"]
    #   resp.data.file_shares_visible #=> Boolean
    #   resp.data.smb_local_groups #=> Types::SMBLocalGroups
    #   resp.data.smb_local_groups.gateway_admins #=> Array<String>
    #   resp.data.smb_local_groups.gateway_admins[0] #=> String
    #
    def describe_smb_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSMBSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSMBSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSMBSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeSMBSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSMBSettings,
        stubs: @stubs,
        params_class: Params::DescribeSMBSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_smb_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the snapshot schedule for the specified gateway volume. The snapshot schedule
    #          information includes intervals at which snapshots are automatically initiated on the
    #          volume. This operation is only supported in the cached volume and stored volume
    #          types.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSnapshotScheduleInput}.
    #
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes.</p>
    #
    # @return [Types::DescribeSnapshotScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshot_schedule(
    #     volume_arn: 'VolumeARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSnapshotScheduleOutput
    #   resp.data.volume_arn #=> String
    #   resp.data.start_at #=> Integer
    #   resp.data.recurrence_in_hours #=> Integer
    #   resp.data.description #=> String
    #   resp.data.timezone #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def describe_snapshot_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSnapshotScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSnapshotScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSnapshotSchedule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeSnapshotSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSnapshotSchedule,
        stubs: @stubs,
        params_class: Params::DescribeSnapshotScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_snapshot_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the description of the gateway volumes specified in the request. The list of
    #          gateway volumes in the request must be from one gateway. In the response, Storage Gateway returns volume information sorted by volume ARNs. This operation is only
    #          supported in stored volume gateway type.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStorediSCSIVolumesInput}.
    #
    # @option params [Array<String>] :volume_ar_ns
    #   <p>An array of strings where each string represents the Amazon Resource Name (ARN) of a
    #            stored volume. All of the specified stored volumes must be from the same gateway. Use <a>ListVolumes</a> to get volume ARNs for a gateway.</p>
    #
    # @return [Types::DescribeStorediSCSIVolumesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_storedi_scsi_volumes(
    #     volume_ar_ns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStorediSCSIVolumesOutput
    #   resp.data.storedi_scsi_volumes #=> Array<StorediSCSIVolume>
    #   resp.data.storedi_scsi_volumes[0] #=> Types::StorediSCSIVolume
    #   resp.data.storedi_scsi_volumes[0].volume_arn #=> String
    #   resp.data.storedi_scsi_volumes[0].volume_id #=> String
    #   resp.data.storedi_scsi_volumes[0].volume_type #=> String
    #   resp.data.storedi_scsi_volumes[0].volume_status #=> String
    #   resp.data.storedi_scsi_volumes[0].volume_attachment_status #=> String
    #   resp.data.storedi_scsi_volumes[0].volume_size_in_bytes #=> Integer
    #   resp.data.storedi_scsi_volumes[0].volume_progress #=> Float
    #   resp.data.storedi_scsi_volumes[0].volume_disk_id #=> String
    #   resp.data.storedi_scsi_volumes[0].source_snapshot_id #=> String
    #   resp.data.storedi_scsi_volumes[0].preserved_existing_data #=> Boolean
    #   resp.data.storedi_scsi_volumes[0].volumei_scsi_attributes #=> Types::VolumeiSCSIAttributes
    #   resp.data.storedi_scsi_volumes[0].volumei_scsi_attributes.target_arn #=> String
    #   resp.data.storedi_scsi_volumes[0].volumei_scsi_attributes.network_interface_id #=> String
    #   resp.data.storedi_scsi_volumes[0].volumei_scsi_attributes.network_interface_port #=> Integer
    #   resp.data.storedi_scsi_volumes[0].volumei_scsi_attributes.lun_number #=> Integer
    #   resp.data.storedi_scsi_volumes[0].volumei_scsi_attributes.chap_enabled #=> Boolean
    #   resp.data.storedi_scsi_volumes[0].created_date #=> Time
    #   resp.data.storedi_scsi_volumes[0].volume_used_in_bytes #=> Integer
    #   resp.data.storedi_scsi_volumes[0].kms_key #=> String
    #   resp.data.storedi_scsi_volumes[0].target_name #=> String
    #
    def describe_storedi_scsi_volumes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStorediSCSIVolumesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStorediSCSIVolumesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStorediSCSIVolumes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeStorediSCSIVolumes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStorediSCSIVolumes,
        stubs: @stubs,
        params_class: Params::DescribeStorediSCSIVolumesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_storedi_scsi_volumes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a description of specified virtual tapes in the virtual tape shelf (VTS). This
    #          operation is only supported in the tape gateway type.</p>
    #
    #          <p>If a specific <code>TapeARN</code> is not specified, Storage Gateway returns a
    #          description of all virtual tapes found in the VTS associated with your account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTapeArchivesInput}.
    #
    # @option params [Array<String>] :tape_ar_ns
    #   <p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual
    #            tapes you want to describe.</p>
    #
    # @option params [String] :marker
    #   <p>An opaque string that indicates the position at which to begin describing virtual
    #            tapes.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies that the number of virtual tapes described be limited to the specified
    #            number.</p>
    #
    # @return [Types::DescribeTapeArchivesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tape_archives(
    #     tape_ar_ns: [
    #       'member'
    #     ],
    #     marker: 'Marker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTapeArchivesOutput
    #   resp.data.tape_archives #=> Array<TapeArchive>
    #   resp.data.tape_archives[0] #=> Types::TapeArchive
    #   resp.data.tape_archives[0].tape_arn #=> String
    #   resp.data.tape_archives[0].tape_barcode #=> String
    #   resp.data.tape_archives[0].tape_created_date #=> Time
    #   resp.data.tape_archives[0].tape_size_in_bytes #=> Integer
    #   resp.data.tape_archives[0].completion_time #=> Time
    #   resp.data.tape_archives[0].retrieved_to #=> String
    #   resp.data.tape_archives[0].tape_status #=> String
    #   resp.data.tape_archives[0].tape_used_in_bytes #=> Integer
    #   resp.data.tape_archives[0].kms_key #=> String
    #   resp.data.tape_archives[0].pool_id #=> String
    #   resp.data.tape_archives[0].worm #=> Boolean
    #   resp.data.tape_archives[0].retention_start_date #=> Time
    #   resp.data.tape_archives[0].pool_entry_date #=> Time
    #   resp.data.marker #=> String
    #
    def describe_tape_archives(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTapeArchivesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTapeArchivesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTapeArchives
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeTapeArchives
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTapeArchives,
        stubs: @stubs,
        params_class: Params::DescribeTapeArchivesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_tape_archives
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of virtual tape recovery points that are available for the specified tape
    #          gateway.</p>
    #
    #          <p>A recovery point is a point-in-time view of a virtual tape at which all the data on the
    #          virtual tape is consistent. If your gateway crashes, virtual tapes that have recovery
    #          points can be recovered to a new gateway. This operation is only supported in the tape
    #          gateway type.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTapeRecoveryPointsInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [String] :marker
    #   <p>An opaque string that indicates the position at which to begin describing the virtual
    #            tape recovery points.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies that the number of virtual tape recovery points that are described be limited
    #            to the specified number.</p>
    #
    # @return [Types::DescribeTapeRecoveryPointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tape_recovery_points(
    #     gateway_arn: 'GatewayARN', # required
    #     marker: 'Marker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTapeRecoveryPointsOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.tape_recovery_point_infos #=> Array<TapeRecoveryPointInfo>
    #   resp.data.tape_recovery_point_infos[0] #=> Types::TapeRecoveryPointInfo
    #   resp.data.tape_recovery_point_infos[0].tape_arn #=> String
    #   resp.data.tape_recovery_point_infos[0].tape_recovery_point_time #=> Time
    #   resp.data.tape_recovery_point_infos[0].tape_size_in_bytes #=> Integer
    #   resp.data.tape_recovery_point_infos[0].tape_status #=> String
    #   resp.data.marker #=> String
    #
    def describe_tape_recovery_points(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTapeRecoveryPointsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTapeRecoveryPointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTapeRecoveryPoints
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeTapeRecoveryPoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTapeRecoveryPoints,
        stubs: @stubs,
        params_class: Params::DescribeTapeRecoveryPointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_tape_recovery_points
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a description of the specified Amazon Resource Name (ARN) of virtual tapes. If a
    #             <code>TapeARN</code> is not specified, returns a description of all virtual tapes
    #          associated with the specified gateway. This operation is only supported in the tape gateway
    #          type.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTapesInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [Array<String>] :tape_ar_ns
    #   <p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual
    #            tapes you want to describe. If this parameter is not specified, Tape gateway returns a
    #            description of all virtual tapes associated with the specified gateway.</p>
    #
    # @option params [String] :marker
    #   <p>A marker value, obtained in a previous call to <code>DescribeTapes</code>. This marker
    #            indicates which page of results to retrieve.</p>
    #
    #            <p>If not specified, the first page of results is retrieved.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies that the number of virtual tapes described be limited to the specified
    #            number.</p>
    #
    #            <note>
    #               <p>Amazon Web Services may impose its own limit, if this field is not set.</p>
    #            </note>
    #
    # @return [Types::DescribeTapesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tapes(
    #     gateway_arn: 'GatewayARN', # required
    #     tape_ar_ns: [
    #       'member'
    #     ],
    #     marker: 'Marker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTapesOutput
    #   resp.data.tapes #=> Array<Tape>
    #   resp.data.tapes[0] #=> Types::Tape
    #   resp.data.tapes[0].tape_arn #=> String
    #   resp.data.tapes[0].tape_barcode #=> String
    #   resp.data.tapes[0].tape_created_date #=> Time
    #   resp.data.tapes[0].tape_size_in_bytes #=> Integer
    #   resp.data.tapes[0].tape_status #=> String
    #   resp.data.tapes[0].vtl_device #=> String
    #   resp.data.tapes[0].progress #=> Float
    #   resp.data.tapes[0].tape_used_in_bytes #=> Integer
    #   resp.data.tapes[0].kms_key #=> String
    #   resp.data.tapes[0].pool_id #=> String
    #   resp.data.tapes[0].worm #=> Boolean
    #   resp.data.tapes[0].retention_start_date #=> Time
    #   resp.data.tapes[0].pool_entry_date #=> Time
    #   resp.data.marker #=> String
    #
    def describe_tapes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTapesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTapesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTapes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeTapes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTapes,
        stubs: @stubs,
        params_class: Params::DescribeTapesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_tapes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the upload buffer of a gateway. This operation is supported
    #          for the stored volume, cached volume, and tape gateway types.</p>
    #
    #          <p>The response includes disk IDs that are configured as upload buffer space, and it
    #          includes the amount of upload buffer space allocated and used.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUploadBufferInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::DescribeUploadBufferOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_upload_buffer(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUploadBufferOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.disk_ids #=> Array<String>
    #   resp.data.disk_ids[0] #=> String
    #   resp.data.upload_buffer_used_in_bytes #=> Integer
    #   resp.data.upload_buffer_allocated_in_bytes #=> Integer
    #
    def describe_upload_buffer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUploadBufferInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUploadBufferInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUploadBuffer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeUploadBuffer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUploadBuffer,
        stubs: @stubs,
        params_class: Params::DescribeUploadBufferOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_upload_buffer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a description of virtual tape library (VTL) devices for the specified tape
    #          gateway. In the response, Storage Gateway returns VTL device information.</p>
    #
    #          <p>This operation is only supported in the tape gateway type.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVTLDevicesInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [Array<String>] :vtl_device_ar_ns
    #   <p>An array of strings, where each string represents the Amazon Resource Name (ARN) of a
    #            VTL device.</p>
    #
    #            <note>
    #               <p>All of the specified VTL devices must be from the same gateway. If no VTL devices are
    #               specified, the result will contain all devices on the specified gateway.</p>
    #            </note>
    #
    # @option params [String] :marker
    #   <p>An opaque string that indicates the position at which to begin describing the VTL
    #            devices.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies that the number of VTL devices described be limited to the specified
    #            number.</p>
    #
    # @return [Types::DescribeVTLDevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vtl_devices(
    #     gateway_arn: 'GatewayARN', # required
    #     vtl_device_ar_ns: [
    #       'member'
    #     ],
    #     marker: 'Marker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVTLDevicesOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.vtl_devices #=> Array<VTLDevice>
    #   resp.data.vtl_devices[0] #=> Types::VTLDevice
    #   resp.data.vtl_devices[0].vtl_device_arn #=> String
    #   resp.data.vtl_devices[0].vtl_device_type #=> String
    #   resp.data.vtl_devices[0].vtl_device_vendor #=> String
    #   resp.data.vtl_devices[0].vtl_device_product_identifier #=> String
    #   resp.data.vtl_devices[0].devicei_scsi_attributes #=> Types::DeviceiSCSIAttributes
    #   resp.data.vtl_devices[0].devicei_scsi_attributes.target_arn #=> String
    #   resp.data.vtl_devices[0].devicei_scsi_attributes.network_interface_id #=> String
    #   resp.data.vtl_devices[0].devicei_scsi_attributes.network_interface_port #=> Integer
    #   resp.data.vtl_devices[0].devicei_scsi_attributes.chap_enabled #=> Boolean
    #   resp.data.marker #=> String
    #
    def describe_vtl_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVTLDevicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVTLDevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVTLDevices
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeVTLDevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVTLDevices,
        stubs: @stubs,
        params_class: Params::DescribeVTLDevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_vtl_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the working storage of a gateway. This operation is only
    #          supported in the stored volumes gateway type. This operation is deprecated in cached
    #          volumes API version (20120630). Use DescribeUploadBuffer instead.</p>
    #
    #          <note>
    #             <p>Working storage is also referred to as upload buffer. You can also use the
    #             DescribeUploadBuffer operation to add upload buffer to a stored volume gateway.</p>
    #          </note>
    #
    #          <p>The response includes disk IDs that are configured as working storage, and it includes
    #          the amount of working storage allocated and used.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorkingStorageInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::DescribeWorkingStorageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_working_storage(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorkingStorageOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.disk_ids #=> Array<String>
    #   resp.data.disk_ids[0] #=> String
    #   resp.data.working_storage_used_in_bytes #=> Integer
    #   resp.data.working_storage_allocated_in_bytes #=> Integer
    #
    def describe_working_storage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorkingStorageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorkingStorageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorkingStorage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DescribeWorkingStorage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorkingStorage,
        stubs: @stubs,
        params_class: Params::DescribeWorkingStorageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_working_storage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disconnects a volume from an iSCSI connection and then detaches the volume from the
    #          specified gateway. Detaching and attaching a volume enables you to recover your data from
    #          one gateway to a different gateway without creating a snapshot. It also makes it easier to
    #          move your volumes from an on-premises gateway to a gateway hosted on an Amazon EC2
    #          instance. This operation is only supported in the volume gateway type.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachVolumeInput}.
    #
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume to detach from the gateway.</p>
    #
    # @option params [Boolean] :force_detach
    #   <p>Set to <code>true</code> to forcibly remove the iSCSI connection of the target volume
    #            and detach the volume. The default is <code>false</code>. If this value is set to
    #               <code>false</code>, you must manually disconnect the iSCSI connection from the target
    #            volume.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @return [Types::DetachVolumeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_volume(
    #     volume_arn: 'VolumeARN', # required
    #     force_detach: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachVolumeOutput
    #   resp.data.volume_arn #=> String
    #
    def detach_volume(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachVolumeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachVolumeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachVolume
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DetachVolume
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachVolume,
        stubs: @stubs,
        params_class: Params::DetachVolumeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_volume
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables a tape gateway when the gateway is no longer functioning. For example, if your
    #          gateway VM is damaged, you can disable the gateway so you can recover virtual tapes.</p>
    #
    #          <p>Use this operation for a tape gateway that is not reachable or not functioning. This
    #          operation is only supported in the tape gateway type.</p>
    #
    #          <important>
    #             <p>After a gateway is disabled, it cannot be enabled.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::DisableGatewayInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::DisableGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_gateway(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableGatewayOutput
    #   resp.data.gateway_arn #=> String
    #
    def disable_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableGateway
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DisableGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableGateway,
        stubs: @stubs,
        params_class: Params::DisableGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates an Amazon FSx file system from the specified gateway. After the
    #          disassociation process finishes, the gateway can no longer access the Amazon FSx
    #          file system. This operation is only supported in the FSx File Gateway type.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateFileSystemInput}.
    #
    # @option params [String] :file_system_association_arn
    #   <p>The Amazon Resource Name (ARN) of the file system association to be deleted.</p>
    #
    # @option params [Boolean] :force_delete
    #   <p>If this value is set to true, the operation disassociates an Amazon FSx file
    #            system immediately. It ends all data uploads to the file system, and the file system
    #            association enters the <code>FORCE_DELETING</code> status. If this value is set to false,
    #            the Amazon FSx file system does not disassociate until all data is uploaded.</p>
    #
    # @return [Types::DisassociateFileSystemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_file_system(
    #     file_system_association_arn: 'FileSystemAssociationARN', # required
    #     force_delete: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateFileSystemOutput
    #   resp.data.file_system_association_arn #=> String
    #
    def disassociate_file_system(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateFileSystemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateFileSystemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateFileSystem
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::DisassociateFileSystem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateFileSystem,
        stubs: @stubs,
        params_class: Params::DisassociateFileSystemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_file_system
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a file gateway to an Active Directory domain. This operation is only supported for
    #          file gateways that support the SMB file protocol.</p>
    #
    # @param [Hash] params
    #   See {Types::JoinDomainInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <code>ListGateways</code>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain that you want the gateway to join.</p>
    #
    # @option params [String] :organizational_unit
    #   <p>The organizational unit (OU) is a container in an Active Directory that can hold users,
    #            groups, computers, and other OUs and this parameter specifies the OU that the gateway will
    #            join within the AD domain.</p>
    #
    # @option params [Array<String>] :domain_controllers
    #   <p>List of IPv4 addresses, NetBIOS names, or host names of your domain server. If you need
    #            to specify the port number include it after the colon (“:”). For example,
    #               <code>mydc.mydomain.com:389</code>.</p>
    #
    # @option params [Integer] :timeout_in_seconds
    #   <p>Specifies the time in seconds, in which the <code>JoinDomain</code> operation must
    #            complete. The default is 20 seconds.</p>
    #
    # @option params [String] :user_name
    #   <p>Sets the user name of user who has permission to add the gateway to the Active Directory
    #            domain. The domain user account should be enabled to join computers to the domain. For
    #            example, you can use the domain administrator account or an account with delegated
    #            permissions to join computers to the domain.</p>
    #
    # @option params [String] :password
    #   <p>Sets the password of the user who has permission to add the gateway to the Active
    #            Directory domain.</p>
    #
    # @return [Types::JoinDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.join_domain(
    #     gateway_arn: 'GatewayARN', # required
    #     domain_name: 'DomainName', # required
    #     organizational_unit: 'OrganizationalUnit',
    #     domain_controllers: [
    #       'member'
    #     ],
    #     timeout_in_seconds: 1,
    #     user_name: 'UserName', # required
    #     password: 'Password' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::JoinDomainOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.active_directory_status #=> String, one of ["ACCESS_DENIED", "DETACHED", "JOINED", "JOINING", "NETWORK_ERROR", "TIMEOUT", "UNKNOWN_ERROR"]
    #
    def join_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::JoinDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::JoinDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::JoinDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::JoinDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::JoinDomain,
        stubs: @stubs,
        params_class: Params::JoinDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :join_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the automatic tape creation policies for a gateway. If there are no automatic tape
    #          creation policies for the gateway, it returns an empty list.</p>
    #
    #          <p>This operation is only supported for tape gateways.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAutomaticTapeCreationPoliciesInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::ListAutomaticTapeCreationPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_automatic_tape_creation_policies(
    #     gateway_arn: 'GatewayARN'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAutomaticTapeCreationPoliciesOutput
    #   resp.data.automatic_tape_creation_policy_infos #=> Array<AutomaticTapeCreationPolicyInfo>
    #   resp.data.automatic_tape_creation_policy_infos[0] #=> Types::AutomaticTapeCreationPolicyInfo
    #   resp.data.automatic_tape_creation_policy_infos[0].automatic_tape_creation_rules #=> Array<AutomaticTapeCreationRule>
    #   resp.data.automatic_tape_creation_policy_infos[0].automatic_tape_creation_rules[0] #=> Types::AutomaticTapeCreationRule
    #   resp.data.automatic_tape_creation_policy_infos[0].automatic_tape_creation_rules[0].tape_barcode_prefix #=> String
    #   resp.data.automatic_tape_creation_policy_infos[0].automatic_tape_creation_rules[0].pool_id #=> String
    #   resp.data.automatic_tape_creation_policy_infos[0].automatic_tape_creation_rules[0].tape_size_in_bytes #=> Integer
    #   resp.data.automatic_tape_creation_policy_infos[0].automatic_tape_creation_rules[0].minimum_num_tapes #=> Integer
    #   resp.data.automatic_tape_creation_policy_infos[0].automatic_tape_creation_rules[0].worm #=> Boolean
    #   resp.data.automatic_tape_creation_policy_infos[0].gateway_arn #=> String
    #
    def list_automatic_tape_creation_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAutomaticTapeCreationPoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAutomaticTapeCreationPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAutomaticTapeCreationPolicies
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::ListAutomaticTapeCreationPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAutomaticTapeCreationPolicies,
        stubs: @stubs,
        params_class: Params::ListAutomaticTapeCreationPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_automatic_tape_creation_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of the file shares for a specific S3 File Gateway, or the list of file
    #          shares that belong to the calling user account. This operation is only supported for S3
    #          File Gateways.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFileSharesInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway whose file shares you want to list. If
    #            this field is not present, all file shares under your account are listed.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of file shares to return in the response. The value must be an
    #            integer with a value greater than zero. Optional.</p>
    #
    # @option params [String] :marker
    #   <p>Opaque pagination token returned from a previous ListFileShares operation. If present,
    #               <code>Marker</code> specifies where to continue the list from after a previous call to
    #            ListFileShares. Optional.</p>
    #
    # @return [Types::ListFileSharesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_file_shares(
    #     gateway_arn: 'GatewayARN',
    #     limit: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFileSharesOutput
    #   resp.data.marker #=> String
    #   resp.data.next_marker #=> String
    #   resp.data.file_share_info_list #=> Array<FileShareInfo>
    #   resp.data.file_share_info_list[0] #=> Types::FileShareInfo
    #   resp.data.file_share_info_list[0].file_share_type #=> String, one of ["NFS", "SMB"]
    #   resp.data.file_share_info_list[0].file_share_arn #=> String
    #   resp.data.file_share_info_list[0].file_share_id #=> String
    #   resp.data.file_share_info_list[0].file_share_status #=> String
    #   resp.data.file_share_info_list[0].gateway_arn #=> String
    #
    def list_file_shares(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFileSharesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFileSharesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFileShares
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::ListFileShares
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFileShares,
        stubs: @stubs,
        params_class: Params::ListFileSharesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_file_shares
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of <code>FileSystemAssociationSummary</code> objects. Each object contains a
    #          summary of a file system association. This operation is only supported for FSx File
    #          Gateways.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFileSystemAssociationsInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of file system associations to return in the response. If present,
    #               <code>Limit</code> must be an integer with a value greater than zero. Optional.</p>
    #
    # @option params [String] :marker
    #   <p>Opaque pagination token returned from a previous <code>ListFileSystemAssociations</code>
    #            operation. If present, <code>Marker</code> specifies where to continue the list from after
    #            a previous call to <code>ListFileSystemAssociations</code>. Optional.</p>
    #
    # @return [Types::ListFileSystemAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_file_system_associations(
    #     gateway_arn: 'GatewayARN',
    #     limit: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFileSystemAssociationsOutput
    #   resp.data.marker #=> String
    #   resp.data.next_marker #=> String
    #   resp.data.file_system_association_summary_list #=> Array<FileSystemAssociationSummary>
    #   resp.data.file_system_association_summary_list[0] #=> Types::FileSystemAssociationSummary
    #   resp.data.file_system_association_summary_list[0].file_system_association_id #=> String
    #   resp.data.file_system_association_summary_list[0].file_system_association_arn #=> String
    #   resp.data.file_system_association_summary_list[0].file_system_association_status #=> String
    #   resp.data.file_system_association_summary_list[0].gateway_arn #=> String
    #
    def list_file_system_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFileSystemAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFileSystemAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFileSystemAssociations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::ListFileSystemAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFileSystemAssociations,
        stubs: @stubs,
        params_class: Params::ListFileSystemAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_file_system_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists gateways owned by an Amazon Web Services account in an Amazon Web Services Region
    #          specified in the request. The returned list is ordered by gateway Amazon Resource Name
    #          (ARN).</p>
    #
    #          <p>By default, the operation returns a maximum of 100 gateways. This operation supports
    #          pagination that allows you to optionally reduce the number of gateways returned in a
    #          response.</p>
    #
    #          <p>If you have more gateways than are returned in a response (that is, the response returns
    #          only a truncated list of your gateways), the response contains a marker that you can
    #          specify in your next request to fetch the next page of gateways.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGatewaysInput}.
    #
    # @option params [String] :marker
    #   <p>An opaque string that indicates the position at which to begin the returned list of
    #            gateways.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies that the list of gateways returned be limited to the specified number of
    #            items.</p>
    #
    # @return [Types::ListGatewaysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateways(
    #     marker: 'Marker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGatewaysOutput
    #   resp.data.gateways #=> Array<GatewayInfo>
    #   resp.data.gateways[0] #=> Types::GatewayInfo
    #   resp.data.gateways[0].gateway_id #=> String
    #   resp.data.gateways[0].gateway_arn #=> String
    #   resp.data.gateways[0].gateway_type #=> String
    #   resp.data.gateways[0].gateway_operational_state #=> String
    #   resp.data.gateways[0].gateway_name #=> String
    #   resp.data.gateways[0].ec2_instance_id #=> String
    #   resp.data.gateways[0].ec2_instance_region #=> String
    #   resp.data.gateways[0].host_environment #=> String, one of ["VMWARE", "HYPER-V", "EC2", "KVM", "OTHER", "SNOWBALL"]
    #   resp.data.gateways[0].host_environment_id #=> String
    #   resp.data.marker #=> String
    #
    def list_gateways(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGatewaysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGatewaysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGateways
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::ListGateways
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGateways,
        stubs: @stubs,
        params_class: Params::ListGatewaysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_gateways
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the gateway's local disks. To specify which gateway to describe,
    #          you use the Amazon Resource Name (ARN) of the gateway in the body of the request.</p>
    #
    #          <p>The request returns a list of all disks, specifying which are configured as working
    #          storage, cache storage, or stored volume or not configured at all. The response includes a
    #             <code>DiskStatus</code> field. This field can have a value of present (the disk is
    #          available to use), missing (the disk is no longer connected to the gateway), or mismatch
    #          (the disk node is occupied by a disk that has incorrect metadata or the disk content is
    #          corrupted).</p>
    #
    # @param [Hash] params
    #   See {Types::ListLocalDisksInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::ListLocalDisksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_local_disks(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLocalDisksOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.disks #=> Array<Disk>
    #   resp.data.disks[0] #=> Types::Disk
    #   resp.data.disks[0].disk_id #=> String
    #   resp.data.disks[0].disk_path #=> String
    #   resp.data.disks[0].disk_node #=> String
    #   resp.data.disks[0].disk_status #=> String
    #   resp.data.disks[0].disk_size_in_bytes #=> Integer
    #   resp.data.disks[0].disk_allocation_type #=> String
    #   resp.data.disks[0].disk_allocation_resource #=> String
    #   resp.data.disks[0].disk_attribute_list #=> Array<String>
    #   resp.data.disks[0].disk_attribute_list[0] #=> String
    #
    def list_local_disks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLocalDisksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLocalDisksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLocalDisks
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::ListLocalDisks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLocalDisks,
        stubs: @stubs,
        params_class: Params::ListLocalDisksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_local_disks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags that have been added to the specified resource. This operation is
    #          supported in storage gateways of all types.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>
    #
    # @option params [String] :marker
    #   <p>An opaque string that indicates the position at which to begin returning the list of
    #            tags.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies that the list of tags returned be limited to the specified number of
    #            items.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN', # required
    #     marker: 'Marker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.resource_arn #=> String
    #   resp.data.marker #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
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

    # <p>Lists custom tape pools. You specify custom tape pools to list by specifying one or more
    #          custom tape pool Amazon Resource Names (ARNs). If you don't specify a custom tape pool ARN,
    #          the operation lists all custom tape pools.</p>
    #
    #          <p>This operation supports pagination. You can optionally specify the <code>Limit</code>
    #          parameter in the body to limit the number of tape pools in the response. If the number of
    #          tape pools returned in the response is truncated, the response includes a
    #             <code>Marker</code> element that you can use in your subsequent request to retrieve the
    #          next set of tape pools.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTapePoolsInput}.
    #
    # @option params [Array<String>] :pool_ar_ns
    #   <p>The Amazon Resource Name (ARN) of each of the custom tape pools you want to list. If you
    #            don't specify a custom tape pool ARN, the response lists all custom tape pools. </p>
    #
    # @option params [String] :marker
    #   <p>A string that indicates the position at which to begin the returned list of tape
    #            pools.</p>
    #
    # @option params [Integer] :limit
    #   <p>An optional number limit for the tape pools in the list returned by this call.</p>
    #
    # @return [Types::ListTapePoolsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tape_pools(
    #     pool_ar_ns: [
    #       'member'
    #     ],
    #     marker: 'Marker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTapePoolsOutput
    #   resp.data.pool_infos #=> Array<PoolInfo>
    #   resp.data.pool_infos[0] #=> Types::PoolInfo
    #   resp.data.pool_infos[0].pool_arn #=> String
    #   resp.data.pool_infos[0].pool_name #=> String
    #   resp.data.pool_infos[0].storage_class #=> String, one of ["DEEP_ARCHIVE", "GLACIER"]
    #   resp.data.pool_infos[0].retention_lock_type #=> String, one of ["COMPLIANCE", "GOVERNANCE", "NONE"]
    #   resp.data.pool_infos[0].retention_lock_time_in_days #=> Integer
    #   resp.data.pool_infos[0].pool_status #=> String, one of ["ACTIVE", "DELETED"]
    #   resp.data.marker #=> String
    #
    def list_tape_pools(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTapePoolsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTapePoolsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTapePools
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::ListTapePools
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTapePools,
        stubs: @stubs,
        params_class: Params::ListTapePoolsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tape_pools
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists virtual tapes in your virtual tape library (VTL) and your virtual tape shelf
    #          (VTS). You specify the tapes to list by specifying one or more tape Amazon Resource Names
    #          (ARNs). If you don't specify a tape ARN, the operation lists all virtual tapes in both
    #          your VTL and VTS.</p>
    #
    #          <p>This operation supports pagination. By default, the operation returns a maximum of up to
    #          100 tapes. You can optionally specify the <code>Limit</code> parameter in the body to limit
    #          the number of tapes in the response. If the number of tapes returned in the response is
    #          truncated, the response includes a <code>Marker</code> element that you can use in your
    #          subsequent request to retrieve the next set of tapes. This operation is only supported in
    #          the tape gateway type.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTapesInput}.
    #
    # @option params [Array<String>] :tape_ar_ns
    #   <p>The Amazon Resource Name (ARN) of each of the tapes you want to list. If you don't
    #            specify a tape ARN, the response lists all tapes in both your VTL and VTS.</p>
    #
    # @option params [String] :marker
    #   <p>A string that indicates the position at which to begin the returned list of
    #            tapes.</p>
    #
    # @option params [Integer] :limit
    #   <p>An optional number limit for the tapes in the list returned by this call.</p>
    #
    # @return [Types::ListTapesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tapes(
    #     tape_ar_ns: [
    #       'member'
    #     ],
    #     marker: 'Marker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTapesOutput
    #   resp.data.tape_infos #=> Array<TapeInfo>
    #   resp.data.tape_infos[0] #=> Types::TapeInfo
    #   resp.data.tape_infos[0].tape_arn #=> String
    #   resp.data.tape_infos[0].tape_barcode #=> String
    #   resp.data.tape_infos[0].tape_size_in_bytes #=> Integer
    #   resp.data.tape_infos[0].tape_status #=> String
    #   resp.data.tape_infos[0].gateway_arn #=> String
    #   resp.data.tape_infos[0].pool_id #=> String
    #   resp.data.tape_infos[0].retention_start_date #=> Time
    #   resp.data.tape_infos[0].pool_entry_date #=> Time
    #   resp.data.marker #=> String
    #
    def list_tapes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTapesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTapesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTapes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::ListTapes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTapes,
        stubs: @stubs,
        params_class: Params::ListTapesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tapes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists iSCSI initiators that are connected to a volume. You can use this operation to
    #          determine whether a volume is being used or not. This operation is only supported in the
    #          cached volume and stored volume gateway types.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVolumeInitiatorsInput}.
    #
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes for the gateway.</p>
    #
    # @return [Types::ListVolumeInitiatorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_volume_initiators(
    #     volume_arn: 'VolumeARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVolumeInitiatorsOutput
    #   resp.data.initiators #=> Array<String>
    #   resp.data.initiators[0] #=> String
    #
    def list_volume_initiators(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVolumeInitiatorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVolumeInitiatorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVolumeInitiators
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::ListVolumeInitiators
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVolumeInitiators,
        stubs: @stubs,
        params_class: Params::ListVolumeInitiatorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_volume_initiators
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the recovery points for a specified gateway. This operation is only supported in
    #          the cached volume gateway type.</p>
    #
    #          <p>Each cache volume has one recovery point. A volume recovery point is a point in time at
    #          which all data of the volume is consistent and from which you can create a snapshot or
    #          clone a new cached volume from a source volume. To create a snapshot from a volume recovery
    #          point use the <a>CreateSnapshotFromVolumeRecoveryPoint</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVolumeRecoveryPointsInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::ListVolumeRecoveryPointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_volume_recovery_points(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVolumeRecoveryPointsOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.volume_recovery_point_infos #=> Array<VolumeRecoveryPointInfo>
    #   resp.data.volume_recovery_point_infos[0] #=> Types::VolumeRecoveryPointInfo
    #   resp.data.volume_recovery_point_infos[0].volume_arn #=> String
    #   resp.data.volume_recovery_point_infos[0].volume_size_in_bytes #=> Integer
    #   resp.data.volume_recovery_point_infos[0].volume_usage_in_bytes #=> Integer
    #   resp.data.volume_recovery_point_infos[0].volume_recovery_point_time #=> String
    #
    def list_volume_recovery_points(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVolumeRecoveryPointsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVolumeRecoveryPointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVolumeRecoveryPoints
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::ListVolumeRecoveryPoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVolumeRecoveryPoints,
        stubs: @stubs,
        params_class: Params::ListVolumeRecoveryPointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_volume_recovery_points
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the iSCSI stored volumes of a gateway. Results are sorted by volume ARN. The
    #          response includes only the volume ARNs. If you want additional volume information, use the
    #             <a>DescribeStorediSCSIVolumes</a> or the <a>DescribeCachediSCSIVolumes</a> API.</p>
    #
    #          <p>The operation supports pagination. By default, the operation returns a maximum of up to
    #          100 volumes. You can optionally specify the <code>Limit</code> field in the body to limit
    #          the number of volumes in the response. If the number of volumes returned in the response is
    #          truncated, the response includes a Marker field. You can use this Marker value in your
    #          subsequent request to retrieve the next set of volumes. This operation is only supported in
    #          the cached volume and stored volume gateway types.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVolumesInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [String] :marker
    #   <p>A string that indicates the position at which to begin the returned list of volumes.
    #            Obtain the marker from the response of a previous List iSCSI Volumes request.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies that the list of volumes returned be limited to the specified number of
    #            items.</p>
    #
    # @return [Types::ListVolumesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_volumes(
    #     gateway_arn: 'GatewayARN',
    #     marker: 'Marker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVolumesOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.marker #=> String
    #   resp.data.volume_infos #=> Array<VolumeInfo>
    #   resp.data.volume_infos[0] #=> Types::VolumeInfo
    #   resp.data.volume_infos[0].volume_arn #=> String
    #   resp.data.volume_infos[0].volume_id #=> String
    #   resp.data.volume_infos[0].gateway_arn #=> String
    #   resp.data.volume_infos[0].gateway_id #=> String
    #   resp.data.volume_infos[0].volume_type #=> String
    #   resp.data.volume_infos[0].volume_size_in_bytes #=> Integer
    #   resp.data.volume_infos[0].volume_attachment_status #=> String
    #
    def list_volumes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVolumesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVolumesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVolumes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::ListVolumes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVolumes,
        stubs: @stubs,
        params_class: Params::ListVolumesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_volumes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends you notification through CloudWatch Events when all files written to your file
    #          share have been uploaded to S3. Amazon S3.</p>
    #
    #          <p>Storage Gateway can send a notification through Amazon CloudWatch Events when all
    #          files written to your file share up to that point in time have been uploaded to Amazon S3. These files include files written to the file share up to the time that you
    #          make a request for notification. When the upload is done, Storage Gateway sends you
    #          notification through an Amazon CloudWatch Event. You can configure CloudWatch Events to
    #          send the notification through event targets such as Amazon SNS or Lambda function. This operation is only supported for S3 File Gateways.</p>
    #
    #
    #
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-upload-notification">Getting file upload notification</a> in the <i>Storage Gateway User
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::NotifyWhenUploadedInput}.
    #
    # @option params [String] :file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share.</p>
    #
    # @return [Types::NotifyWhenUploadedOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_when_uploaded(
    #     file_share_arn: 'FileShareARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::NotifyWhenUploadedOutput
    #   resp.data.file_share_arn #=> String
    #   resp.data.notification_id #=> String
    #
    def notify_when_uploaded(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::NotifyWhenUploadedInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::NotifyWhenUploadedInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::NotifyWhenUploaded
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::NotifyWhenUploaded
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::NotifyWhenUploaded,
        stubs: @stubs,
        params_class: Params::NotifyWhenUploadedOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :notify_when_uploaded
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Refreshes the cached inventory of objects for the specified file share. This operation
    #          finds objects in the Amazon S3 bucket that were added, removed, or replaced since
    #          the gateway last listed the bucket's contents and cached the results. This operation
    #          does not import files into the S3 File Gateway cache storage. It only updates the cached
    #          inventory to reflect changes in the inventory of the objects in the S3 bucket. This
    #          operation is only supported in the S3 File Gateway types.</p>
    #
    #          <p>You can subscribe to be notified through an Amazon CloudWatch event when your
    #             <code>RefreshCache</code> operation completes. For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-notification">Getting notified about file operations</a> in the <i>Storage Gateway
    #             User Guide</i>. This operation is Only supported for S3 File Gateways.</p>
    #
    #          <p>When this API is called, it only initiates the refresh operation. When the API call
    #          completes and returns a success code, it doesn't necessarily mean that the file
    #          refresh has completed. You should use the refresh-complete notification to determine that
    #          the operation has completed before you check for new files on the gateway file share. You
    #          can subscribe to be notified through a CloudWatch event when your <code>RefreshCache</code>
    #          operation completes.</p>
    #
    #          <p>Throttle limit: This API is asynchronous, so the gateway will accept no more than two
    #          refreshes at any time. We recommend using the refresh-complete CloudWatch event
    #          notification before issuing additional requests. For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-notification">Getting notified about file operations</a> in the <i>Storage Gateway
    #             User Guide</i>.</p>
    #
    #          <important>
    #             <ul>
    #                <li>
    #                   <p>Wait at least 60 seconds between consecutive RefreshCache API requests.</p>
    #                </li>
    #                <li>
    #                   <p>RefreshCache does not evict cache entries if invoked consecutively within 60
    #                   seconds of a previous RefreshCache request.</p>
    #                </li>
    #                <li>
    #                   <p>If you invoke the RefreshCache API when two requests are already being
    #                   processed, any new request will cause an
    #                      <code>InvalidGatewayRequestException</code> error because too many requests
    #                   were sent to the server.</p>
    #                </li>
    #             </ul>
    #          </important>
    #
    #          <note>
    #             <p>The S3 bucket name does not need to be included when entering the list of folders in
    #             the FolderList parameter.</p>
    #          </note>
    #
    #
    #
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-notification">Getting notified about file operations</a> in the <i>Storage Gateway
    #             User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RefreshCacheInput}.
    #
    # @option params [String] :file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share you want to refresh.</p>
    #
    # @option params [Array<String>] :folder_list
    #   <p>A comma-separated list of the paths of folders to refresh in the cache. The default is
    #               [<code>"/"</code>]. The default refreshes objects and folders at the root of the Amazon S3 bucket. If <code>Recursive</code> is set to <code>true</code>, the entire S3
    #            bucket that the file share has access to is refreshed.</p>
    #
    # @option params [Boolean] :recursive
    #   <p>A value that specifies whether to recursively refresh folders in the cache. The refresh
    #            includes folders that were in the cache the last time the gateway listed the folder's
    #            contents. If this value set to <code>true</code>, each folder that is listed in
    #               <code>FolderList</code> is recursively updated. Otherwise, subfolders listed in
    #               <code>FolderList</code> are not refreshed. Only objects that are in folders listed
    #            directly under <code>FolderList</code> are found and used for the update. The default is
    #               <code>true</code>.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @return [Types::RefreshCacheOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.refresh_cache(
    #     file_share_arn: 'FileShareARN', # required
    #     folder_list: [
    #       'member'
    #     ],
    #     recursive: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RefreshCacheOutput
    #   resp.data.file_share_arn #=> String
    #   resp.data.notification_id #=> String
    #
    def refresh_cache(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RefreshCacheInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RefreshCacheInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RefreshCache
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::RefreshCache
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RefreshCache,
        stubs: @stubs,
        params_class: Params::RefreshCacheOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :refresh_cache
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes one or more tags from the specified resource. This operation is supported in
    #          storage gateways of all types.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsFromResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to remove the tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags you want to remove from the specified resource. A tag is composed
    #            of a key-value pair.</p>
    #
    # @return [Types::RemoveTagsFromResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveTagsFromResourceOutput
    #   resp.data.resource_arn #=> String
    #
    def remove_tags_from_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveTagsFromResourceInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
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

    # <p>Resets all cache disks that have encountered an error and makes the disks available for
    #          reconfiguration as cache storage. If your cache disk encounters an error, the gateway
    #          prevents read and write operations on virtual tapes in the gateway. For example, an error
    #          can occur when a disk is corrupted or removed from the gateway. When a cache is reset, the
    #          gateway loses its cache storage. At this point, you can reconfigure the disks as cache
    #          disks. This operation is only supported in the cached volume and tape types.</p>
    #
    #          <important>
    #             <p>If the cache disk you are resetting contains data that has not been uploaded to
    #                Amazon S3 yet, that data can be lost. After you reset cache disks, there will
    #             be no configured cache disks left in the gateway, so you must configure at least one new
    #             cache disk for your gateway to function properly.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::ResetCacheInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::ResetCacheOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_cache(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetCacheOutput
    #   resp.data.gateway_arn #=> String
    #
    def reset_cache(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetCacheInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetCacheInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetCache
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::ResetCache
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetCache,
        stubs: @stubs,
        params_class: Params::ResetCacheOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_cache
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a tape gateway.
    #          Virtual tapes archived in the VTS are not associated with any gateway. However after a tape
    #          is retrieved, it is associated with a gateway, even though it is also listed in the VTS,
    #          that is, archive. This operation is only supported in the tape gateway type.</p>
    #
    #          <p>Once a tape is successfully retrieved to a gateway, it cannot be retrieved again to
    #          another gateway. You must archive the tape again before you can retrieve it to another
    #          gateway. This operation is only supported in the tape gateway type.</p>
    #
    # @param [Hash] params
    #   See {Types::RetrieveTapeArchiveInput}.
    #
    # @option params [String] :tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape you want to retrieve from the virtual
    #            tape shelf (VTS).</p>
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway you want to retrieve the virtual tape to.
    #            Use the <a>ListGateways</a> operation to return a list of gateways for your
    #            account and Amazon Web Services Region.</p>
    #
    #            <p>You retrieve archived virtual tapes to only one gateway and the gateway must be a tape
    #            gateway.</p>
    #
    # @return [Types::RetrieveTapeArchiveOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve_tape_archive(
    #     tape_arn: 'TapeARN', # required
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RetrieveTapeArchiveOutput
    #   resp.data.tape_arn #=> String
    #
    def retrieve_tape_archive(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RetrieveTapeArchiveInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RetrieveTapeArchiveInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RetrieveTapeArchive
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::RetrieveTapeArchive
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RetrieveTapeArchive,
        stubs: @stubs,
        params_class: Params::RetrieveTapeArchiveOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :retrieve_tape_archive
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the recovery point for the specified virtual tape. This operation is only
    #          supported in the tape gateway type.</p>
    #
    #          <p>A recovery point is a point in time view of a virtual tape at which all the data on the
    #          tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be
    #          recovered to a new gateway.</p>
    #
    #          <note>
    #             <p>The virtual tape can be retrieved to only one gateway. The retrieved tape is
    #             read-only. The virtual tape can be retrieved to only a tape gateway. There is no charge
    #             for retrieving recovery points.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::RetrieveTapeRecoveryPointInput}.
    #
    # @option params [String] :tape_arn
    #   <p>The Amazon Resource Name (ARN) of the virtual tape for which you want to retrieve the
    #            recovery point.</p>
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::RetrieveTapeRecoveryPointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve_tape_recovery_point(
    #     tape_arn: 'TapeARN', # required
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RetrieveTapeRecoveryPointOutput
    #   resp.data.tape_arn #=> String
    #
    def retrieve_tape_recovery_point(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RetrieveTapeRecoveryPointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RetrieveTapeRecoveryPointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RetrieveTapeRecoveryPoint
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::RetrieveTapeRecoveryPoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RetrieveTapeRecoveryPoint,
        stubs: @stubs,
        params_class: Params::RetrieveTapeRecoveryPointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :retrieve_tape_recovery_point
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the password for your VM local console. When you log in to the local console for
    #          the first time, you log in to the VM with the default credentials. We recommend that you
    #          set a new password. You don't need to know the default password to set a new
    #          password.</p>
    #
    # @param [Hash] params
    #   See {Types::SetLocalConsolePasswordInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [String] :local_console_password
    #   <p>The password you want to set for your VM local console.</p>
    #
    # @return [Types::SetLocalConsolePasswordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_local_console_password(
    #     gateway_arn: 'GatewayARN', # required
    #     local_console_password: 'LocalConsolePassword' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetLocalConsolePasswordOutput
    #   resp.data.gateway_arn #=> String
    #
    def set_local_console_password(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetLocalConsolePasswordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetLocalConsolePasswordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetLocalConsolePassword
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::SetLocalConsolePassword
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetLocalConsolePassword,
        stubs: @stubs,
        params_class: Params::SetLocalConsolePasswordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_local_console_password
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the password for the guest user <code>smbguest</code>. The <code>smbguest</code>
    #          user is the user when the authentication method for the file share is set to
    #             <code>GuestAccess</code>. This operation only supported for S3 File Gateways</p>
    #
    # @param [Hash] params
    #   See {Types::SetSMBGuestPasswordInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 File Gateway the SMB file share is associated
    #            with.</p>
    #
    # @option params [String] :password
    #   <p>The password that you want to set for your SMB server.</p>
    #
    # @return [Types::SetSMBGuestPasswordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_smb_guest_password(
    #     gateway_arn: 'GatewayARN', # required
    #     password: 'Password' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetSMBGuestPasswordOutput
    #   resp.data.gateway_arn #=> String
    #
    def set_smb_guest_password(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetSMBGuestPasswordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetSMBGuestPasswordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetSMBGuestPassword
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::SetSMBGuestPassword
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetSMBGuestPassword,
        stubs: @stubs,
        params_class: Params::SetSMBGuestPasswordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_smb_guest_password
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Shuts down a gateway. To specify which gateway to shut down, use the Amazon Resource
    #          Name (ARN) of the gateway in the body of your request.</p>
    #
    #          <p>The operation shuts down the gateway service component running in the gateway's
    #          virtual machine (VM) and not the host VM.</p>
    #
    #          <note>
    #             <p>If you want to shut down the VM, it is recommended that you first shut down the
    #             gateway component in the VM to avoid unpredictable conditions.</p>
    #          </note>
    #
    #          <p>After the gateway is shutdown, you cannot call any other API except <a>StartGateway</a>, <a>DescribeGatewayInformation</a>, and <a>ListGateways</a>. For more information, see <a>ActivateGateway</a>.
    #          Your applications cannot read from or write to the gateway's storage volumes, and
    #          there are no snapshots taken.</p>
    #
    #          <note>
    #             <p>When you make a shutdown request, you will get a <code>200 OK</code> success response
    #             immediately. However, it might take some time for the gateway to shut down. You can call
    #             the <a>DescribeGatewayInformation</a> API to check the status. For more
    #             information, see <a>ActivateGateway</a>.</p>
    #          </note>
    #
    #          <p>If do not intend to use the gateway again, you must delete the gateway (using <a>DeleteGateway</a>) to no longer pay software charges associated with the
    #          gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::ShutdownGatewayInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::ShutdownGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.shutdown_gateway(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ShutdownGatewayOutput
    #   resp.data.gateway_arn #=> String
    #
    def shutdown_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ShutdownGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ShutdownGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ShutdownGateway
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::ShutdownGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ShutdownGateway,
        stubs: @stubs,
        params_class: Params::ShutdownGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :shutdown_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Start a test that verifies that the specified gateway is configured for High
    #          Availability monitoring in your host environment. This request only initiates the test and
    #          that a successful response only indicates that the test was started. It doesn't
    #          indicate that the test passed. For the status of the test, invoke the
    #             <code>DescribeAvailabilityMonitorTest</code> API.</p>
    #          <note>
    #             <p>Starting this test will cause your gateway to go offline for a brief period.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::StartAvailabilityMonitorTestInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::StartAvailabilityMonitorTestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_availability_monitor_test(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartAvailabilityMonitorTestOutput
    #   resp.data.gateway_arn #=> String
    #
    def start_availability_monitor_test(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartAvailabilityMonitorTestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartAvailabilityMonitorTestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartAvailabilityMonitorTest
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::StartAvailabilityMonitorTest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartAvailabilityMonitorTest,
        stubs: @stubs,
        params_class: Params::StartAvailabilityMonitorTestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_availability_monitor_test
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a gateway that you previously shut down (see <a>ShutdownGateway</a>).
    #          After the gateway starts, you can then make other API calls, your applications can read
    #          from or write to the gateway's storage volumes and you will be able to take snapshot
    #          backups.</p>
    #
    #          <note>
    #             <p>When you make a request, you will get a 200 OK success response immediately. However,
    #             it might take some time for the gateway to be ready. You should call <a>DescribeGatewayInformation</a> and check the status before making any
    #             additional API calls. For more information, see <a>ActivateGateway</a>.</p>
    #          </note>
    #
    #          <p>To specify which gateway to start, use the Amazon Resource Name (ARN) of the gateway in
    #          your request.</p>
    #
    # @param [Hash] params
    #   See {Types::StartGatewayInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::StartGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_gateway(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartGatewayOutput
    #   resp.data.gateway_arn #=> String
    #
    def start_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartGateway
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::StartGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartGateway,
        stubs: @stubs,
        params_class: Params::StartGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the automatic tape creation policy of a gateway. Use this to update the policy
    #          with a new set of automatic tape creation rules. This is only supported for tape
    #          gateways.</p>
    #
    #          <p>By default, there is no automatic tape creation policy.</p>
    #
    #          <note>
    #             <p>A gateway can have only one automatic tape creation policy.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateAutomaticTapeCreationPolicyInput}.
    #
    # @option params [Array<AutomaticTapeCreationRule>] :automatic_tape_creation_rules
    #   <p>An automatic tape creation policy consists of a list of automatic tape creation rules.
    #            The rules determine when and how to automatically create new tapes.</p>
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::UpdateAutomaticTapeCreationPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_automatic_tape_creation_policy(
    #     automatic_tape_creation_rules: [
    #       {
    #         tape_barcode_prefix: 'TapeBarcodePrefix', # required
    #         pool_id: 'PoolId', # required
    #         tape_size_in_bytes: 1, # required
    #         minimum_num_tapes: 1, # required
    #         worm: false
    #       }
    #     ], # required
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAutomaticTapeCreationPolicyOutput
    #   resp.data.gateway_arn #=> String
    #
    def update_automatic_tape_creation_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAutomaticTapeCreationPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAutomaticTapeCreationPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAutomaticTapeCreationPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::UpdateAutomaticTapeCreationPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAutomaticTapeCreationPolicy,
        stubs: @stubs,
        params_class: Params::UpdateAutomaticTapeCreationPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_automatic_tape_creation_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the bandwidth rate limits of a gateway. You can update both the upload and
    #          download bandwidth rate limit or specify only one of the two. If you don't set a
    #          bandwidth rate limit, the existing rate limit remains. This operation is supported only for
    #          the stored volume, cached volume, and tape gateway types. To update bandwidth rate limits
    #          for S3 file gateways, use <a>UpdateBandwidthRateLimitSchedule</a>.</p>
    #
    #          <p>By default, a gateway's bandwidth rate limits are not set. If you don't set
    #          any limit, the gateway does not have any limitations on its bandwidth usage and could
    #          potentially use the maximum available bandwidth.</p>
    #
    #          <p>To specify which gateway to update, use the Amazon Resource Name (ARN) of the gateway in
    #          your request.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBandwidthRateLimitInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [Integer] :average_upload_rate_limit_in_bits_per_sec
    #   <p>The average upload bandwidth rate limit in bits per second.</p>
    #
    # @option params [Integer] :average_download_rate_limit_in_bits_per_sec
    #   <p>The average download bandwidth rate limit in bits per second.</p>
    #
    # @return [Types::UpdateBandwidthRateLimitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bandwidth_rate_limit(
    #     gateway_arn: 'GatewayARN', # required
    #     average_upload_rate_limit_in_bits_per_sec: 1,
    #     average_download_rate_limit_in_bits_per_sec: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBandwidthRateLimitOutput
    #   resp.data.gateway_arn #=> String
    #
    def update_bandwidth_rate_limit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBandwidthRateLimitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBandwidthRateLimitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBandwidthRateLimit
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::UpdateBandwidthRateLimit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBandwidthRateLimit,
        stubs: @stubs,
        params_class: Params::UpdateBandwidthRateLimitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_bandwidth_rate_limit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates the bandwidth rate limit schedule for a specified gateway. By default, gateways
    #          do not have bandwidth rate limit schedules, which means no bandwidth rate limiting is in
    #          effect. Use this to initiate or update a gateway's bandwidth rate limit schedule. This
    #          operation is supported only for volume, tape and S3 file gateways. FSx file gateways do not
    #          support bandwidth rate limits.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBandwidthRateLimitScheduleInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [Array<BandwidthRateLimitInterval>] :bandwidth_rate_limit_intervals
    #   <p> An array containing bandwidth rate limit schedule intervals for a gateway. When no
    #            bandwidth rate limit intervals have been scheduled, the array is empty. </p>
    #
    # @return [Types::UpdateBandwidthRateLimitScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bandwidth_rate_limit_schedule(
    #     gateway_arn: 'GatewayARN', # required
    #     bandwidth_rate_limit_intervals: [
    #       {
    #         start_hour_of_day: 1, # required
    #         start_minute_of_hour: 1, # required
    #         end_hour_of_day: 1, # required
    #         end_minute_of_hour: 1, # required
    #         days_of_week: [
    #           1
    #         ], # required
    #         average_upload_rate_limit_in_bits_per_sec: 1,
    #         average_download_rate_limit_in_bits_per_sec: 1
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBandwidthRateLimitScheduleOutput
    #   resp.data.gateway_arn #=> String
    #
    def update_bandwidth_rate_limit_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBandwidthRateLimitScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBandwidthRateLimitScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBandwidthRateLimitSchedule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::UpdateBandwidthRateLimitSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBandwidthRateLimitSchedule,
        stubs: @stubs,
        params_class: Params::UpdateBandwidthRateLimitScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_bandwidth_rate_limit_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a
    #          specified iSCSI target. By default, a gateway does not have CHAP enabled; however, for
    #          added security, you might use it. This operation is supported in the volume and tape
    #          gateway types.</p>
    #
    #          <important>
    #             <p>When you update CHAP credentials, all existing connections on the target are closed
    #             and initiators must reconnect with the new credentials.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateChapCredentialsInput}.
    #
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return the TargetARN for specified
    #            VolumeARN.</p>
    #
    # @option params [String] :secret_to_authenticate_initiator
    #   <p>The secret key that the initiator (for example, the Windows client) must provide to
    #            participate in mutual CHAP with the target.</p>
    #
    #            <note>
    #               <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p>
    #            </note>
    #
    # @option params [String] :initiator_name
    #   <p>The iSCSI initiator that connects to the target.</p>
    #
    # @option params [String] :secret_to_authenticate_target
    #   <p>The secret key that the target must provide to participate in mutual CHAP with the
    #            initiator (e.g. Windows client).</p>
    #
    #            <p>Byte constraints: Minimum bytes of 12. Maximum bytes of 16.</p>
    #
    #            <note>
    #               <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p>
    #            </note>
    #
    # @return [Types::UpdateChapCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_chap_credentials(
    #     target_arn: 'TargetARN', # required
    #     secret_to_authenticate_initiator: 'SecretToAuthenticateInitiator', # required
    #     initiator_name: 'InitiatorName', # required
    #     secret_to_authenticate_target: 'SecretToAuthenticateTarget'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateChapCredentialsOutput
    #   resp.data.target_arn #=> String
    #   resp.data.initiator_name #=> String
    #
    def update_chap_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateChapCredentialsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateChapCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateChapCredentials
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::UpdateChapCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateChapCredentials,
        stubs: @stubs,
        params_class: Params::UpdateChapCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_chap_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a file system association. This operation is only supported in the FSx File
    #          Gateways.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFileSystemAssociationInput}.
    #
    # @option params [String] :file_system_association_arn
    #   <p>The Amazon Resource Name (ARN) of the file system association that you want to
    #            update.</p>
    #
    # @option params [String] :user_name
    #   <p>The user name of the user credential that has permission to access the root share D$ of
    #            the Amazon FSx file system. The user account must belong to the Amazon FSx
    #            delegated admin user group.</p>
    #
    # @option params [String] :password
    #   <p>The password of the user credential.</p>
    #
    # @option params [String] :audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for the audit logs.</p>
    #
    # @option params [CacheAttributes] :cache_attributes
    #   <p>The refresh cache information for the file share or FSx file systems.</p>
    #
    # @return [Types::UpdateFileSystemAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_file_system_association(
    #     file_system_association_arn: 'FileSystemAssociationARN', # required
    #     user_name: 'UserName',
    #     password: 'Password',
    #     audit_destination_arn: 'AuditDestinationARN',
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFileSystemAssociationOutput
    #   resp.data.file_system_association_arn #=> String
    #
    def update_file_system_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFileSystemAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFileSystemAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFileSystemAssociation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::UpdateFileSystemAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFileSystemAssociation,
        stubs: @stubs,
        params_class: Params::UpdateFileSystemAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_file_system_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a gateway's metadata, which includes the gateway's name and time zone.
    #          To specify which gateway to update, use the Amazon Resource Name (ARN) of the gateway in
    #          your request.</p>
    #
    #          <note>
    #             <p>For gateways activated after September 2, 2015, the gateway's ARN contains the
    #             gateway ID rather than the gateway name. However, changing the name of the gateway has
    #             no effect on the gateway's ARN.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateGatewayInformationInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [String] :gateway_name
    #   <p>The name you configured for your gateway.</p>
    #
    # @option params [String] :gateway_timezone
    #   <p>A value that indicates the time zone of the gateway.</p>
    #
    # @option params [String] :cloud_watch_log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that you want to use
    #            to monitor and log events in the gateway.</p>
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html">What is Amazon CloudWatch
    #               Logs?</a>
    #            </p>
    #
    # @option params [String] :gateway_capacity
    #   <p>Specifies the size of the gateway's metadata cache.</p>
    #
    # @return [Types::UpdateGatewayInformationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_information(
    #     gateway_arn: 'GatewayARN', # required
    #     gateway_name: 'GatewayName',
    #     gateway_timezone: 'GatewayTimezone',
    #     cloud_watch_log_group_arn: 'CloudWatchLogGroupARN',
    #     gateway_capacity: 'Small' # accepts ["Small", "Medium", "Large"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGatewayInformationOutput
    #   resp.data.gateway_arn #=> String
    #   resp.data.gateway_name #=> String
    #
    def update_gateway_information(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGatewayInformationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGatewayInformationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGatewayInformation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::UpdateGatewayInformation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGatewayInformation,
        stubs: @stubs,
        params_class: Params::UpdateGatewayInformationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_gateway_information
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the gateway virtual machine (VM) software. The request immediately triggers the
    #          software update.</p>
    #
    #          <note>
    #             <p>When you make this request, you get a <code>200 OK</code> success response
    #             immediately. However, it might take some time for the update to complete. You can call
    #                <a>DescribeGatewayInformation</a> to verify the gateway is in the
    #                <code>STATE_RUNNING</code> state.</p>
    #          </note>
    #
    #          <important>
    #             <p>A software update forces a system restart of your gateway. You can minimize the
    #             chance of any disruption to your applications by increasing your iSCSI Initiators'
    #             timeouts. For more information about increasing iSCSI Initiator timeouts for Windows and
    #             Linux, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorWindowsClient.html#CustomizeWindowsiSCSISettings">Customizing your Windows iSCSI settings</a> and <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorRedHatClient.html#CustomizeLinuxiSCSISettings">Customizing your Linux iSCSI settings</a>, respectively.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateGatewaySoftwareNowInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::UpdateGatewaySoftwareNowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_software_now(
    #     gateway_arn: 'GatewayARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGatewaySoftwareNowOutput
    #   resp.data.gateway_arn #=> String
    #
    def update_gateway_software_now(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGatewaySoftwareNowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGatewaySoftwareNowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGatewaySoftwareNow
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::UpdateGatewaySoftwareNow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGatewaySoftwareNow,
        stubs: @stubs,
        params_class: Params::UpdateGatewaySoftwareNowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_gateway_software_now
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a gateway's weekly maintenance start time information, including day and
    #          time of the week. The maintenance time is the time in your gateway's time zone.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMaintenanceStartTimeInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [Integer] :hour_of_day
    #   <p>The hour component of the maintenance start time represented as <i>hh</i>,
    #            where <i>hh</i> is the hour (00 to 23). The hour of the day is in the time
    #            zone of the gateway.</p>
    #
    # @option params [Integer] :minute_of_hour
    #   <p>The minute component of the maintenance start time represented as
    #               <i>mm</i>, where <i>mm</i> is the minute (00 to 59). The
    #            minute of the hour is in the time zone of the gateway.</p>
    #
    # @option params [Integer] :day_of_week
    #   <p>The day of the week component of the maintenance start time week represented as an
    #            ordinal number from 0 to 6, where 0 represents Sunday and 6 Saturday.</p>
    #
    # @option params [Integer] :day_of_month
    #   <p>The day of the month component of the maintenance start time represented as an ordinal
    #            number from 1 to 28, where 1 represents the first day of the month and 28 represents the
    #            last day of the month.</p>
    #
    # @return [Types::UpdateMaintenanceStartTimeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_maintenance_start_time(
    #     gateway_arn: 'GatewayARN', # required
    #     hour_of_day: 1, # required
    #     minute_of_hour: 1, # required
    #     day_of_week: 1,
    #     day_of_month: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMaintenanceStartTimeOutput
    #   resp.data.gateway_arn #=> String
    #
    def update_maintenance_start_time(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMaintenanceStartTimeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMaintenanceStartTimeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMaintenanceStartTime
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::UpdateMaintenanceStartTime
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMaintenanceStartTime,
        stubs: @stubs,
        params_class: Params::UpdateMaintenanceStartTimeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_maintenance_start_time
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a Network File System (NFS) file share. This operation is only supported in S3
    #          File Gateways.</p>
    #
    #          <note>
    #             <p>To leave a file share field unchanged, set the corresponding input field to
    #             null.</p>
    #          </note>
    #
    #          <p>Updates the following file share settings:</p>
    #
    #          <ul>
    #             <li>
    #                <p>Default storage class for your S3 bucket</p>
    #             </li>
    #             <li>
    #                <p>Metadata defaults for your S3 bucket</p>
    #             </li>
    #             <li>
    #                <p>Allowed NFS clients for your file share</p>
    #             </li>
    #             <li>
    #                <p>Squash settings</p>
    #             </li>
    #             <li>
    #                <p>Write status of your file share</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UpdateNFSFileShareInput}.
    #
    # @option params [String] :file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the file share to be updated.</p>
    #
    # @option params [Boolean] :kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [String] :kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    #
    # @option params [NFSFileShareDefaults] :nfs_file_share_defaults
    #   <p>The default values for the file share. Optional.</p>
    #
    # @option params [String] :default_storage_class
    #   <p>The default storage class for objects put into an Amazon S3 bucket by the S3
    #            File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>
    #
    #            <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
    #               <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
    #            </p>
    #
    # @option params [String] :object_acl
    #   <p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
    #            that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>
    #
    # @option params [Array<String>] :client_list
    #   <p>The list of clients that are allowed to access the S3 File Gateway. The list must
    #            contain either valid IP addresses or valid CIDR blocks.</p>
    #
    # @option params [String] :squash
    #   <p>The user mapped to anonymous user.</p>
    #
    #            <p>Valid values are the following:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RootSquash</code>: Only root is mapped to anonymous user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NoSquash</code>: No one is mapped to anonymous user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllSquash</code>: Everyone is mapped to anonymous user.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :read_only
    #   <p>A value that sets the write status of a file share. Set this value to <code>true</code>
    #            to set the write status to read-only, otherwise set to <code>false</code>.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Boolean] :guess_mime_type_enabled
    #   <p>A value that enables guessing of the MIME type for uploaded objects based on file
    #            extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
    #            to <code>false</code>. The default value is <code>true</code>.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Boolean] :requester_pays
    #   <p>A value that sets who pays the cost of the request and the cost associated with data
    #            download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
    #            the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
    #            the cost of storing data.</p>
    #
    #            <note>
    #               <p>
    #                  <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
    #               share, so make sure that the configuration on the file share is the same as the S3
    #               bucket configuration.</p>
    #            </note>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [String] :file_share_name
    #   <p>The name of the file share. Optional.</p>
    #
    #            <note>
    #               <p>
    #                  <code>FileShareName</code> must be set if an S3 prefix name is set in
    #                  <code>LocationARN</code>, or if an access point or access point alias is used.</p>
    #            </note>
    #
    # @option params [CacheAttributes] :cache_attributes
    #   <p>Specifies refresh cache information for the file share.</p>
    #
    # @option params [String] :notification_policy
    #   <p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
    #            the number of seconds to wait after the last point in time a client wrote to a file before
    #            generating an <code>ObjectUploaded</code> notification. Because clients can make many small
    #            writes to files, it's best to set this parameter for as long as possible to avoid
    #            generating multiple notifications for the same file in a small time period.</p>
    #
    #            <note>
    #               <p>
    #                  <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
    #               uploading to Amazon S3, only the timing of the notification.</p>
    #            </note>
    #
    #            <p>The following example sets <code>NotificationPolicy</code> on with
    #               <code>SettlingTimeInSeconds</code> set to 60.</p>
    #
    #            <p>
    #               <code>{\"Upload\": {\"SettlingTimeInSeconds\": 60}}</code>
    #            </p>
    #
    #            <p>The following example sets <code>NotificationPolicy</code> off.</p>
    #
    #            <p>
    #               <code>{}</code>
    #            </p>
    #
    # @option params [String] :audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>
    #
    # @return [Types::UpdateNFSFileShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_nfs_file_share(
    #     file_share_arn: 'FileShareARN', # required
    #     kms_encrypted: false,
    #     kms_key: 'KMSKey',
    #     nfs_file_share_defaults: {
    #       file_mode: 'FileMode',
    #       directory_mode: 'DirectoryMode',
    #       group_id: 1,
    #       owner_id: 1
    #     },
    #     default_storage_class: 'DefaultStorageClass',
    #     object_acl: 'private', # accepts ["private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "aws-exec-read"]
    #     client_list: [
    #       'member'
    #     ],
    #     squash: 'Squash',
    #     read_only: false,
    #     guess_mime_type_enabled: false,
    #     requester_pays: false,
    #     file_share_name: 'FileShareName',
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1
    #     },
    #     notification_policy: 'NotificationPolicy',
    #     audit_destination_arn: 'AuditDestinationARN'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateNFSFileShareOutput
    #   resp.data.file_share_arn #=> String
    #
    def update_nfs_file_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateNFSFileShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateNFSFileShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateNFSFileShare
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::UpdateNFSFileShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateNFSFileShare,
        stubs: @stubs,
        params_class: Params::UpdateNFSFileShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_nfs_file_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a Server Message Block (SMB) file share. This operation is only supported for S3
    #          File Gateways.</p>
    #
    #          <note>
    #             <p>To leave a file share field unchanged, set the corresponding input field to
    #             null.</p>
    #          </note>
    #
    #          <important>
    #             <p>File gateways require Security Token Service (Amazon Web Services STS) to be
    #             activated to enable you to create a file share. Make sure that Amazon Web Services STS
    #             is activated in the Amazon Web Services Region you are creating your file gateway in. If
    #                Amazon Web Services STS is not activated in this Amazon Web Services Region, activate
    #             it. For information about how to activate Amazon Web Services STS, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and
    #                deactivating Amazon Web Services STS in an Amazon Web Services Region</a> in the
    #                   <i>Identity and Access Management User Guide</i>.</p>
    #
    #             <p>File gateways don't support creating hard or symbolic links on a file
    #             share.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateSMBFileShareInput}.
    #
    # @option params [String] :file_share_arn
    #   <p>The Amazon Resource Name (ARN) of the SMB file share that you want to update.</p>
    #
    # @option params [Boolean] :kms_encrypted
    #   <p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own
    #               KMS key, or <code>false</code> to use a key managed by Amazon S3.
    #            Optional.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [String] :kms_key
    #   <p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This
    #            value can only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>
    #
    # @option params [String] :default_storage_class
    #   <p>The default storage class for objects put into an Amazon S3 bucket by the S3
    #            File Gateway. The default value is <code>S3_STANDARD</code>. Optional.</p>
    #
    #            <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
    #               <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
    #            </p>
    #
    # @option params [String] :object_acl
    #   <p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
    #            that a S3 File Gateway puts objects into. The default value is <code>private</code>.</p>
    #
    # @option params [Boolean] :read_only
    #   <p>A value that sets the write status of a file share. Set this value to <code>true</code>
    #            to set write status to read-only, otherwise set to <code>false</code>.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Boolean] :guess_mime_type_enabled
    #   <p>A value that enables guessing of the MIME type for uploaded objects based on file
    #            extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
    #            to <code>false</code>. The default value is <code>true</code>.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Boolean] :requester_pays
    #   <p>A value that sets who pays the cost of the request and the cost associated with data
    #            download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
    #            the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
    #            the cost of storing data.</p>
    #
    #            <note>
    #               <p>
    #                  <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
    #               share, so make sure that the configuration on the file share is the same as the S3
    #               bucket configuration.</p>
    #            </note>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Boolean] :smbacl_enabled
    #   <p>Set this value to <code>true</code> to enable access control list (ACL) on the SMB file
    #            share. Set it to <code>false</code> to map file and directory permissions to the POSIX
    #            permissions.</p>
    #
    #
    #
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/smb-acl.html">Using Microsoft Windows ACLs to
    #               control access to an SMB file share</a> in the <i>Storage Gateway User
    #               Guide</i>.</p>
    #
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Boolean] :access_based_enumeration
    #   <p>The files and folders on this share will only be visible to users with read
    #            access.</p>
    #
    # @option params [Array<String>] :admin_user_list
    #   <p>A list of users or groups in the Active Directory that have administrator rights to the
    #            file share. A group must be prefixed with the @ character. Acceptable formats include:
    #               <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    #
    # @option params [Array<String>] :valid_user_list
    #   <p>A list of users or groups in the Active Directory that are allowed to access the file
    #            share. A group must be prefixed with the @ character. Acceptable formats include:
    #               <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    #
    # @option params [Array<String>] :invalid_user_list
    #   <p>A list of users or groups in the Active Directory that are not allowed to access the
    #            file share. A group must be prefixed with the @ character. Acceptable formats include:
    #               <code>DOMAIN\User1</code>, <code>user1</code>, <code>@group1</code>, and
    #               <code>@DOMAIN\group1</code>. Can only be set if Authentication is set to
    #               <code>ActiveDirectory</code>.</p>
    #
    # @option params [String] :audit_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>
    #
    # @option params [String] :case_sensitivity
    #   <p>The case of an object name in an Amazon S3 bucket. For
    #               <code>ClientSpecified</code>, the client determines the case sensitivity. For
    #               <code>CaseSensitive</code>, the gateway determines the case sensitivity. The default
    #            value is <code>ClientSpecified</code>.</p>
    #
    # @option params [String] :file_share_name
    #   <p>The name of the file share. Optional.</p>
    #
    #            <note>
    #               <p>
    #                  <code>FileShareName</code> must be set if an S3 prefix name is set in
    #                  <code>LocationARN</code>, or if an access point or access point alias is used.</p>
    #            </note>
    #
    # @option params [CacheAttributes] :cache_attributes
    #   <p>Specifies refresh cache information for the file share.</p>
    #
    # @option params [String] :notification_policy
    #   <p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
    #            the number of seconds to wait after the last point in time a client wrote to a file before
    #            generating an <code>ObjectUploaded</code> notification. Because clients can make many small
    #            writes to files, it's best to set this parameter for as long as possible to avoid
    #            generating multiple notifications for the same file in a small time period.</p>
    #
    #            <note>
    #               <p>
    #                  <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
    #               uploading to Amazon S3, only the timing of the notification.</p>
    #            </note>
    #
    #            <p>The following example sets <code>NotificationPolicy</code> on with
    #               <code>SettlingTimeInSeconds</code> set to 60.</p>
    #
    #            <p>
    #               <code>{\"Upload\": {\"SettlingTimeInSeconds\": 60}}</code>
    #            </p>
    #
    #            <p>The following example sets <code>NotificationPolicy</code> off.</p>
    #
    #            <p>
    #               <code>{}</code>
    #            </p>
    #
    # @option params [Boolean] :oplocks_enabled
    #   <p>Specifies whether opportunistic locking is enabled for the SMB file share.</p>
    #            <note>
    #               <p>Enabling opportunistic locking on case-sensitive shares is not recommended for
    #               workloads that involve access to files with the same name in different case.</p>
    #            </note>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @return [Types::UpdateSMBFileShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_smb_file_share(
    #     file_share_arn: 'FileShareARN', # required
    #     kms_encrypted: false,
    #     kms_key: 'KMSKey',
    #     default_storage_class: 'DefaultStorageClass',
    #     object_acl: 'private', # accepts ["private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "aws-exec-read"]
    #     read_only: false,
    #     guess_mime_type_enabled: false,
    #     requester_pays: false,
    #     smbacl_enabled: false,
    #     access_based_enumeration: false,
    #     admin_user_list: [
    #       'member'
    #     ],
    #     audit_destination_arn: 'AuditDestinationARN',
    #     case_sensitivity: 'ClientSpecified', # accepts ["ClientSpecified", "CaseSensitive"]
    #     file_share_name: 'FileShareName',
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1
    #     },
    #     notification_policy: 'NotificationPolicy',
    #     oplocks_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSMBFileShareOutput
    #   resp.data.file_share_arn #=> String
    #
    def update_smb_file_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSMBFileShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSMBFileShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSMBFileShare
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::UpdateSMBFileShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSMBFileShare,
        stubs: @stubs,
        params_class: Params::UpdateSMBFileShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_smb_file_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Controls whether the shares on an S3 File Gateway are visible in a net view or browse
    #          list. The operation is only supported for S3 File Gateways.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSMBFileShareVisibilityInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [Boolean] :file_shares_visible
    #   <p>The shares on this gateway appear when listing shares.</p>
    #
    # @return [Types::UpdateSMBFileShareVisibilityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_smb_file_share_visibility(
    #     gateway_arn: 'GatewayARN', # required
    #     file_shares_visible: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSMBFileShareVisibilityOutput
    #   resp.data.gateway_arn #=> String
    #
    def update_smb_file_share_visibility(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSMBFileShareVisibilityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSMBFileShareVisibilityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSMBFileShareVisibility
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::UpdateSMBFileShareVisibility
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSMBFileShareVisibility,
        stubs: @stubs,
        params_class: Params::UpdateSMBFileShareVisibilityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_smb_file_share_visibility
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the list of Active Directory users and groups that have special permissions for
    #          SMB file shares on the gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSMBLocalGroupsInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [SMBLocalGroups] :smb_local_groups
    #   <p>A list of Active Directory users and groups that you want to grant special permissions
    #            for SMB file shares on the gateway.</p>
    #
    # @return [Types::UpdateSMBLocalGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_smb_local_groups(
    #     gateway_arn: 'GatewayARN', # required
    #     smb_local_groups: {
    #       gateway_admins: [
    #         'member'
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSMBLocalGroupsOutput
    #   resp.data.gateway_arn #=> String
    #
    def update_smb_local_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSMBLocalGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSMBLocalGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSMBLocalGroups
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::UpdateSMBLocalGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSMBLocalGroups,
        stubs: @stubs,
        params_class: Params::UpdateSMBLocalGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_smb_local_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the SMB security strategy on a file gateway. This action is only supported in
    #          file gateways.</p>
    #
    #          <note>
    #             <p>This API is called Security level in the User Guide.</p>
    #
    #             <p>A higher security level can affect performance of the gateway.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateSMBSecurityStrategyInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    #            operation to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [String] :smb_security_strategy
    #   <p>Specifies the type of security strategy.</p>
    #
    #            <p>ClientSpecified: if you use this option, requests are established based on what is
    #            negotiated by the client. This option is recommended when you want to maximize
    #            compatibility across different clients in your environment. Supported only in S3 File
    #            Gateway.</p>
    #
    #            <p>MandatorySigning: if you use this option, file gateway only allows connections from
    #            SMBv2 or SMBv3 clients that have signing enabled. This option works with SMB clients on
    #            Microsoft Windows Vista, Windows Server 2008 or newer.</p>
    #
    #            <p>MandatoryEncryption: if you use this option, file gateway only allows connections from
    #            SMBv3 clients that have encryption enabled. This option is highly recommended for
    #            environments that handle sensitive data. This option works with SMB clients on Microsoft
    #            Windows 8, Windows Server 2012 or newer.</p>
    #
    # @return [Types::UpdateSMBSecurityStrategyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_smb_security_strategy(
    #     gateway_arn: 'GatewayARN', # required
    #     smb_security_strategy: 'ClientSpecified' # required - accepts ["ClientSpecified", "MandatorySigning", "MandatoryEncryption"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSMBSecurityStrategyOutput
    #   resp.data.gateway_arn #=> String
    #
    def update_smb_security_strategy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSMBSecurityStrategyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSMBSecurityStrategyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSMBSecurityStrategy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::UpdateSMBSecurityStrategy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSMBSecurityStrategy,
        stubs: @stubs,
        params_class: Params::UpdateSMBSecurityStrategyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_smb_security_strategy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a snapshot schedule configured for a gateway volume. This operation is only
    #          supported in the cached volume and stored volume gateway types.</p>
    #
    #          <p>The default snapshot schedule for volume is once every 24 hours, starting at the
    #          creation time of the volume. You can use this API to change the snapshot schedule
    #          configured for the volume.</p>
    #
    #          <p>In the request you must identify the gateway volume whose snapshot schedule you want to
    #          update, and the schedule information, including when you want the snapshot to begin on a
    #          day and the frequency (in hours) of snapshots.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSnapshotScheduleInput}.
    #
    # @option params [String] :volume_arn
    #   <p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
    #            operation to return a list of gateway volumes.</p>
    #
    # @option params [Integer] :start_at
    #   <p>The hour of the day at which the snapshot schedule begins represented as
    #               <i>hh</i>, where <i>hh</i> is the hour (0 to 23). The hour
    #            of the day is in the time zone of the gateway.</p>
    #
    # @option params [Integer] :recurrence_in_hours
    #   <p>Frequency of snapshots. Specify the number of hours between snapshots.</p>
    #
    # @option params [String] :description
    #   <p>Optional description of the snapshot that overwrites the existing description.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value
    #            pair.</p>
    #
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #               UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
    #               of a tag's key is 128 characters, and the maximum length for a tag's value is
    #               256.</p>
    #            </note>
    #
    # @return [Types::UpdateSnapshotScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_snapshot_schedule(
    #     volume_arn: 'VolumeARN', # required
    #     start_at: 1, # required
    #     recurrence_in_hours: 1, # required
    #     description: 'Description',
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
    #   resp.data #=> Types::UpdateSnapshotScheduleOutput
    #   resp.data.volume_arn #=> String
    #
    def update_snapshot_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSnapshotScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSnapshotScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSnapshotSchedule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::UpdateSnapshotSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSnapshotSchedule,
        stubs: @stubs,
        params_class: Params::UpdateSnapshotScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_snapshot_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the type of medium changer in a tape gateway. When you activate a tape gateway,
    #          you select a medium changer type for the tape gateway. This operation enables you to select
    #          a different type of medium changer after a tape gateway is activated. This operation is
    #          only supported in the tape gateway type.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVTLDeviceTypeInput}.
    #
    # @option params [String] :vtl_device_arn
    #   <p>The Amazon Resource Name (ARN) of the medium changer you want to select.</p>
    #
    # @option params [String] :device_type
    #   <p>The type of medium changer you want to select.</p>
    #
    #            <p>Valid Values: <code>STK-L700</code> | <code>AWS-Gateway-VTL</code> |
    #               <code>IBM-03584L32-0402</code>
    #            </p>
    #
    # @return [Types::UpdateVTLDeviceTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vtl_device_type(
    #     vtl_device_arn: 'VTLDeviceARN', # required
    #     device_type: 'DeviceType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVTLDeviceTypeOutput
    #   resp.data.vtl_device_arn #=> String
    #
    def update_vtl_device_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVTLDeviceTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVTLDeviceTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVTLDeviceType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidGatewayRequestException]),
        data_parser: Parsers::UpdateVTLDeviceType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVTLDeviceType,
        stubs: @stubs,
        params_class: Params::UpdateVTLDeviceTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_vtl_device_type
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
