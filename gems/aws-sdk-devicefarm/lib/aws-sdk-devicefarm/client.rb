# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::DeviceFarm
  # An API client for DeviceFarm_20150623
  # See {#initialize} for a full list of supported configuration options
  # <p>Welcome to the AWS Device Farm API documentation, which contains APIs for:</p>
  #         <ul>
  #             <li>
  #                 <p>Testing on desktop browsers</p>
  #                 <p> Device Farm makes it possible for you to test your web applications on desktop browsers using
  #                     Selenium. The APIs for desktop browser testing contain <code>TestGrid</code> in their names. For
  #                     more information, see <a href="https://docs.aws.amazon.com/devicefarm/latest/testgrid/">Testing Web
  #                         Applications on Selenium with Device Farm</a>.</p>
  #             </li>
  #             <li>
  #                 <p>Testing on real mobile devices</p>
  #                 <p>Device Farm makes it possible for you to test apps on physical phones, tablets, and other
  #                     devices in the cloud. For more information, see the <a href="https://docs.aws.amazon.com/devicefarm/latest/developerguide/">Device Farm Developer Guide</a>.</p>
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
    def initialize(config = AWS::SDK::DeviceFarm::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a device pool.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDevicePoolInput}.
    #
    # @option params [String] :project_arn
    #   <p>The ARN of the project for the device pool.</p>
    #
    # @option params [String] :name
    #   <p>The device pool's name.</p>
    #
    # @option params [String] :description
    #   <p>The device pool's description.</p>
    #
    # @option params [Array<Rule>] :rules
    #   <p>The device pool's rules.</p>
    #
    # @option params [Integer] :max_devices
    #   <p>The number of devices that Device Farm can add to your device pool. Device Farm adds devices that are
    #               available and meet the criteria that you assign for the <code>rules</code> parameter. Depending on how many
    #               devices meet these constraints, your device pool might contain fewer devices than the value for this
    #               parameter.</p>
    #           <p>By specifying the maximum number of devices, you can control the costs that you incur
    #               by running tests.</p>
    #
    # @return [Types::CreateDevicePoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_device_pool(
    #     project_arn: 'projectArn', # required
    #     name: 'name', # required
    #     description: 'description',
    #     rules: [
    #       {
    #         attribute: 'ARN', # accepts ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"]
    #         operator: 'EQUALS', # accepts ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"]
    #         value: 'value'
    #       }
    #     ], # required
    #     max_devices: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDevicePoolOutput
    #   resp.data.device_pool #=> Types::DevicePool
    #   resp.data.device_pool.arn #=> String
    #   resp.data.device_pool.name #=> String
    #   resp.data.device_pool.description #=> String
    #   resp.data.device_pool.type #=> String, one of ["CURATED", "PRIVATE"]
    #   resp.data.device_pool.rules #=> Array<Rule>
    #   resp.data.device_pool.rules[0] #=> Types::Rule
    #   resp.data.device_pool.rules[0].attribute #=> String, one of ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"]
    #   resp.data.device_pool.rules[0].operator #=> String, one of ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"]
    #   resp.data.device_pool.rules[0].value #=> String
    #   resp.data.device_pool.max_devices #=> Integer
    #
    def create_device_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDevicePoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDevicePoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDevicePool
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateDevicePool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDevicePool,
        stubs: @stubs,
        params_class: Params::CreateDevicePoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_device_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a profile that can be applied to one or more private fleet device
    #             instances.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateInstanceProfileInput}.
    #
    # @option params [String] :name
    #   <p>The name of your instance profile.</p>
    #
    # @option params [String] :description
    #   <p>The description of your instance profile.</p>
    #
    # @option params [Boolean] :package_cleanup
    #   <p>When set to <code>true</code>, Device Farm removes app packages after a test run. The default value is
    #                   <code>false</code> for private devices.</p>
    #
    # @option params [Array<String>] :exclude_app_packages_from_cleanup
    #   <p>An array of strings that specifies the list of app packages that should not be cleaned up from the device
    #               after a test run.</p>
    #           <p>The list of packages is considered only if you set <code>packageCleanup</code> to
    #               <code>true</code>.</p>
    #
    # @option params [Boolean] :reboot_after_use
    #   <p>When set to <code>true</code>, Device Farm reboots the instance after a test run. The default value is
    #                   <code>true</code>.</p>
    #
    # @return [Types::CreateInstanceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance_profile(
    #     name: 'name', # required
    #     description: 'description',
    #     package_cleanup: false,
    #     exclude_app_packages_from_cleanup: [
    #       'member'
    #     ],
    #     reboot_after_use: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateInstanceProfileOutput
    #   resp.data.instance_profile #=> Types::InstanceProfile
    #   resp.data.instance_profile.arn #=> String
    #   resp.data.instance_profile.package_cleanup #=> Boolean
    #   resp.data.instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.instance_profile.reboot_after_use #=> Boolean
    #   resp.data.instance_profile.name #=> String
    #   resp.data.instance_profile.description #=> String
    #
    def create_instance_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateInstanceProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateInstanceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateInstanceProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateInstanceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateInstanceProfile,
        stubs: @stubs,
        params_class: Params::CreateInstanceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_instance_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a network profile.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateNetworkProfileInput}.
    #
    # @option params [String] :project_arn
    #   <p>The Amazon Resource Name (ARN) of the project for which you want to create a
    #               network profile.</p>
    #
    # @option params [String] :name
    #   <p>The name for the new network profile.</p>
    #
    # @option params [String] :description
    #   <p>The description of the network profile.</p>
    #
    # @option params [String] :type
    #   <p>The type of network profile to create. Valid values are listed here.</p>
    #
    # @option params [Integer] :uplink_bandwidth_bits
    #   <p>The data throughput rate in bits per second, as an integer from 0 to
    #               104857600.</p>
    #
    # @option params [Integer] :downlink_bandwidth_bits
    #   <p>The data throughput rate in bits per second, as an integer from 0 to
    #               104857600.</p>
    #
    # @option params [Integer] :uplink_delay_ms
    #   <p>Delay time for all packets to destination in milliseconds as an integer from 0 to
    #               2000.</p>
    #
    # @option params [Integer] :downlink_delay_ms
    #   <p>Delay time for all packets to destination in milliseconds as an integer from 0 to
    #               2000.</p>
    #
    # @option params [Integer] :uplink_jitter_ms
    #   <p>Time variation in the delay of received packets in milliseconds as an integer from
    #               0 to 2000.</p>
    #
    # @option params [Integer] :downlink_jitter_ms
    #   <p>Time variation in the delay of received packets in milliseconds as an integer from
    #               0 to 2000.</p>
    #
    # @option params [Integer] :uplink_loss_percent
    #   <p>Proportion of transmitted packets that fail to arrive from 0 to 100
    #               percent.</p>
    #
    # @option params [Integer] :downlink_loss_percent
    #   <p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>
    #
    # @return [Types::CreateNetworkProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network_profile(
    #     project_arn: 'projectArn', # required
    #     name: 'name', # required
    #     description: 'description',
    #     type: 'CURATED', # accepts ["CURATED", "PRIVATE"]
    #     uplink_bandwidth_bits: 1,
    #     downlink_bandwidth_bits: 1,
    #     uplink_delay_ms: 1,
    #     downlink_delay_ms: 1,
    #     uplink_jitter_ms: 1,
    #     downlink_jitter_ms: 1,
    #     uplink_loss_percent: 1,
    #     downlink_loss_percent: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateNetworkProfileOutput
    #   resp.data.network_profile #=> Types::NetworkProfile
    #   resp.data.network_profile.arn #=> String
    #   resp.data.network_profile.name #=> String
    #   resp.data.network_profile.description #=> String
    #   resp.data.network_profile.type #=> String, one of ["CURATED", "PRIVATE"]
    #   resp.data.network_profile.uplink_bandwidth_bits #=> Integer
    #   resp.data.network_profile.downlink_bandwidth_bits #=> Integer
    #   resp.data.network_profile.uplink_delay_ms #=> Integer
    #   resp.data.network_profile.downlink_delay_ms #=> Integer
    #   resp.data.network_profile.uplink_jitter_ms #=> Integer
    #   resp.data.network_profile.downlink_jitter_ms #=> Integer
    #   resp.data.network_profile.uplink_loss_percent #=> Integer
    #   resp.data.network_profile.downlink_loss_percent #=> Integer
    #
    def create_network_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateNetworkProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateNetworkProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateNetworkProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateNetworkProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateNetworkProfile,
        stubs: @stubs,
        params_class: Params::CreateNetworkProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_network_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a project.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProjectInput}.
    #
    # @option params [String] :name
    #   <p>The project's name.</p>
    #
    # @option params [Integer] :default_job_timeout_minutes
    #   <p>Sets the execution timeout value (in minutes) for a project. All test runs in this project use the
    #               specified execution timeout value unless overridden when scheduling a run.</p>
    #
    # @return [Types::CreateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project(
    #     name: 'name', # required
    #     default_job_timeout_minutes: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProjectOutput
    #   resp.data.project #=> Types::Project
    #   resp.data.project.arn #=> String
    #   resp.data.project.name #=> String
    #   resp.data.project.default_job_timeout_minutes #=> Integer
    #   resp.data.project.created #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TagOperationException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
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

    # <p>Specifies and starts a remote access session.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRemoteAccessSessionInput}.
    #
    # @option params [String] :project_arn
    #   <p>The Amazon Resource Name (ARN) of the project for which you want to create a remote
    #               access session.</p>
    #
    # @option params [String] :device_arn
    #   <p>The ARN of the device for which you want to create a remote access session.</p>
    #
    # @option params [String] :instance_arn
    #   <p>The Amazon Resource Name (ARN) of the device instance for which you want to create a
    #               remote access session.</p>
    #
    # @option params [String] :ssh_public_key
    #   <p>Ignored. The public key of the <code>ssh</code> key pair you want to use for connecting to remote
    #               devices in your remote debugging session. This key is required only if <code>remoteDebugEnabled</code> is
    #               set to <code>true</code>.</p>
    #           <p>Remote debugging is <a href="https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html">no
    #                   longer supported</a>.</p>
    #
    # @option params [Boolean] :remote_debug_enabled
    #   <p>Set to <code>true</code> if you want to access devices remotely for debugging in
    #               your remote access session.</p>
    #           <p>Remote debugging is <a href="https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html">no
    #                   longer supported</a>.</p>
    #
    # @option params [Boolean] :remote_record_enabled
    #   <p>Set to <code>true</code> to enable remote recording for the remote access
    #               session.</p>
    #
    # @option params [String] :remote_record_app_arn
    #   <p>The Amazon Resource Name (ARN) for the app to be recorded in the remote access
    #               session.</p>
    #
    # @option params [String] :name
    #   <p>The name of the remote access session to create.</p>
    #
    # @option params [String] :client_id
    #   <p>Unique identifier for the client. If you want access to multiple devices on the same client, you should
    #               pass the same <code>clientId</code> value in each call to <code>CreateRemoteAccessSession</code>. This
    #               identifier is required only if <code>remoteDebugEnabled</code> is set to <code>true</code>.</p>
    #           <p>Remote debugging is <a href="https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html">no
    #                   longer supported</a>.</p>
    #
    # @option params [CreateRemoteAccessSessionConfiguration] :configuration
    #   <p>The configuration information for the remote access session request.</p>
    #
    # @option params [String] :interaction_mode
    #   <p>The interaction mode of the remote access session. Valid values are:</p>
    #           <ul>
    #               <li>
    #                   <p>INTERACTIVE: You can interact with the iOS device by viewing, touching, and
    #                       rotating the screen. You cannot run XCUITest framework-based tests in this
    #                       mode.</p>
    #               </li>
    #               <li>
    #                   <p>NO_VIDEO: You are connected to the device, but cannot interact with it or view the screen. This
    #                       mode has the fastest test execution speed. You can run XCUITest framework-based tests in this
    #                       mode.</p>
    #               </li>
    #               <li>
    #                   <p>VIDEO_ONLY: You can view the screen, but cannot touch or rotate it. You can run XCUITest
    #                       framework-based tests and watch the screen in this mode.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :skip_app_resign
    #   <p>When set to <code>true</code>, for private devices, Device Farm does not sign your app again. For public
    #               devices, Device Farm always signs your apps again.</p>
    #           <p>For more information on how Device Farm modifies your uploads during tests, see <a href="https://aws.amazon.com/device-farm/faq/">Do you modify my app?</a>
    #            </p>
    #
    # @return [Types::CreateRemoteAccessSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_remote_access_session(
    #     project_arn: 'projectArn', # required
    #     device_arn: 'deviceArn', # required
    #     instance_arn: 'instanceArn',
    #     ssh_public_key: 'sshPublicKey',
    #     remote_debug_enabled: false,
    #     remote_record_enabled: false,
    #     remote_record_app_arn: 'remoteRecordAppArn',
    #     name: 'name',
    #     client_id: 'clientId',
    #     configuration: {
    #       billing_method: 'METERED', # accepts ["METERED", "UNMETERED"]
    #       vpce_configuration_arns: [
    #         'member'
    #       ]
    #     },
    #     interaction_mode: 'INTERACTIVE', # accepts ["INTERACTIVE", "NO_VIDEO", "VIDEO_ONLY"]
    #     skip_app_resign: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRemoteAccessSessionOutput
    #   resp.data.remote_access_session #=> Types::RemoteAccessSession
    #   resp.data.remote_access_session.arn #=> String
    #   resp.data.remote_access_session.name #=> String
    #   resp.data.remote_access_session.created #=> Time
    #   resp.data.remote_access_session.status #=> String, one of ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"]
    #   resp.data.remote_access_session.result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.remote_access_session.message #=> String
    #   resp.data.remote_access_session.started #=> Time
    #   resp.data.remote_access_session.stopped #=> Time
    #   resp.data.remote_access_session.device #=> Types::Device
    #   resp.data.remote_access_session.device.arn #=> String
    #   resp.data.remote_access_session.device.name #=> String
    #   resp.data.remote_access_session.device.manufacturer #=> String
    #   resp.data.remote_access_session.device.model #=> String
    #   resp.data.remote_access_session.device.model_id #=> String
    #   resp.data.remote_access_session.device.form_factor #=> String, one of ["PHONE", "TABLET"]
    #   resp.data.remote_access_session.device.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.remote_access_session.device.os #=> String
    #   resp.data.remote_access_session.device.cpu #=> Types::CPU
    #   resp.data.remote_access_session.device.cpu.frequency #=> String
    #   resp.data.remote_access_session.device.cpu.architecture #=> String
    #   resp.data.remote_access_session.device.cpu.clock #=> Float
    #   resp.data.remote_access_session.device.resolution #=> Types::Resolution
    #   resp.data.remote_access_session.device.resolution.width #=> Integer
    #   resp.data.remote_access_session.device.resolution.height #=> Integer
    #   resp.data.remote_access_session.device.heap_size #=> Integer
    #   resp.data.remote_access_session.device.memory #=> Integer
    #   resp.data.remote_access_session.device.image #=> String
    #   resp.data.remote_access_session.device.carrier #=> String
    #   resp.data.remote_access_session.device.radio #=> String
    #   resp.data.remote_access_session.device.remote_access_enabled #=> Boolean
    #   resp.data.remote_access_session.device.remote_debug_enabled #=> Boolean
    #   resp.data.remote_access_session.device.fleet_type #=> String
    #   resp.data.remote_access_session.device.fleet_name #=> String
    #   resp.data.remote_access_session.device.instances #=> Array<DeviceInstance>
    #   resp.data.remote_access_session.device.instances[0] #=> Types::DeviceInstance
    #   resp.data.remote_access_session.device.instances[0].arn #=> String
    #   resp.data.remote_access_session.device.instances[0].device_arn #=> String
    #   resp.data.remote_access_session.device.instances[0].labels #=> Array<String>
    #   resp.data.remote_access_session.device.instances[0].labels[0] #=> String
    #   resp.data.remote_access_session.device.instances[0].status #=> String, one of ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"]
    #   resp.data.remote_access_session.device.instances[0].udid #=> String
    #   resp.data.remote_access_session.device.instances[0].instance_profile #=> Types::InstanceProfile
    #   resp.data.remote_access_session.device.instances[0].instance_profile.arn #=> String
    #   resp.data.remote_access_session.device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.data.remote_access_session.device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.remote_access_session.device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.remote_access_session.device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.data.remote_access_session.device.instances[0].instance_profile.name #=> String
    #   resp.data.remote_access_session.device.instances[0].instance_profile.description #=> String
    #   resp.data.remote_access_session.device.availability #=> String, one of ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #   resp.data.remote_access_session.instance_arn #=> String
    #   resp.data.remote_access_session.remote_debug_enabled #=> Boolean
    #   resp.data.remote_access_session.remote_record_enabled #=> Boolean
    #   resp.data.remote_access_session.remote_record_app_arn #=> String
    #   resp.data.remote_access_session.host_address #=> String
    #   resp.data.remote_access_session.client_id #=> String
    #   resp.data.remote_access_session.billing_method #=> String, one of ["METERED", "UNMETERED"]
    #   resp.data.remote_access_session.device_minutes #=> Types::DeviceMinutes
    #   resp.data.remote_access_session.device_minutes.total #=> Float
    #   resp.data.remote_access_session.device_minutes.metered #=> Float
    #   resp.data.remote_access_session.device_minutes.unmetered #=> Float
    #   resp.data.remote_access_session.endpoint #=> String
    #   resp.data.remote_access_session.device_udid #=> String
    #   resp.data.remote_access_session.interaction_mode #=> String, one of ["INTERACTIVE", "NO_VIDEO", "VIDEO_ONLY"]
    #   resp.data.remote_access_session.skip_app_resign #=> Boolean
    #
    def create_remote_access_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRemoteAccessSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRemoteAccessSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRemoteAccessSession
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateRemoteAccessSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRemoteAccessSession,
        stubs: @stubs,
        params_class: Params::CreateRemoteAccessSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_remote_access_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Selenium testing project. Projects are used to track <a>TestGridSession</a>
    #          instances.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTestGridProjectInput}.
    #
    # @option params [String] :name
    #   <p>Human-readable name of the Selenium testing project.</p>
    #
    # @option params [String] :description
    #   <p>Human-readable description of the project.</p>
    #
    # @option params [TestGridVpcConfig] :vpc_config
    #   <p>The VPC security groups and subnets that are attached to a project.</p>
    #
    # @return [Types::CreateTestGridProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_test_grid_project(
    #     name: 'name', # required
    #     description: 'description',
    #     vpc_config: {
    #       security_group_ids: [
    #         'member'
    #       ], # required
    #       subnet_ids: [
    #         'member'
    #       ], # required
    #       vpc_id: 'vpcId' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTestGridProjectOutput
    #   resp.data.test_grid_project #=> Types::TestGridProject
    #   resp.data.test_grid_project.arn #=> String
    #   resp.data.test_grid_project.name #=> String
    #   resp.data.test_grid_project.description #=> String
    #   resp.data.test_grid_project.vpc_config #=> Types::TestGridVpcConfig
    #   resp.data.test_grid_project.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.test_grid_project.vpc_config.security_group_ids[0] #=> String
    #   resp.data.test_grid_project.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.test_grid_project.vpc_config.subnet_ids[0] #=> String
    #   resp.data.test_grid_project.vpc_config.vpc_id #=> String
    #   resp.data.test_grid_project.created #=> Time
    #
    def create_test_grid_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTestGridProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTestGridProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTestGridProject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException, Errors::ArgumentException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateTestGridProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTestGridProject,
        stubs: @stubs,
        params_class: Params::CreateTestGridProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_test_grid_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a signed, short-term URL that can be passed to a Selenium <code>RemoteWebDriver</code>
    #          constructor.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTestGridUrlInput}.
    #
    # @option params [String] :project_arn
    #   <p>ARN (from <a>CreateTestGridProject</a> or <a>ListTestGridProjects</a>) to associate
    #            with the short-term URL. </p>
    #
    # @option params [Integer] :expires_in_seconds
    #   <p>Lifetime, in seconds, of the URL.</p>
    #
    # @return [Types::CreateTestGridUrlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_test_grid_url(
    #     project_arn: 'projectArn', # required
    #     expires_in_seconds: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTestGridUrlOutput
    #   resp.data.url #=> String
    #   resp.data.expires #=> Time
    #
    def create_test_grid_url(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTestGridUrlInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTestGridUrlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTestGridUrl
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceException, Errors::ArgumentException]),
        data_parser: Parsers::CreateTestGridUrl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTestGridUrl,
        stubs: @stubs,
        params_class: Params::CreateTestGridUrlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_test_grid_url
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uploads an app or test scripts.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUploadInput}.
    #
    # @option params [String] :project_arn
    #   <p>The ARN of the project for the upload.</p>
    #
    # @option params [String] :name
    #   <p>The upload's file name. The name should not contain any forward slashes (<code>/</code>). If you are
    #               uploading an iOS app, the file name must end with the <code>.ipa</code> extension. If you are uploading an
    #               Android app, the file name must end with the <code>.apk</code> extension. For all others, the file name must
    #               end with the <code>.zip</code> file extension.</p>
    #
    # @option params [String] :type
    #   <p>The upload's upload type.</p>
    #           <p>Must be one of the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>ANDROID_APP</p>
    #               </li>
    #               <li>
    #                   <p>IOS_APP</p>
    #               </li>
    #               <li>
    #                   <p>WEB_APP</p>
    #               </li>
    #               <li>
    #                   <p>EXTERNAL_DATA</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_PYTHON_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_NODE_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_RUBY_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_PYTHON_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_NODE_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_RUBY_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>CALABASH_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>INSTRUMENTATION_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>UIAUTOMATION_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>UIAUTOMATOR_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST_UI_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_JUNIT_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_TESTNG_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_PYTHON_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_NODE_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_RUBY_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_JUNIT_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_TESTNG_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_PYTHON_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_NODE_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_RUBY_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>INSTRUMENTATION_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST_UI_TEST_SPEC</p>
    #               </li>
    #            </ul>
    #           <p> If you call <code>CreateUpload</code> with <code>WEB_APP</code> specified, AWS
    #               Device Farm throws an <code>ArgumentException</code> error.</p>
    #
    # @option params [String] :content_type
    #   <p>The upload's content type (for example, <code>application/octet-stream</code>).</p>
    #
    # @return [Types::CreateUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_upload(
    #     project_arn: 'projectArn', # required
    #     name: 'name', # required
    #     type: 'ANDROID_APP', # required - accepts ["ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"]
    #     content_type: 'contentType'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUploadOutput
    #   resp.data.upload #=> Types::Upload
    #   resp.data.upload.arn #=> String
    #   resp.data.upload.name #=> String
    #   resp.data.upload.created #=> Time
    #   resp.data.upload.type #=> String, one of ["ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"]
    #   resp.data.upload.status #=> String, one of ["INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"]
    #   resp.data.upload.url #=> String
    #   resp.data.upload.metadata #=> String
    #   resp.data.upload.content_type #=> String
    #   resp.data.upload.message #=> String
    #   resp.data.upload.category #=> String, one of ["CURATED", "PRIVATE"]
    #
    def create_upload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUploadInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUploadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUpload
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUpload,
        stubs: @stubs,
        params_class: Params::CreateUploadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_upload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a configuration record in Device Farm for your Amazon Virtual Private Cloud
    #             (VPC) endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVPCEConfigurationInput}.
    #
    # @option params [String] :vpce_configuration_name
    #   <p>The friendly name you give to your VPC endpoint configuration, to manage your
    #               configurations more easily.</p>
    #
    # @option params [String] :vpce_service_name
    #   <p>The name of the VPC endpoint service running in your AWS account that you want Device Farm to test.</p>
    #
    # @option params [String] :service_dns_name
    #   <p>The DNS name of the service running in your VPC that you want Device Farm to
    #               test.</p>
    #
    # @option params [String] :vpce_configuration_description
    #   <p>An optional description that provides details about your VPC endpoint configuration.</p>
    #
    # @return [Types::CreateVPCEConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpce_configuration(
    #     vpce_configuration_name: 'vpceConfigurationName', # required
    #     vpce_service_name: 'vpceServiceName', # required
    #     service_dns_name: 'serviceDnsName', # required
    #     vpce_configuration_description: 'vpceConfigurationDescription'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVPCEConfigurationOutput
    #   resp.data.vpce_configuration #=> Types::VPCEConfiguration
    #   resp.data.vpce_configuration.arn #=> String
    #   resp.data.vpce_configuration.vpce_configuration_name #=> String
    #   resp.data.vpce_configuration.vpce_service_name #=> String
    #   resp.data.vpce_configuration.service_dns_name #=> String
    #   resp.data.vpce_configuration.vpce_configuration_description #=> String
    #
    def create_vpce_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVPCEConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVPCEConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVPCEConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateVPCEConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVPCEConfiguration,
        stubs: @stubs,
        params_class: Params::CreateVPCEConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_vpce_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a device pool given the pool ARN. Does not allow deletion of curated pools
    #             owned by the system.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDevicePoolInput}.
    #
    # @option params [String] :arn
    #   <p>Represents the Amazon Resource Name (ARN) of the Device Farm device pool to delete.</p>
    #
    # @return [Types::DeleteDevicePoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_device_pool(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDevicePoolOutput
    #
    def delete_device_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDevicePoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDevicePoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDevicePool
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteDevicePool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDevicePool,
        stubs: @stubs,
        params_class: Params::DeleteDevicePoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_device_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a profile that can be applied to one or more private device instances.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInstanceProfileInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the instance profile you are requesting to
    #               delete.</p>
    #
    # @return [Types::DeleteInstanceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance_profile(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInstanceProfileOutput
    #
    def delete_instance_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInstanceProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInstanceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInstanceProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteInstanceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInstanceProfile,
        stubs: @stubs,
        params_class: Params::DeleteInstanceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_instance_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a network profile.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteNetworkProfileInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN of the network profile to delete.</p>
    #
    # @return [Types::DeleteNetworkProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_network_profile(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteNetworkProfileOutput
    #
    def delete_network_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteNetworkProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteNetworkProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteNetworkProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteNetworkProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteNetworkProfile,
        stubs: @stubs,
        params_class: Params::DeleteNetworkProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_network_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an AWS Device Farm project, given the project ARN.</p>
    #         <p> Deleting this resource does not stop an in-progress run.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProjectInput}.
    #
    # @option params [String] :arn
    #   <p>Represents the Amazon Resource Name (ARN) of the Device Farm project to delete.</p>
    #
    # @return [Types::DeleteProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProjectOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
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

    # <p>Deletes a completed remote access session and its results.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRemoteAccessSessionInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the session for which you want to delete remote
    #               access.</p>
    #
    # @return [Types::DeleteRemoteAccessSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_remote_access_session(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRemoteAccessSessionOutput
    #
    def delete_remote_access_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRemoteAccessSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRemoteAccessSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRemoteAccessSession
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteRemoteAccessSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRemoteAccessSession,
        stubs: @stubs,
        params_class: Params::DeleteRemoteAccessSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_remote_access_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the run, given the run ARN.</p>
    #         <p> Deleting this resource does not stop an in-progress run.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRunInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) for the run to delete.</p>
    #
    # @return [Types::DeleteRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_run(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRunOutput
    #
    def delete_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRun
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRun,
        stubs: @stubs,
        params_class: Params::DeleteRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes a Selenium testing project and all content generated under it. </p>
    #          <important>
    #             <p>You cannot undo this operation.</p>
    #          </important>
    #          <note>
    #             <p>You cannot delete a project if it has active sessions.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteTestGridProjectInput}.
    #
    # @option params [String] :project_arn
    #   <p>The ARN of the project to delete, from <a>CreateTestGridProject</a> or <a>ListTestGridProjects</a>.</p>
    #
    # @return [Types::DeleteTestGridProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_test_grid_project(
    #     project_arn: 'projectArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTestGridProjectOutput
    #
    def delete_test_grid_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTestGridProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTestGridProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTestGridProject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceException, Errors::ArgumentException, Errors::CannotDeleteException]),
        data_parser: Parsers::DeleteTestGridProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTestGridProject,
        stubs: @stubs,
        params_class: Params::DeleteTestGridProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_test_grid_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an upload given the upload ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUploadInput}.
    #
    # @option params [String] :arn
    #   <p>Represents the Amazon Resource Name (ARN) of the Device Farm upload to delete.</p>
    #
    # @return [Types::DeleteUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_upload(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUploadOutput
    #
    def delete_upload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUploadInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUploadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUpload
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUpload,
        stubs: @stubs,
        params_class: Params::DeleteUploadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_upload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a configuration for your Amazon Virtual Private Cloud (VPC) endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVPCEConfigurationInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to
    #               delete.</p>
    #
    # @return [Types::DeleteVPCEConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpce_configuration(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVPCEConfigurationOutput
    #
    def delete_vpce_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVPCEConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVPCEConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVPCEConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidOperationException, Errors::ArgumentException, Errors::ServiceAccountException]),
        data_parser: Parsers::DeleteVPCEConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVPCEConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteVPCEConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_vpce_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the number of unmetered iOS or unmetered Android devices that have been purchased by the
    #             account.</p>
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
    #   resp.data.account_settings #=> Types::AccountSettings
    #   resp.data.account_settings.aws_account_number #=> String
    #   resp.data.account_settings.unmetered_devices #=> Hash<String, Integer>
    #   resp.data.account_settings.unmetered_devices['key'] #=> Integer
    #   resp.data.account_settings.unmetered_remote_access_devices #=> Hash<String, Integer>
    #   resp.data.account_settings.max_job_timeout_minutes #=> Integer
    #   resp.data.account_settings.trial_minutes #=> Types::TrialMinutes
    #   resp.data.account_settings.trial_minutes.total #=> Float
    #   resp.data.account_settings.trial_minutes.remaining #=> Float
    #   resp.data.account_settings.max_slots #=> Hash<String, Integer>
    #   resp.data.account_settings.max_slots['key'] #=> Integer
    #   resp.data.account_settings.default_job_timeout_minutes #=> Integer
    #   resp.data.account_settings.skip_app_resign #=> Boolean
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
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

    # <p>Gets information about a unique device type.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeviceInput}.
    #
    # @option params [String] :arn
    #   <p>The device type's ARN.</p>
    #
    # @return [Types::GetDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeviceOutput
    #   resp.data.device #=> Types::Device
    #   resp.data.device.arn #=> String
    #   resp.data.device.name #=> String
    #   resp.data.device.manufacturer #=> String
    #   resp.data.device.model #=> String
    #   resp.data.device.model_id #=> String
    #   resp.data.device.form_factor #=> String, one of ["PHONE", "TABLET"]
    #   resp.data.device.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.device.os #=> String
    #   resp.data.device.cpu #=> Types::CPU
    #   resp.data.device.cpu.frequency #=> String
    #   resp.data.device.cpu.architecture #=> String
    #   resp.data.device.cpu.clock #=> Float
    #   resp.data.device.resolution #=> Types::Resolution
    #   resp.data.device.resolution.width #=> Integer
    #   resp.data.device.resolution.height #=> Integer
    #   resp.data.device.heap_size #=> Integer
    #   resp.data.device.memory #=> Integer
    #   resp.data.device.image #=> String
    #   resp.data.device.carrier #=> String
    #   resp.data.device.radio #=> String
    #   resp.data.device.remote_access_enabled #=> Boolean
    #   resp.data.device.remote_debug_enabled #=> Boolean
    #   resp.data.device.fleet_type #=> String
    #   resp.data.device.fleet_name #=> String
    #   resp.data.device.instances #=> Array<DeviceInstance>
    #   resp.data.device.instances[0] #=> Types::DeviceInstance
    #   resp.data.device.instances[0].arn #=> String
    #   resp.data.device.instances[0].device_arn #=> String
    #   resp.data.device.instances[0].labels #=> Array<String>
    #   resp.data.device.instances[0].labels[0] #=> String
    #   resp.data.device.instances[0].status #=> String, one of ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"]
    #   resp.data.device.instances[0].udid #=> String
    #   resp.data.device.instances[0].instance_profile #=> Types::InstanceProfile
    #   resp.data.device.instances[0].instance_profile.arn #=> String
    #   resp.data.device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.data.device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.data.device.instances[0].instance_profile.name #=> String
    #   resp.data.device.instances[0].instance_profile.description #=> String
    #   resp.data.device.availability #=> String, one of ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #
    def get_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::GetDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDevice,
        stubs: @stubs,
        params_class: Params::GetDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a device instance that belongs to a private device fleet.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeviceInstanceInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the instance you're requesting information
    #               about.</p>
    #
    # @return [Types::GetDeviceInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_instance(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeviceInstanceOutput
    #   resp.data.device_instance #=> Types::DeviceInstance
    #   resp.data.device_instance.arn #=> String
    #   resp.data.device_instance.device_arn #=> String
    #   resp.data.device_instance.labels #=> Array<String>
    #   resp.data.device_instance.labels[0] #=> String
    #   resp.data.device_instance.status #=> String, one of ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"]
    #   resp.data.device_instance.udid #=> String
    #   resp.data.device_instance.instance_profile #=> Types::InstanceProfile
    #   resp.data.device_instance.instance_profile.arn #=> String
    #   resp.data.device_instance.instance_profile.package_cleanup #=> Boolean
    #   resp.data.device_instance.instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.device_instance.instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.device_instance.instance_profile.reboot_after_use #=> Boolean
    #   resp.data.device_instance.instance_profile.name #=> String
    #   resp.data.device_instance.instance_profile.description #=> String
    #
    def get_device_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeviceInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeviceInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeviceInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::GetDeviceInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeviceInstance,
        stubs: @stubs,
        params_class: Params::GetDeviceInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_device_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a device pool.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDevicePoolInput}.
    #
    # @option params [String] :arn
    #   <p>The device pool's ARN.</p>
    #
    # @return [Types::GetDevicePoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_pool(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDevicePoolOutput
    #   resp.data.device_pool #=> Types::DevicePool
    #   resp.data.device_pool.arn #=> String
    #   resp.data.device_pool.name #=> String
    #   resp.data.device_pool.description #=> String
    #   resp.data.device_pool.type #=> String, one of ["CURATED", "PRIVATE"]
    #   resp.data.device_pool.rules #=> Array<Rule>
    #   resp.data.device_pool.rules[0] #=> Types::Rule
    #   resp.data.device_pool.rules[0].attribute #=> String, one of ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"]
    #   resp.data.device_pool.rules[0].operator #=> String, one of ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"]
    #   resp.data.device_pool.rules[0].value #=> String
    #   resp.data.device_pool.max_devices #=> Integer
    #
    def get_device_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDevicePoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDevicePoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDevicePool
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::GetDevicePool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDevicePool,
        stubs: @stubs,
        params_class: Params::GetDevicePoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_device_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about compatibility with a device pool.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDevicePoolCompatibilityInput}.
    #
    # @option params [String] :device_pool_arn
    #   <p>The device pool's ARN.</p>
    #
    # @option params [String] :app_arn
    #   <p>The ARN of the app that is associated with the specified device pool.</p>
    #
    # @option params [String] :test_type
    #   <p>The test type for the specified device pool.</p>
    #           <p>Allowed values include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>BUILTIN_FUZZ.</p>
    #               </li>
    #               <li>
    #                   <p>BUILTIN_EXPLORER. For Android, an app explorer that traverses an Android app, interacting with
    #                       it and capturing screenshots at the same time.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_JUNIT.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_TESTNG.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_PYTHON.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_NODE.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_RUBY.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_JUNIT.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_TESTNG.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_PYTHON.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_NODE.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_RUBY.</p>
    #               </li>
    #               <li>
    #                   <p>CALABASH.</p>
    #               </li>
    #               <li>
    #                   <p>INSTRUMENTATION.</p>
    #               </li>
    #               <li>
    #                   <p>UIAUTOMATION.</p>
    #               </li>
    #               <li>
    #                   <p>UIAUTOMATOR.</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST.</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST_UI.</p>
    #               </li>
    #            </ul>
    #
    # @option params [ScheduleRunTest] :test
    #   <p>Information about the uploaded test to be run against the device pool.</p>
    #
    # @option params [ScheduleRunConfiguration] :configuration
    #   <p>An object that contains information about the settings for a run.</p>
    #
    # @return [Types::GetDevicePoolCompatibilityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_pool_compatibility(
    #     device_pool_arn: 'devicePoolArn', # required
    #     app_arn: 'appArn',
    #     test_type: 'BUILTIN_FUZZ', # accepts ["BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"]
    #     test: {
    #       type: 'BUILTIN_FUZZ', # required - accepts ["BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"]
    #       test_package_arn: 'testPackageArn',
    #       test_spec_arn: 'testSpecArn',
    #       filter: 'filter',
    #       parameters: {
    #         'key' => 'value'
    #       }
    #     },
    #     configuration: {
    #       extra_data_package_arn: 'extraDataPackageArn',
    #       network_profile_arn: 'networkProfileArn',
    #       locale: 'locale',
    #       location: {
    #         latitude: 1.0, # required
    #         longitude: 1.0 # required
    #       },
    #       vpce_configuration_arns: [
    #         'member'
    #       ],
    #       customer_artifact_paths: {
    #         ios_paths: [
    #           'member'
    #         ],
    #         android_paths: [
    #           'member'
    #         ],
    #         device_host_paths: [
    #           'member'
    #         ]
    #       },
    #       radios: {
    #         wifi: false,
    #         bluetooth: false,
    #         nfc: false,
    #         gps: false
    #       },
    #       billing_method: 'METERED' # accepts ["METERED", "UNMETERED"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDevicePoolCompatibilityOutput
    #   resp.data.compatible_devices #=> Array<DevicePoolCompatibilityResult>
    #   resp.data.compatible_devices[0] #=> Types::DevicePoolCompatibilityResult
    #   resp.data.compatible_devices[0].device #=> Types::Device
    #   resp.data.compatible_devices[0].device.arn #=> String
    #   resp.data.compatible_devices[0].device.name #=> String
    #   resp.data.compatible_devices[0].device.manufacturer #=> String
    #   resp.data.compatible_devices[0].device.model #=> String
    #   resp.data.compatible_devices[0].device.model_id #=> String
    #   resp.data.compatible_devices[0].device.form_factor #=> String, one of ["PHONE", "TABLET"]
    #   resp.data.compatible_devices[0].device.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.compatible_devices[0].device.os #=> String
    #   resp.data.compatible_devices[0].device.cpu #=> Types::CPU
    #   resp.data.compatible_devices[0].device.cpu.frequency #=> String
    #   resp.data.compatible_devices[0].device.cpu.architecture #=> String
    #   resp.data.compatible_devices[0].device.cpu.clock #=> Float
    #   resp.data.compatible_devices[0].device.resolution #=> Types::Resolution
    #   resp.data.compatible_devices[0].device.resolution.width #=> Integer
    #   resp.data.compatible_devices[0].device.resolution.height #=> Integer
    #   resp.data.compatible_devices[0].device.heap_size #=> Integer
    #   resp.data.compatible_devices[0].device.memory #=> Integer
    #   resp.data.compatible_devices[0].device.image #=> String
    #   resp.data.compatible_devices[0].device.carrier #=> String
    #   resp.data.compatible_devices[0].device.radio #=> String
    #   resp.data.compatible_devices[0].device.remote_access_enabled #=> Boolean
    #   resp.data.compatible_devices[0].device.remote_debug_enabled #=> Boolean
    #   resp.data.compatible_devices[0].device.fleet_type #=> String
    #   resp.data.compatible_devices[0].device.fleet_name #=> String
    #   resp.data.compatible_devices[0].device.instances #=> Array<DeviceInstance>
    #   resp.data.compatible_devices[0].device.instances[0] #=> Types::DeviceInstance
    #   resp.data.compatible_devices[0].device.instances[0].arn #=> String
    #   resp.data.compatible_devices[0].device.instances[0].device_arn #=> String
    #   resp.data.compatible_devices[0].device.instances[0].labels #=> Array<String>
    #   resp.data.compatible_devices[0].device.instances[0].labels[0] #=> String
    #   resp.data.compatible_devices[0].device.instances[0].status #=> String, one of ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"]
    #   resp.data.compatible_devices[0].device.instances[0].udid #=> String
    #   resp.data.compatible_devices[0].device.instances[0].instance_profile #=> Types::InstanceProfile
    #   resp.data.compatible_devices[0].device.instances[0].instance_profile.arn #=> String
    #   resp.data.compatible_devices[0].device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.data.compatible_devices[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.compatible_devices[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.compatible_devices[0].device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.data.compatible_devices[0].device.instances[0].instance_profile.name #=> String
    #   resp.data.compatible_devices[0].device.instances[0].instance_profile.description #=> String
    #   resp.data.compatible_devices[0].device.availability #=> String, one of ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #   resp.data.compatible_devices[0].compatible #=> Boolean
    #   resp.data.compatible_devices[0].incompatibility_messages #=> Array<IncompatibilityMessage>
    #   resp.data.compatible_devices[0].incompatibility_messages[0] #=> Types::IncompatibilityMessage
    #   resp.data.compatible_devices[0].incompatibility_messages[0].message #=> String
    #   resp.data.compatible_devices[0].incompatibility_messages[0].type #=> String, one of ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"]
    #   resp.data.incompatible_devices #=> Array<DevicePoolCompatibilityResult>
    #
    def get_device_pool_compatibility(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDevicePoolCompatibilityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDevicePoolCompatibilityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDevicePoolCompatibility
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::GetDevicePoolCompatibility
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDevicePoolCompatibility,
        stubs: @stubs,
        params_class: Params::GetDevicePoolCompatibilityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_device_pool_compatibility
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified instance profile.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInstanceProfileInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of an instance profile.</p>
    #
    # @return [Types::GetInstanceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_profile(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInstanceProfileOutput
    #   resp.data.instance_profile #=> Types::InstanceProfile
    #   resp.data.instance_profile.arn #=> String
    #   resp.data.instance_profile.package_cleanup #=> Boolean
    #   resp.data.instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.instance_profile.reboot_after_use #=> Boolean
    #   resp.data.instance_profile.name #=> String
    #   resp.data.instance_profile.description #=> String
    #
    def get_instance_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInstanceProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInstanceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInstanceProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::GetInstanceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInstanceProfile,
        stubs: @stubs,
        params_class: Params::GetInstanceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_instance_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a job.</p>
    #
    # @param [Hash] params
    #   See {Types::GetJobInput}.
    #
    # @option params [String] :arn
    #   <p>The job's ARN.</p>
    #
    # @return [Types::GetJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetJobOutput
    #   resp.data.job #=> Types::Job
    #   resp.data.job.arn #=> String
    #   resp.data.job.name #=> String
    #   resp.data.job.type #=> String, one of ["BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"]
    #   resp.data.job.created #=> Time
    #   resp.data.job.status #=> String, one of ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"]
    #   resp.data.job.result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.job.started #=> Time
    #   resp.data.job.stopped #=> Time
    #   resp.data.job.counters #=> Types::Counters
    #   resp.data.job.counters.total #=> Integer
    #   resp.data.job.counters.passed #=> Integer
    #   resp.data.job.counters.failed #=> Integer
    #   resp.data.job.counters.warned #=> Integer
    #   resp.data.job.counters.errored #=> Integer
    #   resp.data.job.counters.stopped #=> Integer
    #   resp.data.job.counters.skipped #=> Integer
    #   resp.data.job.message #=> String
    #   resp.data.job.device #=> Types::Device
    #   resp.data.job.device.arn #=> String
    #   resp.data.job.device.name #=> String
    #   resp.data.job.device.manufacturer #=> String
    #   resp.data.job.device.model #=> String
    #   resp.data.job.device.model_id #=> String
    #   resp.data.job.device.form_factor #=> String, one of ["PHONE", "TABLET"]
    #   resp.data.job.device.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.job.device.os #=> String
    #   resp.data.job.device.cpu #=> Types::CPU
    #   resp.data.job.device.cpu.frequency #=> String
    #   resp.data.job.device.cpu.architecture #=> String
    #   resp.data.job.device.cpu.clock #=> Float
    #   resp.data.job.device.resolution #=> Types::Resolution
    #   resp.data.job.device.resolution.width #=> Integer
    #   resp.data.job.device.resolution.height #=> Integer
    #   resp.data.job.device.heap_size #=> Integer
    #   resp.data.job.device.memory #=> Integer
    #   resp.data.job.device.image #=> String
    #   resp.data.job.device.carrier #=> String
    #   resp.data.job.device.radio #=> String
    #   resp.data.job.device.remote_access_enabled #=> Boolean
    #   resp.data.job.device.remote_debug_enabled #=> Boolean
    #   resp.data.job.device.fleet_type #=> String
    #   resp.data.job.device.fleet_name #=> String
    #   resp.data.job.device.instances #=> Array<DeviceInstance>
    #   resp.data.job.device.instances[0] #=> Types::DeviceInstance
    #   resp.data.job.device.instances[0].arn #=> String
    #   resp.data.job.device.instances[0].device_arn #=> String
    #   resp.data.job.device.instances[0].labels #=> Array<String>
    #   resp.data.job.device.instances[0].labels[0] #=> String
    #   resp.data.job.device.instances[0].status #=> String, one of ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"]
    #   resp.data.job.device.instances[0].udid #=> String
    #   resp.data.job.device.instances[0].instance_profile #=> Types::InstanceProfile
    #   resp.data.job.device.instances[0].instance_profile.arn #=> String
    #   resp.data.job.device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.data.job.device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.job.device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.job.device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.data.job.device.instances[0].instance_profile.name #=> String
    #   resp.data.job.device.instances[0].instance_profile.description #=> String
    #   resp.data.job.device.availability #=> String, one of ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #   resp.data.job.instance_arn #=> String
    #   resp.data.job.device_minutes #=> Types::DeviceMinutes
    #   resp.data.job.device_minutes.total #=> Float
    #   resp.data.job.device_minutes.metered #=> Float
    #   resp.data.job.device_minutes.unmetered #=> Float
    #   resp.data.job.video_endpoint #=> String
    #   resp.data.job.video_capture #=> Boolean
    #
    def get_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::GetJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetJob,
        stubs: @stubs,
        params_class: Params::GetJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a network profile.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNetworkProfileInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN of the network profile to return information about.</p>
    #
    # @return [Types::GetNetworkProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_profile(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNetworkProfileOutput
    #   resp.data.network_profile #=> Types::NetworkProfile
    #   resp.data.network_profile.arn #=> String
    #   resp.data.network_profile.name #=> String
    #   resp.data.network_profile.description #=> String
    #   resp.data.network_profile.type #=> String, one of ["CURATED", "PRIVATE"]
    #   resp.data.network_profile.uplink_bandwidth_bits #=> Integer
    #   resp.data.network_profile.downlink_bandwidth_bits #=> Integer
    #   resp.data.network_profile.uplink_delay_ms #=> Integer
    #   resp.data.network_profile.downlink_delay_ms #=> Integer
    #   resp.data.network_profile.uplink_jitter_ms #=> Integer
    #   resp.data.network_profile.downlink_jitter_ms #=> Integer
    #   resp.data.network_profile.uplink_loss_percent #=> Integer
    #   resp.data.network_profile.downlink_loss_percent #=> Integer
    #
    def get_network_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNetworkProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNetworkProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNetworkProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::GetNetworkProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNetworkProfile,
        stubs: @stubs,
        params_class: Params::GetNetworkProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_network_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the current status and future status of all offerings purchased by an AWS account. The response
    #             indicates how many offerings are currently available and the offerings that will be available in the next
    #             period. The API returns a <code>NotEligible</code> error if the user is not permitted to invoke the
    #             operation. If you must be able to invoke this operation, contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOfferingStatusInput}.
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::GetOfferingStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_offering_status(
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOfferingStatusOutput
    #   resp.data.current #=> Hash<String, OfferingStatus>
    #   resp.data.current['key'] #=> Types::OfferingStatus
    #   resp.data.current['key'].type #=> String, one of ["PURCHASE", "RENEW", "SYSTEM"]
    #   resp.data.current['key'].offering #=> Types::Offering
    #   resp.data.current['key'].offering.id #=> String
    #   resp.data.current['key'].offering.description #=> String
    #   resp.data.current['key'].offering.type #=> String, one of ["RECURRING"]
    #   resp.data.current['key'].offering.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.current['key'].offering.recurring_charges #=> Array<RecurringCharge>
    #   resp.data.current['key'].offering.recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.current['key'].offering.recurring_charges[0].cost #=> Types::MonetaryAmount
    #   resp.data.current['key'].offering.recurring_charges[0].cost.amount #=> Float
    #   resp.data.current['key'].offering.recurring_charges[0].cost.currency_code #=> String, one of ["USD"]
    #   resp.data.current['key'].offering.recurring_charges[0].frequency #=> String, one of ["MONTHLY"]
    #   resp.data.current['key'].quantity #=> Integer
    #   resp.data.current['key'].effective_on #=> Time
    #   resp.data.next_period #=> Hash<String, OfferingStatus>
    #   resp.data.next_token #=> String
    #
    def get_offering_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOfferingStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOfferingStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOfferingStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::NotEligibleException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::GetOfferingStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOfferingStatus,
        stubs: @stubs,
        params_class: Params::GetOfferingStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_offering_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a project.</p>
    #
    # @param [Hash] params
    #   See {Types::GetProjectInput}.
    #
    # @option params [String] :arn
    #   <p>The project's ARN.</p>
    #
    # @return [Types::GetProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_project(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetProjectOutput
    #   resp.data.project #=> Types::Project
    #   resp.data.project.arn #=> String
    #   resp.data.project.name #=> String
    #   resp.data.project.default_job_timeout_minutes #=> Integer
    #   resp.data.project.created #=> Time
    #
    def get_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetProject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::GetProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetProject,
        stubs: @stubs,
        params_class: Params::GetProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a link to a currently running remote access session.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRemoteAccessSessionInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the remote access session about which you want to
    #               get session information.</p>
    #
    # @return [Types::GetRemoteAccessSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_remote_access_session(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRemoteAccessSessionOutput
    #   resp.data.remote_access_session #=> Types::RemoteAccessSession
    #   resp.data.remote_access_session.arn #=> String
    #   resp.data.remote_access_session.name #=> String
    #   resp.data.remote_access_session.created #=> Time
    #   resp.data.remote_access_session.status #=> String, one of ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"]
    #   resp.data.remote_access_session.result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.remote_access_session.message #=> String
    #   resp.data.remote_access_session.started #=> Time
    #   resp.data.remote_access_session.stopped #=> Time
    #   resp.data.remote_access_session.device #=> Types::Device
    #   resp.data.remote_access_session.device.arn #=> String
    #   resp.data.remote_access_session.device.name #=> String
    #   resp.data.remote_access_session.device.manufacturer #=> String
    #   resp.data.remote_access_session.device.model #=> String
    #   resp.data.remote_access_session.device.model_id #=> String
    #   resp.data.remote_access_session.device.form_factor #=> String, one of ["PHONE", "TABLET"]
    #   resp.data.remote_access_session.device.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.remote_access_session.device.os #=> String
    #   resp.data.remote_access_session.device.cpu #=> Types::CPU
    #   resp.data.remote_access_session.device.cpu.frequency #=> String
    #   resp.data.remote_access_session.device.cpu.architecture #=> String
    #   resp.data.remote_access_session.device.cpu.clock #=> Float
    #   resp.data.remote_access_session.device.resolution #=> Types::Resolution
    #   resp.data.remote_access_session.device.resolution.width #=> Integer
    #   resp.data.remote_access_session.device.resolution.height #=> Integer
    #   resp.data.remote_access_session.device.heap_size #=> Integer
    #   resp.data.remote_access_session.device.memory #=> Integer
    #   resp.data.remote_access_session.device.image #=> String
    #   resp.data.remote_access_session.device.carrier #=> String
    #   resp.data.remote_access_session.device.radio #=> String
    #   resp.data.remote_access_session.device.remote_access_enabled #=> Boolean
    #   resp.data.remote_access_session.device.remote_debug_enabled #=> Boolean
    #   resp.data.remote_access_session.device.fleet_type #=> String
    #   resp.data.remote_access_session.device.fleet_name #=> String
    #   resp.data.remote_access_session.device.instances #=> Array<DeviceInstance>
    #   resp.data.remote_access_session.device.instances[0] #=> Types::DeviceInstance
    #   resp.data.remote_access_session.device.instances[0].arn #=> String
    #   resp.data.remote_access_session.device.instances[0].device_arn #=> String
    #   resp.data.remote_access_session.device.instances[0].labels #=> Array<String>
    #   resp.data.remote_access_session.device.instances[0].labels[0] #=> String
    #   resp.data.remote_access_session.device.instances[0].status #=> String, one of ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"]
    #   resp.data.remote_access_session.device.instances[0].udid #=> String
    #   resp.data.remote_access_session.device.instances[0].instance_profile #=> Types::InstanceProfile
    #   resp.data.remote_access_session.device.instances[0].instance_profile.arn #=> String
    #   resp.data.remote_access_session.device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.data.remote_access_session.device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.remote_access_session.device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.remote_access_session.device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.data.remote_access_session.device.instances[0].instance_profile.name #=> String
    #   resp.data.remote_access_session.device.instances[0].instance_profile.description #=> String
    #   resp.data.remote_access_session.device.availability #=> String, one of ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #   resp.data.remote_access_session.instance_arn #=> String
    #   resp.data.remote_access_session.remote_debug_enabled #=> Boolean
    #   resp.data.remote_access_session.remote_record_enabled #=> Boolean
    #   resp.data.remote_access_session.remote_record_app_arn #=> String
    #   resp.data.remote_access_session.host_address #=> String
    #   resp.data.remote_access_session.client_id #=> String
    #   resp.data.remote_access_session.billing_method #=> String, one of ["METERED", "UNMETERED"]
    #   resp.data.remote_access_session.device_minutes #=> Types::DeviceMinutes
    #   resp.data.remote_access_session.device_minutes.total #=> Float
    #   resp.data.remote_access_session.device_minutes.metered #=> Float
    #   resp.data.remote_access_session.device_minutes.unmetered #=> Float
    #   resp.data.remote_access_session.endpoint #=> String
    #   resp.data.remote_access_session.device_udid #=> String
    #   resp.data.remote_access_session.interaction_mode #=> String, one of ["INTERACTIVE", "NO_VIDEO", "VIDEO_ONLY"]
    #   resp.data.remote_access_session.skip_app_resign #=> Boolean
    #
    def get_remote_access_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRemoteAccessSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRemoteAccessSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRemoteAccessSession
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::GetRemoteAccessSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRemoteAccessSession,
        stubs: @stubs,
        params_class: Params::GetRemoteAccessSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_remote_access_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a run.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRunInput}.
    #
    # @option params [String] :arn
    #   <p>The run's ARN.</p>
    #
    # @return [Types::GetRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_run(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRunOutput
    #   resp.data.run #=> Types::Run
    #   resp.data.run.arn #=> String
    #   resp.data.run.name #=> String
    #   resp.data.run.type #=> String, one of ["BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"]
    #   resp.data.run.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.run.created #=> Time
    #   resp.data.run.status #=> String, one of ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"]
    #   resp.data.run.result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.run.started #=> Time
    #   resp.data.run.stopped #=> Time
    #   resp.data.run.counters #=> Types::Counters
    #   resp.data.run.counters.total #=> Integer
    #   resp.data.run.counters.passed #=> Integer
    #   resp.data.run.counters.failed #=> Integer
    #   resp.data.run.counters.warned #=> Integer
    #   resp.data.run.counters.errored #=> Integer
    #   resp.data.run.counters.stopped #=> Integer
    #   resp.data.run.counters.skipped #=> Integer
    #   resp.data.run.message #=> String
    #   resp.data.run.total_jobs #=> Integer
    #   resp.data.run.completed_jobs #=> Integer
    #   resp.data.run.billing_method #=> String, one of ["METERED", "UNMETERED"]
    #   resp.data.run.device_minutes #=> Types::DeviceMinutes
    #   resp.data.run.device_minutes.total #=> Float
    #   resp.data.run.device_minutes.metered #=> Float
    #   resp.data.run.device_minutes.unmetered #=> Float
    #   resp.data.run.network_profile #=> Types::NetworkProfile
    #   resp.data.run.network_profile.arn #=> String
    #   resp.data.run.network_profile.name #=> String
    #   resp.data.run.network_profile.description #=> String
    #   resp.data.run.network_profile.type #=> String, one of ["CURATED", "PRIVATE"]
    #   resp.data.run.network_profile.uplink_bandwidth_bits #=> Integer
    #   resp.data.run.network_profile.downlink_bandwidth_bits #=> Integer
    #   resp.data.run.network_profile.uplink_delay_ms #=> Integer
    #   resp.data.run.network_profile.downlink_delay_ms #=> Integer
    #   resp.data.run.network_profile.uplink_jitter_ms #=> Integer
    #   resp.data.run.network_profile.downlink_jitter_ms #=> Integer
    #   resp.data.run.network_profile.uplink_loss_percent #=> Integer
    #   resp.data.run.network_profile.downlink_loss_percent #=> Integer
    #   resp.data.run.parsing_result_url #=> String
    #   resp.data.run.result_code #=> String, one of ["PARSING_FAILED", "VPC_ENDPOINT_SETUP_FAILED"]
    #   resp.data.run.seed #=> Integer
    #   resp.data.run.app_upload #=> String
    #   resp.data.run.event_count #=> Integer
    #   resp.data.run.job_timeout_minutes #=> Integer
    #   resp.data.run.device_pool_arn #=> String
    #   resp.data.run.locale #=> String
    #   resp.data.run.radios #=> Types::Radios
    #   resp.data.run.radios.wifi #=> Boolean
    #   resp.data.run.radios.bluetooth #=> Boolean
    #   resp.data.run.radios.nfc #=> Boolean
    #   resp.data.run.radios.gps #=> Boolean
    #   resp.data.run.location #=> Types::Location
    #   resp.data.run.location.latitude #=> Float
    #   resp.data.run.location.longitude #=> Float
    #   resp.data.run.customer_artifact_paths #=> Types::CustomerArtifactPaths
    #   resp.data.run.customer_artifact_paths.ios_paths #=> Array<String>
    #   resp.data.run.customer_artifact_paths.ios_paths[0] #=> String
    #   resp.data.run.customer_artifact_paths.android_paths #=> Array<String>
    #   resp.data.run.customer_artifact_paths.android_paths[0] #=> String
    #   resp.data.run.customer_artifact_paths.device_host_paths #=> Array<String>
    #   resp.data.run.customer_artifact_paths.device_host_paths[0] #=> String
    #   resp.data.run.web_url #=> String
    #   resp.data.run.skip_app_resign #=> Boolean
    #   resp.data.run.test_spec_arn #=> String
    #   resp.data.run.device_selection_result #=> Types::DeviceSelectionResult
    #   resp.data.run.device_selection_result.filters #=> Array<DeviceFilter>
    #   resp.data.run.device_selection_result.filters[0] #=> Types::DeviceFilter
    #   resp.data.run.device_selection_result.filters[0].attribute #=> String, one of ["ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"]
    #   resp.data.run.device_selection_result.filters[0].operator #=> String, one of ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"]
    #   resp.data.run.device_selection_result.filters[0].values #=> Array<String>
    #   resp.data.run.device_selection_result.filters[0].values[0] #=> String
    #   resp.data.run.device_selection_result.matched_devices_count #=> Integer
    #   resp.data.run.device_selection_result.max_devices #=> Integer
    #
    def get_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRun
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::GetRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRun,
        stubs: @stubs,
        params_class: Params::GetRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a suite.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSuiteInput}.
    #
    # @option params [String] :arn
    #   <p>The suite's ARN.</p>
    #
    # @return [Types::GetSuiteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_suite(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSuiteOutput
    #   resp.data.suite #=> Types::Suite
    #   resp.data.suite.arn #=> String
    #   resp.data.suite.name #=> String
    #   resp.data.suite.type #=> String, one of ["BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"]
    #   resp.data.suite.created #=> Time
    #   resp.data.suite.status #=> String, one of ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"]
    #   resp.data.suite.result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.suite.started #=> Time
    #   resp.data.suite.stopped #=> Time
    #   resp.data.suite.counters #=> Types::Counters
    #   resp.data.suite.counters.total #=> Integer
    #   resp.data.suite.counters.passed #=> Integer
    #   resp.data.suite.counters.failed #=> Integer
    #   resp.data.suite.counters.warned #=> Integer
    #   resp.data.suite.counters.errored #=> Integer
    #   resp.data.suite.counters.stopped #=> Integer
    #   resp.data.suite.counters.skipped #=> Integer
    #   resp.data.suite.message #=> String
    #   resp.data.suite.device_minutes #=> Types::DeviceMinutes
    #   resp.data.suite.device_minutes.total #=> Float
    #   resp.data.suite.device_minutes.metered #=> Float
    #   resp.data.suite.device_minutes.unmetered #=> Float
    #
    def get_suite(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSuiteInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSuiteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSuite
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::GetSuite
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSuite,
        stubs: @stubs,
        params_class: Params::GetSuiteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_suite
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a test.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTestInput}.
    #
    # @option params [String] :arn
    #   <p>The test's ARN.</p>
    #
    # @return [Types::GetTestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_test(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTestOutput
    #   resp.data.test #=> Types::Test
    #   resp.data.test.arn #=> String
    #   resp.data.test.name #=> String
    #   resp.data.test.type #=> String, one of ["BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"]
    #   resp.data.test.created #=> Time
    #   resp.data.test.status #=> String, one of ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"]
    #   resp.data.test.result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.test.started #=> Time
    #   resp.data.test.stopped #=> Time
    #   resp.data.test.counters #=> Types::Counters
    #   resp.data.test.counters.total #=> Integer
    #   resp.data.test.counters.passed #=> Integer
    #   resp.data.test.counters.failed #=> Integer
    #   resp.data.test.counters.warned #=> Integer
    #   resp.data.test.counters.errored #=> Integer
    #   resp.data.test.counters.stopped #=> Integer
    #   resp.data.test.counters.skipped #=> Integer
    #   resp.data.test.message #=> String
    #   resp.data.test.device_minutes #=> Types::DeviceMinutes
    #   resp.data.test.device_minutes.total #=> Float
    #   resp.data.test.device_minutes.metered #=> Float
    #   resp.data.test.device_minutes.unmetered #=> Float
    #
    def get_test(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTest
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::GetTest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTest,
        stubs: @stubs,
        params_class: Params::GetTestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_test
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a Selenium testing project.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTestGridProjectInput}.
    #
    # @option params [String] :project_arn
    #   <p>The ARN of the Selenium testing project, from either <a>CreateTestGridProject</a> or <a>ListTestGridProjects</a>.</p>
    #
    # @return [Types::GetTestGridProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_test_grid_project(
    #     project_arn: 'projectArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTestGridProjectOutput
    #   resp.data.test_grid_project #=> Types::TestGridProject
    #   resp.data.test_grid_project.arn #=> String
    #   resp.data.test_grid_project.name #=> String
    #   resp.data.test_grid_project.description #=> String
    #   resp.data.test_grid_project.vpc_config #=> Types::TestGridVpcConfig
    #   resp.data.test_grid_project.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.test_grid_project.vpc_config.security_group_ids[0] #=> String
    #   resp.data.test_grid_project.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.test_grid_project.vpc_config.subnet_ids[0] #=> String
    #   resp.data.test_grid_project.vpc_config.vpc_id #=> String
    #   resp.data.test_grid_project.created #=> Time
    #
    def get_test_grid_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTestGridProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTestGridProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTestGridProject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceException, Errors::ArgumentException]),
        data_parser: Parsers::GetTestGridProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTestGridProject,
        stubs: @stubs,
        params_class: Params::GetTestGridProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_test_grid_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A session is an instance of a browser created through a <code>RemoteWebDriver</code> with the URL from <a>CreateTestGridUrlResult$url</a>. You can use the following to look up sessions:</p>
    #          <ul>
    #             <li>
    #                <p>The session ARN (<a>GetTestGridSessionRequest$sessionArn</a>).</p>
    #             </li>
    #             <li>
    #                <p>The project ARN and a session ID (<a>GetTestGridSessionRequest$projectArn</a> and <a>GetTestGridSessionRequest$sessionId</a>).</p>
    #             </li>
    #          </ul>
    #          <p></p>
    #
    # @param [Hash] params
    #   See {Types::GetTestGridSessionInput}.
    #
    # @option params [String] :project_arn
    #   <p>The ARN for the project that this session belongs to. See <a>CreateTestGridProject</a> and <a>ListTestGridProjects</a>.</p>
    #
    # @option params [String] :session_id
    #   <p>An ID associated with this session.</p>
    #
    # @option params [String] :session_arn
    #   <p>An ARN that uniquely identifies a <a>TestGridSession</a>.</p>
    #
    # @return [Types::GetTestGridSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_test_grid_session(
    #     project_arn: 'projectArn',
    #     session_id: 'sessionId',
    #     session_arn: 'sessionArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTestGridSessionOutput
    #   resp.data.test_grid_session #=> Types::TestGridSession
    #   resp.data.test_grid_session.arn #=> String
    #   resp.data.test_grid_session.status #=> String, one of ["ACTIVE", "CLOSED", "ERRORED"]
    #   resp.data.test_grid_session.created #=> Time
    #   resp.data.test_grid_session.ended #=> Time
    #   resp.data.test_grid_session.billing_minutes #=> Float
    #   resp.data.test_grid_session.selenium_properties #=> String
    #
    def get_test_grid_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTestGridSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTestGridSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTestGridSession
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceException, Errors::ArgumentException]),
        data_parser: Parsers::GetTestGridSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTestGridSession,
        stubs: @stubs,
        params_class: Params::GetTestGridSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_test_grid_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about an upload.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUploadInput}.
    #
    # @option params [String] :arn
    #   <p>The upload's ARN.</p>
    #
    # @return [Types::GetUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_upload(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUploadOutput
    #   resp.data.upload #=> Types::Upload
    #   resp.data.upload.arn #=> String
    #   resp.data.upload.name #=> String
    #   resp.data.upload.created #=> Time
    #   resp.data.upload.type #=> String, one of ["ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"]
    #   resp.data.upload.status #=> String, one of ["INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"]
    #   resp.data.upload.url #=> String
    #   resp.data.upload.metadata #=> String
    #   resp.data.upload.content_type #=> String
    #   resp.data.upload.message #=> String
    #   resp.data.upload.category #=> String, one of ["CURATED", "PRIVATE"]
    #
    def get_upload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUploadInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUploadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUpload
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::GetUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUpload,
        stubs: @stubs,
        params_class: Params::GetUploadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_upload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the configuration settings for your Amazon Virtual Private
    #             Cloud (VPC) endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVPCEConfigurationInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to
    #               describe.</p>
    #
    # @return [Types::GetVPCEConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vpce_configuration(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVPCEConfigurationOutput
    #   resp.data.vpce_configuration #=> Types::VPCEConfiguration
    #   resp.data.vpce_configuration.arn #=> String
    #   resp.data.vpce_configuration.vpce_configuration_name #=> String
    #   resp.data.vpce_configuration.vpce_service_name #=> String
    #   resp.data.vpce_configuration.service_dns_name #=> String
    #   resp.data.vpce_configuration.vpce_configuration_description #=> String
    #
    def get_vpce_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVPCEConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVPCEConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVPCEConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException]),
        data_parser: Parsers::GetVPCEConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVPCEConfiguration,
        stubs: @stubs,
        params_class: Params::GetVPCEConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_vpce_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Installs an application to the device in a remote access session. For Android
    #             applications, the file must be in .apk format. For iOS applications, the file must be in
    #             .ipa format.</p>
    #
    # @param [Hash] params
    #   See {Types::InstallToRemoteAccessSessionInput}.
    #
    # @option params [String] :remote_access_session_arn
    #   <p>The Amazon Resource Name (ARN) of the remote access session about which you are
    #               requesting information.</p>
    #
    # @option params [String] :app_arn
    #   <p>The ARN of the app about which you are requesting information.</p>
    #
    # @return [Types::InstallToRemoteAccessSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.install_to_remote_access_session(
    #     remote_access_session_arn: 'remoteAccessSessionArn', # required
    #     app_arn: 'appArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InstallToRemoteAccessSessionOutput
    #   resp.data.app_upload #=> Types::Upload
    #   resp.data.app_upload.arn #=> String
    #   resp.data.app_upload.name #=> String
    #   resp.data.app_upload.created #=> Time
    #   resp.data.app_upload.type #=> String, one of ["ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"]
    #   resp.data.app_upload.status #=> String, one of ["INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"]
    #   resp.data.app_upload.url #=> String
    #   resp.data.app_upload.metadata #=> String
    #   resp.data.app_upload.content_type #=> String
    #   resp.data.app_upload.message #=> String
    #   resp.data.app_upload.category #=> String, one of ["CURATED", "PRIVATE"]
    #
    def install_to_remote_access_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InstallToRemoteAccessSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InstallToRemoteAccessSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InstallToRemoteAccessSession
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::InstallToRemoteAccessSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InstallToRemoteAccessSession,
        stubs: @stubs,
        params_class: Params::InstallToRemoteAccessSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :install_to_remote_access_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about artifacts.</p>
    #
    # @param [Hash] params
    #   See {Types::ListArtifactsInput}.
    #
    # @option params [String] :arn
    #   <p>The run, job, suite, or test ARN.</p>
    #
    # @option params [String] :type
    #   <p>The artifacts' type.</p>
    #           <p>Allowed values include:</p>
    #           <ul>
    #               <li>
    #                   <p>FILE</p>
    #               </li>
    #               <li>
    #                   <p>LOG</p>
    #               </li>
    #               <li>
    #                   <p>SCREENSHOT</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::ListArtifactsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_artifacts(
    #     arn: 'arn', # required
    #     type: 'SCREENSHOT', # required - accepts ["SCREENSHOT", "FILE", "LOG"]
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListArtifactsOutput
    #   resp.data.artifacts #=> Array<Artifact>
    #   resp.data.artifacts[0] #=> Types::Artifact
    #   resp.data.artifacts[0].arn #=> String
    #   resp.data.artifacts[0].name #=> String
    #   resp.data.artifacts[0].type #=> String, one of ["UNKNOWN", "SCREENSHOT", "DEVICE_LOG", "MESSAGE_LOG", "VIDEO_LOG", "RESULT_LOG", "SERVICE_LOG", "WEBKIT_LOG", "INSTRUMENTATION_OUTPUT", "EXERCISER_MONKEY_OUTPUT", "CALABASH_JSON_OUTPUT", "CALABASH_PRETTY_OUTPUT", "CALABASH_STANDARD_OUTPUT", "CALABASH_JAVA_XML_OUTPUT", "AUTOMATION_OUTPUT", "APPIUM_SERVER_OUTPUT", "APPIUM_JAVA_OUTPUT", "APPIUM_JAVA_XML_OUTPUT", "APPIUM_PYTHON_OUTPUT", "APPIUM_PYTHON_XML_OUTPUT", "EXPLORER_EVENT_LOG", "EXPLORER_SUMMARY_LOG", "APPLICATION_CRASH_REPORT", "XCTEST_LOG", "VIDEO", "CUSTOMER_ARTIFACT", "CUSTOMER_ARTIFACT_LOG", "TESTSPEC_OUTPUT"]
    #   resp.data.artifacts[0].extension #=> String
    #   resp.data.artifacts[0].url #=> String
    #   resp.data.next_token #=> String
    #
    def list_artifacts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListArtifactsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListArtifactsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListArtifacts
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListArtifacts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListArtifacts,
        stubs: @stubs,
        params_class: Params::ListArtifactsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_artifacts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the private device instances associated with one or more AWS
    #             accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDeviceInstancesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>An integer that specifies the maximum number of items you want to return in the API response.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    # @return [Types::ListDeviceInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_instances(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeviceInstancesOutput
    #   resp.data.device_instances #=> Array<DeviceInstance>
    #   resp.data.device_instances[0] #=> Types::DeviceInstance
    #   resp.data.device_instances[0].arn #=> String
    #   resp.data.device_instances[0].device_arn #=> String
    #   resp.data.device_instances[0].labels #=> Array<String>
    #   resp.data.device_instances[0].labels[0] #=> String
    #   resp.data.device_instances[0].status #=> String, one of ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"]
    #   resp.data.device_instances[0].udid #=> String
    #   resp.data.device_instances[0].instance_profile #=> Types::InstanceProfile
    #   resp.data.device_instances[0].instance_profile.arn #=> String
    #   resp.data.device_instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.data.device_instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.device_instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.device_instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.data.device_instances[0].instance_profile.name #=> String
    #   resp.data.device_instances[0].instance_profile.description #=> String
    #   resp.data.next_token #=> String
    #
    def list_device_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeviceInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeviceInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeviceInstances
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListDeviceInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeviceInstances,
        stubs: @stubs,
        params_class: Params::ListDeviceInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_device_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about device pools.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDevicePoolsInput}.
    #
    # @option params [String] :arn
    #   <p>The project ARN.</p>
    #
    # @option params [String] :type
    #   <p>The device pools' type.</p>
    #           <p>Allowed values include:</p>
    #           <ul>
    #               <li>
    #                   <p>CURATED: A device pool that is created and managed by AWS Device
    #                       Farm.</p>
    #               </li>
    #               <li>
    #                   <p>PRIVATE: A device pool that is created and managed by the device pool
    #                       developer.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::ListDevicePoolsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_pools(
    #     arn: 'arn', # required
    #     type: 'CURATED', # accepts ["CURATED", "PRIVATE"]
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDevicePoolsOutput
    #   resp.data.device_pools #=> Array<DevicePool>
    #   resp.data.device_pools[0] #=> Types::DevicePool
    #   resp.data.device_pools[0].arn #=> String
    #   resp.data.device_pools[0].name #=> String
    #   resp.data.device_pools[0].description #=> String
    #   resp.data.device_pools[0].type #=> String, one of ["CURATED", "PRIVATE"]
    #   resp.data.device_pools[0].rules #=> Array<Rule>
    #   resp.data.device_pools[0].rules[0] #=> Types::Rule
    #   resp.data.device_pools[0].rules[0].attribute #=> String, one of ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"]
    #   resp.data.device_pools[0].rules[0].operator #=> String, one of ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"]
    #   resp.data.device_pools[0].rules[0].value #=> String
    #   resp.data.device_pools[0].max_devices #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_device_pools(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDevicePoolsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDevicePoolsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDevicePools
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListDevicePools
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDevicePools,
        stubs: @stubs,
        params_class: Params::ListDevicePoolsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_device_pools
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about unique device types.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDevicesInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the project.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @option params [Array<DeviceFilter>] :filters
    #   <p>Used to select a set of devices. A filter is made up of an attribute, an operator, and
    #               one or more values.</p>
    #           <ul>
    #               <li>
    #                   <p>Attribute: The aspect of a device such as platform or model used as the
    #                       selection criteria in a device filter.</p>
    #                   <p>Allowed values include:</p>
    #                   <ul>
    #                     <li>
    #                           <p>ARN: The Amazon Resource Name (ARN) of the device (for example,
    #                                   <code>arn:aws:devicefarm:us-west-2::device:12345Example</code>).</p>
    #                       </li>
    #                     <li>
    #                           <p>PLATFORM: The device platform. Valid values are ANDROID or IOS.</p>
    #                       </li>
    #                     <li>
    #                           <p>OS_VERSION: The operating system version (for example, 10.3.2).</p>
    #                       </li>
    #                     <li>
    #                           <p>MODEL: The device model (for example, iPad 5th Gen).</p>
    #                       </li>
    #                     <li>
    #                           <p>AVAILABILITY: The current availability of the device. Valid values are AVAILABLE,
    #                               HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.</p>
    #                       </li>
    #                     <li>
    #                           <p>FORM_FACTOR: The device form factor. Valid values are PHONE or TABLET.</p>
    #                       </li>
    #                     <li>
    #                           <p>MANUFACTURER: The device manufacturer (for example, Apple).</p>
    #                       </li>
    #                     <li>
    #                           <p>REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote access. Valid values
    #                               are TRUE or FALSE.</p>
    #                       </li>
    #                     <li>
    #                           <p>REMOTE_DEBUG_ENABLED: Whether the device is enabled for remote debugging. Valid values
    #                               are TRUE or FALSE. Because remote debugging is <a href="https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html">no
    #                                   longer supported</a>, this attribute is ignored.</p>
    #                       </li>
    #                     <li>
    #                           <p>INSTANCE_ARN: The Amazon Resource Name (ARN) of the device
    #                               instance.</p>
    #                       </li>
    #                     <li>
    #                           <p>INSTANCE_LABELS: The label of the device instance.</p>
    #                       </li>
    #                     <li>
    #                           <p>FLEET_TYPE: The fleet type. Valid values are PUBLIC or PRIVATE.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>Operator: The filter operator.</p>
    #                   <ul>
    #                     <li>
    #                           <p>The EQUALS operator is available for every attribute except
    #                               INSTANCE_LABELS.</p>
    #                       </li>
    #                     <li>
    #                           <p>The CONTAINS operator is available for the INSTANCE_LABELS and MODEL
    #                               attributes.</p>
    #                       </li>
    #                     <li>
    #                           <p>The IN and NOT_IN operators are available for the ARN, OS_VERSION,
    #                               MODEL, MANUFACTURER, and INSTANCE_ARN attributes.</p>
    #                       </li>
    #                     <li>
    #                           <p>The LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUALS, and
    #                               GREATER_THAN_OR_EQUALS operators are also available for the OS_VERSION
    #                               attribute.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>Values: An array of one or more filter values.</p>
    #                   <ul>
    #                     <li>
    #                           <p>The IN and NOT_IN operators take a values array that has one or more
    #                               elements.</p>
    #                       </li>
    #                     <li>
    #                           <p>The other operators require an array with a single element.</p>
    #                       </li>
    #                     <li>
    #                           <p>In a request, the AVAILABILITY attribute takes the following values: AVAILABLE,
    #                               HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListDevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices(
    #     arn: 'arn',
    #     next_token: 'nextToken',
    #     filters: [
    #       {
    #         attribute: 'ARN', # required - accepts ["ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"]
    #         operator: 'EQUALS', # required - accepts ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"]
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDevicesOutput
    #   resp.data.devices #=> Array<Device>
    #   resp.data.devices[0] #=> Types::Device
    #   resp.data.devices[0].arn #=> String
    #   resp.data.devices[0].name #=> String
    #   resp.data.devices[0].manufacturer #=> String
    #   resp.data.devices[0].model #=> String
    #   resp.data.devices[0].model_id #=> String
    #   resp.data.devices[0].form_factor #=> String, one of ["PHONE", "TABLET"]
    #   resp.data.devices[0].platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.devices[0].os #=> String
    #   resp.data.devices[0].cpu #=> Types::CPU
    #   resp.data.devices[0].cpu.frequency #=> String
    #   resp.data.devices[0].cpu.architecture #=> String
    #   resp.data.devices[0].cpu.clock #=> Float
    #   resp.data.devices[0].resolution #=> Types::Resolution
    #   resp.data.devices[0].resolution.width #=> Integer
    #   resp.data.devices[0].resolution.height #=> Integer
    #   resp.data.devices[0].heap_size #=> Integer
    #   resp.data.devices[0].memory #=> Integer
    #   resp.data.devices[0].image #=> String
    #   resp.data.devices[0].carrier #=> String
    #   resp.data.devices[0].radio #=> String
    #   resp.data.devices[0].remote_access_enabled #=> Boolean
    #   resp.data.devices[0].remote_debug_enabled #=> Boolean
    #   resp.data.devices[0].fleet_type #=> String
    #   resp.data.devices[0].fleet_name #=> String
    #   resp.data.devices[0].instances #=> Array<DeviceInstance>
    #   resp.data.devices[0].instances[0] #=> Types::DeviceInstance
    #   resp.data.devices[0].instances[0].arn #=> String
    #   resp.data.devices[0].instances[0].device_arn #=> String
    #   resp.data.devices[0].instances[0].labels #=> Array<String>
    #   resp.data.devices[0].instances[0].labels[0] #=> String
    #   resp.data.devices[0].instances[0].status #=> String, one of ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"]
    #   resp.data.devices[0].instances[0].udid #=> String
    #   resp.data.devices[0].instances[0].instance_profile #=> Types::InstanceProfile
    #   resp.data.devices[0].instances[0].instance_profile.arn #=> String
    #   resp.data.devices[0].instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.data.devices[0].instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.devices[0].instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.devices[0].instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.data.devices[0].instances[0].instance_profile.name #=> String
    #   resp.data.devices[0].instances[0].instance_profile.description #=> String
    #   resp.data.devices[0].availability #=> String, one of ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #   resp.data.next_token #=> String
    #
    def list_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDevicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDevices
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListDevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDevices,
        stubs: @stubs,
        params_class: Params::ListDevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about all the instance profiles in an AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInstanceProfilesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>An integer that specifies the maximum number of items you want to return in the API response.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    # @return [Types::ListInstanceProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_profiles(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInstanceProfilesOutput
    #   resp.data.instance_profiles #=> Array<InstanceProfile>
    #   resp.data.instance_profiles[0] #=> Types::InstanceProfile
    #   resp.data.instance_profiles[0].arn #=> String
    #   resp.data.instance_profiles[0].package_cleanup #=> Boolean
    #   resp.data.instance_profiles[0].exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.instance_profiles[0].exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.instance_profiles[0].reboot_after_use #=> Boolean
    #   resp.data.instance_profiles[0].name #=> String
    #   resp.data.instance_profiles[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_instance_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInstanceProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInstanceProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInstanceProfiles
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListInstanceProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInstanceProfiles,
        stubs: @stubs,
        params_class: Params::ListInstanceProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_instance_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about jobs for a given test run.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJobsInput}.
    #
    # @option params [String] :arn
    #   <p>The run's Amazon Resource Name (ARN).</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::ListJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs(
    #     arn: 'arn', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobsOutput
    #   resp.data.jobs #=> Array<Job>
    #   resp.data.jobs[0] #=> Types::Job
    #   resp.data.jobs[0].arn #=> String
    #   resp.data.jobs[0].name #=> String
    #   resp.data.jobs[0].type #=> String, one of ["BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"]
    #   resp.data.jobs[0].created #=> Time
    #   resp.data.jobs[0].status #=> String, one of ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"]
    #   resp.data.jobs[0].result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.jobs[0].started #=> Time
    #   resp.data.jobs[0].stopped #=> Time
    #   resp.data.jobs[0].counters #=> Types::Counters
    #   resp.data.jobs[0].counters.total #=> Integer
    #   resp.data.jobs[0].counters.passed #=> Integer
    #   resp.data.jobs[0].counters.failed #=> Integer
    #   resp.data.jobs[0].counters.warned #=> Integer
    #   resp.data.jobs[0].counters.errored #=> Integer
    #   resp.data.jobs[0].counters.stopped #=> Integer
    #   resp.data.jobs[0].counters.skipped #=> Integer
    #   resp.data.jobs[0].message #=> String
    #   resp.data.jobs[0].device #=> Types::Device
    #   resp.data.jobs[0].device.arn #=> String
    #   resp.data.jobs[0].device.name #=> String
    #   resp.data.jobs[0].device.manufacturer #=> String
    #   resp.data.jobs[0].device.model #=> String
    #   resp.data.jobs[0].device.model_id #=> String
    #   resp.data.jobs[0].device.form_factor #=> String, one of ["PHONE", "TABLET"]
    #   resp.data.jobs[0].device.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.jobs[0].device.os #=> String
    #   resp.data.jobs[0].device.cpu #=> Types::CPU
    #   resp.data.jobs[0].device.cpu.frequency #=> String
    #   resp.data.jobs[0].device.cpu.architecture #=> String
    #   resp.data.jobs[0].device.cpu.clock #=> Float
    #   resp.data.jobs[0].device.resolution #=> Types::Resolution
    #   resp.data.jobs[0].device.resolution.width #=> Integer
    #   resp.data.jobs[0].device.resolution.height #=> Integer
    #   resp.data.jobs[0].device.heap_size #=> Integer
    #   resp.data.jobs[0].device.memory #=> Integer
    #   resp.data.jobs[0].device.image #=> String
    #   resp.data.jobs[0].device.carrier #=> String
    #   resp.data.jobs[0].device.radio #=> String
    #   resp.data.jobs[0].device.remote_access_enabled #=> Boolean
    #   resp.data.jobs[0].device.remote_debug_enabled #=> Boolean
    #   resp.data.jobs[0].device.fleet_type #=> String
    #   resp.data.jobs[0].device.fleet_name #=> String
    #   resp.data.jobs[0].device.instances #=> Array<DeviceInstance>
    #   resp.data.jobs[0].device.instances[0] #=> Types::DeviceInstance
    #   resp.data.jobs[0].device.instances[0].arn #=> String
    #   resp.data.jobs[0].device.instances[0].device_arn #=> String
    #   resp.data.jobs[0].device.instances[0].labels #=> Array<String>
    #   resp.data.jobs[0].device.instances[0].labels[0] #=> String
    #   resp.data.jobs[0].device.instances[0].status #=> String, one of ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"]
    #   resp.data.jobs[0].device.instances[0].udid #=> String
    #   resp.data.jobs[0].device.instances[0].instance_profile #=> Types::InstanceProfile
    #   resp.data.jobs[0].device.instances[0].instance_profile.arn #=> String
    #   resp.data.jobs[0].device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.data.jobs[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.jobs[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.jobs[0].device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.data.jobs[0].device.instances[0].instance_profile.name #=> String
    #   resp.data.jobs[0].device.instances[0].instance_profile.description #=> String
    #   resp.data.jobs[0].device.availability #=> String, one of ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #   resp.data.jobs[0].instance_arn #=> String
    #   resp.data.jobs[0].device_minutes #=> Types::DeviceMinutes
    #   resp.data.jobs[0].device_minutes.total #=> Float
    #   resp.data.jobs[0].device_minutes.metered #=> Float
    #   resp.data.jobs[0].device_minutes.unmetered #=> Float
    #   resp.data.jobs[0].video_endpoint #=> String
    #   resp.data.jobs[0].video_capture #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJobs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJobs,
        stubs: @stubs,
        params_class: Params::ListJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the list of available network profiles.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNetworkProfilesInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the project for which you want to list network
    #               profiles.</p>
    #
    # @option params [String] :type
    #   <p>The type of network profile to return information about. Valid values are listed here.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::ListNetworkProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_network_profiles(
    #     arn: 'arn', # required
    #     type: 'CURATED', # accepts ["CURATED", "PRIVATE"]
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNetworkProfilesOutput
    #   resp.data.network_profiles #=> Array<NetworkProfile>
    #   resp.data.network_profiles[0] #=> Types::NetworkProfile
    #   resp.data.network_profiles[0].arn #=> String
    #   resp.data.network_profiles[0].name #=> String
    #   resp.data.network_profiles[0].description #=> String
    #   resp.data.network_profiles[0].type #=> String, one of ["CURATED", "PRIVATE"]
    #   resp.data.network_profiles[0].uplink_bandwidth_bits #=> Integer
    #   resp.data.network_profiles[0].downlink_bandwidth_bits #=> Integer
    #   resp.data.network_profiles[0].uplink_delay_ms #=> Integer
    #   resp.data.network_profiles[0].downlink_delay_ms #=> Integer
    #   resp.data.network_profiles[0].uplink_jitter_ms #=> Integer
    #   resp.data.network_profiles[0].downlink_jitter_ms #=> Integer
    #   resp.data.network_profiles[0].uplink_loss_percent #=> Integer
    #   resp.data.network_profiles[0].downlink_loss_percent #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_network_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNetworkProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNetworkProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNetworkProfiles
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListNetworkProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNetworkProfiles,
        stubs: @stubs,
        params_class: Params::ListNetworkProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_network_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of offering promotions. Each offering promotion record contains the ID and description
    #             of the promotion. The API returns a <code>NotEligible</code> error if the caller is not permitted to invoke
    #             the operation. Contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a> if you must be able to invoke this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOfferingPromotionsInput}.
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::ListOfferingPromotionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_offering_promotions(
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOfferingPromotionsOutput
    #   resp.data.offering_promotions #=> Array<OfferingPromotion>
    #   resp.data.offering_promotions[0] #=> Types::OfferingPromotion
    #   resp.data.offering_promotions[0].id #=> String
    #   resp.data.offering_promotions[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_offering_promotions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOfferingPromotionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOfferingPromotionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOfferingPromotions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::NotEligibleException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListOfferingPromotions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOfferingPromotions,
        stubs: @stubs,
        params_class: Params::ListOfferingPromotionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_offering_promotions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS
    #             account. The list is paginated and ordered by a descending timestamp (most recent transactions are first).
    #             The API returns a <code>NotEligible</code> error if the user is not permitted to invoke the operation. If
    #             you must be able to invoke this operation, contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOfferingTransactionsInput}.
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::ListOfferingTransactionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_offering_transactions(
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOfferingTransactionsOutput
    #   resp.data.offering_transactions #=> Array<OfferingTransaction>
    #   resp.data.offering_transactions[0] #=> Types::OfferingTransaction
    #   resp.data.offering_transactions[0].offering_status #=> Types::OfferingStatus
    #   resp.data.offering_transactions[0].offering_status.type #=> String, one of ["PURCHASE", "RENEW", "SYSTEM"]
    #   resp.data.offering_transactions[0].offering_status.offering #=> Types::Offering
    #   resp.data.offering_transactions[0].offering_status.offering.id #=> String
    #   resp.data.offering_transactions[0].offering_status.offering.description #=> String
    #   resp.data.offering_transactions[0].offering_status.offering.type #=> String, one of ["RECURRING"]
    #   resp.data.offering_transactions[0].offering_status.offering.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.offering_transactions[0].offering_status.offering.recurring_charges #=> Array<RecurringCharge>
    #   resp.data.offering_transactions[0].offering_status.offering.recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.offering_transactions[0].offering_status.offering.recurring_charges[0].cost #=> Types::MonetaryAmount
    #   resp.data.offering_transactions[0].offering_status.offering.recurring_charges[0].cost.amount #=> Float
    #   resp.data.offering_transactions[0].offering_status.offering.recurring_charges[0].cost.currency_code #=> String, one of ["USD"]
    #   resp.data.offering_transactions[0].offering_status.offering.recurring_charges[0].frequency #=> String, one of ["MONTHLY"]
    #   resp.data.offering_transactions[0].offering_status.quantity #=> Integer
    #   resp.data.offering_transactions[0].offering_status.effective_on #=> Time
    #   resp.data.offering_transactions[0].transaction_id #=> String
    #   resp.data.offering_transactions[0].offering_promotion_id #=> String
    #   resp.data.offering_transactions[0].created_on #=> Time
    #   resp.data.offering_transactions[0].cost #=> Types::MonetaryAmount
    #   resp.data.next_token #=> String
    #
    def list_offering_transactions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOfferingTransactionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOfferingTransactionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOfferingTransactions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::NotEligibleException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListOfferingTransactions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOfferingTransactions,
        stubs: @stubs,
        params_class: Params::ListOfferingTransactionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_offering_transactions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of products or offerings that the user can manage through the API. Each offering record
    #             indicates the recurring price per unit and the frequency for that offering. The API returns a
    #                 <code>NotEligible</code> error if the user is not permitted to invoke the operation.  If you must be
    #             able to invoke this operation, contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOfferingsInput}.
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::ListOfferingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_offerings(
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOfferingsOutput
    #   resp.data.offerings #=> Array<Offering>
    #   resp.data.offerings[0] #=> Types::Offering
    #   resp.data.offerings[0].id #=> String
    #   resp.data.offerings[0].description #=> String
    #   resp.data.offerings[0].type #=> String, one of ["RECURRING"]
    #   resp.data.offerings[0].platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.offerings[0].recurring_charges #=> Array<RecurringCharge>
    #   resp.data.offerings[0].recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.offerings[0].recurring_charges[0].cost #=> Types::MonetaryAmount
    #   resp.data.offerings[0].recurring_charges[0].cost.amount #=> Float
    #   resp.data.offerings[0].recurring_charges[0].cost.currency_code #=> String, one of ["USD"]
    #   resp.data.offerings[0].recurring_charges[0].frequency #=> String, one of ["MONTHLY"]
    #   resp.data.next_token #=> String
    #
    def list_offerings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOfferingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOfferingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOfferings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::NotEligibleException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListOfferings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOfferings,
        stubs: @stubs,
        params_class: Params::ListOfferingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_offerings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about projects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProjectsInput}.
    #
    # @option params [String] :arn
    #   <p>Optional. If no Amazon Resource Name (ARN) is specified, then AWS Device Farm
    #               returns a list of all projects for the AWS account. You can also specify a project
    #               ARN.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::ListProjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects(
    #     arn: 'arn',
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProjectsOutput
    #   resp.data.projects #=> Array<Project>
    #   resp.data.projects[0] #=> Types::Project
    #   resp.data.projects[0].arn #=> String
    #   resp.data.projects[0].name #=> String
    #   resp.data.projects[0].default_job_timeout_minutes #=> Integer
    #   resp.data.projects[0].created #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
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

    # <p>Returns a list of all currently running remote access sessions.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRemoteAccessSessionsInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the project about which you are requesting
    #               information.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::ListRemoteAccessSessionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_remote_access_sessions(
    #     arn: 'arn', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRemoteAccessSessionsOutput
    #   resp.data.remote_access_sessions #=> Array<RemoteAccessSession>
    #   resp.data.remote_access_sessions[0] #=> Types::RemoteAccessSession
    #   resp.data.remote_access_sessions[0].arn #=> String
    #   resp.data.remote_access_sessions[0].name #=> String
    #   resp.data.remote_access_sessions[0].created #=> Time
    #   resp.data.remote_access_sessions[0].status #=> String, one of ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"]
    #   resp.data.remote_access_sessions[0].result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.remote_access_sessions[0].message #=> String
    #   resp.data.remote_access_sessions[0].started #=> Time
    #   resp.data.remote_access_sessions[0].stopped #=> Time
    #   resp.data.remote_access_sessions[0].device #=> Types::Device
    #   resp.data.remote_access_sessions[0].device.arn #=> String
    #   resp.data.remote_access_sessions[0].device.name #=> String
    #   resp.data.remote_access_sessions[0].device.manufacturer #=> String
    #   resp.data.remote_access_sessions[0].device.model #=> String
    #   resp.data.remote_access_sessions[0].device.model_id #=> String
    #   resp.data.remote_access_sessions[0].device.form_factor #=> String, one of ["PHONE", "TABLET"]
    #   resp.data.remote_access_sessions[0].device.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.remote_access_sessions[0].device.os #=> String
    #   resp.data.remote_access_sessions[0].device.cpu #=> Types::CPU
    #   resp.data.remote_access_sessions[0].device.cpu.frequency #=> String
    #   resp.data.remote_access_sessions[0].device.cpu.architecture #=> String
    #   resp.data.remote_access_sessions[0].device.cpu.clock #=> Float
    #   resp.data.remote_access_sessions[0].device.resolution #=> Types::Resolution
    #   resp.data.remote_access_sessions[0].device.resolution.width #=> Integer
    #   resp.data.remote_access_sessions[0].device.resolution.height #=> Integer
    #   resp.data.remote_access_sessions[0].device.heap_size #=> Integer
    #   resp.data.remote_access_sessions[0].device.memory #=> Integer
    #   resp.data.remote_access_sessions[0].device.image #=> String
    #   resp.data.remote_access_sessions[0].device.carrier #=> String
    #   resp.data.remote_access_sessions[0].device.radio #=> String
    #   resp.data.remote_access_sessions[0].device.remote_access_enabled #=> Boolean
    #   resp.data.remote_access_sessions[0].device.remote_debug_enabled #=> Boolean
    #   resp.data.remote_access_sessions[0].device.fleet_type #=> String
    #   resp.data.remote_access_sessions[0].device.fleet_name #=> String
    #   resp.data.remote_access_sessions[0].device.instances #=> Array<DeviceInstance>
    #   resp.data.remote_access_sessions[0].device.instances[0] #=> Types::DeviceInstance
    #   resp.data.remote_access_sessions[0].device.instances[0].arn #=> String
    #   resp.data.remote_access_sessions[0].device.instances[0].device_arn #=> String
    #   resp.data.remote_access_sessions[0].device.instances[0].labels #=> Array<String>
    #   resp.data.remote_access_sessions[0].device.instances[0].labels[0] #=> String
    #   resp.data.remote_access_sessions[0].device.instances[0].status #=> String, one of ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"]
    #   resp.data.remote_access_sessions[0].device.instances[0].udid #=> String
    #   resp.data.remote_access_sessions[0].device.instances[0].instance_profile #=> Types::InstanceProfile
    #   resp.data.remote_access_sessions[0].device.instances[0].instance_profile.arn #=> String
    #   resp.data.remote_access_sessions[0].device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.data.remote_access_sessions[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.remote_access_sessions[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.remote_access_sessions[0].device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.data.remote_access_sessions[0].device.instances[0].instance_profile.name #=> String
    #   resp.data.remote_access_sessions[0].device.instances[0].instance_profile.description #=> String
    #   resp.data.remote_access_sessions[0].device.availability #=> String, one of ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #   resp.data.remote_access_sessions[0].instance_arn #=> String
    #   resp.data.remote_access_sessions[0].remote_debug_enabled #=> Boolean
    #   resp.data.remote_access_sessions[0].remote_record_enabled #=> Boolean
    #   resp.data.remote_access_sessions[0].remote_record_app_arn #=> String
    #   resp.data.remote_access_sessions[0].host_address #=> String
    #   resp.data.remote_access_sessions[0].client_id #=> String
    #   resp.data.remote_access_sessions[0].billing_method #=> String, one of ["METERED", "UNMETERED"]
    #   resp.data.remote_access_sessions[0].device_minutes #=> Types::DeviceMinutes
    #   resp.data.remote_access_sessions[0].device_minutes.total #=> Float
    #   resp.data.remote_access_sessions[0].device_minutes.metered #=> Float
    #   resp.data.remote_access_sessions[0].device_minutes.unmetered #=> Float
    #   resp.data.remote_access_sessions[0].endpoint #=> String
    #   resp.data.remote_access_sessions[0].device_udid #=> String
    #   resp.data.remote_access_sessions[0].interaction_mode #=> String, one of ["INTERACTIVE", "NO_VIDEO", "VIDEO_ONLY"]
    #   resp.data.remote_access_sessions[0].skip_app_resign #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_remote_access_sessions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRemoteAccessSessionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRemoteAccessSessionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRemoteAccessSessions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListRemoteAccessSessions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRemoteAccessSessions,
        stubs: @stubs,
        params_class: Params::ListRemoteAccessSessionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_remote_access_sessions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about runs, given an AWS Device Farm project ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRunsInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the project for which you want to list
    #               runs.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::ListRunsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_runs(
    #     arn: 'arn', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRunsOutput
    #   resp.data.runs #=> Array<Run>
    #   resp.data.runs[0] #=> Types::Run
    #   resp.data.runs[0].arn #=> String
    #   resp.data.runs[0].name #=> String
    #   resp.data.runs[0].type #=> String, one of ["BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"]
    #   resp.data.runs[0].platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.runs[0].created #=> Time
    #   resp.data.runs[0].status #=> String, one of ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"]
    #   resp.data.runs[0].result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.runs[0].started #=> Time
    #   resp.data.runs[0].stopped #=> Time
    #   resp.data.runs[0].counters #=> Types::Counters
    #   resp.data.runs[0].counters.total #=> Integer
    #   resp.data.runs[0].counters.passed #=> Integer
    #   resp.data.runs[0].counters.failed #=> Integer
    #   resp.data.runs[0].counters.warned #=> Integer
    #   resp.data.runs[0].counters.errored #=> Integer
    #   resp.data.runs[0].counters.stopped #=> Integer
    #   resp.data.runs[0].counters.skipped #=> Integer
    #   resp.data.runs[0].message #=> String
    #   resp.data.runs[0].total_jobs #=> Integer
    #   resp.data.runs[0].completed_jobs #=> Integer
    #   resp.data.runs[0].billing_method #=> String, one of ["METERED", "UNMETERED"]
    #   resp.data.runs[0].device_minutes #=> Types::DeviceMinutes
    #   resp.data.runs[0].device_minutes.total #=> Float
    #   resp.data.runs[0].device_minutes.metered #=> Float
    #   resp.data.runs[0].device_minutes.unmetered #=> Float
    #   resp.data.runs[0].network_profile #=> Types::NetworkProfile
    #   resp.data.runs[0].network_profile.arn #=> String
    #   resp.data.runs[0].network_profile.name #=> String
    #   resp.data.runs[0].network_profile.description #=> String
    #   resp.data.runs[0].network_profile.type #=> String, one of ["CURATED", "PRIVATE"]
    #   resp.data.runs[0].network_profile.uplink_bandwidth_bits #=> Integer
    #   resp.data.runs[0].network_profile.downlink_bandwidth_bits #=> Integer
    #   resp.data.runs[0].network_profile.uplink_delay_ms #=> Integer
    #   resp.data.runs[0].network_profile.downlink_delay_ms #=> Integer
    #   resp.data.runs[0].network_profile.uplink_jitter_ms #=> Integer
    #   resp.data.runs[0].network_profile.downlink_jitter_ms #=> Integer
    #   resp.data.runs[0].network_profile.uplink_loss_percent #=> Integer
    #   resp.data.runs[0].network_profile.downlink_loss_percent #=> Integer
    #   resp.data.runs[0].parsing_result_url #=> String
    #   resp.data.runs[0].result_code #=> String, one of ["PARSING_FAILED", "VPC_ENDPOINT_SETUP_FAILED"]
    #   resp.data.runs[0].seed #=> Integer
    #   resp.data.runs[0].app_upload #=> String
    #   resp.data.runs[0].event_count #=> Integer
    #   resp.data.runs[0].job_timeout_minutes #=> Integer
    #   resp.data.runs[0].device_pool_arn #=> String
    #   resp.data.runs[0].locale #=> String
    #   resp.data.runs[0].radios #=> Types::Radios
    #   resp.data.runs[0].radios.wifi #=> Boolean
    #   resp.data.runs[0].radios.bluetooth #=> Boolean
    #   resp.data.runs[0].radios.nfc #=> Boolean
    #   resp.data.runs[0].radios.gps #=> Boolean
    #   resp.data.runs[0].location #=> Types::Location
    #   resp.data.runs[0].location.latitude #=> Float
    #   resp.data.runs[0].location.longitude #=> Float
    #   resp.data.runs[0].customer_artifact_paths #=> Types::CustomerArtifactPaths
    #   resp.data.runs[0].customer_artifact_paths.ios_paths #=> Array<String>
    #   resp.data.runs[0].customer_artifact_paths.ios_paths[0] #=> String
    #   resp.data.runs[0].customer_artifact_paths.android_paths #=> Array<String>
    #   resp.data.runs[0].customer_artifact_paths.android_paths[0] #=> String
    #   resp.data.runs[0].customer_artifact_paths.device_host_paths #=> Array<String>
    #   resp.data.runs[0].customer_artifact_paths.device_host_paths[0] #=> String
    #   resp.data.runs[0].web_url #=> String
    #   resp.data.runs[0].skip_app_resign #=> Boolean
    #   resp.data.runs[0].test_spec_arn #=> String
    #   resp.data.runs[0].device_selection_result #=> Types::DeviceSelectionResult
    #   resp.data.runs[0].device_selection_result.filters #=> Array<DeviceFilter>
    #   resp.data.runs[0].device_selection_result.filters[0] #=> Types::DeviceFilter
    #   resp.data.runs[0].device_selection_result.filters[0].attribute #=> String, one of ["ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"]
    #   resp.data.runs[0].device_selection_result.filters[0].operator #=> String, one of ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"]
    #   resp.data.runs[0].device_selection_result.filters[0].values #=> Array<String>
    #   resp.data.runs[0].device_selection_result.filters[0].values[0] #=> String
    #   resp.data.runs[0].device_selection_result.matched_devices_count #=> Integer
    #   resp.data.runs[0].device_selection_result.max_devices #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_runs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRunsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRunsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRuns
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListRuns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRuns,
        stubs: @stubs,
        params_class: Params::ListRunsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_runs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about samples, given an AWS Device Farm job ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSamplesInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the job used to list samples.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::ListSamplesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_samples(
    #     arn: 'arn', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSamplesOutput
    #   resp.data.samples #=> Array<Sample>
    #   resp.data.samples[0] #=> Types::Sample
    #   resp.data.samples[0].arn #=> String
    #   resp.data.samples[0].type #=> String, one of ["CPU", "MEMORY", "THREADS", "RX_RATE", "TX_RATE", "RX", "TX", "NATIVE_FRAMES", "NATIVE_FPS", "NATIVE_MIN_DRAWTIME", "NATIVE_AVG_DRAWTIME", "NATIVE_MAX_DRAWTIME", "OPENGL_FRAMES", "OPENGL_FPS", "OPENGL_MIN_DRAWTIME", "OPENGL_AVG_DRAWTIME", "OPENGL_MAX_DRAWTIME"]
    #   resp.data.samples[0].url #=> String
    #   resp.data.next_token #=> String
    #
    def list_samples(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSamplesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSamplesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSamples
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListSamples
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSamples,
        stubs: @stubs,
        params_class: Params::ListSamplesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_samples
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about test suites for a given job.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSuitesInput}.
    #
    # @option params [String] :arn
    #   <p>The job's Amazon Resource Name (ARN).</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::ListSuitesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_suites(
    #     arn: 'arn', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSuitesOutput
    #   resp.data.suites #=> Array<Suite>
    #   resp.data.suites[0] #=> Types::Suite
    #   resp.data.suites[0].arn #=> String
    #   resp.data.suites[0].name #=> String
    #   resp.data.suites[0].type #=> String, one of ["BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"]
    #   resp.data.suites[0].created #=> Time
    #   resp.data.suites[0].status #=> String, one of ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"]
    #   resp.data.suites[0].result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.suites[0].started #=> Time
    #   resp.data.suites[0].stopped #=> Time
    #   resp.data.suites[0].counters #=> Types::Counters
    #   resp.data.suites[0].counters.total #=> Integer
    #   resp.data.suites[0].counters.passed #=> Integer
    #   resp.data.suites[0].counters.failed #=> Integer
    #   resp.data.suites[0].counters.warned #=> Integer
    #   resp.data.suites[0].counters.errored #=> Integer
    #   resp.data.suites[0].counters.stopped #=> Integer
    #   resp.data.suites[0].counters.skipped #=> Integer
    #   resp.data.suites[0].message #=> String
    #   resp.data.suites[0].device_minutes #=> Types::DeviceMinutes
    #   resp.data.suites[0].device_minutes.total #=> Float
    #   resp.data.suites[0].device_minutes.metered #=> Float
    #   resp.data.suites[0].device_minutes.unmetered #=> Float
    #   resp.data.next_token #=> String
    #
    def list_suites(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSuitesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSuitesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSuites
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListSuites
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSuites,
        stubs: @stubs,
        params_class: Params::ListSuitesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_suites
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the tags for an AWS Device Farm resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource or resources for which to list tags. You can associate tags
    #               with the following Device Farm resources: <code>PROJECT</code>, <code>RUN</code>,
    #                   <code>NETWORK_PROFILE</code>, <code>INSTANCE_PROFILE</code>, <code>DEVICE_INSTANCE</code>,
    #                   <code>SESSION</code>, <code>DEVICE_POOL</code>, <code>DEVICE</code>, and
    #               <code>VPCE_CONFIGURATION</code>.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TagOperationException, Errors::ArgumentException]),
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

    # <p>Gets a list of all Selenium testing projects in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTestGridProjectsInput}.
    #
    # @option params [Integer] :max_result
    #   <p>Return no more than this number of results.</p>
    #
    # @option params [String] :next_token
    #   <p>From a response, used to continue a paginated listing. </p>
    #
    # @return [Types::ListTestGridProjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_grid_projects(
    #     max_result: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTestGridProjectsOutput
    #   resp.data.test_grid_projects #=> Array<TestGridProject>
    #   resp.data.test_grid_projects[0] #=> Types::TestGridProject
    #   resp.data.test_grid_projects[0].arn #=> String
    #   resp.data.test_grid_projects[0].name #=> String
    #   resp.data.test_grid_projects[0].description #=> String
    #   resp.data.test_grid_projects[0].vpc_config #=> Types::TestGridVpcConfig
    #   resp.data.test_grid_projects[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.test_grid_projects[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.test_grid_projects[0].vpc_config.subnet_ids #=> Array<String>
    #   resp.data.test_grid_projects[0].vpc_config.subnet_ids[0] #=> String
    #   resp.data.test_grid_projects[0].vpc_config.vpc_id #=> String
    #   resp.data.test_grid_projects[0].created #=> Time
    #   resp.data.next_token #=> String
    #
    def list_test_grid_projects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTestGridProjectsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTestGridProjectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTestGridProjects
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException, Errors::ArgumentException]),
        data_parser: Parsers::ListTestGridProjects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTestGridProjects,
        stubs: @stubs,
        params_class: Params::ListTestGridProjectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_test_grid_projects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the actions taken in a <a>TestGridSession</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTestGridSessionActionsInput}.
    #
    # @option params [String] :session_arn
    #   <p>The ARN of the session to retrieve.</p>
    #
    # @option params [Integer] :max_result
    #   <p>The maximum number of sessions to return per response.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    #
    # @return [Types::ListTestGridSessionActionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_grid_session_actions(
    #     session_arn: 'sessionArn', # required
    #     max_result: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTestGridSessionActionsOutput
    #   resp.data.actions #=> Array<TestGridSessionAction>
    #   resp.data.actions[0] #=> Types::TestGridSessionAction
    #   resp.data.actions[0].action #=> String
    #   resp.data.actions[0].started #=> Time
    #   resp.data.actions[0].duration #=> Integer
    #   resp.data.actions[0].status_code #=> String
    #   resp.data.actions[0].request_method #=> String
    #   resp.data.next_token #=> String
    #
    def list_test_grid_session_actions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTestGridSessionActionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTestGridSessionActionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTestGridSessionActions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceException, Errors::ArgumentException]),
        data_parser: Parsers::ListTestGridSessionActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTestGridSessionActions,
        stubs: @stubs,
        params_class: Params::ListTestGridSessionActionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_test_grid_session_actions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of artifacts created during the session.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTestGridSessionArtifactsInput}.
    #
    # @option params [String] :session_arn
    #   <p>The ARN of a <a>TestGridSession</a>. </p>
    #
    # @option params [String] :type
    #   <p>Limit results to a specified type of artifact.</p>
    #
    # @option params [Integer] :max_result
    #   <p>The maximum number of results to be returned by a request.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    #
    # @return [Types::ListTestGridSessionArtifactsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_grid_session_artifacts(
    #     session_arn: 'sessionArn', # required
    #     type: 'VIDEO', # accepts ["VIDEO", "LOG"]
    #     max_result: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTestGridSessionArtifactsOutput
    #   resp.data.artifacts #=> Array<TestGridSessionArtifact>
    #   resp.data.artifacts[0] #=> Types::TestGridSessionArtifact
    #   resp.data.artifacts[0].filename #=> String
    #   resp.data.artifacts[0].type #=> String, one of ["UNKNOWN", "VIDEO", "SELENIUM_LOG"]
    #   resp.data.artifacts[0].url #=> String
    #   resp.data.next_token #=> String
    #
    def list_test_grid_session_artifacts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTestGridSessionArtifactsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTestGridSessionArtifactsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTestGridSessionArtifacts
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceException, Errors::ArgumentException]),
        data_parser: Parsers::ListTestGridSessionArtifacts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTestGridSessionArtifacts,
        stubs: @stubs,
        params_class: Params::ListTestGridSessionArtifactsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_test_grid_session_artifacts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of sessions for a <a>TestGridProject</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTestGridSessionsInput}.
    #
    # @option params [String] :project_arn
    #   <p>ARN of a <a>TestGridProject</a>.</p>
    #
    # @option params [String] :status
    #   <p>Return only sessions in this state.</p>
    #
    # @option params [Time] :creation_time_after
    #   <p>Return only sessions created after this time.</p>
    #
    # @option params [Time] :creation_time_before
    #   <p>Return only  sessions created before this time.</p>
    #
    # @option params [Time] :end_time_after
    #   <p>Return only sessions that ended after this time.</p>
    #
    # @option params [Time] :end_time_before
    #   <p>Return only sessions that ended before this time.</p>
    #
    # @option params [Integer] :max_result
    #   <p>Return only this many results at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    #
    # @return [Types::ListTestGridSessionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_grid_sessions(
    #     project_arn: 'projectArn', # required
    #     status: 'ACTIVE', # accepts ["ACTIVE", "CLOSED", "ERRORED"]
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     end_time_after: Time.now,
    #     end_time_before: Time.now,
    #     max_result: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTestGridSessionsOutput
    #   resp.data.test_grid_sessions #=> Array<TestGridSession>
    #   resp.data.test_grid_sessions[0] #=> Types::TestGridSession
    #   resp.data.test_grid_sessions[0].arn #=> String
    #   resp.data.test_grid_sessions[0].status #=> String, one of ["ACTIVE", "CLOSED", "ERRORED"]
    #   resp.data.test_grid_sessions[0].created #=> Time
    #   resp.data.test_grid_sessions[0].ended #=> Time
    #   resp.data.test_grid_sessions[0].billing_minutes #=> Float
    #   resp.data.test_grid_sessions[0].selenium_properties #=> String
    #   resp.data.next_token #=> String
    #
    def list_test_grid_sessions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTestGridSessionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTestGridSessionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTestGridSessions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceException, Errors::ArgumentException]),
        data_parser: Parsers::ListTestGridSessions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTestGridSessions,
        stubs: @stubs,
        params_class: Params::ListTestGridSessionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_test_grid_sessions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about tests in a given test suite.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTestsInput}.
    #
    # @option params [String] :arn
    #   <p>The test suite's Amazon Resource Name (ARN).</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::ListTestsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tests(
    #     arn: 'arn', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTestsOutput
    #   resp.data.tests #=> Array<Test>
    #   resp.data.tests[0] #=> Types::Test
    #   resp.data.tests[0].arn #=> String
    #   resp.data.tests[0].name #=> String
    #   resp.data.tests[0].type #=> String, one of ["BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"]
    #   resp.data.tests[0].created #=> Time
    #   resp.data.tests[0].status #=> String, one of ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"]
    #   resp.data.tests[0].result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.tests[0].started #=> Time
    #   resp.data.tests[0].stopped #=> Time
    #   resp.data.tests[0].counters #=> Types::Counters
    #   resp.data.tests[0].counters.total #=> Integer
    #   resp.data.tests[0].counters.passed #=> Integer
    #   resp.data.tests[0].counters.failed #=> Integer
    #   resp.data.tests[0].counters.warned #=> Integer
    #   resp.data.tests[0].counters.errored #=> Integer
    #   resp.data.tests[0].counters.stopped #=> Integer
    #   resp.data.tests[0].counters.skipped #=> Integer
    #   resp.data.tests[0].message #=> String
    #   resp.data.tests[0].device_minutes #=> Types::DeviceMinutes
    #   resp.data.tests[0].device_minutes.total #=> Float
    #   resp.data.tests[0].device_minutes.metered #=> Float
    #   resp.data.tests[0].device_minutes.unmetered #=> Float
    #   resp.data.next_token #=> String
    #
    def list_tests(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTestsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTestsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTests
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListTests
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTests,
        stubs: @stubs,
        params_class: Params::ListTestsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tests
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about unique problems, such as exceptions or crashes.</p>
    #         <p>Unique problems are defined as a single instance of an error across a run, job, or suite. For example,
    #             if a call in your application consistently raises an exception (<code>OutOfBoundsException in
    #                 MyActivity.java:386</code>), <code>ListUniqueProblems</code> returns a single entry instead of many
    #             individual entries for that exception.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUniqueProblemsInput}.
    #
    # @option params [String] :arn
    #   <p>The unique problems' ARNs.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::ListUniqueProblemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_unique_problems(
    #     arn: 'arn', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUniqueProblemsOutput
    #   resp.data.unique_problems #=> Hash<String, Array<UniqueProblem>>
    #   resp.data.unique_problems['key'] #=> Array<UniqueProblem>
    #   resp.data.unique_problems['key'][0] #=> Types::UniqueProblem
    #   resp.data.unique_problems['key'][0].message #=> String
    #   resp.data.unique_problems['key'][0].problems #=> Array<Problem>
    #   resp.data.unique_problems['key'][0].problems[0] #=> Types::Problem
    #   resp.data.unique_problems['key'][0].problems[0].run #=> Types::ProblemDetail
    #   resp.data.unique_problems['key'][0].problems[0].run.arn #=> String
    #   resp.data.unique_problems['key'][0].problems[0].run.name #=> String
    #   resp.data.unique_problems['key'][0].problems[0].job #=> Types::ProblemDetail
    #   resp.data.unique_problems['key'][0].problems[0].suite #=> Types::ProblemDetail
    #   resp.data.unique_problems['key'][0].problems[0].test #=> Types::ProblemDetail
    #   resp.data.unique_problems['key'][0].problems[0].device #=> Types::Device
    #   resp.data.unique_problems['key'][0].problems[0].device.arn #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.name #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.manufacturer #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.model #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.model_id #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.form_factor #=> String, one of ["PHONE", "TABLET"]
    #   resp.data.unique_problems['key'][0].problems[0].device.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.unique_problems['key'][0].problems[0].device.os #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.cpu #=> Types::CPU
    #   resp.data.unique_problems['key'][0].problems[0].device.cpu.frequency #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.cpu.architecture #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.cpu.clock #=> Float
    #   resp.data.unique_problems['key'][0].problems[0].device.resolution #=> Types::Resolution
    #   resp.data.unique_problems['key'][0].problems[0].device.resolution.width #=> Integer
    #   resp.data.unique_problems['key'][0].problems[0].device.resolution.height #=> Integer
    #   resp.data.unique_problems['key'][0].problems[0].device.heap_size #=> Integer
    #   resp.data.unique_problems['key'][0].problems[0].device.memory #=> Integer
    #   resp.data.unique_problems['key'][0].problems[0].device.image #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.carrier #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.radio #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.remote_access_enabled #=> Boolean
    #   resp.data.unique_problems['key'][0].problems[0].device.remote_debug_enabled #=> Boolean
    #   resp.data.unique_problems['key'][0].problems[0].device.fleet_type #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.fleet_name #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.instances #=> Array<DeviceInstance>
    #   resp.data.unique_problems['key'][0].problems[0].device.instances[0] #=> Types::DeviceInstance
    #   resp.data.unique_problems['key'][0].problems[0].device.instances[0].arn #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.instances[0].device_arn #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.instances[0].labels #=> Array<String>
    #   resp.data.unique_problems['key'][0].problems[0].device.instances[0].labels[0] #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.instances[0].status #=> String, one of ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"]
    #   resp.data.unique_problems['key'][0].problems[0].device.instances[0].udid #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.instances[0].instance_profile #=> Types::InstanceProfile
    #   resp.data.unique_problems['key'][0].problems[0].device.instances[0].instance_profile.arn #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.data.unique_problems['key'][0].problems[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.unique_problems['key'][0].problems[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.data.unique_problems['key'][0].problems[0].device.instances[0].instance_profile.name #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.instances[0].instance_profile.description #=> String
    #   resp.data.unique_problems['key'][0].problems[0].device.availability #=> String, one of ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #   resp.data.unique_problems['key'][0].problems[0].result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.unique_problems['key'][0].problems[0].message #=> String
    #   resp.data.next_token #=> String
    #
    def list_unique_problems(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUniqueProblemsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUniqueProblemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUniqueProblems
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListUniqueProblems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUniqueProblems,
        stubs: @stubs,
        params_class: Params::ListUniqueProblemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_unique_problems
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about uploads, given an AWS Device Farm project ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUploadsInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the project for which you want to list
    #               uploads.</p>
    #
    # @option params [String] :type
    #   <p>The type of upload.</p>
    #           <p>Must be one of the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>ANDROID_APP</p>
    #               </li>
    #               <li>
    #                   <p>IOS_APP</p>
    #               </li>
    #               <li>
    #                   <p>WEB_APP</p>
    #               </li>
    #               <li>
    #                   <p>EXTERNAL_DATA</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_PYTHON_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_NODE_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_RUBY_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_PYTHON_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_NODE_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_RUBY_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>CALABASH_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>INSTRUMENTATION_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>UIAUTOMATION_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>UIAUTOMATOR_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST_UI_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_JUNIT_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_TESTNG_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_PYTHON_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_NODE_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p> APPIUM_RUBY_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_JUNIT_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_TESTNG_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_PYTHON_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_NODE_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_RUBY_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>INSTRUMENTATION_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST_UI_TEST_SPEC</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    #
    # @return [Types::ListUploadsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_uploads(
    #     arn: 'arn', # required
    #     type: 'ANDROID_APP', # accepts ["ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"]
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUploadsOutput
    #   resp.data.uploads #=> Array<Upload>
    #   resp.data.uploads[0] #=> Types::Upload
    #   resp.data.uploads[0].arn #=> String
    #   resp.data.uploads[0].name #=> String
    #   resp.data.uploads[0].created #=> Time
    #   resp.data.uploads[0].type #=> String, one of ["ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"]
    #   resp.data.uploads[0].status #=> String, one of ["INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"]
    #   resp.data.uploads[0].url #=> String
    #   resp.data.uploads[0].metadata #=> String
    #   resp.data.uploads[0].content_type #=> String
    #   resp.data.uploads[0].message #=> String
    #   resp.data.uploads[0].category #=> String, one of ["CURATED", "PRIVATE"]
    #   resp.data.next_token #=> String
    #
    def list_uploads(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUploadsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUploadsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUploads
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::ListUploads
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUploads,
        stubs: @stubs,
        params_class: Params::ListUploadsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_uploads
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about all Amazon Virtual Private Cloud (VPC) endpoint
    #             configurations in the AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVPCEConfigurationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>An integer that specifies the maximum number of items you want to return in the API response.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    #
    # @return [Types::ListVPCEConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vpce_configurations(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVPCEConfigurationsOutput
    #   resp.data.vpce_configurations #=> Array<VPCEConfiguration>
    #   resp.data.vpce_configurations[0] #=> Types::VPCEConfiguration
    #   resp.data.vpce_configurations[0].arn #=> String
    #   resp.data.vpce_configurations[0].vpce_configuration_name #=> String
    #   resp.data.vpce_configurations[0].vpce_service_name #=> String
    #   resp.data.vpce_configurations[0].service_dns_name #=> String
    #   resp.data.vpce_configurations[0].vpce_configuration_description #=> String
    #   resp.data.next_token #=> String
    #
    def list_vpce_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVPCEConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVPCEConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVPCEConfigurations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ArgumentException, Errors::ServiceAccountException]),
        data_parser: Parsers::ListVPCEConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVPCEConfigurations,
        stubs: @stubs,
        params_class: Params::ListVPCEConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_vpce_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Immediately purchases offerings for an AWS account. Offerings renew with the latest total purchased
    #             quantity for an offering, unless the renewal was overridden. The API returns a <code>NotEligible</code>
    #             error if the user is not permitted to invoke the operation. If you must be able to invoke this operation,
    #             contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PurchaseOfferingInput}.
    #
    # @option params [String] :offering_id
    #   <p>The ID of the offering.</p>
    #
    # @option params [Integer] :quantity
    #   <p>The number of device slots to purchase in an offering request.</p>
    #
    # @option params [String] :offering_promotion_id
    #   <p>The ID of the offering promotion to be applied to the purchase.</p>
    #
    # @return [Types::PurchaseOfferingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_offering(
    #     offering_id: 'offeringId', # required
    #     quantity: 1, # required
    #     offering_promotion_id: 'offeringPromotionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PurchaseOfferingOutput
    #   resp.data.offering_transaction #=> Types::OfferingTransaction
    #   resp.data.offering_transaction.offering_status #=> Types::OfferingStatus
    #   resp.data.offering_transaction.offering_status.type #=> String, one of ["PURCHASE", "RENEW", "SYSTEM"]
    #   resp.data.offering_transaction.offering_status.offering #=> Types::Offering
    #   resp.data.offering_transaction.offering_status.offering.id #=> String
    #   resp.data.offering_transaction.offering_status.offering.description #=> String
    #   resp.data.offering_transaction.offering_status.offering.type #=> String, one of ["RECURRING"]
    #   resp.data.offering_transaction.offering_status.offering.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.offering_transaction.offering_status.offering.recurring_charges #=> Array<RecurringCharge>
    #   resp.data.offering_transaction.offering_status.offering.recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.offering_transaction.offering_status.offering.recurring_charges[0].cost #=> Types::MonetaryAmount
    #   resp.data.offering_transaction.offering_status.offering.recurring_charges[0].cost.amount #=> Float
    #   resp.data.offering_transaction.offering_status.offering.recurring_charges[0].cost.currency_code #=> String, one of ["USD"]
    #   resp.data.offering_transaction.offering_status.offering.recurring_charges[0].frequency #=> String, one of ["MONTHLY"]
    #   resp.data.offering_transaction.offering_status.quantity #=> Integer
    #   resp.data.offering_transaction.offering_status.effective_on #=> Time
    #   resp.data.offering_transaction.transaction_id #=> String
    #   resp.data.offering_transaction.offering_promotion_id #=> String
    #   resp.data.offering_transaction.created_on #=> Time
    #   resp.data.offering_transaction.cost #=> Types::MonetaryAmount
    #
    def purchase_offering(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PurchaseOfferingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PurchaseOfferingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PurchaseOffering
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::NotEligibleException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::PurchaseOffering
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PurchaseOffering,
        stubs: @stubs,
        params_class: Params::PurchaseOfferingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :purchase_offering
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Explicitly sets the quantity of devices to renew for an offering, starting from the
    #                 <code>effectiveDate</code> of the next period. The API returns a <code>NotEligible</code> error if the
    #             user is not permitted to invoke the operation. If you must be able to invoke this operation, contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RenewOfferingInput}.
    #
    # @option params [String] :offering_id
    #   <p>The ID of a request to renew an offering.</p>
    #
    # @option params [Integer] :quantity
    #   <p>The quantity requested in an offering renewal.</p>
    #
    # @return [Types::RenewOfferingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.renew_offering(
    #     offering_id: 'offeringId', # required
    #     quantity: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RenewOfferingOutput
    #   resp.data.offering_transaction #=> Types::OfferingTransaction
    #   resp.data.offering_transaction.offering_status #=> Types::OfferingStatus
    #   resp.data.offering_transaction.offering_status.type #=> String, one of ["PURCHASE", "RENEW", "SYSTEM"]
    #   resp.data.offering_transaction.offering_status.offering #=> Types::Offering
    #   resp.data.offering_transaction.offering_status.offering.id #=> String
    #   resp.data.offering_transaction.offering_status.offering.description #=> String
    #   resp.data.offering_transaction.offering_status.offering.type #=> String, one of ["RECURRING"]
    #   resp.data.offering_transaction.offering_status.offering.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.offering_transaction.offering_status.offering.recurring_charges #=> Array<RecurringCharge>
    #   resp.data.offering_transaction.offering_status.offering.recurring_charges[0] #=> Types::RecurringCharge
    #   resp.data.offering_transaction.offering_status.offering.recurring_charges[0].cost #=> Types::MonetaryAmount
    #   resp.data.offering_transaction.offering_status.offering.recurring_charges[0].cost.amount #=> Float
    #   resp.data.offering_transaction.offering_status.offering.recurring_charges[0].cost.currency_code #=> String, one of ["USD"]
    #   resp.data.offering_transaction.offering_status.offering.recurring_charges[0].frequency #=> String, one of ["MONTHLY"]
    #   resp.data.offering_transaction.offering_status.quantity #=> Integer
    #   resp.data.offering_transaction.offering_status.effective_on #=> Time
    #   resp.data.offering_transaction.transaction_id #=> String
    #   resp.data.offering_transaction.offering_promotion_id #=> String
    #   resp.data.offering_transaction.created_on #=> Time
    #   resp.data.offering_transaction.cost #=> Types::MonetaryAmount
    #
    def renew_offering(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RenewOfferingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RenewOfferingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RenewOffering
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::NotEligibleException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::RenewOffering
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RenewOffering,
        stubs: @stubs,
        params_class: Params::RenewOfferingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :renew_offering
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Schedules a run.</p>
    #
    # @param [Hash] params
    #   See {Types::ScheduleRunInput}.
    #
    # @option params [String] :project_arn
    #   <p>The ARN of the project for the run to be scheduled.</p>
    #
    # @option params [String] :app_arn
    #   <p>The ARN of an application package to run tests against, created with <a>CreateUpload</a>.
    #               See <a>ListUploads</a>.</p>
    #
    # @option params [String] :device_pool_arn
    #   <p>The ARN of the device pool for the run to be scheduled.</p>
    #
    # @option params [DeviceSelectionConfiguration] :device_selection_configuration
    #   <p>The filter criteria used to dynamically select a set of devices for a test run and the maximum number of
    #               devices to be included in the run.</p>
    #           <p>Either <b>
    #                  <code>devicePoolArn</code>
    #               </b> or <b>
    #                  <code>deviceSelectionConfiguration</code>
    #               </b> is required in a
    #               request.</p>
    #
    # @option params [String] :name
    #   <p>The name for the run to be scheduled.</p>
    #
    # @option params [ScheduleRunTest] :test
    #   <p>Information about the test for the run to be scheduled.</p>
    #
    # @option params [ScheduleRunConfiguration] :configuration
    #   <p>Information about the settings for the run to be scheduled.</p>
    #
    # @option params [ExecutionConfiguration] :execution_configuration
    #   <p>Specifies configuration information about a test run, such as the execution timeout
    #               (in minutes).</p>
    #
    # @return [Types::ScheduleRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.schedule_run(
    #     project_arn: 'projectArn', # required
    #     app_arn: 'appArn',
    #     device_pool_arn: 'devicePoolArn',
    #     device_selection_configuration: {
    #       filters: [
    #         {
    #           attribute: 'ARN', # required - accepts ["ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"]
    #           operator: 'EQUALS', # required - accepts ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"]
    #           values: [
    #             'member'
    #           ] # required
    #         }
    #       ], # required
    #       max_devices: 1 # required
    #     },
    #     name: 'name',
    #     test: {
    #       type: 'BUILTIN_FUZZ', # required - accepts ["BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"]
    #       test_package_arn: 'testPackageArn',
    #       test_spec_arn: 'testSpecArn',
    #       filter: 'filter',
    #       parameters: {
    #         'key' => 'value'
    #       }
    #     }, # required
    #     configuration: {
    #       extra_data_package_arn: 'extraDataPackageArn',
    #       network_profile_arn: 'networkProfileArn',
    #       locale: 'locale',
    #       location: {
    #         latitude: 1.0, # required
    #         longitude: 1.0 # required
    #       },
    #       vpce_configuration_arns: [
    #         'member'
    #       ],
    #       customer_artifact_paths: {
    #         ios_paths: [
    #           'member'
    #         ],
    #         android_paths: [
    #           'member'
    #         ],
    #         device_host_paths: [
    #           'member'
    #         ]
    #       },
    #       radios: {
    #         wifi: false,
    #         bluetooth: false,
    #         nfc: false,
    #         gps: false
    #       },
    #       billing_method: 'METERED' # accepts ["METERED", "UNMETERED"]
    #     },
    #     execution_configuration: {
    #       job_timeout_minutes: 1,
    #       accounts_cleanup: false,
    #       app_packages_cleanup: false,
    #       video_capture: false,
    #       skip_app_resign: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ScheduleRunOutput
    #   resp.data.run #=> Types::Run
    #   resp.data.run.arn #=> String
    #   resp.data.run.name #=> String
    #   resp.data.run.type #=> String, one of ["BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"]
    #   resp.data.run.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.run.created #=> Time
    #   resp.data.run.status #=> String, one of ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"]
    #   resp.data.run.result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.run.started #=> Time
    #   resp.data.run.stopped #=> Time
    #   resp.data.run.counters #=> Types::Counters
    #   resp.data.run.counters.total #=> Integer
    #   resp.data.run.counters.passed #=> Integer
    #   resp.data.run.counters.failed #=> Integer
    #   resp.data.run.counters.warned #=> Integer
    #   resp.data.run.counters.errored #=> Integer
    #   resp.data.run.counters.stopped #=> Integer
    #   resp.data.run.counters.skipped #=> Integer
    #   resp.data.run.message #=> String
    #   resp.data.run.total_jobs #=> Integer
    #   resp.data.run.completed_jobs #=> Integer
    #   resp.data.run.billing_method #=> String, one of ["METERED", "UNMETERED"]
    #   resp.data.run.device_minutes #=> Types::DeviceMinutes
    #   resp.data.run.device_minutes.total #=> Float
    #   resp.data.run.device_minutes.metered #=> Float
    #   resp.data.run.device_minutes.unmetered #=> Float
    #   resp.data.run.network_profile #=> Types::NetworkProfile
    #   resp.data.run.network_profile.arn #=> String
    #   resp.data.run.network_profile.name #=> String
    #   resp.data.run.network_profile.description #=> String
    #   resp.data.run.network_profile.type #=> String, one of ["CURATED", "PRIVATE"]
    #   resp.data.run.network_profile.uplink_bandwidth_bits #=> Integer
    #   resp.data.run.network_profile.downlink_bandwidth_bits #=> Integer
    #   resp.data.run.network_profile.uplink_delay_ms #=> Integer
    #   resp.data.run.network_profile.downlink_delay_ms #=> Integer
    #   resp.data.run.network_profile.uplink_jitter_ms #=> Integer
    #   resp.data.run.network_profile.downlink_jitter_ms #=> Integer
    #   resp.data.run.network_profile.uplink_loss_percent #=> Integer
    #   resp.data.run.network_profile.downlink_loss_percent #=> Integer
    #   resp.data.run.parsing_result_url #=> String
    #   resp.data.run.result_code #=> String, one of ["PARSING_FAILED", "VPC_ENDPOINT_SETUP_FAILED"]
    #   resp.data.run.seed #=> Integer
    #   resp.data.run.app_upload #=> String
    #   resp.data.run.event_count #=> Integer
    #   resp.data.run.job_timeout_minutes #=> Integer
    #   resp.data.run.device_pool_arn #=> String
    #   resp.data.run.locale #=> String
    #   resp.data.run.radios #=> Types::Radios
    #   resp.data.run.radios.wifi #=> Boolean
    #   resp.data.run.radios.bluetooth #=> Boolean
    #   resp.data.run.radios.nfc #=> Boolean
    #   resp.data.run.radios.gps #=> Boolean
    #   resp.data.run.location #=> Types::Location
    #   resp.data.run.location.latitude #=> Float
    #   resp.data.run.location.longitude #=> Float
    #   resp.data.run.customer_artifact_paths #=> Types::CustomerArtifactPaths
    #   resp.data.run.customer_artifact_paths.ios_paths #=> Array<String>
    #   resp.data.run.customer_artifact_paths.ios_paths[0] #=> String
    #   resp.data.run.customer_artifact_paths.android_paths #=> Array<String>
    #   resp.data.run.customer_artifact_paths.android_paths[0] #=> String
    #   resp.data.run.customer_artifact_paths.device_host_paths #=> Array<String>
    #   resp.data.run.customer_artifact_paths.device_host_paths[0] #=> String
    #   resp.data.run.web_url #=> String
    #   resp.data.run.skip_app_resign #=> Boolean
    #   resp.data.run.test_spec_arn #=> String
    #   resp.data.run.device_selection_result #=> Types::DeviceSelectionResult
    #   resp.data.run.device_selection_result.filters #=> Array<DeviceFilter>
    #   resp.data.run.device_selection_result.filters[0] #=> Types::DeviceFilter
    #   resp.data.run.device_selection_result.filters[0].attribute #=> String, one of ["ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"]
    #   resp.data.run.device_selection_result.filters[0].operator #=> String, one of ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"]
    #   resp.data.run.device_selection_result.filters[0].values #=> Array<String>
    #   resp.data.run.device_selection_result.filters[0].values[0] #=> String
    #   resp.data.run.device_selection_result.matched_devices_count #=> Integer
    #   resp.data.run.device_selection_result.max_devices #=> Integer
    #
    def schedule_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ScheduleRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ScheduleRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ScheduleRun
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException, Errors::IdempotencyException]),
        data_parser: Parsers::ScheduleRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ScheduleRun,
        stubs: @stubs,
        params_class: Params::ScheduleRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :schedule_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiates a stop request for the current job. AWS Device Farm immediately stops the job on the device
    #             where tests have not started. You are not billed for this device. On the device where tests have started,
    #             setup suite and teardown suite tests run to completion on the device. You are billed for setup, teardown,
    #             and any tests that were in progress or already completed.</p>
    #
    # @param [Hash] params
    #   See {Types::StopJobInput}.
    #
    # @option params [String] :arn
    #   <p>Represents the Amazon Resource Name (ARN) of the Device Farm job to stop.</p>
    #
    # @return [Types::StopJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_job(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopJobOutput
    #   resp.data.job #=> Types::Job
    #   resp.data.job.arn #=> String
    #   resp.data.job.name #=> String
    #   resp.data.job.type #=> String, one of ["BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"]
    #   resp.data.job.created #=> Time
    #   resp.data.job.status #=> String, one of ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"]
    #   resp.data.job.result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.job.started #=> Time
    #   resp.data.job.stopped #=> Time
    #   resp.data.job.counters #=> Types::Counters
    #   resp.data.job.counters.total #=> Integer
    #   resp.data.job.counters.passed #=> Integer
    #   resp.data.job.counters.failed #=> Integer
    #   resp.data.job.counters.warned #=> Integer
    #   resp.data.job.counters.errored #=> Integer
    #   resp.data.job.counters.stopped #=> Integer
    #   resp.data.job.counters.skipped #=> Integer
    #   resp.data.job.message #=> String
    #   resp.data.job.device #=> Types::Device
    #   resp.data.job.device.arn #=> String
    #   resp.data.job.device.name #=> String
    #   resp.data.job.device.manufacturer #=> String
    #   resp.data.job.device.model #=> String
    #   resp.data.job.device.model_id #=> String
    #   resp.data.job.device.form_factor #=> String, one of ["PHONE", "TABLET"]
    #   resp.data.job.device.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.job.device.os #=> String
    #   resp.data.job.device.cpu #=> Types::CPU
    #   resp.data.job.device.cpu.frequency #=> String
    #   resp.data.job.device.cpu.architecture #=> String
    #   resp.data.job.device.cpu.clock #=> Float
    #   resp.data.job.device.resolution #=> Types::Resolution
    #   resp.data.job.device.resolution.width #=> Integer
    #   resp.data.job.device.resolution.height #=> Integer
    #   resp.data.job.device.heap_size #=> Integer
    #   resp.data.job.device.memory #=> Integer
    #   resp.data.job.device.image #=> String
    #   resp.data.job.device.carrier #=> String
    #   resp.data.job.device.radio #=> String
    #   resp.data.job.device.remote_access_enabled #=> Boolean
    #   resp.data.job.device.remote_debug_enabled #=> Boolean
    #   resp.data.job.device.fleet_type #=> String
    #   resp.data.job.device.fleet_name #=> String
    #   resp.data.job.device.instances #=> Array<DeviceInstance>
    #   resp.data.job.device.instances[0] #=> Types::DeviceInstance
    #   resp.data.job.device.instances[0].arn #=> String
    #   resp.data.job.device.instances[0].device_arn #=> String
    #   resp.data.job.device.instances[0].labels #=> Array<String>
    #   resp.data.job.device.instances[0].labels[0] #=> String
    #   resp.data.job.device.instances[0].status #=> String, one of ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"]
    #   resp.data.job.device.instances[0].udid #=> String
    #   resp.data.job.device.instances[0].instance_profile #=> Types::InstanceProfile
    #   resp.data.job.device.instances[0].instance_profile.arn #=> String
    #   resp.data.job.device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.data.job.device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.job.device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.job.device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.data.job.device.instances[0].instance_profile.name #=> String
    #   resp.data.job.device.instances[0].instance_profile.description #=> String
    #   resp.data.job.device.availability #=> String, one of ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #   resp.data.job.instance_arn #=> String
    #   resp.data.job.device_minutes #=> Types::DeviceMinutes
    #   resp.data.job.device_minutes.total #=> Float
    #   resp.data.job.device_minutes.metered #=> Float
    #   resp.data.job.device_minutes.unmetered #=> Float
    #   resp.data.job.video_endpoint #=> String
    #   resp.data.job.video_capture #=> Boolean
    #
    def stop_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::StopJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopJob,
        stubs: @stubs,
        params_class: Params::StopJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Ends a specified remote access session.</p>
    #
    # @param [Hash] params
    #   See {Types::StopRemoteAccessSessionInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the remote access session to stop.</p>
    #
    # @return [Types::StopRemoteAccessSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_remote_access_session(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopRemoteAccessSessionOutput
    #   resp.data.remote_access_session #=> Types::RemoteAccessSession
    #   resp.data.remote_access_session.arn #=> String
    #   resp.data.remote_access_session.name #=> String
    #   resp.data.remote_access_session.created #=> Time
    #   resp.data.remote_access_session.status #=> String, one of ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"]
    #   resp.data.remote_access_session.result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.remote_access_session.message #=> String
    #   resp.data.remote_access_session.started #=> Time
    #   resp.data.remote_access_session.stopped #=> Time
    #   resp.data.remote_access_session.device #=> Types::Device
    #   resp.data.remote_access_session.device.arn #=> String
    #   resp.data.remote_access_session.device.name #=> String
    #   resp.data.remote_access_session.device.manufacturer #=> String
    #   resp.data.remote_access_session.device.model #=> String
    #   resp.data.remote_access_session.device.model_id #=> String
    #   resp.data.remote_access_session.device.form_factor #=> String, one of ["PHONE", "TABLET"]
    #   resp.data.remote_access_session.device.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.remote_access_session.device.os #=> String
    #   resp.data.remote_access_session.device.cpu #=> Types::CPU
    #   resp.data.remote_access_session.device.cpu.frequency #=> String
    #   resp.data.remote_access_session.device.cpu.architecture #=> String
    #   resp.data.remote_access_session.device.cpu.clock #=> Float
    #   resp.data.remote_access_session.device.resolution #=> Types::Resolution
    #   resp.data.remote_access_session.device.resolution.width #=> Integer
    #   resp.data.remote_access_session.device.resolution.height #=> Integer
    #   resp.data.remote_access_session.device.heap_size #=> Integer
    #   resp.data.remote_access_session.device.memory #=> Integer
    #   resp.data.remote_access_session.device.image #=> String
    #   resp.data.remote_access_session.device.carrier #=> String
    #   resp.data.remote_access_session.device.radio #=> String
    #   resp.data.remote_access_session.device.remote_access_enabled #=> Boolean
    #   resp.data.remote_access_session.device.remote_debug_enabled #=> Boolean
    #   resp.data.remote_access_session.device.fleet_type #=> String
    #   resp.data.remote_access_session.device.fleet_name #=> String
    #   resp.data.remote_access_session.device.instances #=> Array<DeviceInstance>
    #   resp.data.remote_access_session.device.instances[0] #=> Types::DeviceInstance
    #   resp.data.remote_access_session.device.instances[0].arn #=> String
    #   resp.data.remote_access_session.device.instances[0].device_arn #=> String
    #   resp.data.remote_access_session.device.instances[0].labels #=> Array<String>
    #   resp.data.remote_access_session.device.instances[0].labels[0] #=> String
    #   resp.data.remote_access_session.device.instances[0].status #=> String, one of ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"]
    #   resp.data.remote_access_session.device.instances[0].udid #=> String
    #   resp.data.remote_access_session.device.instances[0].instance_profile #=> Types::InstanceProfile
    #   resp.data.remote_access_session.device.instances[0].instance_profile.arn #=> String
    #   resp.data.remote_access_session.device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.data.remote_access_session.device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.remote_access_session.device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.remote_access_session.device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.data.remote_access_session.device.instances[0].instance_profile.name #=> String
    #   resp.data.remote_access_session.device.instances[0].instance_profile.description #=> String
    #   resp.data.remote_access_session.device.availability #=> String, one of ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #   resp.data.remote_access_session.instance_arn #=> String
    #   resp.data.remote_access_session.remote_debug_enabled #=> Boolean
    #   resp.data.remote_access_session.remote_record_enabled #=> Boolean
    #   resp.data.remote_access_session.remote_record_app_arn #=> String
    #   resp.data.remote_access_session.host_address #=> String
    #   resp.data.remote_access_session.client_id #=> String
    #   resp.data.remote_access_session.billing_method #=> String, one of ["METERED", "UNMETERED"]
    #   resp.data.remote_access_session.device_minutes #=> Types::DeviceMinutes
    #   resp.data.remote_access_session.device_minutes.total #=> Float
    #   resp.data.remote_access_session.device_minutes.metered #=> Float
    #   resp.data.remote_access_session.device_minutes.unmetered #=> Float
    #   resp.data.remote_access_session.endpoint #=> String
    #   resp.data.remote_access_session.device_udid #=> String
    #   resp.data.remote_access_session.interaction_mode #=> String, one of ["INTERACTIVE", "NO_VIDEO", "VIDEO_ONLY"]
    #   resp.data.remote_access_session.skip_app_resign #=> Boolean
    #
    def stop_remote_access_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopRemoteAccessSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopRemoteAccessSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopRemoteAccessSession
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::StopRemoteAccessSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopRemoteAccessSession,
        stubs: @stubs,
        params_class: Params::StopRemoteAccessSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_remote_access_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiates a stop request for the current test run. AWS Device Farm immediately stops the run on devices
    #             where tests have not started. You are not billed for these devices. On devices where tests have started
    #             executing, setup suite and teardown suite tests run to completion on those devices. You are billed for
    #             setup, teardown, and any tests that were in progress or already completed.</p>
    #
    # @param [Hash] params
    #   See {Types::StopRunInput}.
    #
    # @option params [String] :arn
    #   <p>Represents the Amazon Resource Name (ARN) of the Device Farm run to stop.</p>
    #
    # @return [Types::StopRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_run(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopRunOutput
    #   resp.data.run #=> Types::Run
    #   resp.data.run.arn #=> String
    #   resp.data.run.name #=> String
    #   resp.data.run.type #=> String, one of ["BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"]
    #   resp.data.run.platform #=> String, one of ["ANDROID", "IOS"]
    #   resp.data.run.created #=> Time
    #   resp.data.run.status #=> String, one of ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"]
    #   resp.data.run.result #=> String, one of ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"]
    #   resp.data.run.started #=> Time
    #   resp.data.run.stopped #=> Time
    #   resp.data.run.counters #=> Types::Counters
    #   resp.data.run.counters.total #=> Integer
    #   resp.data.run.counters.passed #=> Integer
    #   resp.data.run.counters.failed #=> Integer
    #   resp.data.run.counters.warned #=> Integer
    #   resp.data.run.counters.errored #=> Integer
    #   resp.data.run.counters.stopped #=> Integer
    #   resp.data.run.counters.skipped #=> Integer
    #   resp.data.run.message #=> String
    #   resp.data.run.total_jobs #=> Integer
    #   resp.data.run.completed_jobs #=> Integer
    #   resp.data.run.billing_method #=> String, one of ["METERED", "UNMETERED"]
    #   resp.data.run.device_minutes #=> Types::DeviceMinutes
    #   resp.data.run.device_minutes.total #=> Float
    #   resp.data.run.device_minutes.metered #=> Float
    #   resp.data.run.device_minutes.unmetered #=> Float
    #   resp.data.run.network_profile #=> Types::NetworkProfile
    #   resp.data.run.network_profile.arn #=> String
    #   resp.data.run.network_profile.name #=> String
    #   resp.data.run.network_profile.description #=> String
    #   resp.data.run.network_profile.type #=> String, one of ["CURATED", "PRIVATE"]
    #   resp.data.run.network_profile.uplink_bandwidth_bits #=> Integer
    #   resp.data.run.network_profile.downlink_bandwidth_bits #=> Integer
    #   resp.data.run.network_profile.uplink_delay_ms #=> Integer
    #   resp.data.run.network_profile.downlink_delay_ms #=> Integer
    #   resp.data.run.network_profile.uplink_jitter_ms #=> Integer
    #   resp.data.run.network_profile.downlink_jitter_ms #=> Integer
    #   resp.data.run.network_profile.uplink_loss_percent #=> Integer
    #   resp.data.run.network_profile.downlink_loss_percent #=> Integer
    #   resp.data.run.parsing_result_url #=> String
    #   resp.data.run.result_code #=> String, one of ["PARSING_FAILED", "VPC_ENDPOINT_SETUP_FAILED"]
    #   resp.data.run.seed #=> Integer
    #   resp.data.run.app_upload #=> String
    #   resp.data.run.event_count #=> Integer
    #   resp.data.run.job_timeout_minutes #=> Integer
    #   resp.data.run.device_pool_arn #=> String
    #   resp.data.run.locale #=> String
    #   resp.data.run.radios #=> Types::Radios
    #   resp.data.run.radios.wifi #=> Boolean
    #   resp.data.run.radios.bluetooth #=> Boolean
    #   resp.data.run.radios.nfc #=> Boolean
    #   resp.data.run.radios.gps #=> Boolean
    #   resp.data.run.location #=> Types::Location
    #   resp.data.run.location.latitude #=> Float
    #   resp.data.run.location.longitude #=> Float
    #   resp.data.run.customer_artifact_paths #=> Types::CustomerArtifactPaths
    #   resp.data.run.customer_artifact_paths.ios_paths #=> Array<String>
    #   resp.data.run.customer_artifact_paths.ios_paths[0] #=> String
    #   resp.data.run.customer_artifact_paths.android_paths #=> Array<String>
    #   resp.data.run.customer_artifact_paths.android_paths[0] #=> String
    #   resp.data.run.customer_artifact_paths.device_host_paths #=> Array<String>
    #   resp.data.run.customer_artifact_paths.device_host_paths[0] #=> String
    #   resp.data.run.web_url #=> String
    #   resp.data.run.skip_app_resign #=> Boolean
    #   resp.data.run.test_spec_arn #=> String
    #   resp.data.run.device_selection_result #=> Types::DeviceSelectionResult
    #   resp.data.run.device_selection_result.filters #=> Array<DeviceFilter>
    #   resp.data.run.device_selection_result.filters[0] #=> Types::DeviceFilter
    #   resp.data.run.device_selection_result.filters[0].attribute #=> String, one of ["ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"]
    #   resp.data.run.device_selection_result.filters[0].operator #=> String, one of ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"]
    #   resp.data.run.device_selection_result.filters[0].values #=> Array<String>
    #   resp.data.run.device_selection_result.filters[0].values[0] #=> String
    #   resp.data.run.device_selection_result.matched_devices_count #=> Integer
    #   resp.data.run.device_selection_result.max_devices #=> Integer
    #
    def stop_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopRun
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::StopRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopRun,
        stubs: @stubs,
        params_class: Params::StopRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified tags to a resource with the specified <code>resourceArn</code>. If existing tags
    #             on a resource are not specified in the request parameters, they are not changed. When a resource is deleted,
    #             the tags associated with that resource are also deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource or resources to which to add tags. You can associate tags
    #               with the following Device Farm resources: <code>PROJECT</code>, <code>RUN</code>,
    #                   <code>NETWORK_PROFILE</code>, <code>INSTANCE_PROFILE</code>, <code>DEVICE_INSTANCE</code>,
    #                   <code>SESSION</code>, <code>DEVICE_POOL</code>, <code>DEVICE</code>, and
    #               <code>VPCE_CONFIGURATION</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs. Tag keys can have a maximum
    #               character length of 128 characters. Tag values can have a maximum length of 256 characters.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TagOperationException, Errors::TooManyTagsException, Errors::ArgumentException, Errors::TagPolicyException]),
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

    # <p>Deletes the specified tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource or resources from which to delete tags. You can associate
    #               tags with the following Device Farm resources: <code>PROJECT</code>, <code>RUN</code>,
    #                   <code>NETWORK_PROFILE</code>, <code>INSTANCE_PROFILE</code>, <code>DEVICE_INSTANCE</code>,
    #                   <code>SESSION</code>, <code>DEVICE_POOL</code>, <code>DEVICE</code>, and
    #               <code>VPCE_CONFIGURATION</code>.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TagOperationException, Errors::ArgumentException]),
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

    # <p>Updates information about a private device instance.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDeviceInstanceInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the device instance.</p>
    #
    # @option params [String] :profile_arn
    #   <p>The ARN of the profile that you want to associate with the device instance.</p>
    #
    # @option params [Array<String>] :labels
    #   <p>An array of strings that you want to associate with the device instance.</p>
    #
    # @return [Types::UpdateDeviceInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_instance(
    #     arn: 'arn', # required
    #     profile_arn: 'profileArn',
    #     labels: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDeviceInstanceOutput
    #   resp.data.device_instance #=> Types::DeviceInstance
    #   resp.data.device_instance.arn #=> String
    #   resp.data.device_instance.device_arn #=> String
    #   resp.data.device_instance.labels #=> Array<String>
    #   resp.data.device_instance.labels[0] #=> String
    #   resp.data.device_instance.status #=> String, one of ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"]
    #   resp.data.device_instance.udid #=> String
    #   resp.data.device_instance.instance_profile #=> Types::InstanceProfile
    #   resp.data.device_instance.instance_profile.arn #=> String
    #   resp.data.device_instance.instance_profile.package_cleanup #=> Boolean
    #   resp.data.device_instance.instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.device_instance.instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.device_instance.instance_profile.reboot_after_use #=> Boolean
    #   resp.data.device_instance.instance_profile.name #=> String
    #   resp.data.device_instance.instance_profile.description #=> String
    #
    def update_device_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDeviceInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDeviceInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDeviceInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateDeviceInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDeviceInstance,
        stubs: @stubs,
        params_class: Params::UpdateDeviceInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_device_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the name, description, and rules in a device pool given the attributes and
    #             the pool ARN. Rule updates are all-or-nothing, meaning they can only be updated as a
    #             whole (or not at all).</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDevicePoolInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the Device Farm device pool to update.</p>
    #
    # @option params [String] :name
    #   <p>A string that represents the name of the device pool to update.</p>
    #
    # @option params [String] :description
    #   <p>A description of the device pool to update.</p>
    #
    # @option params [Array<Rule>] :rules
    #   <p>Represents the rules to modify for the device pool. Updating rules is optional. If you update rules for
    #               your request, the update replaces the existing rules.</p>
    #
    # @option params [Integer] :max_devices
    #   <p>The number of devices that Device Farm can add to your device pool. Device Farm adds
    #               devices that are available and that meet the criteria that you assign for the
    #                   <code>rules</code> parameter. Depending on how many devices meet these constraints,
    #               your device pool might contain fewer devices than the value for this parameter.</p>
    #           <p>By specifying the maximum number of devices, you can control the costs that you incur
    #               by running tests.</p>
    #           <p>If you use this parameter in your request, you cannot use the
    #                   <code>clearMaxDevices</code> parameter in the same request.</p>
    #
    # @option params [Boolean] :clear_max_devices
    #   <p>Sets whether the <code>maxDevices</code> parameter applies to your device pool. If you set this parameter
    #               to <code>true</code>, the <code>maxDevices</code> parameter does not apply, and Device Farm does not limit
    #               the number of devices that it adds to your device pool. In this case, Device Farm adds all available devices
    #               that meet the criteria specified in the <code>rules</code> parameter.</p>
    #           <p>If you use this parameter in your request, you cannot use the <code>maxDevices</code>
    #               parameter in the same request.</p>
    #
    # @return [Types::UpdateDevicePoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_pool(
    #     arn: 'arn', # required
    #     name: 'name',
    #     description: 'description',
    #     rules: [
    #       {
    #         attribute: 'ARN', # accepts ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"]
    #         operator: 'EQUALS', # accepts ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"]
    #         value: 'value'
    #       }
    #     ],
    #     max_devices: 1,
    #     clear_max_devices: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDevicePoolOutput
    #   resp.data.device_pool #=> Types::DevicePool
    #   resp.data.device_pool.arn #=> String
    #   resp.data.device_pool.name #=> String
    #   resp.data.device_pool.description #=> String
    #   resp.data.device_pool.type #=> String, one of ["CURATED", "PRIVATE"]
    #   resp.data.device_pool.rules #=> Array<Rule>
    #   resp.data.device_pool.rules[0] #=> Types::Rule
    #   resp.data.device_pool.rules[0].attribute #=> String, one of ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"]
    #   resp.data.device_pool.rules[0].operator #=> String, one of ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"]
    #   resp.data.device_pool.rules[0].value #=> String
    #   resp.data.device_pool.max_devices #=> Integer
    #
    def update_device_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDevicePoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDevicePoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDevicePool
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateDevicePool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDevicePool,
        stubs: @stubs,
        params_class: Params::UpdateDevicePoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_device_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates information about an existing private device instance profile.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateInstanceProfileInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the instance profile.</p>
    #
    # @option params [String] :name
    #   <p>The updated name for your instance profile.</p>
    #
    # @option params [String] :description
    #   <p>The updated description for your instance profile.</p>
    #
    # @option params [Boolean] :package_cleanup
    #   <p>The updated choice for whether you want to specify package cleanup. The default value
    #               is <code>false</code> for private devices.</p>
    #
    # @option params [Array<String>] :exclude_app_packages_from_cleanup
    #   <p>An array of strings that specifies the list of app packages that should not be cleaned up from the device
    #               after a test run is over.</p>
    #           <p>The list of packages is only considered if you set <code>packageCleanup</code> to
    #                   <code>true</code>.</p>
    #
    # @option params [Boolean] :reboot_after_use
    #   <p>The updated choice for whether you want to reboot the device after use. The default
    #               value is <code>true</code>.</p>
    #
    # @return [Types::UpdateInstanceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance_profile(
    #     arn: 'arn', # required
    #     name: 'name',
    #     description: 'description',
    #     package_cleanup: false,
    #     exclude_app_packages_from_cleanup: [
    #       'member'
    #     ],
    #     reboot_after_use: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateInstanceProfileOutput
    #   resp.data.instance_profile #=> Types::InstanceProfile
    #   resp.data.instance_profile.arn #=> String
    #   resp.data.instance_profile.package_cleanup #=> Boolean
    #   resp.data.instance_profile.exclude_app_packages_from_cleanup #=> Array<String>
    #   resp.data.instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.data.instance_profile.reboot_after_use #=> Boolean
    #   resp.data.instance_profile.name #=> String
    #   resp.data.instance_profile.description #=> String
    #
    def update_instance_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateInstanceProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateInstanceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateInstanceProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateInstanceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateInstanceProfile,
        stubs: @stubs,
        params_class: Params::UpdateInstanceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_instance_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the network profile.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateNetworkProfileInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the project for which you want to update network
    #               profile settings.</p>
    #
    # @option params [String] :name
    #   <p>The name of the network profile about which you are returning
    #               information.</p>
    #
    # @option params [String] :description
    #   <p>The description of the network profile about which you are returning
    #               information.</p>
    #
    # @option params [String] :type
    #   <p>The type of network profile to return information about. Valid values are listed here.</p>
    #
    # @option params [Integer] :uplink_bandwidth_bits
    #   <p>The data throughput rate in bits per second, as an integer from 0 to
    #               104857600.</p>
    #
    # @option params [Integer] :downlink_bandwidth_bits
    #   <p>The data throughput rate in bits per second, as an integer from 0 to
    #               104857600.</p>
    #
    # @option params [Integer] :uplink_delay_ms
    #   <p>Delay time for all packets to destination in milliseconds as an integer from 0 to
    #               2000.</p>
    #
    # @option params [Integer] :downlink_delay_ms
    #   <p>Delay time for all packets to destination in milliseconds as an integer from 0 to
    #               2000.</p>
    #
    # @option params [Integer] :uplink_jitter_ms
    #   <p>Time variation in the delay of received packets in milliseconds as an integer from
    #               0 to 2000.</p>
    #
    # @option params [Integer] :downlink_jitter_ms
    #   <p>Time variation in the delay of received packets in milliseconds as an integer from
    #               0 to 2000.</p>
    #
    # @option params [Integer] :uplink_loss_percent
    #   <p>Proportion of transmitted packets that fail to arrive from 0 to 100
    #               percent.</p>
    #
    # @option params [Integer] :downlink_loss_percent
    #   <p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>
    #
    # @return [Types::UpdateNetworkProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network_profile(
    #     arn: 'arn', # required
    #     name: 'name',
    #     description: 'description',
    #     type: 'CURATED', # accepts ["CURATED", "PRIVATE"]
    #     uplink_bandwidth_bits: 1,
    #     downlink_bandwidth_bits: 1,
    #     uplink_delay_ms: 1,
    #     downlink_delay_ms: 1,
    #     uplink_jitter_ms: 1,
    #     downlink_jitter_ms: 1,
    #     uplink_loss_percent: 1,
    #     downlink_loss_percent: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateNetworkProfileOutput
    #   resp.data.network_profile #=> Types::NetworkProfile
    #   resp.data.network_profile.arn #=> String
    #   resp.data.network_profile.name #=> String
    #   resp.data.network_profile.description #=> String
    #   resp.data.network_profile.type #=> String, one of ["CURATED", "PRIVATE"]
    #   resp.data.network_profile.uplink_bandwidth_bits #=> Integer
    #   resp.data.network_profile.downlink_bandwidth_bits #=> Integer
    #   resp.data.network_profile.uplink_delay_ms #=> Integer
    #   resp.data.network_profile.downlink_delay_ms #=> Integer
    #   resp.data.network_profile.uplink_jitter_ms #=> Integer
    #   resp.data.network_profile.downlink_jitter_ms #=> Integer
    #   resp.data.network_profile.uplink_loss_percent #=> Integer
    #   resp.data.network_profile.downlink_loss_percent #=> Integer
    #
    def update_network_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateNetworkProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateNetworkProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateNetworkProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateNetworkProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateNetworkProfile,
        stubs: @stubs,
        params_class: Params::UpdateNetworkProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_network_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the specified project name, given the project ARN and a new
    #             name.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProjectInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the project whose name to update.</p>
    #
    # @option params [String] :name
    #   <p>A string that represents the new name of the project that you are updating.</p>
    #
    # @option params [Integer] :default_job_timeout_minutes
    #   <p>The number of minutes a test run in the project executes before it times out.</p>
    #
    # @return [Types::UpdateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project(
    #     arn: 'arn', # required
    #     name: 'name',
    #     default_job_timeout_minutes: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProjectOutput
    #   resp.data.project #=> Types::Project
    #   resp.data.project.arn #=> String
    #   resp.data.project.name #=> String
    #   resp.data.project.default_job_timeout_minutes #=> Integer
    #   resp.data.project.created #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
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

    # <p>Change details of a project.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTestGridProjectInput}.
    #
    # @option params [String] :project_arn
    #   <p>ARN of the project to update.</p>
    #
    # @option params [String] :name
    #   <p>Human-readable name for the project.</p>
    #
    # @option params [String] :description
    #   <p>Human-readable description for the project.</p>
    #
    # @option params [TestGridVpcConfig] :vpc_config
    #   <p>The VPC security groups and subnets that are attached to a project.</p>
    #
    # @return [Types::UpdateTestGridProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_test_grid_project(
    #     project_arn: 'projectArn', # required
    #     name: 'name',
    #     description: 'description',
    #     vpc_config: {
    #       security_group_ids: [
    #         'member'
    #       ], # required
    #       subnet_ids: [
    #         'member'
    #       ], # required
    #       vpc_id: 'vpcId' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTestGridProjectOutput
    #   resp.data.test_grid_project #=> Types::TestGridProject
    #   resp.data.test_grid_project.arn #=> String
    #   resp.data.test_grid_project.name #=> String
    #   resp.data.test_grid_project.description #=> String
    #   resp.data.test_grid_project.vpc_config #=> Types::TestGridVpcConfig
    #   resp.data.test_grid_project.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.test_grid_project.vpc_config.security_group_ids[0] #=> String
    #   resp.data.test_grid_project.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.test_grid_project.vpc_config.subnet_ids[0] #=> String
    #   resp.data.test_grid_project.vpc_config.vpc_id #=> String
    #   resp.data.test_grid_project.created #=> Time
    #
    def update_test_grid_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTestGridProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTestGridProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTestGridProject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceException, Errors::ArgumentException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateTestGridProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTestGridProject,
        stubs: @stubs,
        params_class: Params::UpdateTestGridProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_test_grid_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an uploaded test spec.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUploadInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the uploaded test spec.</p>
    #
    # @option params [String] :name
    #   <p>The upload's test spec file name. The name must not contain any forward slashes (/). The test spec file
    #               name must end with the <code>.yaml</code> or <code>.yml</code> file extension.</p>
    #
    # @option params [String] :content_type
    #   <p>The upload's content type (for example, <code>application/x-yaml</code>).</p>
    #
    # @option params [Boolean] :edit_content
    #   <p>Set to true if the YAML file has changed and must be updated. Otherwise, set to false.</p>
    #
    # @return [Types::UpdateUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_upload(
    #     arn: 'arn', # required
    #     name: 'name',
    #     content_type: 'contentType',
    #     edit_content: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUploadOutput
    #   resp.data.upload #=> Types::Upload
    #   resp.data.upload.arn #=> String
    #   resp.data.upload.name #=> String
    #   resp.data.upload.created #=> Time
    #   resp.data.upload.type #=> String, one of ["ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"]
    #   resp.data.upload.status #=> String, one of ["INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"]
    #   resp.data.upload.url #=> String
    #   resp.data.upload.metadata #=> String
    #   resp.data.upload.content_type #=> String
    #   resp.data.upload.message #=> String
    #   resp.data.upload.category #=> String, one of ["CURATED", "PRIVATE"]
    #
    def update_upload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUploadInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUploadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUpload
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ArgumentException, Errors::ServiceAccountException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUpload,
        stubs: @stubs,
        params_class: Params::UpdateUploadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_upload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates information about an Amazon Virtual Private Cloud (VPC) endpoint configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVPCEConfigurationInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to
    #               update.</p>
    #
    # @option params [String] :vpce_configuration_name
    #   <p>The friendly name you give to your VPC endpoint configuration to manage your configurations more
    #               easily.</p>
    #
    # @option params [String] :vpce_service_name
    #   <p>The name of the VPC endpoint service running in your AWS account that you want Device Farm to test.</p>
    #
    # @option params [String] :service_dns_name
    #   <p>The DNS (domain) name used to connect to your private service in your VPC. The DNS name must not already
    #               be in use on the internet.</p>
    #
    # @option params [String] :vpce_configuration_description
    #   <p>An optional description that provides details about your VPC endpoint configuration.</p>
    #
    # @return [Types::UpdateVPCEConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vpce_configuration(
    #     arn: 'arn', # required
    #     vpce_configuration_name: 'vpceConfigurationName',
    #     vpce_service_name: 'vpceServiceName',
    #     service_dns_name: 'serviceDnsName',
    #     vpce_configuration_description: 'vpceConfigurationDescription'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVPCEConfigurationOutput
    #   resp.data.vpce_configuration #=> Types::VPCEConfiguration
    #   resp.data.vpce_configuration.arn #=> String
    #   resp.data.vpce_configuration.vpce_configuration_name #=> String
    #   resp.data.vpce_configuration.vpce_service_name #=> String
    #   resp.data.vpce_configuration.service_dns_name #=> String
    #   resp.data.vpce_configuration.vpce_configuration_description #=> String
    #
    def update_vpce_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVPCEConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVPCEConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVPCEConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidOperationException, Errors::ArgumentException, Errors::ServiceAccountException]),
        data_parser: Parsers::UpdateVPCEConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVPCEConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateVPCEConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_vpce_configuration
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
