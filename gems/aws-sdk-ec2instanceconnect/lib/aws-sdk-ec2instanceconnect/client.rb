# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::EC2InstanceConnect
  # An API client for AWSEC2InstanceConnectService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon EC2 Instance Connect enables system administrators to publish one-time use SSH
  #             public keys to EC2, providing users a simple and secure way to connect to their
  #             instances.</p>
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
    def initialize(config = AWS::SDK::EC2InstanceConnect::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Pushes an SSH public key to the specified EC2 instance for use by the specified user.
    #             The key remains for 60 seconds. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Connect-using-EC2-Instance-Connect.html">Connect to
    #                 your Linux instance using EC2 Instance Connect</a> in the <i>Amazon EC2
    #                 User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::SendSSHPublicKeyInput}.
    #
    # @option params [String] :instance_id
    #   <p>The ID of the EC2 instance.</p>
    #
    # @option params [String] :instance_os_user
    #   <p>The OS user on the EC2 instance for whom the key can be used to authenticate.</p>
    #
    # @option params [String] :ssh_public_key
    #   <p>The public key material. To use the public key, you must have the matching private key.</p>
    #
    # @option params [String] :availability_zone
    #   <p>The Availability Zone in which the EC2 instance was launched.</p>
    #
    # @return [Types::SendSSHPublicKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_ssh_public_key(
    #     instance_id: 'InstanceId', # required
    #     instance_os_user: 'InstanceOSUser', # required
    #     ssh_public_key: 'SSHPublicKey', # required
    #     availability_zone: 'AvailabilityZone'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendSSHPublicKeyOutput
    #   resp.data.request_id #=> String
    #   resp.data.success #=> Boolean
    #
    def send_ssh_public_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendSSHPublicKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendSSHPublicKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendSSHPublicKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EC2InstanceNotFoundException, Errors::ServiceException, Errors::EC2InstanceStateInvalidException, Errors::AuthException, Errors::InvalidArgsException, Errors::ThrottlingException]),
        data_parser: Parsers::SendSSHPublicKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendSSHPublicKey,
        stubs: @stubs,
        params_class: Params::SendSSHPublicKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_ssh_public_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Pushes an SSH public key to the specified EC2 instance. The key remains for 60
    #             seconds, which gives you 60 seconds to establish a serial console connection to the
    #             instance using SSH. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-serial-console.html">EC2 Serial Console</a> in
    #             the <i>Amazon EC2 User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::SendSerialConsoleSSHPublicKeyInput}.
    #
    # @option params [String] :instance_id
    #   <p>The ID of the EC2 instance.</p>
    #
    # @option params [Integer] :serial_port
    #   <p>The serial port of the EC2 instance. Currently only port 0 is supported.</p>
    #           <p>Default: 0</p>
    #
    # @option params [String] :ssh_public_key
    #   <p>The public key material. To use the public key, you must have the matching private
    #               key. For information about the supported key formats and lengths, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#how-to-generate-your-own-key-and-import-it-to-aws">Requirements for key pairs</a> in the <i>Amazon EC2 User
    #               Guide</i>.</p>
    #
    # @return [Types::SendSerialConsoleSSHPublicKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_serial_console_ssh_public_key(
    #     instance_id: 'InstanceId', # required
    #     serial_port: 1,
    #     ssh_public_key: 'SSHPublicKey' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendSerialConsoleSSHPublicKeyOutput
    #   resp.data.request_id #=> String
    #   resp.data.success #=> Boolean
    #
    def send_serial_console_ssh_public_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendSerialConsoleSSHPublicKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendSerialConsoleSSHPublicKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendSerialConsoleSSHPublicKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EC2InstanceNotFoundException, Errors::ServiceException, Errors::EC2InstanceStateInvalidException, Errors::SerialConsoleSessionUnavailableException, Errors::AuthException, Errors::InvalidArgsException, Errors::EC2InstanceTypeInvalidException, Errors::SerialConsoleAccessDisabledException, Errors::ThrottlingException, Errors::SerialConsoleSessionLimitExceededException]),
        data_parser: Parsers::SendSerialConsoleSSHPublicKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendSerialConsoleSSHPublicKey,
        stubs: @stubs,
        params_class: Params::SendSerialConsoleSSHPublicKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_serial_console_ssh_public_key
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
