# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Nimble
  # An API client for nimble
  # See {#initialize} for a full list of supported configuration options
  # <p>Welcome to the Amazon Nimble Studio API reference. This API reference provides
  #             methods, schema, resources, parameters, and more to help you get the most out of Nimble
  #             Studio.</p>
  #         <p>Nimble Studio is a virtual studio that empowers visual effects, animation, and
  #             interactive content teams to create content securely within a scalable, private cloud
  #             service.</p>
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
    def initialize(config = AWS::SDK::Nimble::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Accept EULAs.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptEulasInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [Array<String>] :eula_ids
    #   <p>The EULA ID.</p>
    #
    # @option params [String] :studio_id
    #   <p>A collection of EULA IDs.</p>
    #
    # @return [Types::AcceptEulasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_eulas(
    #     client_token: 'clientToken',
    #     eula_ids: [
    #       'member'
    #     ],
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptEulasOutput
    #   resp.data.eula_acceptances #=> Array<EulaAcceptance>
    #   resp.data.eula_acceptances[0] #=> Types::EulaAcceptance
    #   resp.data.eula_acceptances[0].accepted_at #=> Time
    #   resp.data.eula_acceptances[0].accepted_by #=> String
    #   resp.data.eula_acceptances[0].acceptee_id #=> String
    #   resp.data.eula_acceptances[0].eula_acceptance_id #=> String
    #   resp.data.eula_acceptances[0].eula_id #=> String
    #
    def accept_eulas(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptEulasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptEulasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptEulas
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::AcceptEulas
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptEulas,
        stubs: @stubs,
        params_class: Params::AcceptEulasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_eulas
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a launch profile.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLaunchProfileInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :description
    #   <p>The description.</p>
    #
    # @option params [Array<String>] :ec2_subnet_ids
    #   <p>Specifies the IDs of the EC2 subnets where streaming sessions will be accessible from.
    #               These subnets must support the specified instance types. </p>
    #
    # @option params [Array<String>] :launch_profile_protocol_versions
    #   <p>The version number of the protocol that is used by the launch profile. The only valid
    #               version is "2021-03-31".</p>
    #
    # @option params [String] :name
    #   <p>The name for the launch profile.</p>
    #
    # @option params [StreamConfigurationCreate] :stream_configuration
    #   <p>A configuration for a streaming session.</p>
    #
    # @option params [Array<String>] :studio_component_ids
    #   <p>Unique identifiers for a collection of studio components that can be used with this
    #               launch profile.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    # @return [Types::CreateLaunchProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_launch_profile(
    #     client_token: 'clientToken',
    #     description: 'description',
    #     ec2_subnet_ids: [
    #       'member'
    #     ], # required
    #     launch_profile_protocol_versions: [
    #       'member'
    #     ], # required
    #     name: 'name', # required
    #     stream_configuration: {
    #       clipboard_mode: 'ENABLED', # required - accepts ["ENABLED", "DISABLED"]
    #       ec2_instance_types: [
    #         'g4dn.xlarge' # accepts ["g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"]
    #       ], # required
    #       max_session_length_in_minutes: 1,
    #       streaming_image_ids: [
    #         'member'
    #       ], # required
    #       max_stopped_session_length_in_minutes: 1,
    #       session_storage: {
    #         root: {
    #           linux: 'linux',
    #           windows: 'windows'
    #         },
    #         mode: [
    #           'UPLOAD' # accepts ["UPLOAD"]
    #         ] # required
    #       }
    #     }, # required
    #     studio_component_ids: [
    #       'member'
    #     ], # required
    #     studio_id: 'studioId', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLaunchProfileOutput
    #   resp.data.launch_profile #=> Types::LaunchProfile
    #   resp.data.launch_profile.arn #=> String
    #   resp.data.launch_profile.created_at #=> Time
    #   resp.data.launch_profile.created_by #=> String
    #   resp.data.launch_profile.description #=> String
    #   resp.data.launch_profile.ec2_subnet_ids #=> Array<String>
    #   resp.data.launch_profile.ec2_subnet_ids[0] #=> String
    #   resp.data.launch_profile.launch_profile_id #=> String
    #   resp.data.launch_profile.launch_profile_protocol_versions #=> Array<String>
    #   resp.data.launch_profile.launch_profile_protocol_versions[0] #=> String
    #   resp.data.launch_profile.name #=> String
    #   resp.data.launch_profile.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.launch_profile.status_code #=> String, one of ["LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED"]
    #   resp.data.launch_profile.status_message #=> String
    #   resp.data.launch_profile.stream_configuration #=> Types::StreamConfiguration
    #   resp.data.launch_profile.stream_configuration.clipboard_mode #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.launch_profile.stream_configuration.ec2_instance_types #=> Array<String>
    #   resp.data.launch_profile.stream_configuration.ec2_instance_types[0] #=> String, one of ["g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"]
    #   resp.data.launch_profile.stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.data.launch_profile.stream_configuration.streaming_image_ids #=> Array<String>
    #   resp.data.launch_profile.stream_configuration.streaming_image_ids[0] #=> String
    #   resp.data.launch_profile.stream_configuration.max_stopped_session_length_in_minutes #=> Integer
    #   resp.data.launch_profile.stream_configuration.session_storage #=> Types::StreamConfigurationSessionStorage
    #   resp.data.launch_profile.stream_configuration.session_storage.root #=> Types::StreamingSessionStorageRoot
    #   resp.data.launch_profile.stream_configuration.session_storage.root.linux #=> String
    #   resp.data.launch_profile.stream_configuration.session_storage.root.windows #=> String
    #   resp.data.launch_profile.stream_configuration.session_storage.mode #=> Array<String>
    #   resp.data.launch_profile.stream_configuration.session_storage.mode[0] #=> String, one of ["UPLOAD"]
    #   resp.data.launch_profile.studio_component_ids #=> Array<String>
    #   resp.data.launch_profile.studio_component_ids[0] #=> String
    #   resp.data.launch_profile.tags #=> Hash<String, String>
    #   resp.data.launch_profile.tags['key'] #=> String
    #   resp.data.launch_profile.updated_at #=> Time
    #   resp.data.launch_profile.updated_by #=> String
    #   resp.data.launch_profile.validation_results #=> Array<ValidationResult>
    #   resp.data.launch_profile.validation_results[0] #=> Types::ValidationResult
    #   resp.data.launch_profile.validation_results[0].type #=> String, one of ["VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT", "VALIDATE_SUBNET_ASSOCIATION", "VALIDATE_NETWORK_ACL_ASSOCIATION", "VALIDATE_SECURITY_GROUP_ASSOCIATION"]
    #   resp.data.launch_profile.validation_results[0].state #=> String, one of ["VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"]
    #   resp.data.launch_profile.validation_results[0].status_code #=> String, one of ["VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION", "VALIDATION_FAILED_SUBNET_NOT_FOUND", "VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION", "VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY", "VALIDATION_FAILED_UNAUTHORIZED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"]
    #   resp.data.launch_profile.validation_results[0].status_message #=> String
    #
    def create_launch_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLaunchProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLaunchProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLaunchProfile
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateLaunchProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLaunchProfile,
        stubs: @stubs,
        params_class: Params::CreateLaunchProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_launch_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a streaming image resource in a studio.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStreamingImageInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :description
    #   <p>A human-readable description of the streaming image.</p>
    #
    # @option params [String] :ec2_image_id
    #   <p>The ID of an EC2 machine image with which to create this streaming image.</p>
    #
    # @option params [String] :name
    #   <p>A friendly name for a streaming image resource.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    # @return [Types::CreateStreamingImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_image(
    #     client_token: 'clientToken',
    #     description: 'description',
    #     ec2_image_id: 'ec2ImageId', # required
    #     name: 'name', # required
    #     studio_id: 'studioId', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStreamingImageOutput
    #   resp.data.streaming_image #=> Types::StreamingImage
    #   resp.data.streaming_image.arn #=> String
    #   resp.data.streaming_image.description #=> String
    #   resp.data.streaming_image.ec2_image_id #=> String
    #   resp.data.streaming_image.encryption_configuration #=> Types::StreamingImageEncryptionConfiguration
    #   resp.data.streaming_image.encryption_configuration.key_arn #=> String
    #   resp.data.streaming_image.encryption_configuration.key_type #=> String, one of ["CUSTOMER_MANAGED_KEY"]
    #   resp.data.streaming_image.eula_ids #=> Array<String>
    #   resp.data.streaming_image.eula_ids[0] #=> String
    #   resp.data.streaming_image.name #=> String
    #   resp.data.streaming_image.owner #=> String
    #   resp.data.streaming_image.platform #=> String
    #   resp.data.streaming_image.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "DELETE_IN_PROGRESS", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.streaming_image.status_code #=> String, one of ["STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR", "ACCESS_DENIED"]
    #   resp.data.streaming_image.status_message #=> String
    #   resp.data.streaming_image.streaming_image_id #=> String
    #   resp.data.streaming_image.tags #=> Hash<String, String>
    #   resp.data.streaming_image.tags['key'] #=> String
    #
    def create_streaming_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStreamingImageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStreamingImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStreamingImage
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateStreamingImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStreamingImage,
        stubs: @stubs,
        params_class: Params::CreateStreamingImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_streaming_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a streaming session in a studio.</p>
    #         <p>After invoking this operation, you must poll GetStreamingSession until the streaming
    #             session is in state READY.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStreamingSessionInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :ec2_instance_type
    #   <p>The EC2 Instance type used for the streaming session.</p>
    #
    # @option params [String] :launch_profile_id
    #   <p>The launch profile ID.</p>
    #
    # @option params [String] :owned_by
    #   <p>The user ID of the user that owns the streaming session. The user that owns the
    #               session will be logging into the session and interacting with the virtual
    #               workstation.</p>
    #
    # @option params [String] :streaming_image_id
    #   <p>The ID of the streaming image.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    # @return [Types::CreateStreamingSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_session(
    #     client_token: 'clientToken',
    #     ec2_instance_type: 'g4dn.xlarge', # accepts ["g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"]
    #     launch_profile_id: 'launchProfileId',
    #     owned_by: 'ownedBy',
    #     streaming_image_id: 'streamingImageId',
    #     studio_id: 'studioId', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStreamingSessionOutput
    #   resp.data.session #=> Types::StreamingSession
    #   resp.data.session.arn #=> String
    #   resp.data.session.created_at #=> Time
    #   resp.data.session.created_by #=> String
    #   resp.data.session.ec2_instance_type #=> String
    #   resp.data.session.launch_profile_id #=> String
    #   resp.data.session.owned_by #=> String
    #   resp.data.session.session_id #=> String
    #   resp.data.session.state #=> String, one of ["CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED", "STOP_IN_PROGRESS", "START_IN_PROGRESS", "STOPPED", "STOP_FAILED", "START_FAILED"]
    #   resp.data.session.status_code #=> String, one of ["STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR", "STREAMING_SESSION_STOPPED", "STREAMING_SESSION_STARTED", "STREAMING_SESSION_STOP_IN_PROGRESS", "STREAMING_SESSION_START_IN_PROGRESS", "AMI_VALIDATION_ERROR"]
    #   resp.data.session.status_message #=> String
    #   resp.data.session.streaming_image_id #=> String
    #   resp.data.session.tags #=> Hash<String, String>
    #   resp.data.session.tags['key'] #=> String
    #   resp.data.session.terminate_at #=> Time
    #   resp.data.session.updated_at #=> Time
    #   resp.data.session.updated_by #=> String
    #   resp.data.session.stopped_at #=> Time
    #   resp.data.session.stopped_by #=> String
    #   resp.data.session.started_at #=> Time
    #   resp.data.session.started_by #=> String
    #   resp.data.session.stop_at #=> Time
    #
    def create_streaming_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStreamingSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStreamingSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStreamingSession
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateStreamingSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStreamingSession,
        stubs: @stubs,
        params_class: Params::CreateStreamingSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_streaming_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a streaming session stream for a streaming session.</p>
    #         <p>After invoking this API, invoke GetStreamingSessionStream with the returned streamId
    #             to poll the resource until it is in state READY.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStreamingSessionStreamInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [Integer] :expiration_in_seconds
    #   <p>The expiration time in seconds.</p>
    #
    # @option params [String] :session_id
    #   <p>The streaming session ID.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::CreateStreamingSessionStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_session_stream(
    #     client_token: 'clientToken',
    #     expiration_in_seconds: 1,
    #     session_id: 'sessionId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStreamingSessionStreamOutput
    #   resp.data.stream #=> Types::StreamingSessionStream
    #   resp.data.stream.created_at #=> Time
    #   resp.data.stream.created_by #=> String
    #   resp.data.stream.expires_at #=> Time
    #   resp.data.stream.owned_by #=> String
    #   resp.data.stream.state #=> String, one of ["READY", "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.stream.status_code #=> String, one of ["STREAM_CREATE_IN_PROGRESS", "STREAM_READY", "STREAM_DELETE_IN_PROGRESS", "STREAM_DELETED", "INTERNAL_ERROR", "NETWORK_CONNECTION_ERROR"]
    #   resp.data.stream.stream_id #=> String
    #   resp.data.stream.url #=> String
    #
    def create_streaming_session_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStreamingSessionStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStreamingSessionStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStreamingSessionStream
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateStreamingSessionStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStreamingSessionStream,
        stubs: @stubs,
        params_class: Params::CreateStreamingSessionStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_streaming_session_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a new Studio.</p>
    #         <p>When creating a Studio, two IAM roles must be provided: the admin role and the user
    #             Role. These roles are assumed by your users when they log in to the Nimble Studio
    #             portal.</p>
    #         <p>The user role must have the AmazonNimbleStudio-StudioUser managed policy attached for
    #             the portal to function properly.</p>
    #         <p>The Admin Role must have the AmazonNimbleStudio-StudioAdmin managed policy attached
    #             for the portal to function properly.</p>
    #         <p>You may optionally specify a KMS key in the StudioEncryptionConfiguration.</p>
    #         <p>In Nimble Studio, resource names, descriptions, initialization scripts, and other
    #             data you provide are always encrypted at rest using an KMS key. By default, this key is
    #             owned by Amazon Web Services and managed on your behalf. You may provide your own KMS
    #             key when calling CreateStudio to encrypt this data using a key you own and
    #             manage.</p>
    #         <p>When providing an KMS key during studio creation, Nimble Studio creates KMS
    #             grants in your account to provide your studio user and admin roles access to these KMS
    #             keys.</p>
    #         <p>If you delete this grant, the studio will no longer be accessible to your portal
    #             users.</p>
    #         <p>If you delete the studio KMS key, your studio will no longer be accessible.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStudioInput}.
    #
    # @option params [String] :admin_role_arn
    #   <p>The IAM role that Studio Admins will assume when logging in to the Nimble Studio
    #               portal.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :display_name
    #   <p>A friendly name for the studio.</p>
    #
    # @option params [StudioEncryptionConfiguration] :studio_encryption_configuration
    #   <p>The studio encryption configuration.</p>
    #
    # @option params [String] :studio_name
    #   <p>The studio name that is used in the URL of the Nimble Studio portal when accessed
    #               by Nimble Studio users.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    # @option params [String] :user_role_arn
    #   <p>The IAM role that Studio Users will assume when logging in to the Nimble Studio
    #               portal.</p>
    #
    # @return [Types::CreateStudioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_studio(
    #     admin_role_arn: 'adminRoleArn', # required
    #     client_token: 'clientToken',
    #     display_name: 'displayName', # required
    #     studio_encryption_configuration: {
    #       key_arn: 'keyArn',
    #       key_type: 'AWS_OWNED_KEY' # required - accepts ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"]
    #     },
    #     studio_name: 'studioName', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     user_role_arn: 'userRoleArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStudioOutput
    #   resp.data.studio #=> Types::Studio
    #   resp.data.studio.admin_role_arn #=> String
    #   resp.data.studio.arn #=> String
    #   resp.data.studio.created_at #=> Time
    #   resp.data.studio.display_name #=> String
    #   resp.data.studio.home_region #=> String
    #   resp.data.studio.sso_client_id #=> String
    #   resp.data.studio.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.studio.status_code #=> String, one of ["STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS"]
    #   resp.data.studio.status_message #=> String
    #   resp.data.studio.studio_encryption_configuration #=> Types::StudioEncryptionConfiguration
    #   resp.data.studio.studio_encryption_configuration.key_arn #=> String
    #   resp.data.studio.studio_encryption_configuration.key_type #=> String, one of ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"]
    #   resp.data.studio.studio_id #=> String
    #   resp.data.studio.studio_name #=> String
    #   resp.data.studio.studio_url #=> String
    #   resp.data.studio.tags #=> Hash<String, String>
    #   resp.data.studio.tags['key'] #=> String
    #   resp.data.studio.updated_at #=> Time
    #   resp.data.studio.user_role_arn #=> String
    #
    def create_studio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStudioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStudioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStudio
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateStudio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStudio,
        stubs: @stubs,
        params_class: Params::CreateStudioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_studio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a studio component resource.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStudioComponentInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [StudioComponentConfiguration] :configuration
    #   <p>The configuration of the studio component, based on component type.</p>
    #
    # @option params [String] :description
    #   <p>The description.</p>
    #
    # @option params [Array<String>] :ec2_security_group_ids
    #   <p>The EC2 security groups that control access to the studio component.</p>
    #
    # @option params [Array<StudioComponentInitializationScript>] :initialization_scripts
    #   <p>Initialization scripts for studio components.</p>
    #
    # @option params [String] :name
    #   <p>The name for the studio component.</p>
    #
    # @option params [Array<ScriptParameterKeyValue>] :script_parameters
    #   <p>Parameters for the studio component scripts.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @option params [String] :subtype
    #   <p>The specific subtype of a studio component.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    # @option params [String] :type
    #   <p>The type of the studio component.</p>
    #
    # @option params [String] :secure_initialization_role_arn
    #   <p>An IAM role attached to Studio Component when the system initialization script runs which give the studio component access to AWS resources when the system initialization script runs.</p>
    #
    # @option params [String] :runtime_role_arn
    #   <p>An IAM role attached to a Studio Component that gives the studio component access to AWS resources at anytime while the instance is running. </p>
    #
    # @return [Types::CreateStudioComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_studio_component(
    #     client_token: 'clientToken',
    #     configuration: {
    #       # One of:
    #       active_directory_configuration: {
    #         computer_attributes: [
    #           {
    #             name: 'name',
    #             value: 'value'
    #           }
    #         ],
    #         directory_id: 'directoryId',
    #         organizational_unit_distinguished_name: 'organizationalUnitDistinguishedName'
    #       },
    #       compute_farm_configuration: {
    #         active_directory_user: 'activeDirectoryUser',
    #         endpoint: 'endpoint'
    #       },
    #       license_service_configuration: {
    #         endpoint: 'endpoint'
    #       },
    #       shared_file_system_configuration: {
    #         endpoint: 'endpoint',
    #         file_system_id: 'fileSystemId',
    #         linux_mount_point: 'linuxMountPoint',
    #         share_name: 'shareName',
    #         windows_mount_drive: 'windowsMountDrive'
    #       }
    #     },
    #     description: 'description',
    #     ec2_security_group_ids: [
    #       'member'
    #     ],
    #     initialization_scripts: [
    #       {
    #         launch_profile_protocol_version: 'launchProfileProtocolVersion',
    #         platform: 'LINUX', # accepts ["LINUX", "WINDOWS"]
    #         run_context: 'SYSTEM_INITIALIZATION', # accepts ["SYSTEM_INITIALIZATION", "USER_INITIALIZATION"]
    #         script: 'script'
    #       }
    #     ],
    #     name: 'name', # required
    #     script_parameters: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ],
    #     studio_id: 'studioId', # required
    #     subtype: 'AWS_MANAGED_MICROSOFT_AD', # accepts ["AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"]
    #     tags: {
    #       'key' => 'value'
    #     },
    #     type: 'ACTIVE_DIRECTORY', # required - accepts ["ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"]
    #     secure_initialization_role_arn: 'secureInitializationRoleArn',
    #     runtime_role_arn: 'runtimeRoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStudioComponentOutput
    #   resp.data.studio_component #=> Types::StudioComponent
    #   resp.data.studio_component.arn #=> String
    #   resp.data.studio_component.configuration #=> Types::StudioComponentConfiguration, one of [ActiveDirectoryConfiguration, ComputeFarmConfiguration, LicenseServiceConfiguration, SharedFileSystemConfiguration]
    #   resp.data.studio_component.configuration.active_directory_configuration #=> Types::ActiveDirectoryConfiguration
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes #=> Array<ActiveDirectoryComputerAttribute>
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes[0] #=> Types::ActiveDirectoryComputerAttribute
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes[0].name #=> String
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes[0].value #=> String
    #   resp.data.studio_component.configuration.active_directory_configuration.directory_id #=> String
    #   resp.data.studio_component.configuration.active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.studio_component.configuration.compute_farm_configuration #=> Types::ComputeFarmConfiguration
    #   resp.data.studio_component.configuration.compute_farm_configuration.active_directory_user #=> String
    #   resp.data.studio_component.configuration.compute_farm_configuration.endpoint #=> String
    #   resp.data.studio_component.configuration.license_service_configuration #=> Types::LicenseServiceConfiguration
    #   resp.data.studio_component.configuration.license_service_configuration.endpoint #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration #=> Types::SharedFileSystemConfiguration
    #   resp.data.studio_component.configuration.shared_file_system_configuration.endpoint #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.file_system_id #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.linux_mount_point #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.share_name #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.windows_mount_drive #=> String
    #   resp.data.studio_component.created_at #=> Time
    #   resp.data.studio_component.created_by #=> String
    #   resp.data.studio_component.description #=> String
    #   resp.data.studio_component.ec2_security_group_ids #=> Array<String>
    #   resp.data.studio_component.ec2_security_group_ids[0] #=> String
    #   resp.data.studio_component.initialization_scripts #=> Array<StudioComponentInitializationScript>
    #   resp.data.studio_component.initialization_scripts[0] #=> Types::StudioComponentInitializationScript
    #   resp.data.studio_component.initialization_scripts[0].launch_profile_protocol_version #=> String
    #   resp.data.studio_component.initialization_scripts[0].platform #=> String, one of ["LINUX", "WINDOWS"]
    #   resp.data.studio_component.initialization_scripts[0].run_context #=> String, one of ["SYSTEM_INITIALIZATION", "USER_INITIALIZATION"]
    #   resp.data.studio_component.initialization_scripts[0].script #=> String
    #   resp.data.studio_component.name #=> String
    #   resp.data.studio_component.script_parameters #=> Array<ScriptParameterKeyValue>
    #   resp.data.studio_component.script_parameters[0] #=> Types::ScriptParameterKeyValue
    #   resp.data.studio_component.script_parameters[0].key #=> String
    #   resp.data.studio_component.script_parameters[0].value #=> String
    #   resp.data.studio_component.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.studio_component.status_code #=> String, one of ["ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"]
    #   resp.data.studio_component.status_message #=> String
    #   resp.data.studio_component.studio_component_id #=> String
    #   resp.data.studio_component.subtype #=> String, one of ["AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"]
    #   resp.data.studio_component.tags #=> Hash<String, String>
    #   resp.data.studio_component.tags['key'] #=> String
    #   resp.data.studio_component.type #=> String, one of ["ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"]
    #   resp.data.studio_component.updated_at #=> Time
    #   resp.data.studio_component.updated_by #=> String
    #   resp.data.studio_component.secure_initialization_role_arn #=> String
    #   resp.data.studio_component.runtime_role_arn #=> String
    #
    def create_studio_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStudioComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStudioComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStudioComponent
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateStudioComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStudioComponent,
        stubs: @stubs,
        params_class: Params::CreateStudioComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_studio_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Permanently delete a launch profile.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLaunchProfileInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::DeleteLaunchProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_launch_profile(
    #     client_token: 'clientToken',
    #     launch_profile_id: 'launchProfileId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLaunchProfileOutput
    #   resp.data.launch_profile #=> Types::LaunchProfile
    #   resp.data.launch_profile.arn #=> String
    #   resp.data.launch_profile.created_at #=> Time
    #   resp.data.launch_profile.created_by #=> String
    #   resp.data.launch_profile.description #=> String
    #   resp.data.launch_profile.ec2_subnet_ids #=> Array<String>
    #   resp.data.launch_profile.ec2_subnet_ids[0] #=> String
    #   resp.data.launch_profile.launch_profile_id #=> String
    #   resp.data.launch_profile.launch_profile_protocol_versions #=> Array<String>
    #   resp.data.launch_profile.launch_profile_protocol_versions[0] #=> String
    #   resp.data.launch_profile.name #=> String
    #   resp.data.launch_profile.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.launch_profile.status_code #=> String, one of ["LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED"]
    #   resp.data.launch_profile.status_message #=> String
    #   resp.data.launch_profile.stream_configuration #=> Types::StreamConfiguration
    #   resp.data.launch_profile.stream_configuration.clipboard_mode #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.launch_profile.stream_configuration.ec2_instance_types #=> Array<String>
    #   resp.data.launch_profile.stream_configuration.ec2_instance_types[0] #=> String, one of ["g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"]
    #   resp.data.launch_profile.stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.data.launch_profile.stream_configuration.streaming_image_ids #=> Array<String>
    #   resp.data.launch_profile.stream_configuration.streaming_image_ids[0] #=> String
    #   resp.data.launch_profile.stream_configuration.max_stopped_session_length_in_minutes #=> Integer
    #   resp.data.launch_profile.stream_configuration.session_storage #=> Types::StreamConfigurationSessionStorage
    #   resp.data.launch_profile.stream_configuration.session_storage.root #=> Types::StreamingSessionStorageRoot
    #   resp.data.launch_profile.stream_configuration.session_storage.root.linux #=> String
    #   resp.data.launch_profile.stream_configuration.session_storage.root.windows #=> String
    #   resp.data.launch_profile.stream_configuration.session_storage.mode #=> Array<String>
    #   resp.data.launch_profile.stream_configuration.session_storage.mode[0] #=> String, one of ["UPLOAD"]
    #   resp.data.launch_profile.studio_component_ids #=> Array<String>
    #   resp.data.launch_profile.studio_component_ids[0] #=> String
    #   resp.data.launch_profile.tags #=> Hash<String, String>
    #   resp.data.launch_profile.tags['key'] #=> String
    #   resp.data.launch_profile.updated_at #=> Time
    #   resp.data.launch_profile.updated_by #=> String
    #   resp.data.launch_profile.validation_results #=> Array<ValidationResult>
    #   resp.data.launch_profile.validation_results[0] #=> Types::ValidationResult
    #   resp.data.launch_profile.validation_results[0].type #=> String, one of ["VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT", "VALIDATE_SUBNET_ASSOCIATION", "VALIDATE_NETWORK_ACL_ASSOCIATION", "VALIDATE_SECURITY_GROUP_ASSOCIATION"]
    #   resp.data.launch_profile.validation_results[0].state #=> String, one of ["VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"]
    #   resp.data.launch_profile.validation_results[0].status_code #=> String, one of ["VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION", "VALIDATION_FAILED_SUBNET_NOT_FOUND", "VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION", "VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY", "VALIDATION_FAILED_UNAUTHORIZED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"]
    #   resp.data.launch_profile.validation_results[0].status_message #=> String
    #
    def delete_launch_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLaunchProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLaunchProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLaunchProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteLaunchProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLaunchProfile,
        stubs: @stubs,
        params_class: Params::DeleteLaunchProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_launch_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a user from launch profile membership.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLaunchProfileMemberInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    # @option params [String] :principal_id
    #   <p>The principal ID. This currently supports a Amazon Web Services SSO UserId. </p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::DeleteLaunchProfileMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_launch_profile_member(
    #     client_token: 'clientToken',
    #     launch_profile_id: 'launchProfileId', # required
    #     principal_id: 'principalId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLaunchProfileMemberOutput
    #
    def delete_launch_profile_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLaunchProfileMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLaunchProfileMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLaunchProfileMember
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteLaunchProfileMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLaunchProfileMember,
        stubs: @stubs,
        params_class: Params::DeleteLaunchProfileMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_launch_profile_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete streaming image.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStreamingImageInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :streaming_image_id
    #   <p>The streaming image ID.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::DeleteStreamingImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_streaming_image(
    #     client_token: 'clientToken',
    #     streaming_image_id: 'streamingImageId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStreamingImageOutput
    #   resp.data.streaming_image #=> Types::StreamingImage
    #   resp.data.streaming_image.arn #=> String
    #   resp.data.streaming_image.description #=> String
    #   resp.data.streaming_image.ec2_image_id #=> String
    #   resp.data.streaming_image.encryption_configuration #=> Types::StreamingImageEncryptionConfiguration
    #   resp.data.streaming_image.encryption_configuration.key_arn #=> String
    #   resp.data.streaming_image.encryption_configuration.key_type #=> String, one of ["CUSTOMER_MANAGED_KEY"]
    #   resp.data.streaming_image.eula_ids #=> Array<String>
    #   resp.data.streaming_image.eula_ids[0] #=> String
    #   resp.data.streaming_image.name #=> String
    #   resp.data.streaming_image.owner #=> String
    #   resp.data.streaming_image.platform #=> String
    #   resp.data.streaming_image.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "DELETE_IN_PROGRESS", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.streaming_image.status_code #=> String, one of ["STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR", "ACCESS_DENIED"]
    #   resp.data.streaming_image.status_message #=> String
    #   resp.data.streaming_image.streaming_image_id #=> String
    #   resp.data.streaming_image.tags #=> Hash<String, String>
    #   resp.data.streaming_image.tags['key'] #=> String
    #
    def delete_streaming_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStreamingImageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStreamingImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStreamingImage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteStreamingImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStreamingImage,
        stubs: @stubs,
        params_class: Params::DeleteStreamingImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_streaming_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes streaming session resource.</p>
    #         <p>After invoking this operation, use GetStreamingSession to poll the resource until it
    #             transitions to a DELETED state.</p>
    #         <p>A streaming session will count against your streaming session quota until it is marked
    #             DELETED.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStreamingSessionInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :session_id
    #   <p>The streaming session ID.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::DeleteStreamingSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_streaming_session(
    #     client_token: 'clientToken',
    #     session_id: 'sessionId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStreamingSessionOutput
    #   resp.data.session #=> Types::StreamingSession
    #   resp.data.session.arn #=> String
    #   resp.data.session.created_at #=> Time
    #   resp.data.session.created_by #=> String
    #   resp.data.session.ec2_instance_type #=> String
    #   resp.data.session.launch_profile_id #=> String
    #   resp.data.session.owned_by #=> String
    #   resp.data.session.session_id #=> String
    #   resp.data.session.state #=> String, one of ["CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED", "STOP_IN_PROGRESS", "START_IN_PROGRESS", "STOPPED", "STOP_FAILED", "START_FAILED"]
    #   resp.data.session.status_code #=> String, one of ["STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR", "STREAMING_SESSION_STOPPED", "STREAMING_SESSION_STARTED", "STREAMING_SESSION_STOP_IN_PROGRESS", "STREAMING_SESSION_START_IN_PROGRESS", "AMI_VALIDATION_ERROR"]
    #   resp.data.session.status_message #=> String
    #   resp.data.session.streaming_image_id #=> String
    #   resp.data.session.tags #=> Hash<String, String>
    #   resp.data.session.tags['key'] #=> String
    #   resp.data.session.terminate_at #=> Time
    #   resp.data.session.updated_at #=> Time
    #   resp.data.session.updated_by #=> String
    #   resp.data.session.stopped_at #=> Time
    #   resp.data.session.stopped_by #=> String
    #   resp.data.session.started_at #=> Time
    #   resp.data.session.started_by #=> String
    #   resp.data.session.stop_at #=> Time
    #
    def delete_streaming_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStreamingSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStreamingSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStreamingSession
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteStreamingSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStreamingSession,
        stubs: @stubs,
        params_class: Params::DeleteStreamingSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_streaming_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a studio resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStudioInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::DeleteStudioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_studio(
    #     client_token: 'clientToken',
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStudioOutput
    #   resp.data.studio #=> Types::Studio
    #   resp.data.studio.admin_role_arn #=> String
    #   resp.data.studio.arn #=> String
    #   resp.data.studio.created_at #=> Time
    #   resp.data.studio.display_name #=> String
    #   resp.data.studio.home_region #=> String
    #   resp.data.studio.sso_client_id #=> String
    #   resp.data.studio.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.studio.status_code #=> String, one of ["STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS"]
    #   resp.data.studio.status_message #=> String
    #   resp.data.studio.studio_encryption_configuration #=> Types::StudioEncryptionConfiguration
    #   resp.data.studio.studio_encryption_configuration.key_arn #=> String
    #   resp.data.studio.studio_encryption_configuration.key_type #=> String, one of ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"]
    #   resp.data.studio.studio_id #=> String
    #   resp.data.studio.studio_name #=> String
    #   resp.data.studio.studio_url #=> String
    #   resp.data.studio.tags #=> Hash<String, String>
    #   resp.data.studio.tags['key'] #=> String
    #   resp.data.studio.updated_at #=> Time
    #   resp.data.studio.user_role_arn #=> String
    #
    def delete_studio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStudioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStudioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStudio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteStudio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStudio,
        stubs: @stubs,
        params_class: Params::DeleteStudioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_studio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a studio component resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStudioComponentInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :studio_component_id
    #   <p>The studio component ID.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::DeleteStudioComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_studio_component(
    #     client_token: 'clientToken',
    #     studio_component_id: 'studioComponentId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStudioComponentOutput
    #   resp.data.studio_component #=> Types::StudioComponent
    #   resp.data.studio_component.arn #=> String
    #   resp.data.studio_component.configuration #=> Types::StudioComponentConfiguration, one of [ActiveDirectoryConfiguration, ComputeFarmConfiguration, LicenseServiceConfiguration, SharedFileSystemConfiguration]
    #   resp.data.studio_component.configuration.active_directory_configuration #=> Types::ActiveDirectoryConfiguration
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes #=> Array<ActiveDirectoryComputerAttribute>
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes[0] #=> Types::ActiveDirectoryComputerAttribute
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes[0].name #=> String
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes[0].value #=> String
    #   resp.data.studio_component.configuration.active_directory_configuration.directory_id #=> String
    #   resp.data.studio_component.configuration.active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.studio_component.configuration.compute_farm_configuration #=> Types::ComputeFarmConfiguration
    #   resp.data.studio_component.configuration.compute_farm_configuration.active_directory_user #=> String
    #   resp.data.studio_component.configuration.compute_farm_configuration.endpoint #=> String
    #   resp.data.studio_component.configuration.license_service_configuration #=> Types::LicenseServiceConfiguration
    #   resp.data.studio_component.configuration.license_service_configuration.endpoint #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration #=> Types::SharedFileSystemConfiguration
    #   resp.data.studio_component.configuration.shared_file_system_configuration.endpoint #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.file_system_id #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.linux_mount_point #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.share_name #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.windows_mount_drive #=> String
    #   resp.data.studio_component.created_at #=> Time
    #   resp.data.studio_component.created_by #=> String
    #   resp.data.studio_component.description #=> String
    #   resp.data.studio_component.ec2_security_group_ids #=> Array<String>
    #   resp.data.studio_component.ec2_security_group_ids[0] #=> String
    #   resp.data.studio_component.initialization_scripts #=> Array<StudioComponentInitializationScript>
    #   resp.data.studio_component.initialization_scripts[0] #=> Types::StudioComponentInitializationScript
    #   resp.data.studio_component.initialization_scripts[0].launch_profile_protocol_version #=> String
    #   resp.data.studio_component.initialization_scripts[0].platform #=> String, one of ["LINUX", "WINDOWS"]
    #   resp.data.studio_component.initialization_scripts[0].run_context #=> String, one of ["SYSTEM_INITIALIZATION", "USER_INITIALIZATION"]
    #   resp.data.studio_component.initialization_scripts[0].script #=> String
    #   resp.data.studio_component.name #=> String
    #   resp.data.studio_component.script_parameters #=> Array<ScriptParameterKeyValue>
    #   resp.data.studio_component.script_parameters[0] #=> Types::ScriptParameterKeyValue
    #   resp.data.studio_component.script_parameters[0].key #=> String
    #   resp.data.studio_component.script_parameters[0].value #=> String
    #   resp.data.studio_component.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.studio_component.status_code #=> String, one of ["ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"]
    #   resp.data.studio_component.status_message #=> String
    #   resp.data.studio_component.studio_component_id #=> String
    #   resp.data.studio_component.subtype #=> String, one of ["AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"]
    #   resp.data.studio_component.tags #=> Hash<String, String>
    #   resp.data.studio_component.tags['key'] #=> String
    #   resp.data.studio_component.type #=> String, one of ["ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"]
    #   resp.data.studio_component.updated_at #=> Time
    #   resp.data.studio_component.updated_by #=> String
    #   resp.data.studio_component.secure_initialization_role_arn #=> String
    #   resp.data.studio_component.runtime_role_arn #=> String
    #
    def delete_studio_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStudioComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStudioComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStudioComponent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteStudioComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStudioComponent,
        stubs: @stubs,
        params_class: Params::DeleteStudioComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_studio_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a user from studio membership.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStudioMemberInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :principal_id
    #   <p>The principal ID. This currently supports a Amazon Web Services SSO UserId. </p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::DeleteStudioMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_studio_member(
    #     client_token: 'clientToken',
    #     principal_id: 'principalId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStudioMemberOutput
    #
    def delete_studio_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStudioMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStudioMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStudioMember
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteStudioMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStudioMember,
        stubs: @stubs,
        params_class: Params::DeleteStudioMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_studio_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get Eula.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEulaInput}.
    #
    # @option params [String] :eula_id
    #   <p>The EULA ID.</p>
    #
    # @return [Types::GetEulaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_eula(
    #     eula_id: 'eulaId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEulaOutput
    #   resp.data.eula #=> Types::Eula
    #   resp.data.eula.content #=> String
    #   resp.data.eula.created_at #=> Time
    #   resp.data.eula.eula_id #=> String
    #   resp.data.eula.name #=> String
    #   resp.data.eula.updated_at #=> Time
    #
    def get_eula(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEulaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEulaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEula
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetEula
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEula,
        stubs: @stubs,
        params_class: Params::GetEulaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_eula
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a launch profile.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLaunchProfileInput}.
    #
    # @option params [String] :launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::GetLaunchProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch_profile(
    #     launch_profile_id: 'launchProfileId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLaunchProfileOutput
    #   resp.data.launch_profile #=> Types::LaunchProfile
    #   resp.data.launch_profile.arn #=> String
    #   resp.data.launch_profile.created_at #=> Time
    #   resp.data.launch_profile.created_by #=> String
    #   resp.data.launch_profile.description #=> String
    #   resp.data.launch_profile.ec2_subnet_ids #=> Array<String>
    #   resp.data.launch_profile.ec2_subnet_ids[0] #=> String
    #   resp.data.launch_profile.launch_profile_id #=> String
    #   resp.data.launch_profile.launch_profile_protocol_versions #=> Array<String>
    #   resp.data.launch_profile.launch_profile_protocol_versions[0] #=> String
    #   resp.data.launch_profile.name #=> String
    #   resp.data.launch_profile.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.launch_profile.status_code #=> String, one of ["LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED"]
    #   resp.data.launch_profile.status_message #=> String
    #   resp.data.launch_profile.stream_configuration #=> Types::StreamConfiguration
    #   resp.data.launch_profile.stream_configuration.clipboard_mode #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.launch_profile.stream_configuration.ec2_instance_types #=> Array<String>
    #   resp.data.launch_profile.stream_configuration.ec2_instance_types[0] #=> String, one of ["g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"]
    #   resp.data.launch_profile.stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.data.launch_profile.stream_configuration.streaming_image_ids #=> Array<String>
    #   resp.data.launch_profile.stream_configuration.streaming_image_ids[0] #=> String
    #   resp.data.launch_profile.stream_configuration.max_stopped_session_length_in_minutes #=> Integer
    #   resp.data.launch_profile.stream_configuration.session_storage #=> Types::StreamConfigurationSessionStorage
    #   resp.data.launch_profile.stream_configuration.session_storage.root #=> Types::StreamingSessionStorageRoot
    #   resp.data.launch_profile.stream_configuration.session_storage.root.linux #=> String
    #   resp.data.launch_profile.stream_configuration.session_storage.root.windows #=> String
    #   resp.data.launch_profile.stream_configuration.session_storage.mode #=> Array<String>
    #   resp.data.launch_profile.stream_configuration.session_storage.mode[0] #=> String, one of ["UPLOAD"]
    #   resp.data.launch_profile.studio_component_ids #=> Array<String>
    #   resp.data.launch_profile.studio_component_ids[0] #=> String
    #   resp.data.launch_profile.tags #=> Hash<String, String>
    #   resp.data.launch_profile.tags['key'] #=> String
    #   resp.data.launch_profile.updated_at #=> Time
    #   resp.data.launch_profile.updated_by #=> String
    #   resp.data.launch_profile.validation_results #=> Array<ValidationResult>
    #   resp.data.launch_profile.validation_results[0] #=> Types::ValidationResult
    #   resp.data.launch_profile.validation_results[0].type #=> String, one of ["VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT", "VALIDATE_SUBNET_ASSOCIATION", "VALIDATE_NETWORK_ACL_ASSOCIATION", "VALIDATE_SECURITY_GROUP_ASSOCIATION"]
    #   resp.data.launch_profile.validation_results[0].state #=> String, one of ["VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"]
    #   resp.data.launch_profile.validation_results[0].status_code #=> String, one of ["VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION", "VALIDATION_FAILED_SUBNET_NOT_FOUND", "VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION", "VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY", "VALIDATION_FAILED_UNAUTHORIZED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"]
    #   resp.data.launch_profile.validation_results[0].status_message #=> String
    #
    def get_launch_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLaunchProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLaunchProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLaunchProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetLaunchProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLaunchProfile,
        stubs: @stubs,
        params_class: Params::GetLaunchProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_launch_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Launch profile details include the launch profile resource and summary information of
    #             resources that are used by, or available to, the launch profile. This includes the name
    #             and description of all studio components used by the launch profiles, and the name and
    #             description of streaming images that can be used with this launch profile.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLaunchProfileDetailsInput}.
    #
    # @option params [String] :launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::GetLaunchProfileDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch_profile_details(
    #     launch_profile_id: 'launchProfileId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLaunchProfileDetailsOutput
    #   resp.data.launch_profile #=> Types::LaunchProfile
    #   resp.data.launch_profile.arn #=> String
    #   resp.data.launch_profile.created_at #=> Time
    #   resp.data.launch_profile.created_by #=> String
    #   resp.data.launch_profile.description #=> String
    #   resp.data.launch_profile.ec2_subnet_ids #=> Array<String>
    #   resp.data.launch_profile.ec2_subnet_ids[0] #=> String
    #   resp.data.launch_profile.launch_profile_id #=> String
    #   resp.data.launch_profile.launch_profile_protocol_versions #=> Array<String>
    #   resp.data.launch_profile.launch_profile_protocol_versions[0] #=> String
    #   resp.data.launch_profile.name #=> String
    #   resp.data.launch_profile.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.launch_profile.status_code #=> String, one of ["LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED"]
    #   resp.data.launch_profile.status_message #=> String
    #   resp.data.launch_profile.stream_configuration #=> Types::StreamConfiguration
    #   resp.data.launch_profile.stream_configuration.clipboard_mode #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.launch_profile.stream_configuration.ec2_instance_types #=> Array<String>
    #   resp.data.launch_profile.stream_configuration.ec2_instance_types[0] #=> String, one of ["g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"]
    #   resp.data.launch_profile.stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.data.launch_profile.stream_configuration.streaming_image_ids #=> Array<String>
    #   resp.data.launch_profile.stream_configuration.streaming_image_ids[0] #=> String
    #   resp.data.launch_profile.stream_configuration.max_stopped_session_length_in_minutes #=> Integer
    #   resp.data.launch_profile.stream_configuration.session_storage #=> Types::StreamConfigurationSessionStorage
    #   resp.data.launch_profile.stream_configuration.session_storage.root #=> Types::StreamingSessionStorageRoot
    #   resp.data.launch_profile.stream_configuration.session_storage.root.linux #=> String
    #   resp.data.launch_profile.stream_configuration.session_storage.root.windows #=> String
    #   resp.data.launch_profile.stream_configuration.session_storage.mode #=> Array<String>
    #   resp.data.launch_profile.stream_configuration.session_storage.mode[0] #=> String, one of ["UPLOAD"]
    #   resp.data.launch_profile.studio_component_ids #=> Array<String>
    #   resp.data.launch_profile.studio_component_ids[0] #=> String
    #   resp.data.launch_profile.tags #=> Hash<String, String>
    #   resp.data.launch_profile.tags['key'] #=> String
    #   resp.data.launch_profile.updated_at #=> Time
    #   resp.data.launch_profile.updated_by #=> String
    #   resp.data.launch_profile.validation_results #=> Array<ValidationResult>
    #   resp.data.launch_profile.validation_results[0] #=> Types::ValidationResult
    #   resp.data.launch_profile.validation_results[0].type #=> String, one of ["VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT", "VALIDATE_SUBNET_ASSOCIATION", "VALIDATE_NETWORK_ACL_ASSOCIATION", "VALIDATE_SECURITY_GROUP_ASSOCIATION"]
    #   resp.data.launch_profile.validation_results[0].state #=> String, one of ["VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"]
    #   resp.data.launch_profile.validation_results[0].status_code #=> String, one of ["VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION", "VALIDATION_FAILED_SUBNET_NOT_FOUND", "VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION", "VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY", "VALIDATION_FAILED_UNAUTHORIZED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"]
    #   resp.data.launch_profile.validation_results[0].status_message #=> String
    #   resp.data.streaming_images #=> Array<StreamingImage>
    #   resp.data.streaming_images[0] #=> Types::StreamingImage
    #   resp.data.streaming_images[0].arn #=> String
    #   resp.data.streaming_images[0].description #=> String
    #   resp.data.streaming_images[0].ec2_image_id #=> String
    #   resp.data.streaming_images[0].encryption_configuration #=> Types::StreamingImageEncryptionConfiguration
    #   resp.data.streaming_images[0].encryption_configuration.key_arn #=> String
    #   resp.data.streaming_images[0].encryption_configuration.key_type #=> String, one of ["CUSTOMER_MANAGED_KEY"]
    #   resp.data.streaming_images[0].eula_ids #=> Array<String>
    #   resp.data.streaming_images[0].eula_ids[0] #=> String
    #   resp.data.streaming_images[0].name #=> String
    #   resp.data.streaming_images[0].owner #=> String
    #   resp.data.streaming_images[0].platform #=> String
    #   resp.data.streaming_images[0].state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "DELETE_IN_PROGRESS", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.streaming_images[0].status_code #=> String, one of ["STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR", "ACCESS_DENIED"]
    #   resp.data.streaming_images[0].status_message #=> String
    #   resp.data.streaming_images[0].streaming_image_id #=> String
    #   resp.data.streaming_images[0].tags #=> Hash<String, String>
    #   resp.data.studio_component_summaries #=> Array<StudioComponentSummary>
    #   resp.data.studio_component_summaries[0] #=> Types::StudioComponentSummary
    #   resp.data.studio_component_summaries[0].created_at #=> Time
    #   resp.data.studio_component_summaries[0].created_by #=> String
    #   resp.data.studio_component_summaries[0].description #=> String
    #   resp.data.studio_component_summaries[0].name #=> String
    #   resp.data.studio_component_summaries[0].studio_component_id #=> String
    #   resp.data.studio_component_summaries[0].subtype #=> String, one of ["AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"]
    #   resp.data.studio_component_summaries[0].type #=> String, one of ["ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"]
    #   resp.data.studio_component_summaries[0].updated_at #=> Time
    #   resp.data.studio_component_summaries[0].updated_by #=> String
    #
    def get_launch_profile_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLaunchProfileDetailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLaunchProfileDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLaunchProfileDetails
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetLaunchProfileDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLaunchProfileDetails,
        stubs: @stubs,
        params_class: Params::GetLaunchProfileDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_launch_profile_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a launch profile initialization.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLaunchProfileInitializationInput}.
    #
    # @option params [String] :launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    # @option params [Array<String>] :launch_profile_protocol_versions
    #   <p>The launch profile protocol versions supported by the client.</p>
    #
    # @option params [String] :launch_purpose
    #   <p>The launch purpose.</p>
    #
    # @option params [String] :platform
    #   <p>The platform where this Launch Profile will be used, either WINDOWS or LINUX.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::GetLaunchProfileInitializationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch_profile_initialization(
    #     launch_profile_id: 'launchProfileId', # required
    #     launch_profile_protocol_versions: [
    #       'member'
    #     ], # required
    #     launch_purpose: 'launchPurpose', # required
    #     platform: 'platform', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLaunchProfileInitializationOutput
    #   resp.data.launch_profile_initialization #=> Types::LaunchProfileInitialization
    #   resp.data.launch_profile_initialization.active_directory #=> Types::LaunchProfileInitializationActiveDirectory
    #   resp.data.launch_profile_initialization.active_directory.computer_attributes #=> Array<ActiveDirectoryComputerAttribute>
    #   resp.data.launch_profile_initialization.active_directory.computer_attributes[0] #=> Types::ActiveDirectoryComputerAttribute
    #   resp.data.launch_profile_initialization.active_directory.computer_attributes[0].name #=> String
    #   resp.data.launch_profile_initialization.active_directory.computer_attributes[0].value #=> String
    #   resp.data.launch_profile_initialization.active_directory.directory_id #=> String
    #   resp.data.launch_profile_initialization.active_directory.directory_name #=> String
    #   resp.data.launch_profile_initialization.active_directory.dns_ip_addresses #=> Array<String>
    #   resp.data.launch_profile_initialization.active_directory.dns_ip_addresses[0] #=> String
    #   resp.data.launch_profile_initialization.active_directory.organizational_unit_distinguished_name #=> String
    #   resp.data.launch_profile_initialization.active_directory.studio_component_id #=> String
    #   resp.data.launch_profile_initialization.active_directory.studio_component_name #=> String
    #   resp.data.launch_profile_initialization.ec2_security_group_ids #=> Array<String>
    #   resp.data.launch_profile_initialization.ec2_security_group_ids[0] #=> String
    #   resp.data.launch_profile_initialization.launch_profile_id #=> String
    #   resp.data.launch_profile_initialization.launch_profile_protocol_version #=> String
    #   resp.data.launch_profile_initialization.launch_purpose #=> String
    #   resp.data.launch_profile_initialization.name #=> String
    #   resp.data.launch_profile_initialization.platform #=> String, one of ["LINUX", "WINDOWS"]
    #   resp.data.launch_profile_initialization.system_initialization_scripts #=> Array<LaunchProfileInitializationScript>
    #   resp.data.launch_profile_initialization.system_initialization_scripts[0] #=> Types::LaunchProfileInitializationScript
    #   resp.data.launch_profile_initialization.system_initialization_scripts[0].script #=> String
    #   resp.data.launch_profile_initialization.system_initialization_scripts[0].studio_component_id #=> String
    #   resp.data.launch_profile_initialization.system_initialization_scripts[0].studio_component_name #=> String
    #   resp.data.launch_profile_initialization.system_initialization_scripts[0].secure_initialization_role_arn #=> String
    #   resp.data.launch_profile_initialization.system_initialization_scripts[0].runtime_role_arn #=> String
    #   resp.data.launch_profile_initialization.user_initialization_scripts #=> Array<LaunchProfileInitializationScript>
    #
    def get_launch_profile_initialization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLaunchProfileInitializationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLaunchProfileInitializationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLaunchProfileInitialization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetLaunchProfileInitialization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLaunchProfileInitialization,
        stubs: @stubs,
        params_class: Params::GetLaunchProfileInitializationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_launch_profile_initialization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a user persona in launch profile membership.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLaunchProfileMemberInput}.
    #
    # @option params [String] :launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    # @option params [String] :principal_id
    #   <p>The principal ID. This currently supports a Amazon Web Services SSO UserId. </p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::GetLaunchProfileMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch_profile_member(
    #     launch_profile_id: 'launchProfileId', # required
    #     principal_id: 'principalId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLaunchProfileMemberOutput
    #   resp.data.member #=> Types::LaunchProfileMembership
    #   resp.data.member.identity_store_id #=> String
    #   resp.data.member.persona #=> String, one of ["USER"]
    #   resp.data.member.principal_id #=> String
    #   resp.data.member.sid #=> String
    #
    def get_launch_profile_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLaunchProfileMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLaunchProfileMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLaunchProfileMember
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetLaunchProfileMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLaunchProfileMember,
        stubs: @stubs,
        params_class: Params::GetLaunchProfileMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_launch_profile_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get streaming image.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStreamingImageInput}.
    #
    # @option params [String] :streaming_image_id
    #   <p>The streaming image ID.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::GetStreamingImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_image(
    #     streaming_image_id: 'streamingImageId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStreamingImageOutput
    #   resp.data.streaming_image #=> Types::StreamingImage
    #   resp.data.streaming_image.arn #=> String
    #   resp.data.streaming_image.description #=> String
    #   resp.data.streaming_image.ec2_image_id #=> String
    #   resp.data.streaming_image.encryption_configuration #=> Types::StreamingImageEncryptionConfiguration
    #   resp.data.streaming_image.encryption_configuration.key_arn #=> String
    #   resp.data.streaming_image.encryption_configuration.key_type #=> String, one of ["CUSTOMER_MANAGED_KEY"]
    #   resp.data.streaming_image.eula_ids #=> Array<String>
    #   resp.data.streaming_image.eula_ids[0] #=> String
    #   resp.data.streaming_image.name #=> String
    #   resp.data.streaming_image.owner #=> String
    #   resp.data.streaming_image.platform #=> String
    #   resp.data.streaming_image.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "DELETE_IN_PROGRESS", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.streaming_image.status_code #=> String, one of ["STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR", "ACCESS_DENIED"]
    #   resp.data.streaming_image.status_message #=> String
    #   resp.data.streaming_image.streaming_image_id #=> String
    #   resp.data.streaming_image.tags #=> Hash<String, String>
    #   resp.data.streaming_image.tags['key'] #=> String
    #
    def get_streaming_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStreamingImageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStreamingImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStreamingImage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetStreamingImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStreamingImage,
        stubs: @stubs,
        params_class: Params::GetStreamingImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_streaming_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets StreamingSession resource.</p>
    #         <p>Invoke this operation to poll for a streaming session state while creating or deleting
    #             a session.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStreamingSessionInput}.
    #
    # @option params [String] :session_id
    #   <p>The streaming session ID.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::GetStreamingSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_session(
    #     session_id: 'sessionId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStreamingSessionOutput
    #   resp.data.session #=> Types::StreamingSession
    #   resp.data.session.arn #=> String
    #   resp.data.session.created_at #=> Time
    #   resp.data.session.created_by #=> String
    #   resp.data.session.ec2_instance_type #=> String
    #   resp.data.session.launch_profile_id #=> String
    #   resp.data.session.owned_by #=> String
    #   resp.data.session.session_id #=> String
    #   resp.data.session.state #=> String, one of ["CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED", "STOP_IN_PROGRESS", "START_IN_PROGRESS", "STOPPED", "STOP_FAILED", "START_FAILED"]
    #   resp.data.session.status_code #=> String, one of ["STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR", "STREAMING_SESSION_STOPPED", "STREAMING_SESSION_STARTED", "STREAMING_SESSION_STOP_IN_PROGRESS", "STREAMING_SESSION_START_IN_PROGRESS", "AMI_VALIDATION_ERROR"]
    #   resp.data.session.status_message #=> String
    #   resp.data.session.streaming_image_id #=> String
    #   resp.data.session.tags #=> Hash<String, String>
    #   resp.data.session.tags['key'] #=> String
    #   resp.data.session.terminate_at #=> Time
    #   resp.data.session.updated_at #=> Time
    #   resp.data.session.updated_by #=> String
    #   resp.data.session.stopped_at #=> Time
    #   resp.data.session.stopped_by #=> String
    #   resp.data.session.started_at #=> Time
    #   resp.data.session.started_by #=> String
    #   resp.data.session.stop_at #=> Time
    #
    def get_streaming_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStreamingSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStreamingSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStreamingSession
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetStreamingSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStreamingSession,
        stubs: @stubs,
        params_class: Params::GetStreamingSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_streaming_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a StreamingSessionStream for a streaming session.</p>
    #         <p>Invoke this operation to poll the resource after invoking
    #             CreateStreamingSessionStream.</p>
    #         <p>After the StreamingSessionStream changes to the state READY, the url property will
    #             contain a stream to be used with the DCV streaming client.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStreamingSessionStreamInput}.
    #
    # @option params [String] :session_id
    #   <p>The streaming session ID.</p>
    #
    # @option params [String] :stream_id
    #   <p>The streaming session stream ID.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::GetStreamingSessionStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_streaming_session_stream(
    #     session_id: 'sessionId', # required
    #     stream_id: 'streamId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStreamingSessionStreamOutput
    #   resp.data.stream #=> Types::StreamingSessionStream
    #   resp.data.stream.created_at #=> Time
    #   resp.data.stream.created_by #=> String
    #   resp.data.stream.expires_at #=> Time
    #   resp.data.stream.owned_by #=> String
    #   resp.data.stream.state #=> String, one of ["READY", "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.stream.status_code #=> String, one of ["STREAM_CREATE_IN_PROGRESS", "STREAM_READY", "STREAM_DELETE_IN_PROGRESS", "STREAM_DELETED", "INTERNAL_ERROR", "NETWORK_CONNECTION_ERROR"]
    #   resp.data.stream.stream_id #=> String
    #   resp.data.stream.url #=> String
    #
    def get_streaming_session_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStreamingSessionStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStreamingSessionStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStreamingSessionStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetStreamingSessionStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStreamingSessionStream,
        stubs: @stubs,
        params_class: Params::GetStreamingSessionStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_streaming_session_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a Studio resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStudioInput}.
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::GetStudioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_studio(
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStudioOutput
    #   resp.data.studio #=> Types::Studio
    #   resp.data.studio.admin_role_arn #=> String
    #   resp.data.studio.arn #=> String
    #   resp.data.studio.created_at #=> Time
    #   resp.data.studio.display_name #=> String
    #   resp.data.studio.home_region #=> String
    #   resp.data.studio.sso_client_id #=> String
    #   resp.data.studio.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.studio.status_code #=> String, one of ["STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS"]
    #   resp.data.studio.status_message #=> String
    #   resp.data.studio.studio_encryption_configuration #=> Types::StudioEncryptionConfiguration
    #   resp.data.studio.studio_encryption_configuration.key_arn #=> String
    #   resp.data.studio.studio_encryption_configuration.key_type #=> String, one of ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"]
    #   resp.data.studio.studio_id #=> String
    #   resp.data.studio.studio_name #=> String
    #   resp.data.studio.studio_url #=> String
    #   resp.data.studio.tags #=> Hash<String, String>
    #   resp.data.studio.tags['key'] #=> String
    #   resp.data.studio.updated_at #=> Time
    #   resp.data.studio.user_role_arn #=> String
    #
    def get_studio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStudioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStudioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStudio
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetStudio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStudio,
        stubs: @stubs,
        params_class: Params::GetStudioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_studio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a studio component resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStudioComponentInput}.
    #
    # @option params [String] :studio_component_id
    #   <p>The studio component ID.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::GetStudioComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_studio_component(
    #     studio_component_id: 'studioComponentId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStudioComponentOutput
    #   resp.data.studio_component #=> Types::StudioComponent
    #   resp.data.studio_component.arn #=> String
    #   resp.data.studio_component.configuration #=> Types::StudioComponentConfiguration, one of [ActiveDirectoryConfiguration, ComputeFarmConfiguration, LicenseServiceConfiguration, SharedFileSystemConfiguration]
    #   resp.data.studio_component.configuration.active_directory_configuration #=> Types::ActiveDirectoryConfiguration
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes #=> Array<ActiveDirectoryComputerAttribute>
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes[0] #=> Types::ActiveDirectoryComputerAttribute
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes[0].name #=> String
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes[0].value #=> String
    #   resp.data.studio_component.configuration.active_directory_configuration.directory_id #=> String
    #   resp.data.studio_component.configuration.active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.studio_component.configuration.compute_farm_configuration #=> Types::ComputeFarmConfiguration
    #   resp.data.studio_component.configuration.compute_farm_configuration.active_directory_user #=> String
    #   resp.data.studio_component.configuration.compute_farm_configuration.endpoint #=> String
    #   resp.data.studio_component.configuration.license_service_configuration #=> Types::LicenseServiceConfiguration
    #   resp.data.studio_component.configuration.license_service_configuration.endpoint #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration #=> Types::SharedFileSystemConfiguration
    #   resp.data.studio_component.configuration.shared_file_system_configuration.endpoint #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.file_system_id #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.linux_mount_point #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.share_name #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.windows_mount_drive #=> String
    #   resp.data.studio_component.created_at #=> Time
    #   resp.data.studio_component.created_by #=> String
    #   resp.data.studio_component.description #=> String
    #   resp.data.studio_component.ec2_security_group_ids #=> Array<String>
    #   resp.data.studio_component.ec2_security_group_ids[0] #=> String
    #   resp.data.studio_component.initialization_scripts #=> Array<StudioComponentInitializationScript>
    #   resp.data.studio_component.initialization_scripts[0] #=> Types::StudioComponentInitializationScript
    #   resp.data.studio_component.initialization_scripts[0].launch_profile_protocol_version #=> String
    #   resp.data.studio_component.initialization_scripts[0].platform #=> String, one of ["LINUX", "WINDOWS"]
    #   resp.data.studio_component.initialization_scripts[0].run_context #=> String, one of ["SYSTEM_INITIALIZATION", "USER_INITIALIZATION"]
    #   resp.data.studio_component.initialization_scripts[0].script #=> String
    #   resp.data.studio_component.name #=> String
    #   resp.data.studio_component.script_parameters #=> Array<ScriptParameterKeyValue>
    #   resp.data.studio_component.script_parameters[0] #=> Types::ScriptParameterKeyValue
    #   resp.data.studio_component.script_parameters[0].key #=> String
    #   resp.data.studio_component.script_parameters[0].value #=> String
    #   resp.data.studio_component.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.studio_component.status_code #=> String, one of ["ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"]
    #   resp.data.studio_component.status_message #=> String
    #   resp.data.studio_component.studio_component_id #=> String
    #   resp.data.studio_component.subtype #=> String, one of ["AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"]
    #   resp.data.studio_component.tags #=> Hash<String, String>
    #   resp.data.studio_component.tags['key'] #=> String
    #   resp.data.studio_component.type #=> String, one of ["ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"]
    #   resp.data.studio_component.updated_at #=> Time
    #   resp.data.studio_component.updated_by #=> String
    #   resp.data.studio_component.secure_initialization_role_arn #=> String
    #   resp.data.studio_component.runtime_role_arn #=> String
    #
    def get_studio_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStudioComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStudioComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStudioComponent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetStudioComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStudioComponent,
        stubs: @stubs,
        params_class: Params::GetStudioComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_studio_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a user's membership in a studio.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStudioMemberInput}.
    #
    # @option params [String] :principal_id
    #   <p>The principal ID. This currently supports a Amazon Web Services SSO UserId. </p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::GetStudioMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_studio_member(
    #     principal_id: 'principalId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStudioMemberOutput
    #   resp.data.member #=> Types::StudioMembership
    #   resp.data.member.identity_store_id #=> String
    #   resp.data.member.persona #=> String, one of ["ADMINISTRATOR"]
    #   resp.data.member.principal_id #=> String
    #   resp.data.member.sid #=> String
    #
    def get_studio_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStudioMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStudioMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStudioMember
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetStudioMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStudioMember,
        stubs: @stubs,
        params_class: Params::GetStudioMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_studio_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List Eula Acceptances.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEulaAcceptancesInput}.
    #
    # @option params [Array<String>] :eula_ids
    #   <p>The list of EULA IDs that have been previously accepted.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results. </p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::ListEulaAcceptancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_eula_acceptances(
    #     eula_ids: [
    #       'member'
    #     ],
    #     next_token: 'nextToken',
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEulaAcceptancesOutput
    #   resp.data.eula_acceptances #=> Array<EulaAcceptance>
    #   resp.data.eula_acceptances[0] #=> Types::EulaAcceptance
    #   resp.data.eula_acceptances[0].accepted_at #=> Time
    #   resp.data.eula_acceptances[0].accepted_by #=> String
    #   resp.data.eula_acceptances[0].acceptee_id #=> String
    #   resp.data.eula_acceptances[0].eula_acceptance_id #=> String
    #   resp.data.eula_acceptances[0].eula_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_eula_acceptances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEulaAcceptancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEulaAcceptancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEulaAcceptances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListEulaAcceptances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEulaAcceptances,
        stubs: @stubs,
        params_class: Params::ListEulaAcceptancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_eula_acceptances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List Eulas.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEulasInput}.
    #
    # @option params [Array<String>] :eula_ids
    #   <p>The list of EULA IDs that should be returned</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results. </p>
    #
    # @return [Types::ListEulasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_eulas(
    #     eula_ids: [
    #       'member'
    #     ],
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEulasOutput
    #   resp.data.eulas #=> Array<Eula>
    #   resp.data.eulas[0] #=> Types::Eula
    #   resp.data.eulas[0].content #=> String
    #   resp.data.eulas[0].created_at #=> Time
    #   resp.data.eulas[0].eula_id #=> String
    #   resp.data.eulas[0].name #=> String
    #   resp.data.eulas[0].updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_eulas(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEulasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEulasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEulas
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListEulas
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEulas,
        stubs: @stubs,
        params_class: Params::ListEulasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_eulas
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get all users in a given launch profile membership.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLaunchProfileMembersInput}.
    #
    # @option params [String] :launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The max number of results to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results. </p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::ListLaunchProfileMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_launch_profile_members(
    #     launch_profile_id: 'launchProfileId', # required
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLaunchProfileMembersOutput
    #   resp.data.members #=> Array<LaunchProfileMembership>
    #   resp.data.members[0] #=> Types::LaunchProfileMembership
    #   resp.data.members[0].identity_store_id #=> String
    #   resp.data.members[0].persona #=> String, one of ["USER"]
    #   resp.data.members[0].principal_id #=> String
    #   resp.data.members[0].sid #=> String
    #   resp.data.next_token #=> String
    #
    def list_launch_profile_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLaunchProfileMembersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLaunchProfileMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLaunchProfileMembers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListLaunchProfileMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLaunchProfileMembers,
        stubs: @stubs,
        params_class: Params::ListLaunchProfileMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_launch_profile_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all the launch profiles a studio.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLaunchProfilesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The max number of results to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results. </p>
    #
    # @option params [String] :principal_id
    #   <p>The principal ID. This currently supports a Amazon Web Services SSO UserId. </p>
    #
    # @option params [Array<String>] :states
    #   <p>Filter this request to launch profiles in any of the given states.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::ListLaunchProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_launch_profiles(
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     principal_id: 'principalId',
    #     states: [
    #       'CREATE_IN_PROGRESS' # accepts ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #     ],
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLaunchProfilesOutput
    #   resp.data.launch_profiles #=> Array<LaunchProfile>
    #   resp.data.launch_profiles[0] #=> Types::LaunchProfile
    #   resp.data.launch_profiles[0].arn #=> String
    #   resp.data.launch_profiles[0].created_at #=> Time
    #   resp.data.launch_profiles[0].created_by #=> String
    #   resp.data.launch_profiles[0].description #=> String
    #   resp.data.launch_profiles[0].ec2_subnet_ids #=> Array<String>
    #   resp.data.launch_profiles[0].ec2_subnet_ids[0] #=> String
    #   resp.data.launch_profiles[0].launch_profile_id #=> String
    #   resp.data.launch_profiles[0].launch_profile_protocol_versions #=> Array<String>
    #   resp.data.launch_profiles[0].launch_profile_protocol_versions[0] #=> String
    #   resp.data.launch_profiles[0].name #=> String
    #   resp.data.launch_profiles[0].state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.launch_profiles[0].status_code #=> String, one of ["LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED"]
    #   resp.data.launch_profiles[0].status_message #=> String
    #   resp.data.launch_profiles[0].stream_configuration #=> Types::StreamConfiguration
    #   resp.data.launch_profiles[0].stream_configuration.clipboard_mode #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.launch_profiles[0].stream_configuration.ec2_instance_types #=> Array<String>
    #   resp.data.launch_profiles[0].stream_configuration.ec2_instance_types[0] #=> String, one of ["g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"]
    #   resp.data.launch_profiles[0].stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.data.launch_profiles[0].stream_configuration.streaming_image_ids #=> Array<String>
    #   resp.data.launch_profiles[0].stream_configuration.streaming_image_ids[0] #=> String
    #   resp.data.launch_profiles[0].stream_configuration.max_stopped_session_length_in_minutes #=> Integer
    #   resp.data.launch_profiles[0].stream_configuration.session_storage #=> Types::StreamConfigurationSessionStorage
    #   resp.data.launch_profiles[0].stream_configuration.session_storage.root #=> Types::StreamingSessionStorageRoot
    #   resp.data.launch_profiles[0].stream_configuration.session_storage.root.linux #=> String
    #   resp.data.launch_profiles[0].stream_configuration.session_storage.root.windows #=> String
    #   resp.data.launch_profiles[0].stream_configuration.session_storage.mode #=> Array<String>
    #   resp.data.launch_profiles[0].stream_configuration.session_storage.mode[0] #=> String, one of ["UPLOAD"]
    #   resp.data.launch_profiles[0].studio_component_ids #=> Array<String>
    #   resp.data.launch_profiles[0].studio_component_ids[0] #=> String
    #   resp.data.launch_profiles[0].tags #=> Hash<String, String>
    #   resp.data.launch_profiles[0].tags['key'] #=> String
    #   resp.data.launch_profiles[0].updated_at #=> Time
    #   resp.data.launch_profiles[0].updated_by #=> String
    #   resp.data.launch_profiles[0].validation_results #=> Array<ValidationResult>
    #   resp.data.launch_profiles[0].validation_results[0] #=> Types::ValidationResult
    #   resp.data.launch_profiles[0].validation_results[0].type #=> String, one of ["VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT", "VALIDATE_SUBNET_ASSOCIATION", "VALIDATE_NETWORK_ACL_ASSOCIATION", "VALIDATE_SECURITY_GROUP_ASSOCIATION"]
    #   resp.data.launch_profiles[0].validation_results[0].state #=> String, one of ["VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"]
    #   resp.data.launch_profiles[0].validation_results[0].status_code #=> String, one of ["VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION", "VALIDATION_FAILED_SUBNET_NOT_FOUND", "VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION", "VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY", "VALIDATION_FAILED_UNAUTHORIZED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"]
    #   resp.data.launch_profiles[0].validation_results[0].status_message #=> String
    #   resp.data.next_token #=> String
    #
    def list_launch_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLaunchProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLaunchProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLaunchProfiles
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListLaunchProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLaunchProfiles,
        stubs: @stubs,
        params_class: Params::ListLaunchProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_launch_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the streaming image resources available to this studio.</p>
    #         <p>This list will contain both images provided by Amazon Web Services, as well as
    #             streaming images that you have created in your studio.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStreamingImagesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results. </p>
    #
    # @option params [String] :owner
    #   <p>Filter this request to streaming images with the given owner</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::ListStreamingImagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streaming_images(
    #     next_token: 'nextToken',
    #     owner: 'owner',
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStreamingImagesOutput
    #   resp.data.next_token #=> String
    #   resp.data.streaming_images #=> Array<StreamingImage>
    #   resp.data.streaming_images[0] #=> Types::StreamingImage
    #   resp.data.streaming_images[0].arn #=> String
    #   resp.data.streaming_images[0].description #=> String
    #   resp.data.streaming_images[0].ec2_image_id #=> String
    #   resp.data.streaming_images[0].encryption_configuration #=> Types::StreamingImageEncryptionConfiguration
    #   resp.data.streaming_images[0].encryption_configuration.key_arn #=> String
    #   resp.data.streaming_images[0].encryption_configuration.key_type #=> String, one of ["CUSTOMER_MANAGED_KEY"]
    #   resp.data.streaming_images[0].eula_ids #=> Array<String>
    #   resp.data.streaming_images[0].eula_ids[0] #=> String
    #   resp.data.streaming_images[0].name #=> String
    #   resp.data.streaming_images[0].owner #=> String
    #   resp.data.streaming_images[0].platform #=> String
    #   resp.data.streaming_images[0].state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "DELETE_IN_PROGRESS", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.streaming_images[0].status_code #=> String, one of ["STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR", "ACCESS_DENIED"]
    #   resp.data.streaming_images[0].status_message #=> String
    #   resp.data.streaming_images[0].streaming_image_id #=> String
    #   resp.data.streaming_images[0].tags #=> Hash<String, String>
    #   resp.data.streaming_images[0].tags['key'] #=> String
    #
    def list_streaming_images(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStreamingImagesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStreamingImagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStreamingImages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListStreamingImages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStreamingImages,
        stubs: @stubs,
        params_class: Params::ListStreamingImagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_streaming_images
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the streaming sessions in a studio.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStreamingSessionsInput}.
    #
    # @option params [String] :created_by
    #   <p>Filters the request to streaming sessions created by the given user.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results. </p>
    #
    # @option params [String] :owned_by
    #   <p>Filters the request to streaming session owned by the given user</p>
    #
    # @option params [String] :session_ids
    #   <p>Filters the request to only the provided session IDs.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::ListStreamingSessionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streaming_sessions(
    #     created_by: 'createdBy',
    #     next_token: 'nextToken',
    #     owned_by: 'ownedBy',
    #     session_ids: 'sessionIds',
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStreamingSessionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.sessions #=> Array<StreamingSession>
    #   resp.data.sessions[0] #=> Types::StreamingSession
    #   resp.data.sessions[0].arn #=> String
    #   resp.data.sessions[0].created_at #=> Time
    #   resp.data.sessions[0].created_by #=> String
    #   resp.data.sessions[0].ec2_instance_type #=> String
    #   resp.data.sessions[0].launch_profile_id #=> String
    #   resp.data.sessions[0].owned_by #=> String
    #   resp.data.sessions[0].session_id #=> String
    #   resp.data.sessions[0].state #=> String, one of ["CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED", "STOP_IN_PROGRESS", "START_IN_PROGRESS", "STOPPED", "STOP_FAILED", "START_FAILED"]
    #   resp.data.sessions[0].status_code #=> String, one of ["STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR", "STREAMING_SESSION_STOPPED", "STREAMING_SESSION_STARTED", "STREAMING_SESSION_STOP_IN_PROGRESS", "STREAMING_SESSION_START_IN_PROGRESS", "AMI_VALIDATION_ERROR"]
    #   resp.data.sessions[0].status_message #=> String
    #   resp.data.sessions[0].streaming_image_id #=> String
    #   resp.data.sessions[0].tags #=> Hash<String, String>
    #   resp.data.sessions[0].tags['key'] #=> String
    #   resp.data.sessions[0].terminate_at #=> Time
    #   resp.data.sessions[0].updated_at #=> Time
    #   resp.data.sessions[0].updated_by #=> String
    #   resp.data.sessions[0].stopped_at #=> Time
    #   resp.data.sessions[0].stopped_by #=> String
    #   resp.data.sessions[0].started_at #=> Time
    #   resp.data.sessions[0].started_by #=> String
    #   resp.data.sessions[0].stop_at #=> Time
    #
    def list_streaming_sessions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStreamingSessionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStreamingSessionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStreamingSessions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListStreamingSessions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStreamingSessions,
        stubs: @stubs,
        params_class: Params::ListStreamingSessionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_streaming_sessions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the StudioComponents in a studio.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStudioComponentsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The max number of results to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results. </p>
    #
    # @option params [Array<String>] :states
    #   <p>Filters the request to studio components that are in one of the given states. </p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @option params [Array<String>] :types
    #   <p>Filters the request to studio components that are of one of the given types.</p>
    #
    # @return [Types::ListStudioComponentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_studio_components(
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     states: [
    #       'CREATE_IN_PROGRESS' # accepts ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #     ],
    #     studio_id: 'studioId', # required
    #     types: [
    #       'ACTIVE_DIRECTORY' # accepts ["ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStudioComponentsOutput
    #   resp.data.next_token #=> String
    #   resp.data.studio_components #=> Array<StudioComponent>
    #   resp.data.studio_components[0] #=> Types::StudioComponent
    #   resp.data.studio_components[0].arn #=> String
    #   resp.data.studio_components[0].configuration #=> Types::StudioComponentConfiguration, one of [ActiveDirectoryConfiguration, ComputeFarmConfiguration, LicenseServiceConfiguration, SharedFileSystemConfiguration]
    #   resp.data.studio_components[0].configuration.active_directory_configuration #=> Types::ActiveDirectoryConfiguration
    #   resp.data.studio_components[0].configuration.active_directory_configuration.computer_attributes #=> Array<ActiveDirectoryComputerAttribute>
    #   resp.data.studio_components[0].configuration.active_directory_configuration.computer_attributes[0] #=> Types::ActiveDirectoryComputerAttribute
    #   resp.data.studio_components[0].configuration.active_directory_configuration.computer_attributes[0].name #=> String
    #   resp.data.studio_components[0].configuration.active_directory_configuration.computer_attributes[0].value #=> String
    #   resp.data.studio_components[0].configuration.active_directory_configuration.directory_id #=> String
    #   resp.data.studio_components[0].configuration.active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.studio_components[0].configuration.compute_farm_configuration #=> Types::ComputeFarmConfiguration
    #   resp.data.studio_components[0].configuration.compute_farm_configuration.active_directory_user #=> String
    #   resp.data.studio_components[0].configuration.compute_farm_configuration.endpoint #=> String
    #   resp.data.studio_components[0].configuration.license_service_configuration #=> Types::LicenseServiceConfiguration
    #   resp.data.studio_components[0].configuration.license_service_configuration.endpoint #=> String
    #   resp.data.studio_components[0].configuration.shared_file_system_configuration #=> Types::SharedFileSystemConfiguration
    #   resp.data.studio_components[0].configuration.shared_file_system_configuration.endpoint #=> String
    #   resp.data.studio_components[0].configuration.shared_file_system_configuration.file_system_id #=> String
    #   resp.data.studio_components[0].configuration.shared_file_system_configuration.linux_mount_point #=> String
    #   resp.data.studio_components[0].configuration.shared_file_system_configuration.share_name #=> String
    #   resp.data.studio_components[0].configuration.shared_file_system_configuration.windows_mount_drive #=> String
    #   resp.data.studio_components[0].created_at #=> Time
    #   resp.data.studio_components[0].created_by #=> String
    #   resp.data.studio_components[0].description #=> String
    #   resp.data.studio_components[0].ec2_security_group_ids #=> Array<String>
    #   resp.data.studio_components[0].ec2_security_group_ids[0] #=> String
    #   resp.data.studio_components[0].initialization_scripts #=> Array<StudioComponentInitializationScript>
    #   resp.data.studio_components[0].initialization_scripts[0] #=> Types::StudioComponentInitializationScript
    #   resp.data.studio_components[0].initialization_scripts[0].launch_profile_protocol_version #=> String
    #   resp.data.studio_components[0].initialization_scripts[0].platform #=> String, one of ["LINUX", "WINDOWS"]
    #   resp.data.studio_components[0].initialization_scripts[0].run_context #=> String, one of ["SYSTEM_INITIALIZATION", "USER_INITIALIZATION"]
    #   resp.data.studio_components[0].initialization_scripts[0].script #=> String
    #   resp.data.studio_components[0].name #=> String
    #   resp.data.studio_components[0].script_parameters #=> Array<ScriptParameterKeyValue>
    #   resp.data.studio_components[0].script_parameters[0] #=> Types::ScriptParameterKeyValue
    #   resp.data.studio_components[0].script_parameters[0].key #=> String
    #   resp.data.studio_components[0].script_parameters[0].value #=> String
    #   resp.data.studio_components[0].state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.studio_components[0].status_code #=> String, one of ["ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"]
    #   resp.data.studio_components[0].status_message #=> String
    #   resp.data.studio_components[0].studio_component_id #=> String
    #   resp.data.studio_components[0].subtype #=> String, one of ["AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"]
    #   resp.data.studio_components[0].tags #=> Hash<String, String>
    #   resp.data.studio_components[0].tags['key'] #=> String
    #   resp.data.studio_components[0].type #=> String, one of ["ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"]
    #   resp.data.studio_components[0].updated_at #=> Time
    #   resp.data.studio_components[0].updated_by #=> String
    #   resp.data.studio_components[0].secure_initialization_role_arn #=> String
    #   resp.data.studio_components[0].runtime_role_arn #=> String
    #
    def list_studio_components(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStudioComponentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStudioComponentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStudioComponents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListStudioComponents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStudioComponents,
        stubs: @stubs,
        params_class: Params::ListStudioComponentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_studio_components
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get all users in a given studio membership.</p>
    #         <note>
    #             <p>
    #                <code>ListStudioMembers</code> only returns admin members.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::ListStudioMembersInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The max number of results to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results. </p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::ListStudioMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_studio_members(
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStudioMembersOutput
    #   resp.data.members #=> Array<StudioMembership>
    #   resp.data.members[0] #=> Types::StudioMembership
    #   resp.data.members[0].identity_store_id #=> String
    #   resp.data.members[0].persona #=> String, one of ["ADMINISTRATOR"]
    #   resp.data.members[0].principal_id #=> String
    #   resp.data.members[0].sid #=> String
    #   resp.data.next_token #=> String
    #
    def list_studio_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStudioMembersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStudioMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStudioMembers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListStudioMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStudioMembers,
        stubs: @stubs,
        params_class: Params::ListStudioMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_studio_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List studios in your Amazon Web Services account in the requested Amazon Web Services
    #             Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStudiosInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results. </p>
    #
    # @return [Types::ListStudiosOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_studios(
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStudiosOutput
    #   resp.data.next_token #=> String
    #   resp.data.studios #=> Array<Studio>
    #   resp.data.studios[0] #=> Types::Studio
    #   resp.data.studios[0].admin_role_arn #=> String
    #   resp.data.studios[0].arn #=> String
    #   resp.data.studios[0].created_at #=> Time
    #   resp.data.studios[0].display_name #=> String
    #   resp.data.studios[0].home_region #=> String
    #   resp.data.studios[0].sso_client_id #=> String
    #   resp.data.studios[0].state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.studios[0].status_code #=> String, one of ["STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS"]
    #   resp.data.studios[0].status_message #=> String
    #   resp.data.studios[0].studio_encryption_configuration #=> Types::StudioEncryptionConfiguration
    #   resp.data.studios[0].studio_encryption_configuration.key_arn #=> String
    #   resp.data.studios[0].studio_encryption_configuration.key_type #=> String, one of ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"]
    #   resp.data.studios[0].studio_id #=> String
    #   resp.data.studios[0].studio_name #=> String
    #   resp.data.studios[0].studio_url #=> String
    #   resp.data.studios[0].tags #=> Hash<String, String>
    #   resp.data.studios[0].tags['key'] #=> String
    #   resp.data.studios[0].updated_at #=> Time
    #   resp.data.studios[0].user_role_arn #=> String
    #
    def list_studios(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStudiosInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStudiosInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStudios
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListStudios
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStudios,
        stubs: @stubs,
        params_class: Params::ListStudiosOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_studios
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the tags for a resource, given its Amazon Resource Names (ARN).</p>
    #         <p>This operation supports ARNs for all resource types in Nimble Studio that support
    #             tags, including studio, studio component, launch profile, streaming image, and streaming
    #             session. All resources that can be tagged will contain an ARN property, so you do not
    #             have to create this ARN yourself.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Add/update users with given persona to launch profile membership.</p>
    #
    # @param [Hash] params
    #   See {Types::PutLaunchProfileMembersInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :identity_store_id
    #   <p>The ID of the identity store.</p>
    #
    # @option params [String] :launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    # @option params [Array<NewLaunchProfileMember>] :members
    #   <p>A list of members.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::PutLaunchProfileMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_launch_profile_members(
    #     client_token: 'clientToken',
    #     identity_store_id: 'identityStoreId', # required
    #     launch_profile_id: 'launchProfileId', # required
    #     members: [
    #       {
    #         persona: 'USER', # required - accepts ["USER"]
    #         principal_id: 'principalId' # required
    #       }
    #     ], # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutLaunchProfileMembersOutput
    #
    def put_launch_profile_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutLaunchProfileMembersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutLaunchProfileMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutLaunchProfileMembers
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::PutLaunchProfileMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutLaunchProfileMembers,
        stubs: @stubs,
        params_class: Params::PutLaunchProfileMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_launch_profile_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add/update users with given persona to studio membership.</p>
    #
    # @param [Hash] params
    #   See {Types::PutStudioMembersInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :identity_store_id
    #   <p>The ID of the identity store.</p>
    #
    # @option params [Array<NewStudioMember>] :members
    #   <p>A list of members.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::PutStudioMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_studio_members(
    #     client_token: 'clientToken',
    #     identity_store_id: 'identityStoreId', # required
    #     members: [
    #       {
    #         persona: 'ADMINISTRATOR', # required - accepts ["ADMINISTRATOR"]
    #         principal_id: 'principalId' # required
    #       }
    #     ], # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutStudioMembersOutput
    #
    def put_studio_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutStudioMembersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutStudioMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutStudioMembers
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::PutStudioMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutStudioMembers,
        stubs: @stubs,
        params_class: Params::PutStudioMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_studio_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Transitions sessions from the STOPPED state into the READY state. The
    #             START_IN_PROGRESS state is the intermediate state between the STOPPED and READY
    #             states.</p>
    #
    # Tags: ["stop_start_streaming_session"]
    #
    # @param [Hash] params
    #   See {Types::StartStreamingSessionInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :session_id
    #   <p>The streaming session ID for the StartStreamingSessionRequest.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID for the StartStreamingSessionRequest.</p>
    #
    # @return [Types::StartStreamingSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_streaming_session(
    #     client_token: 'clientToken',
    #     session_id: 'sessionId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartStreamingSessionOutput
    #   resp.data.session #=> Types::StreamingSession
    #   resp.data.session.arn #=> String
    #   resp.data.session.created_at #=> Time
    #   resp.data.session.created_by #=> String
    #   resp.data.session.ec2_instance_type #=> String
    #   resp.data.session.launch_profile_id #=> String
    #   resp.data.session.owned_by #=> String
    #   resp.data.session.session_id #=> String
    #   resp.data.session.state #=> String, one of ["CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED", "STOP_IN_PROGRESS", "START_IN_PROGRESS", "STOPPED", "STOP_FAILED", "START_FAILED"]
    #   resp.data.session.status_code #=> String, one of ["STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR", "STREAMING_SESSION_STOPPED", "STREAMING_SESSION_STARTED", "STREAMING_SESSION_STOP_IN_PROGRESS", "STREAMING_SESSION_START_IN_PROGRESS", "AMI_VALIDATION_ERROR"]
    #   resp.data.session.status_message #=> String
    #   resp.data.session.streaming_image_id #=> String
    #   resp.data.session.tags #=> Hash<String, String>
    #   resp.data.session.tags['key'] #=> String
    #   resp.data.session.terminate_at #=> Time
    #   resp.data.session.updated_at #=> Time
    #   resp.data.session.updated_by #=> String
    #   resp.data.session.stopped_at #=> Time
    #   resp.data.session.stopped_by #=> String
    #   resp.data.session.started_at #=> Time
    #   resp.data.session.started_by #=> String
    #   resp.data.session.stop_at #=> Time
    #
    def start_streaming_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartStreamingSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartStreamingSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartStreamingSession
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::StartStreamingSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartStreamingSession,
        stubs: @stubs,
        params_class: Params::StartStreamingSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_streaming_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Repairs the Amazon Web Services SSO configuration for a given studio.</p>
    #         <p>If the studio has a valid Amazon Web Services SSO configuration currently associated with
    #             it, this operation will fail with a validation error.</p>
    #         <p>If the studio does not have a valid Amazon Web Services SSO configuration currently
    #             associated with it, then a new Amazon Web Services SSO application is created for the studio
    #             and the studio is changed to the READY state.</p>
    #         <p>After the Amazon Web Services SSO application is repaired, you must use the Amazon Nimble Studio console to add administrators and users to your studio.</p>
    #
    # @param [Hash] params
    #   See {Types::StartStudioSSOConfigurationRepairInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::StartStudioSSOConfigurationRepairOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_studio_sso_configuration_repair(
    #     client_token: 'clientToken',
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartStudioSSOConfigurationRepairOutput
    #   resp.data.studio #=> Types::Studio
    #   resp.data.studio.admin_role_arn #=> String
    #   resp.data.studio.arn #=> String
    #   resp.data.studio.created_at #=> Time
    #   resp.data.studio.display_name #=> String
    #   resp.data.studio.home_region #=> String
    #   resp.data.studio.sso_client_id #=> String
    #   resp.data.studio.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.studio.status_code #=> String, one of ["STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS"]
    #   resp.data.studio.status_message #=> String
    #   resp.data.studio.studio_encryption_configuration #=> Types::StudioEncryptionConfiguration
    #   resp.data.studio.studio_encryption_configuration.key_arn #=> String
    #   resp.data.studio.studio_encryption_configuration.key_type #=> String, one of ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"]
    #   resp.data.studio.studio_id #=> String
    #   resp.data.studio.studio_name #=> String
    #   resp.data.studio.studio_url #=> String
    #   resp.data.studio.tags #=> Hash<String, String>
    #   resp.data.studio.tags['key'] #=> String
    #   resp.data.studio.updated_at #=> Time
    #   resp.data.studio.user_role_arn #=> String
    #
    def start_studio_sso_configuration_repair(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartStudioSSOConfigurationRepairInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartStudioSSOConfigurationRepairInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartStudioSSOConfigurationRepair
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::StartStudioSSOConfigurationRepair
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartStudioSSOConfigurationRepair,
        stubs: @stubs,
        params_class: Params::StartStudioSSOConfigurationRepairOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_studio_sso_configuration_repair
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Transitions sessions from the READY state into the STOPPED state. The STOP_IN_PROGRESS
    #             state is the intermediate state between the READY and STOPPED states.</p>
    #
    # Tags: ["stop_start_streaming_session"]
    #
    # @param [Hash] params
    #   See {Types::StopStreamingSessionInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :session_id
    #   <p>The streaming session ID for the StopStreamingSessionRequest.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studioId for the StopStreamingSessionRequest.</p>
    #
    # @return [Types::StopStreamingSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_streaming_session(
    #     client_token: 'clientToken',
    #     session_id: 'sessionId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopStreamingSessionOutput
    #   resp.data.session #=> Types::StreamingSession
    #   resp.data.session.arn #=> String
    #   resp.data.session.created_at #=> Time
    #   resp.data.session.created_by #=> String
    #   resp.data.session.ec2_instance_type #=> String
    #   resp.data.session.launch_profile_id #=> String
    #   resp.data.session.owned_by #=> String
    #   resp.data.session.session_id #=> String
    #   resp.data.session.state #=> String, one of ["CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "READY", "DELETED", "CREATE_FAILED", "DELETE_FAILED", "STOP_IN_PROGRESS", "START_IN_PROGRESS", "STOPPED", "STOP_FAILED", "START_FAILED"]
    #   resp.data.session.status_code #=> String, one of ["STREAMING_SESSION_READY", "STREAMING_SESSION_DELETED", "STREAMING_SESSION_CREATE_IN_PROGRESS", "STREAMING_SESSION_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "INSUFFICIENT_CAPACITY", "ACTIVE_DIRECTORY_DOMAIN_JOIN_ERROR", "NETWORK_CONNECTION_ERROR", "INITIALIZATION_SCRIPT_ERROR", "DECRYPT_STREAMING_IMAGE_ERROR", "NETWORK_INTERFACE_ERROR", "STREAMING_SESSION_STOPPED", "STREAMING_SESSION_STARTED", "STREAMING_SESSION_STOP_IN_PROGRESS", "STREAMING_SESSION_START_IN_PROGRESS", "AMI_VALIDATION_ERROR"]
    #   resp.data.session.status_message #=> String
    #   resp.data.session.streaming_image_id #=> String
    #   resp.data.session.tags #=> Hash<String, String>
    #   resp.data.session.tags['key'] #=> String
    #   resp.data.session.terminate_at #=> Time
    #   resp.data.session.updated_at #=> Time
    #   resp.data.session.updated_by #=> String
    #   resp.data.session.stopped_at #=> Time
    #   resp.data.session.stopped_by #=> String
    #   resp.data.session.started_at #=> Time
    #   resp.data.session.started_by #=> String
    #   resp.data.session.stop_at #=> Time
    #
    def stop_streaming_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopStreamingSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopStreamingSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopStreamingSession
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::StopStreamingSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopStreamingSession,
        stubs: @stubs,
        params_class: Params::StopStreamingSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_streaming_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates tags for a resource, given its ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource you want to add tags to. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of labels, in the form of key:value pairs, that apply to this
    #               resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     }
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Deletes the tags for a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Identifies the Amazon Resource Name(ARN) key from which you are removing tags. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>One or more tag keys. Specify only the tag keys, not the tag values.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Update a launch profile.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLaunchProfileInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :description
    #   <p>The description.</p>
    #
    # @option params [String] :launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    # @option params [Array<String>] :launch_profile_protocol_versions
    #   <p>The version number of the protocol that is used by the launch profile. The only valid
    #               version is "2021-03-31".</p>
    #
    # @option params [String] :name
    #   <p>The name for the launch profile.</p>
    #
    # @option params [StreamConfigurationCreate] :stream_configuration
    #   <p>A configuration for a streaming session.</p>
    #
    # @option params [Array<String>] :studio_component_ids
    #   <p>Unique identifiers for a collection of studio components that can be used with this
    #               launch profile.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::UpdateLaunchProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_launch_profile(
    #     client_token: 'clientToken',
    #     description: 'description',
    #     launch_profile_id: 'launchProfileId', # required
    #     launch_profile_protocol_versions: [
    #       'member'
    #     ],
    #     name: 'name',
    #     stream_configuration: {
    #       clipboard_mode: 'ENABLED', # required - accepts ["ENABLED", "DISABLED"]
    #       ec2_instance_types: [
    #         'g4dn.xlarge' # accepts ["g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"]
    #       ], # required
    #       max_session_length_in_minutes: 1,
    #       streaming_image_ids: [
    #         'member'
    #       ], # required
    #       max_stopped_session_length_in_minutes: 1,
    #       session_storage: {
    #         root: {
    #           linux: 'linux',
    #           windows: 'windows'
    #         },
    #         mode: [
    #           'UPLOAD' # accepts ["UPLOAD"]
    #         ] # required
    #       }
    #     },
    #     studio_component_ids: [
    #       'member'
    #     ],
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLaunchProfileOutput
    #   resp.data.launch_profile #=> Types::LaunchProfile
    #   resp.data.launch_profile.arn #=> String
    #   resp.data.launch_profile.created_at #=> Time
    #   resp.data.launch_profile.created_by #=> String
    #   resp.data.launch_profile.description #=> String
    #   resp.data.launch_profile.ec2_subnet_ids #=> Array<String>
    #   resp.data.launch_profile.ec2_subnet_ids[0] #=> String
    #   resp.data.launch_profile.launch_profile_id #=> String
    #   resp.data.launch_profile.launch_profile_protocol_versions #=> Array<String>
    #   resp.data.launch_profile.launch_profile_protocol_versions[0] #=> String
    #   resp.data.launch_profile.name #=> String
    #   resp.data.launch_profile.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.launch_profile.status_code #=> String, one of ["LAUNCH_PROFILE_CREATED", "LAUNCH_PROFILE_UPDATED", "LAUNCH_PROFILE_DELETED", "LAUNCH_PROFILE_CREATE_IN_PROGRESS", "LAUNCH_PROFILE_UPDATE_IN_PROGRESS", "LAUNCH_PROFILE_DELETE_IN_PROGRESS", "INTERNAL_ERROR", "STREAMING_IMAGE_NOT_FOUND", "STREAMING_IMAGE_NOT_READY", "LAUNCH_PROFILE_WITH_STREAM_SESSIONS_NOT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "INVALID_SUBNETS_PROVIDED"]
    #   resp.data.launch_profile.status_message #=> String
    #   resp.data.launch_profile.stream_configuration #=> Types::StreamConfiguration
    #   resp.data.launch_profile.stream_configuration.clipboard_mode #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.launch_profile.stream_configuration.ec2_instance_types #=> Array<String>
    #   resp.data.launch_profile.stream_configuration.ec2_instance_types[0] #=> String, one of ["g4dn.xlarge", "g4dn.2xlarge", "g4dn.4xlarge", "g4dn.8xlarge", "g4dn.12xlarge", "g4dn.16xlarge"]
    #   resp.data.launch_profile.stream_configuration.max_session_length_in_minutes #=> Integer
    #   resp.data.launch_profile.stream_configuration.streaming_image_ids #=> Array<String>
    #   resp.data.launch_profile.stream_configuration.streaming_image_ids[0] #=> String
    #   resp.data.launch_profile.stream_configuration.max_stopped_session_length_in_minutes #=> Integer
    #   resp.data.launch_profile.stream_configuration.session_storage #=> Types::StreamConfigurationSessionStorage
    #   resp.data.launch_profile.stream_configuration.session_storage.root #=> Types::StreamingSessionStorageRoot
    #   resp.data.launch_profile.stream_configuration.session_storage.root.linux #=> String
    #   resp.data.launch_profile.stream_configuration.session_storage.root.windows #=> String
    #   resp.data.launch_profile.stream_configuration.session_storage.mode #=> Array<String>
    #   resp.data.launch_profile.stream_configuration.session_storage.mode[0] #=> String, one of ["UPLOAD"]
    #   resp.data.launch_profile.studio_component_ids #=> Array<String>
    #   resp.data.launch_profile.studio_component_ids[0] #=> String
    #   resp.data.launch_profile.tags #=> Hash<String, String>
    #   resp.data.launch_profile.tags['key'] #=> String
    #   resp.data.launch_profile.updated_at #=> Time
    #   resp.data.launch_profile.updated_by #=> String
    #   resp.data.launch_profile.validation_results #=> Array<ValidationResult>
    #   resp.data.launch_profile.validation_results[0] #=> Types::ValidationResult
    #   resp.data.launch_profile.validation_results[0].type #=> String, one of ["VALIDATE_ACTIVE_DIRECTORY_STUDIO_COMPONENT", "VALIDATE_SUBNET_ASSOCIATION", "VALIDATE_NETWORK_ACL_ASSOCIATION", "VALIDATE_SECURITY_GROUP_ASSOCIATION"]
    #   resp.data.launch_profile.validation_results[0].state #=> String, one of ["VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"]
    #   resp.data.launch_profile.validation_results[0].status_code #=> String, one of ["VALIDATION_NOT_STARTED", "VALIDATION_IN_PROGRESS", "VALIDATION_SUCCESS", "VALIDATION_FAILED_INVALID_SUBNET_ROUTE_TABLE_ASSOCIATION", "VALIDATION_FAILED_SUBNET_NOT_FOUND", "VALIDATION_FAILED_INVALID_SECURITY_GROUP_ASSOCIATION", "VALIDATION_FAILED_INVALID_ACTIVE_DIRECTORY", "VALIDATION_FAILED_UNAUTHORIZED", "VALIDATION_FAILED_INTERNAL_SERVER_ERROR"]
    #   resp.data.launch_profile.validation_results[0].status_message #=> String
    #
    def update_launch_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLaunchProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLaunchProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLaunchProfile
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateLaunchProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLaunchProfile,
        stubs: @stubs,
        params_class: Params::UpdateLaunchProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_launch_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a user persona in launch profile membership.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLaunchProfileMemberInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :launch_profile_id
    #   <p>The Launch Profile ID.</p>
    #
    # @option params [String] :persona
    #   <p>The persona.</p>
    #
    # @option params [String] :principal_id
    #   <p>The principal ID. This currently supports a Amazon Web Services SSO UserId. </p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::UpdateLaunchProfileMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_launch_profile_member(
    #     client_token: 'clientToken',
    #     launch_profile_id: 'launchProfileId', # required
    #     persona: 'USER', # required - accepts ["USER"]
    #     principal_id: 'principalId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLaunchProfileMemberOutput
    #   resp.data.member #=> Types::LaunchProfileMembership
    #   resp.data.member.identity_store_id #=> String
    #   resp.data.member.persona #=> String, one of ["USER"]
    #   resp.data.member.principal_id #=> String
    #   resp.data.member.sid #=> String
    #
    def update_launch_profile_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLaunchProfileMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLaunchProfileMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLaunchProfileMember
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateLaunchProfileMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLaunchProfileMember,
        stubs: @stubs,
        params_class: Params::UpdateLaunchProfileMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_launch_profile_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update streaming image.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStreamingImageInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :description
    #   <p>The description.</p>
    #
    # @option params [String] :name
    #   <p>The name for the streaming image.</p>
    #
    # @option params [String] :streaming_image_id
    #   <p>The streaming image ID.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @return [Types::UpdateStreamingImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_streaming_image(
    #     client_token: 'clientToken',
    #     description: 'description',
    #     name: 'name',
    #     streaming_image_id: 'streamingImageId', # required
    #     studio_id: 'studioId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStreamingImageOutput
    #   resp.data.streaming_image #=> Types::StreamingImage
    #   resp.data.streaming_image.arn #=> String
    #   resp.data.streaming_image.description #=> String
    #   resp.data.streaming_image.ec2_image_id #=> String
    #   resp.data.streaming_image.encryption_configuration #=> Types::StreamingImageEncryptionConfiguration
    #   resp.data.streaming_image.encryption_configuration.key_arn #=> String
    #   resp.data.streaming_image.encryption_configuration.key_type #=> String, one of ["CUSTOMER_MANAGED_KEY"]
    #   resp.data.streaming_image.eula_ids #=> Array<String>
    #   resp.data.streaming_image.eula_ids[0] #=> String
    #   resp.data.streaming_image.name #=> String
    #   resp.data.streaming_image.owner #=> String
    #   resp.data.streaming_image.platform #=> String
    #   resp.data.streaming_image.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "DELETE_IN_PROGRESS", "DELETED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.streaming_image.status_code #=> String, one of ["STREAMING_IMAGE_CREATE_IN_PROGRESS", "STREAMING_IMAGE_READY", "STREAMING_IMAGE_DELETE_IN_PROGRESS", "STREAMING_IMAGE_DELETED", "STREAMING_IMAGE_UPDATE_IN_PROGRESS", "INTERNAL_ERROR", "ACCESS_DENIED"]
    #   resp.data.streaming_image.status_message #=> String
    #   resp.data.streaming_image.streaming_image_id #=> String
    #   resp.data.streaming_image.tags #=> Hash<String, String>
    #   resp.data.streaming_image.tags['key'] #=> String
    #
    def update_streaming_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStreamingImageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStreamingImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStreamingImage
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateStreamingImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStreamingImage,
        stubs: @stubs,
        params_class: Params::UpdateStreamingImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_streaming_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update a Studio resource.</p>
    #         <p>Currently, this operation only supports updating the displayName of your
    #             studio.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStudioInput}.
    #
    # @option params [String] :admin_role_arn
    #   <p>The IAM role that Studio Admins will assume when logging in to the Nimble Studio
    #               portal.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [String] :display_name
    #   <p>A friendly name for the studio.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @option params [String] :user_role_arn
    #   <p>The IAM role that Studio Users will assume when logging in to the Nimble Studio
    #               portal.</p>
    #
    # @return [Types::UpdateStudioOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_studio(
    #     admin_role_arn: 'adminRoleArn',
    #     client_token: 'clientToken',
    #     display_name: 'displayName',
    #     studio_id: 'studioId', # required
    #     user_role_arn: 'userRoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStudioOutput
    #   resp.data.studio #=> Types::Studio
    #   resp.data.studio.admin_role_arn #=> String
    #   resp.data.studio.arn #=> String
    #   resp.data.studio.created_at #=> Time
    #   resp.data.studio.display_name #=> String
    #   resp.data.studio.home_region #=> String
    #   resp.data.studio.sso_client_id #=> String
    #   resp.data.studio.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.studio.status_code #=> String, one of ["STUDIO_CREATED", "STUDIO_DELETED", "STUDIO_UPDATED", "STUDIO_CREATE_IN_PROGRESS", "STUDIO_UPDATE_IN_PROGRESS", "STUDIO_DELETE_IN_PROGRESS", "STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED", "STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED", "STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED", "AWS_SSO_NOT_ENABLED", "AWS_SSO_ACCESS_DENIED", "ROLE_NOT_OWNED_BY_STUDIO_OWNER", "ROLE_COULD_NOT_BE_ASSUMED", "INTERNAL_ERROR", "ENCRYPTION_KEY_NOT_FOUND", "ENCRYPTION_KEY_ACCESS_DENIED", "AWS_SSO_CONFIGURATION_REPAIRED", "AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS"]
    #   resp.data.studio.status_message #=> String
    #   resp.data.studio.studio_encryption_configuration #=> Types::StudioEncryptionConfiguration
    #   resp.data.studio.studio_encryption_configuration.key_arn #=> String
    #   resp.data.studio.studio_encryption_configuration.key_type #=> String, one of ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"]
    #   resp.data.studio.studio_id #=> String
    #   resp.data.studio.studio_name #=> String
    #   resp.data.studio.studio_url #=> String
    #   resp.data.studio.tags #=> Hash<String, String>
    #   resp.data.studio.tags['key'] #=> String
    #   resp.data.studio.updated_at #=> Time
    #   resp.data.studio.user_role_arn #=> String
    #
    def update_studio(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStudioInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStudioInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStudio
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateStudio
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStudio,
        stubs: @stubs,
        params_class: Params::UpdateStudioOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_studio
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a studio component resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStudioComponentInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don’t specify a client token, the AWS SDK automatically generates a
    #               client token and uses it for the request to ensure idempotency.</p>
    #
    # @option params [StudioComponentConfiguration] :configuration
    #   <p>The configuration of the studio component, based on component type.</p>
    #
    # @option params [String] :description
    #   <p>The description.</p>
    #
    # @option params [Array<String>] :ec2_security_group_ids
    #   <p>The EC2 security groups that control access to the studio component.</p>
    #
    # @option params [Array<StudioComponentInitializationScript>] :initialization_scripts
    #   <p>Initialization scripts for studio components.</p>
    #
    # @option params [String] :name
    #   <p>The name for the studio component.</p>
    #
    # @option params [Array<ScriptParameterKeyValue>] :script_parameters
    #   <p>Parameters for the studio component scripts.</p>
    #
    # @option params [String] :studio_component_id
    #   <p>The studio component ID.</p>
    #
    # @option params [String] :studio_id
    #   <p>The studio ID. </p>
    #
    # @option params [String] :subtype
    #   <p>The specific subtype of a studio component.</p>
    #
    # @option params [String] :type
    #   <p>The type of the studio component.</p>
    #
    # @option params [String] :secure_initialization_role_arn
    #   <p>An IAM role attached to Studio Component when the system initialization script runs which give the studio component access to AWS resources when the system initialization script runs.</p>
    #
    # @option params [String] :runtime_role_arn
    #   <p>An IAM role attached to a Studio Component that gives the studio component access to AWS resources at anytime while the instance is running. </p>
    #
    # @return [Types::UpdateStudioComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_studio_component(
    #     client_token: 'clientToken',
    #     configuration: {
    #       # One of:
    #       active_directory_configuration: {
    #         computer_attributes: [
    #           {
    #             name: 'name',
    #             value: 'value'
    #           }
    #         ],
    #         directory_id: 'directoryId',
    #         organizational_unit_distinguished_name: 'organizationalUnitDistinguishedName'
    #       },
    #       compute_farm_configuration: {
    #         active_directory_user: 'activeDirectoryUser',
    #         endpoint: 'endpoint'
    #       },
    #       license_service_configuration: {
    #         endpoint: 'endpoint'
    #       },
    #       shared_file_system_configuration: {
    #         endpoint: 'endpoint',
    #         file_system_id: 'fileSystemId',
    #         linux_mount_point: 'linuxMountPoint',
    #         share_name: 'shareName',
    #         windows_mount_drive: 'windowsMountDrive'
    #       }
    #     },
    #     description: 'description',
    #     ec2_security_group_ids: [
    #       'member'
    #     ],
    #     initialization_scripts: [
    #       {
    #         launch_profile_protocol_version: 'launchProfileProtocolVersion',
    #         platform: 'LINUX', # accepts ["LINUX", "WINDOWS"]
    #         run_context: 'SYSTEM_INITIALIZATION', # accepts ["SYSTEM_INITIALIZATION", "USER_INITIALIZATION"]
    #         script: 'script'
    #       }
    #     ],
    #     name: 'name',
    #     script_parameters: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ],
    #     studio_component_id: 'studioComponentId', # required
    #     studio_id: 'studioId', # required
    #     subtype: 'AWS_MANAGED_MICROSOFT_AD', # accepts ["AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"]
    #     type: 'ACTIVE_DIRECTORY', # accepts ["ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"]
    #     secure_initialization_role_arn: 'secureInitializationRoleArn',
    #     runtime_role_arn: 'runtimeRoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStudioComponentOutput
    #   resp.data.studio_component #=> Types::StudioComponent
    #   resp.data.studio_component.arn #=> String
    #   resp.data.studio_component.configuration #=> Types::StudioComponentConfiguration, one of [ActiveDirectoryConfiguration, ComputeFarmConfiguration, LicenseServiceConfiguration, SharedFileSystemConfiguration]
    #   resp.data.studio_component.configuration.active_directory_configuration #=> Types::ActiveDirectoryConfiguration
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes #=> Array<ActiveDirectoryComputerAttribute>
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes[0] #=> Types::ActiveDirectoryComputerAttribute
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes[0].name #=> String
    #   resp.data.studio_component.configuration.active_directory_configuration.computer_attributes[0].value #=> String
    #   resp.data.studio_component.configuration.active_directory_configuration.directory_id #=> String
    #   resp.data.studio_component.configuration.active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.studio_component.configuration.compute_farm_configuration #=> Types::ComputeFarmConfiguration
    #   resp.data.studio_component.configuration.compute_farm_configuration.active_directory_user #=> String
    #   resp.data.studio_component.configuration.compute_farm_configuration.endpoint #=> String
    #   resp.data.studio_component.configuration.license_service_configuration #=> Types::LicenseServiceConfiguration
    #   resp.data.studio_component.configuration.license_service_configuration.endpoint #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration #=> Types::SharedFileSystemConfiguration
    #   resp.data.studio_component.configuration.shared_file_system_configuration.endpoint #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.file_system_id #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.linux_mount_point #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.share_name #=> String
    #   resp.data.studio_component.configuration.shared_file_system_configuration.windows_mount_drive #=> String
    #   resp.data.studio_component.created_at #=> Time
    #   resp.data.studio_component.created_by #=> String
    #   resp.data.studio_component.description #=> String
    #   resp.data.studio_component.ec2_security_group_ids #=> Array<String>
    #   resp.data.studio_component.ec2_security_group_ids[0] #=> String
    #   resp.data.studio_component.initialization_scripts #=> Array<StudioComponentInitializationScript>
    #   resp.data.studio_component.initialization_scripts[0] #=> Types::StudioComponentInitializationScript
    #   resp.data.studio_component.initialization_scripts[0].launch_profile_protocol_version #=> String
    #   resp.data.studio_component.initialization_scripts[0].platform #=> String, one of ["LINUX", "WINDOWS"]
    #   resp.data.studio_component.initialization_scripts[0].run_context #=> String, one of ["SYSTEM_INITIALIZATION", "USER_INITIALIZATION"]
    #   resp.data.studio_component.initialization_scripts[0].script #=> String
    #   resp.data.studio_component.name #=> String
    #   resp.data.studio_component.script_parameters #=> Array<ScriptParameterKeyValue>
    #   resp.data.studio_component.script_parameters[0] #=> Types::ScriptParameterKeyValue
    #   resp.data.studio_component.script_parameters[0].key #=> String
    #   resp.data.studio_component.script_parameters[0].value #=> String
    #   resp.data.studio_component.state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DELETE_FAILED", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.studio_component.status_code #=> String, one of ["ACTIVE_DIRECTORY_ALREADY_EXISTS", "STUDIO_COMPONENT_CREATED", "STUDIO_COMPONENT_UPDATED", "STUDIO_COMPONENT_DELETED", "ENCRYPTION_KEY_ACCESS_DENIED", "ENCRYPTION_KEY_NOT_FOUND", "STUDIO_COMPONENT_CREATE_IN_PROGRESS", "STUDIO_COMPONENT_UPDATE_IN_PROGRESS", "STUDIO_COMPONENT_DELETE_IN_PROGRESS", "INTERNAL_ERROR"]
    #   resp.data.studio_component.status_message #=> String
    #   resp.data.studio_component.studio_component_id #=> String
    #   resp.data.studio_component.subtype #=> String, one of ["AWS_MANAGED_MICROSOFT_AD", "AMAZON_FSX_FOR_WINDOWS", "AMAZON_FSX_FOR_LUSTRE", "CUSTOM"]
    #   resp.data.studio_component.tags #=> Hash<String, String>
    #   resp.data.studio_component.tags['key'] #=> String
    #   resp.data.studio_component.type #=> String, one of ["ACTIVE_DIRECTORY", "SHARED_FILE_SYSTEM", "COMPUTE_FARM", "LICENSE_SERVICE", "CUSTOM"]
    #   resp.data.studio_component.updated_at #=> Time
    #   resp.data.studio_component.updated_by #=> String
    #   resp.data.studio_component.secure_initialization_role_arn #=> String
    #   resp.data.studio_component.runtime_role_arn #=> String
    #
    def update_studio_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStudioComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStudioComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStudioComponent
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerErrorException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateStudioComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStudioComponent,
        stubs: @stubs,
        params_class: Params::UpdateStudioComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_studio_component
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
