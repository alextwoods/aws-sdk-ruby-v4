# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::OpsWorks
  # An API client for OpsWorks_20130218
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS OpsWorks</fullname>
  #          <p>Welcome to the <i>AWS OpsWorks Stacks API Reference</i>. This guide provides descriptions, syntax, and
  #       usage examples for AWS OpsWorks Stacks actions and data types, including common parameters and error
  #       codes. </p>
  #          <p>AWS OpsWorks Stacks is an application management service that provides an integrated experience for
  #       overseeing the complete application lifecycle. For information about this product, go to the
  #         <a href="http://aws.amazon.com/opsworks/">AWS OpsWorks</a> details page. </p>
  #
  #          <p>
  #             <b>SDKs and CLI</b>
  #          </p>
  #          <p>The most common way to use the AWS OpsWorks Stacks API is by using the AWS Command Line Interface (CLI) or by using one of the AWS SDKs to implement applications in your preferred language. For more information, see:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html">AWS CLI</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html">AWS SDK for Java</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/sdkfornet/latest/apidocs/html/N_Amazon_OpsWorks.htm">AWS SDK for
  #           .NET</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/aws-sdk-php-2/latest/class-Aws.OpsWorks.OpsWorksClient.html">AWS
  #           SDK for PHP 2</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="http://docs.aws.amazon.com/sdkforruby/api/">AWS SDK for Ruby</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="http://aws.amazon.com/documentation/sdkforjavascript/">AWS SDK for Node.js</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="http://docs.pythonboto.org/en/latest/ref/opsworks.html">AWS SDK for
  #           Python(Boto)</a>
  #                </p>
  #             </li>
  #          </ul>
  #
  #          <p>
  #             <b>Endpoints</b>
  #          </p>
  #          <p>AWS OpsWorks Stacks supports the following endpoints, all HTTPS. You must connect to one of the following endpoints. Stacks
  #           can only be accessed or managed within the endpoint in which they are created.</p>
  #          <ul>
  #             <li>
  #                <p>opsworks.us-east-1.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks.us-east-2.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks.us-west-1.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks.us-west-2.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks.ca-central-1.amazonaws.com (API only; not available in the AWS console)</p>
  #             </li>
  #             <li>
  #                <p>opsworks.eu-west-1.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks.eu-west-2.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks.eu-west-3.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks.eu-central-1.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks.ap-northeast-1.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks.ap-northeast-2.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks.ap-south-1.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks.ap-southeast-1.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks.ap-southeast-2.amazonaws.com</p>
  #             </li>
  #             <li>
  #                <p>opsworks.sa-east-1.amazonaws.com</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Chef Versions</b>
  #          </p>
  #          <p>When you call <a>CreateStack</a>, <a>CloneStack</a>, or <a>UpdateStack</a> we recommend you
  #       use the <code>ConfigurationManager</code> parameter to specify the Chef version.
  #       The recommended and default value for Linux stacks is currently 12. Windows stacks use Chef 12.2. For more information,
  #       see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html">Chef Versions</a>.</p>
  #          <note>
  #             <p>You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We recommend migrating your existing Linux stacks to Chef 12 as soon as possible.</p>
  #          </note>
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
    def initialize(config = AWS::SDK::OpsWorks::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Assign a registered instance to a layer.</p>
    #          <ul>
    #             <li>
    #                <p>You can assign registered on-premises instances to any layer type.</p>
    #             </li>
    #             <li>
    #                <p>You can assign registered Amazon EC2 instances only to custom layers.</p>
    #             </li>
    #             <li>
    #                <p>You cannot use this action with instances that were created with AWS OpsWorks Stacks.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an AWS Identity and Access Management
    #       (IAM) user must have a Manage permissions
    #       level for the stack or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AssignInstanceInput}.
    #
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    #
    # @option params [Array<String>] :layer_ids
    #   <p>The layer ID, which must correspond to a custom layer. You cannot assign a registered instance to a built-in layer.</p>
    #
    # @return [Types::AssignInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.assign_instance(
    #     instance_id: 'InstanceId', # required
    #     layer_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssignInstanceOutput
    #
    def assign_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssignInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssignInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssignInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::AssignInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssignInstance,
        stubs: @stubs,
        params_class: Params::AssignInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :assign_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns one of the stack's registered Amazon EBS volumes to a specified instance. The volume must
    #       first be registered with the stack by calling <a>RegisterVolume</a>. After you register the
    #       volume, you must call <a>UpdateVolume</a> to specify a mount point before calling
    #         <code>AssignVolume</code>. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AssignVolumeInput}.
    #
    # @option params [String] :volume_id
    #   <p>The volume ID.</p>
    #
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    #
    # @return [Types::AssignVolumeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.assign_volume(
    #     volume_id: 'VolumeId', # required
    #     instance_id: 'InstanceId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssignVolumeOutput
    #
    def assign_volume(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssignVolumeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssignVolumeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssignVolume
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::AssignVolume
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssignVolume,
        stubs: @stubs,
        params_class: Params::AssignVolumeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :assign_volume
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates one of the stack's registered Elastic IP addresses with a specified instance. The
    #       address must first be registered with the stack by calling <a>RegisterElasticIp</a>. For more
    #       information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
    #         Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateElasticIpInput}.
    #
    # @option params [String] :elastic_ip
    #   <p>The Elastic IP address.</p>
    #
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    #
    # @return [Types::AssociateElasticIpOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_elastic_ip(
    #     elastic_ip: 'ElasticIp', # required
    #     instance_id: 'InstanceId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateElasticIpOutput
    #
    def associate_elastic_ip(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateElasticIpInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateElasticIpInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateElasticIp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::AssociateElasticIp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateElasticIp,
        stubs: @stubs,
        params_class: Params::AssociateElasticIpOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_elastic_ip
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches an Elastic Load Balancing load balancer to a specified layer. AWS OpsWorks Stacks does not support
    #           Application Load Balancer. You can only use Classic Load Balancer with AWS OpsWorks Stacks.
    #           For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/layers-elb.html">Elastic Load
    #         Balancing</a>.</p>
    #          <note>
    #             <p>You must create the Elastic Load Balancing instance separately, by using the Elastic Load Balancing console, API, or CLI. For
    #         more information, see <a href="https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html"> Elastic
    #           Load Balancing Developer Guide</a>.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AttachElasticLoadBalancerInput}.
    #
    # @option params [String] :elastic_load_balancer_name
    #   <p>The Elastic Load Balancing instance's name.</p>
    #
    # @option params [String] :layer_id
    #   <p>The ID of the layer to which the Elastic Load Balancing instance is to be attached.</p>
    #
    # @return [Types::AttachElasticLoadBalancerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_elastic_load_balancer(
    #     elastic_load_balancer_name: 'ElasticLoadBalancerName', # required
    #     layer_id: 'LayerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachElasticLoadBalancerOutput
    #
    def attach_elastic_load_balancer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachElasticLoadBalancerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachElasticLoadBalancerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachElasticLoadBalancer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::AttachElasticLoadBalancer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachElasticLoadBalancer,
        stubs: @stubs,
        params_class: Params::AttachElasticLoadBalancerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_elastic_load_balancer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a clone of a specified stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html">Clone a
    #         Stack</a>. By default, all parameters are set to the values used by the parent stack.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy
    #       that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CloneStackInput}.
    #
    # @option params [String] :source_stack_id
    #   <p>The source stack ID.</p>
    #
    # @option params [String] :name
    #   <p>The cloned stack name.</p>
    #
    # @option params [String] :region
    #   <p>The cloned stack AWS region, such as "ap-northeast-2". For more information about AWS regions, see
    #           <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    #
    # @option params [String] :vpc_id
    #   <p>The ID of the VPC that the cloned stack is to be launched into. It must be in the specified region. All
    #             instances are launched into this VPC, and you cannot change the ID later.</p>
    #            <ul>
    #               <li>
    #                  <p>If your account supports EC2 Classic, the default value is no VPC.</p>
    #               </li>
    #               <li>
    #                  <p>If your account does not support EC2 Classic, the default value is the default VPC for the specified region.</p>
    #               </li>
    #            </ul>
    #            <p>If the VPC ID corresponds to a default VPC and you have specified either the
    #           <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only,
    #         AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets
    #         these parameters to the first valid Availability Zone for the specified region and the
    #         corresponding default VPC subnet ID, respectively. </p>
    #            <p>If you specify a nondefault VPC ID, note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>It must belong to a VPC in your account that is in the specified region.</p>
    #               </li>
    #               <li>
    #                  <p>You must specify a value for <code>DefaultSubnetId</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about how to use AWS OpsWorks Stacks with a VPC, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html">Running a Stack in a
    #           VPC</a>. For more information about default VPC and EC2 Classic, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported
    #           Platforms</a>. </p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>A list of stack attributes and values as key/value pairs to be added to the cloned stack.</p>
    #
    # @option params [String] :service_role_arn
    #   <p>The stack AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS
    #         resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an
    #         existing IAM role. If you create a stack by using the AWS OpsWorks Stacks console, it creates the role for
    #         you. You can obtain an existing stack's IAM ARN programmatically by calling
    #           <a>DescribePermissions</a>. For more information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #            <note>
    #               <p>You must set this parameter to a valid service role ARN or the action will fail; there is no default value. You can specify the source stack's service role ARN, if you prefer, but you must do so explicitly.</p>
    #            </note>
    #
    # @option params [String] :default_instance_profile_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances.
    #         For more information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #
    # @option params [String] :default_os
    #   <p>The stack's operating system, which must be set to one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux
    #           2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CentOS Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Red Hat Enterprise Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>,
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when
    #           you create instances. For more information about how to use custom AMIs with OpsWorks, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
    #             Custom AMIs</a>.</p>
    #               </li>
    #            </ul>
    #            <p>The default option is the parent stack's operating system.
    #         For more information about supported operating systems,
    #         see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p>
    #            <note>
    #               <p>You can specify a different Linux operating system for the cloned stack, but you cannot change from Linux to Windows or Windows to Linux.</p>
    #            </note>
    #
    # @option params [String] :hostname_theme
    #   <p>The stack's host name theme, with spaces are replaced by underscores. The theme is used to
    #         generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set
    #         to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's
    #         short name. The other themes are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Baked_Goods</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Clouds</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Europe_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fruits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Greek_Deities_and_Titans</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Legendary_creatures_from_Japan</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Planets_and_Moons</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Roman_Deities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Scottish_Islands</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>US_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Wild_Cats</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a
    #         host name based on the current theme.</p>
    #
    # @option params [String] :default_availability_zone
    #   <p>The cloned stack's default Availability Zone, which must be in the specified region. For more
    #         information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and
    #           Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must
    #         be in the same zone. For more information, see the <code>VpcId</code> parameter description.
    #       </p>
    #
    # @option params [String] :default_subnet_id
    #   <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the
    #           <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify
    #         otherwise when you create the instance. If you also specify a value for
    #           <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on
    #         default values and when this parameter is required, see the <code>VpcId</code> parameter
    #         description. </p>
    #
    # @option params [String] :custom_json
    #   <p>A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format:</p>
    #            <p>
    #               <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code>
    #            </p>
    #            <p>For more information about custom JSON, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to
    #           Modify the Stack Configuration Attributes</a>
    #            </p>
    #
    # @option params [StackConfigurationManager] :configuration_manager
    #   <p>The configuration manager. When you clone a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>
    #
    # @option params [ChefConfiguration] :chef_configuration
    #   <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the
    #         Berkshelf version on Chef 11.10 stacks. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
    #
    # @option params [Boolean] :use_custom_cookbooks
    #   <p>Whether to use custom cookbooks.</p>
    #
    # @option params [Boolean] :use_opsworks_security_groups
    #   <p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p>
    #            <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are
    #         associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead
    #         provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the
    #         following settings: </p>
    #            <ul>
    #               <li>
    #                  <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it but you cannot delete the built-in security group.</p>
    #               </li>
    #               <li>
    #                  <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate Amazon Elastic Compute Cloud (Amazon EC2) security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New
    #           Stack</a>.</p>
    #
    # @option params [Source] :custom_cookbooks_source
    #   <p>Contains the information required to retrieve an app or cookbook from a repository. For more information,
    #               see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Adding Apps</a> or <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Cookbooks and Recipes</a>.</p>
    #
    # @option params [String] :default_ssh_key_name
    #   <p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS
    #         OpsWorks installs the public key on the instance and you can use the private key with an SSH
    #         client to log in to the instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to
    #           Communicate with an Instance</a> and <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH
    #           Access</a>. You can override this setting by specifying a different key pair, or no key
    #         pair, when you <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">
    #           create an instance</a>. </p>
    #
    # @option params [Boolean] :clone_permissions
    #   <p>Whether to clone the source stack's permissions.</p>
    #
    # @option params [Array<String>] :clone_app_ids
    #   <p>A list of source stack app IDs to be included in the cloned stack.</p>
    #
    # @option params [String] :default_root_device_type
    #   <p>The default root device type. This value is used by default for all instances in the cloned
    #         stack, but you can override it when you create an instance. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
    #
    # @option params [String] :agent_version
    #   <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks
    #         automatically installs new agent versions on the stack's instances as soon as
    #         they are available.</p>
    #               </li>
    #               <li>
    #                  <p>Fixed version - Set this parameter to your preferred agent version. To update
    #                the agent version, you must edit the stack configuration and specify a new version.
    #                AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is <code>LATEST</code>. To specify an agent version,
    #         you must use the complete version number, not the abbreviated number shown on the console.
    #         For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>
    #            <note>
    #               <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p>
    #            </note>
    #
    # @return [Types::CloneStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.clone_stack(
    #     source_stack_id: 'SourceStackId', # required
    #     name: 'Name',
    #     region: 'Region',
    #     vpc_id: 'VpcId',
    #     attributes: {
    #       'key' => 'value'
    #     },
    #     service_role_arn: 'ServiceRoleArn', # required
    #     default_instance_profile_arn: 'DefaultInstanceProfileArn',
    #     default_os: 'DefaultOs',
    #     hostname_theme: 'HostnameTheme',
    #     default_availability_zone: 'DefaultAvailabilityZone',
    #     default_subnet_id: 'DefaultSubnetId',
    #     custom_json: 'CustomJson',
    #     configuration_manager: {
    #       name: 'Name',
    #       version: 'Version'
    #     },
    #     chef_configuration: {
    #       manage_berkshelf: false,
    #       berkshelf_version: 'BerkshelfVersion'
    #     },
    #     use_custom_cookbooks: false,
    #     use_opsworks_security_groups: false,
    #     custom_cookbooks_source: {
    #       type: 'git', # accepts ["git", "svn", "archive", "s3"]
    #       url: 'Url',
    #       username: 'Username',
    #       password: 'Password',
    #       ssh_key: 'SshKey',
    #       revision: 'Revision'
    #     },
    #     default_ssh_key_name: 'DefaultSshKeyName',
    #     clone_permissions: false,
    #     clone_app_ids: [
    #       'member'
    #     ],
    #     default_root_device_type: 'ebs', # accepts ["ebs", "instance-store"]
    #     agent_version: 'AgentVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CloneStackOutput
    #   resp.data.stack_id #=> String
    #
    def clone_stack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CloneStackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CloneStackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CloneStack
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::CloneStack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CloneStack,
        stubs: @stubs,
        params_class: Params::CloneStackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :clone_stack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an app for a specified stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating
    #       Apps</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAppInput}.
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @option params [String] :shortname
    #   <p>The app's short name.</p>
    #
    # @option params [String] :name
    #   <p>The app name.</p>
    #
    # @option params [String] :description
    #   <p>A description of the app.</p>
    #
    # @option params [Array<DataSource>] :data_sources
    #   <p>The app's data source.</p>
    #
    # @option params [String] :type
    #   <p>The app type. Each supported type is associated with a particular layer. For example, PHP
    #         applications are associated with a PHP layer. AWS OpsWorks Stacks deploys an application to those instances
    #         that are members of the corresponding layer. If your app isn't one of the standard types, or
    #         you prefer to implement your own Deploy recipes, specify <code>other</code>.</p>
    #
    # @option params [Source] :app_source
    #   <p>A <code>Source</code> object that specifies the app repository.</p>
    #
    # @option params [Array<String>] :domains
    #   <p>The app virtual host settings, with multiple domains separated by commas. For example:
    #           <code>'www.example.com, example.com'</code>
    #            </p>
    #
    # @option params [Boolean] :enable_ssl
    #   <p>Whether to enable SSL for the app.</p>
    #
    # @option params [SslConfiguration] :ssl_configuration
    #   <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
    #
    # @option params [Array<EnvironmentVariable>] :environment
    #   <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be
    #         associated with the app. After you deploy the app, these variables are defined on the
    #         associated app server instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>.</p>
    #            <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, "Environment: is too large (maximum is 20KB)."</p>
    #            <note>
    #               <p>If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p>
    #            </note>
    #
    # @return [Types::CreateAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app(
    #     stack_id: 'StackId', # required
    #     shortname: 'Shortname',
    #     name: 'Name', # required
    #     description: 'Description',
    #     data_sources: [
    #       {
    #         type: 'Type',
    #         arn: 'Arn',
    #         database_name: 'DatabaseName'
    #       }
    #     ],
    #     type: 'aws-flow-ruby', # required - accepts ["aws-flow-ruby", "java", "rails", "php", "nodejs", "static", "other"]
    #     app_source: {
    #       type: 'git', # accepts ["git", "svn", "archive", "s3"]
    #       url: 'Url',
    #       username: 'Username',
    #       password: 'Password',
    #       ssh_key: 'SshKey',
    #       revision: 'Revision'
    #     },
    #     domains: [
    #       'member'
    #     ],
    #     enable_ssl: false,
    #     ssl_configuration: {
    #       certificate: 'Certificate', # required
    #       private_key: 'PrivateKey', # required
    #       chain: 'Chain'
    #     },
    #     attributes: {
    #       'key' => 'value'
    #     },
    #     environment: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value', # required
    #         secure: false
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAppOutput
    #   resp.data.app_id #=> String
    #
    def create_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAppInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::CreateApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApp,
        stubs: @stubs,
        params_class: Params::CreateAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Runs deployment or stack commands. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html">Deploying
    #         Apps</a> and <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html">Run Stack Commands</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage
    #       permissions level for the stack, or an attached policy that explicitly grants permissions. For
    #       more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDeploymentInput}.
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @option params [String] :app_id
    #   <p>The app ID. This parameter is required for app deployments, but not for other deployment commands.</p>
    #
    # @option params [Array<String>] :instance_ids
    #   <p>The instance IDs for the deployment targets.</p>
    #
    # @option params [Array<String>] :layer_ids
    #   <p>The layer IDs for the deployment targets.</p>
    #
    # @option params [DeploymentCommand] :command
    #   <p>A <code>DeploymentCommand</code> object that specifies the deployment command and any
    #         associated arguments.</p>
    #
    # @option params [String] :comment
    #   <p>A user-defined comment.</p>
    #
    # @option params [String] :custom_json
    #   <p>A string that contains user-defined, custom JSON. You can use this parameter to override some corresponding default stack configuration JSON values. The string should be in the following format:</p>
    #            <p>
    #               <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code>
    #            </p>
    #            <p>For more information about custom JSON, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to
    #             Modify the Stack Configuration Attributes</a> and
    #             <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html">Overriding Attributes With Custom JSON</a>.</p>
    #
    # @return [Types::CreateDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment(
    #     stack_id: 'StackId', # required
    #     app_id: 'AppId',
    #     instance_ids: [
    #       'member'
    #     ],
    #     command: {
    #       name: 'install_dependencies', # required - accepts ["install_dependencies", "update_dependencies", "update_custom_cookbooks", "execute_recipes", "configure", "setup", "deploy", "rollback", "start", "stop", "restart", "undeploy"]
    #     }, # required
    #     comment: 'Comment',
    #     custom_json: 'CustomJson'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDeploymentOutput
    #   resp.data.deployment_id #=> String
    #
    def create_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDeployment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::CreateDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDeployment,
        stubs: @stubs,
        params_class: Params::CreateDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an instance in a specified stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">Adding an
    #         Instance to a Layer</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateInstanceInput}.
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @option params [Array<String>] :layer_ids
    #   <p>An array that contains the instance's layer IDs.</p>
    #
    # @option params [String] :instance_type
    #   <p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types,
    #         open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>.
    #         The <b>Size</b> list contains the currently supported types. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
    #           Families and Types</a>. The parameter values that you use to specify the various types are
    #         in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>
    #
    # @option params [String] :auto_scaling_type
    #   <p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>
    #
    # @option params [String] :hostname
    #   <p>The instance host name.</p>
    #
    # @option params [String] :os
    #   <p>The instance's operating system, which must be set to one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>,
    #                 <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CentOS Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Red Hat Enterprise Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>,
    #   			   <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A custom AMI: <code>Custom</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about the supported operating systems,
    #         see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p>
    #            <p>The default option is the current Amazon Linux version. If you set this parameter to
    #           <code>Custom</code>, you must use the <a>CreateInstance</a> action's AmiId parameter to
    #         specify the custom AMI that you want to use. Block device mappings are not supported if the value is <code>Custom</code>. For more information about supported operating
    #         systems, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">Operating Systems</a>For more information about how to use custom AMIs with AWS OpsWorks Stacks, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
    #           Custom AMIs</a>.</p>
    #
    # @option params [String] :ami_id
    #   <p>A custom AMI ID to be used to create the instance. The AMI should be based on one of the
    #         supported operating systems.
    #         For more information, see
    #         <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using Custom AMIs</a>.</p>
    #            <note>
    #               <p>If you specify a custom AMI, you must set <code>Os</code> to <code>Custom</code>.</p>
    #            </note>
    #
    # @option params [String] :ssh_key_name
    #   <p>The instance's Amazon EC2 key-pair name.</p>
    #
    # @option params [String] :availability_zone
    #   <p>The instance Availability Zone. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    #
    # @option params [String] :virtualization_type
    #   <p>The instance's virtualization type, <code>paravirtual</code> or <code>hvm</code>.</p>
    #
    # @option params [String] :subnet_id
    #   <p>The ID of the instance's subnet. If the stack is running in a VPC, you can use this parameter to override the stack's default subnet ID value and direct AWS OpsWorks Stacks to launch the instance in a different subnet.</p>
    #
    # @option params [String] :architecture
    #   <p>The instance architecture. The default option is <code>x86_64</code>. Instance types do not
    #         necessarily support both architectures. For a list of the architectures that are supported by
    #         the different instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Families and
    #           Types</a>.</p>
    #
    # @option params [String] :root_device_type
    #   <p>The instance root device type. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
    #
    # @option params [Array<BlockDeviceMapping>] :block_device_mappings
    #   <p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block
    #         devices. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block
    #           Device Mapping</a>. Note that block device mappings are not supported for custom AMIs.</p>
    #
    # @option params [Boolean] :install_updates_on_boot
    #   <p>Whether to install operating system and package updates when the instance boots. The default
    #         value is <code>true</code>. To control when updates are installed, set this value to
    #           <code>false</code>. You must then update your instances manually by using
    #           <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
    #         by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
    #         instances. </p>
    #            <note>
    #               <p>We strongly recommend using the default value of <code>true</code> to ensure that your
    #           instances have the latest security updates.</p>
    #            </note>
    #
    # @option params [Boolean] :ebs_optimized
    #   <p>Whether to create an Amazon EBS-optimized instance.</p>
    #
    # @option params [String] :agent_version
    #   <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INHERIT</code> - Use the stack's default agent version setting.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>version_number</i> - Use the specified agent version.
    #           This value overrides the stack's default setting.
    #           To update the agent version, edit the instance configuration and specify a
    #           new version.
    #           AWS OpsWorks Stacks then automatically installs that version on the instance.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is <code>INHERIT</code>. To specify an agent version,
    #         you must use the complete version number, not the abbreviated number shown on the console.
    #         For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>
    #
    # @option params [String] :tenancy
    #   <p>The instance's tenancy option. The default option is no tenancy, or if the instance is running in a VPC, inherit tenancy settings from the VPC. The following are valid values for this parameter:  <code>dedicated</code>, <code>default</code>, or <code>host</code>. Because there are costs associated with changes in tenancy options, we recommend that you research tenancy options before choosing them for your instances. For more information about dedicated hosts, see <a href="http://aws.amazon.com/ec2/dedicated-hosts/">Dedicated Hosts Overview</a> and <a href="http://aws.amazon.com/ec2/dedicated-hosts/">Amazon EC2 Dedicated Hosts</a>. For more information about dedicated instances, see <a href="https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/dedicated-instance.html">Dedicated Instances</a> and <a href="http://aws.amazon.com/ec2/purchasing-options/dedicated-instances/">Amazon EC2 Dedicated Instances</a>.</p>
    #
    # @return [Types::CreateInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance(
    #     stack_id: 'StackId', # required
    #     layer_ids: [
    #       'member'
    #     ], # required
    #     instance_type: 'InstanceType', # required
    #     auto_scaling_type: 'load', # accepts ["load", "timer"]
    #     hostname: 'Hostname',
    #     os: 'Os',
    #     ami_id: 'AmiId',
    #     ssh_key_name: 'SshKeyName',
    #     availability_zone: 'AvailabilityZone',
    #     virtualization_type: 'VirtualizationType',
    #     subnet_id: 'SubnetId',
    #     architecture: 'x86_64', # accepts ["x86_64", "i386"]
    #     root_device_type: 'ebs', # accepts ["ebs", "instance-store"]
    #     block_device_mappings: [
    #       {
    #         device_name: 'DeviceName',
    #         no_device: 'NoDevice',
    #         virtual_name: 'VirtualName',
    #         ebs: {
    #           snapshot_id: 'SnapshotId',
    #           iops: 1,
    #           volume_size: 1,
    #           volume_type: 'gp2', # accepts ["gp2", "io1", "standard"]
    #           delete_on_termination: false
    #         }
    #       }
    #     ],
    #     install_updates_on_boot: false,
    #     ebs_optimized: false,
    #     agent_version: 'AgentVersion',
    #     tenancy: 'Tenancy'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateInstanceOutput
    #   resp.data.instance_id #=> String
    #
    def create_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::CreateInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateInstance,
        stubs: @stubs,
        params_class: Params::CreateInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a layer. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html">How to
    #         Create a Layer</a>.</p>
    #          <note>
    #             <p>You should use <b>CreateLayer</b> for noncustom layer types such as PHP App Server only if the stack
    #         does not have an existing layer of that type. A stack can have at most one instance of each
    #         noncustom layer; if you attempt to create a second instance, <b>CreateLayer</b> fails. A
    #         stack can have an arbitrary number of custom layers, so you can call <b>CreateLayer</b> as
    #         many times as you like for that layer type.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLayerInput}.
    #
    # @option params [String] :stack_id
    #   <p>The layer stack ID.</p>
    #
    # @option params [String] :type
    #   <p>The layer type. A stack cannot have more than one built-in layer of the same type. It can have any number of custom layers. Built-in layers are not available in Chef 12 stacks.</p>
    #
    # @option params [String] :name
    #   <p>The layer name, which is used by the console.</p>
    #
    # @option params [String] :shortname
    #   <p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef recipes. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters, which are limited to the alphanumeric characters, '-', '_', and '.'.</p>
    #            <p>The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html">Layer Reference</a>.</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
    #            <p>To create a cluster layer, set the <code>EcsClusterArn</code> attribute to the cluster's ARN.</p>
    #
    # @option params [CloudWatchLogsConfiguration] :cloud_watch_logs_configuration
    #   <p>Specifies CloudWatch Logs configuration options for the layer. For more information, see <a>CloudWatchLogsLogStream</a>.</p>
    #
    # @option params [String] :custom_instance_profile_arn
    #   <p>The ARN of an IAM profile to be used for the layer's EC2 instances. For more information
    #         about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using Identifiers</a>.</p>
    #
    # @option params [String] :custom_json
    #   <p>A JSON-formatted string containing custom stack configuration and deployment attributes
    #        to be installed on the layer's instances. For more information, see
    #         <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html">
    #           Using Custom JSON</a>. This feature is supported as of version 1.7.42 of the AWS CLI.
    #       </p>
    #
    # @option params [Array<String>] :custom_security_group_ids
    #   <p>An array containing the layer custom security group IDs.</p>
    #
    # @option params [Array<String>] :packages
    #   <p>An array of <code>Package</code> objects that describes the layer packages.</p>
    #
    # @option params [Array<VolumeConfiguration>] :volume_configurations
    #   <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
    #
    # @option params [Boolean] :enable_auto_healing
    #   <p>Whether to disable auto healing for the layer.</p>
    #
    # @option params [Boolean] :auto_assign_elastic_ips
    #   <p>Whether to automatically assign an <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP
    #           address</a> to the layer's instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit
    #           a Layer</a>.</p>
    #
    # @option params [Boolean] :auto_assign_public_ips
    #   <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to
    #         the layer's instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit
    #           a Layer</a>.</p>
    #
    # @option params [Recipes] :custom_recipes
    #   <p>A <code>LayerCustomRecipes</code> object that specifies the layer custom recipes.</p>
    #
    # @option params [Boolean] :install_updates_on_boot
    #   <p>Whether to install operating system and package updates when the instance boots. The default
    #         value is <code>true</code>. To control when updates are installed, set this value to
    #           <code>false</code>. You must then update your instances manually by using
    #           <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
    #         by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
    #         instances. </p>
    #            <note>
    #               <p>To ensure that your
    #           instances have the latest security updates, we strongly recommend using the default value of <code>true</code>.</p>
    #            </note>
    #
    # @option params [Boolean] :use_ebs_optimized_instances
    #   <p>Whether to use Amazon EBS-optimized instances.</p>
    #
    # @option params [LifecycleEventConfiguration] :lifecycle_event_configuration
    #   <p>A <code>LifeCycleEventConfiguration</code> object that you can use to configure the Shutdown event to
    #         specify an execution timeout and enable or disable Elastic Load Balancer connection
    #         draining.</p>
    #
    # @return [Types::CreateLayerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_layer(
    #     stack_id: 'StackId', # required
    #     type: 'aws-flow-ruby', # required - accepts ["aws-flow-ruby", "ecs-cluster", "java-app", "lb", "web", "php-app", "rails-app", "nodejs-app", "memcached", "db-master", "monitoring-master", "custom"]
    #     name: 'Name', # required
    #     shortname: 'Shortname', # required
    #     attributes: {
    #       'key' => 'value'
    #     },
    #     cloud_watch_logs_configuration: {
    #       enabled: false,
    #       log_streams: [
    #         {
    #           log_group_name: 'LogGroupName',
    #           datetime_format: 'DatetimeFormat',
    #           time_zone: 'LOCAL', # accepts ["LOCAL", "UTC"]
    #           file: 'File',
    #           file_fingerprint_lines: 'FileFingerprintLines',
    #           multi_line_start_pattern: 'MultiLineStartPattern',
    #           initial_position: 'start_of_file', # accepts ["start_of_file", "end_of_file"]
    #           encoding: 'ascii', # accepts ["ascii", "big5", "big5hkscs", "cp037", "cp424", "cp437", "cp500", "cp720", "cp737", "cp775", "cp850", "cp852", "cp855", "cp856", "cp857", "cp858", "cp860", "cp861", "cp862", "cp863", "cp864", "cp865", "cp866", "cp869", "cp874", "cp875", "cp932", "cp949", "cp950", "cp1006", "cp1026", "cp1140", "cp1250", "cp1251", "cp1252", "cp1253", "cp1254", "cp1255", "cp1256", "cp1257", "cp1258", "euc_jp", "euc_jis_2004", "euc_jisx0213", "euc_kr", "gb2312", "gbk", "gb18030", "hz", "iso2022_jp", "iso2022_jp_1", "iso2022_jp_2", "iso2022_jp_2004", "iso2022_jp_3", "iso2022_jp_ext", "iso2022_kr", "latin_1", "iso8859_2", "iso8859_3", "iso8859_4", "iso8859_5", "iso8859_6", "iso8859_7", "iso8859_8", "iso8859_9", "iso8859_10", "iso8859_13", "iso8859_14", "iso8859_15", "iso8859_16", "johab", "koi8_r", "koi8_u", "mac_cyrillic", "mac_greek", "mac_iceland", "mac_latin2", "mac_roman", "mac_turkish", "ptcp154", "shift_jis", "shift_jis_2004", "shift_jisx0213", "utf_32", "utf_32_be", "utf_32_le", "utf_16", "utf_16_be", "utf_16_le", "utf_7", "utf_8", "utf_8_sig"]
    #           buffer_duration: 1,
    #           batch_count: 1,
    #           batch_size: 1
    #         }
    #       ]
    #     },
    #     custom_instance_profile_arn: 'CustomInstanceProfileArn',
    #     custom_json: 'CustomJson',
    #     custom_security_group_ids: [
    #       'member'
    #     ],
    #     volume_configurations: [
    #       {
    #         mount_point: 'MountPoint', # required
    #         raid_level: 1,
    #         number_of_disks: 1, # required
    #         size: 1, # required
    #         volume_type: 'VolumeType',
    #         iops: 1,
    #         encrypted: false
    #       }
    #     ],
    #     enable_auto_healing: false,
    #     auto_assign_elastic_ips: false,
    #     auto_assign_public_ips: false,
    #     custom_recipes: {
    #     },
    #     install_updates_on_boot: false,
    #     use_ebs_optimized_instances: false,
    #     lifecycle_event_configuration: {
    #       shutdown: {
    #         execution_timeout: 1,
    #         delay_until_elb_connections_drained: false
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLayerOutput
    #   resp.data.layer_id #=> String
    #
    def create_layer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLayerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLayerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLayer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::CreateLayer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLayer,
        stubs: @stubs,
        params_class: Params::CreateLayerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_layer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html">Create a New
    #         Stack</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy
    #       that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStackInput}.
    #
    # @option params [String] :name
    #   <p>The stack name.</p>
    #
    # @option params [String] :region
    #   <p>The stack's AWS region, such as <code>ap-south-1</code>. For more information about
    #               Amazon regions, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p>
    #            <note>
    #               <p>In the AWS CLI, this API maps to the <code>--stack-region</code> parameter. If the
    #                       <code>--stack-region</code> parameter and the AWS CLI common parameter
    #                       <code>--region</code> are set to the same value, the stack uses a
    #                       <i>regional</i> endpoint. If the <code>--stack-region</code>
    #                   parameter is not set, but the AWS CLI <code>--region</code> parameter is, this also
    #                   results in a stack with a <i>regional</i> endpoint. However, if the
    #                       <code>--region</code> parameter is set to <code>us-east-1</code>, and the
    #                       <code>--stack-region</code> parameter is set to one of the following, then the
    #                   stack uses a legacy or <i>classic</i> region: <code>us-west-1,
    #                       us-west-2, sa-east-1, eu-central-1, eu-west-1, ap-northeast-1, ap-southeast-1,
    #                       ap-southeast-2</code>. In this case, the actual API endpoint of the stack is in
    #                       <code>us-east-1</code>. Only the preceding regions are supported as classic
    #                   regions in the <code>us-east-1</code> API endpoint. Because it is a best practice to
    #                   choose the regional endpoint that is closest to where you manage AWS, we recommend
    #                   that you use regional endpoints for new stacks. The AWS CLI common
    #                       <code>--region</code> parameter always specifies a regional API endpoint; it
    #                   cannot be used to specify a classic AWS OpsWorks Stacks region.</p>
    #            </note>
    #
    # @option params [String] :vpc_id
    #   <p>The ID of the VPC that the stack is to be launched into. The VPC must be in the stack's region. All instances are launched into this VPC. You cannot change the ID later.</p>
    #            <ul>
    #               <li>
    #                  <p>If your account supports EC2-Classic, the default value is <code>no VPC</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If your account does not support EC2-Classic, the default value is the default VPC for the specified region.</p>
    #               </li>
    #            </ul>
    #            <p>If the VPC ID corresponds to a default VPC and you have specified either the
    #           <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only,
    #         AWS OpsWorks Stacks infers the value of the
    #         other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets
    #         these parameters to the first valid Availability Zone for the specified region and the
    #         corresponding default VPC subnet ID, respectively.</p>
    #            <p>If you specify a nondefault VPC ID, note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>It must belong to a VPC in your account that is in the specified region.</p>
    #               </li>
    #               <li>
    #                  <p>You must specify a value for <code>DefaultSubnetId</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about how to use AWS OpsWorks Stacks with a VPC, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html">Running a Stack in a
    #           VPC</a>. For more information about default VPC and EC2-Classic, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported
    #           Platforms</a>. </p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
    #
    # @option params [String] :service_role_arn
    #   <p>The stack's AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS
    #         resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an
    #         existing IAM role. For more information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #
    # @option params [String] :default_instance_profile_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances.
    #         For more information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #
    # @option params [String] :default_os
    #   <p>The stack's default operating system, which is installed on every instance unless you specify a different operating system when you create the instance. You can specify one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>,
    #                 <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CentOS Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Red Hat Enterprise Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>,
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>,
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when
    #           you create instances. For more
    #           information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">
    #           Using Custom AMIs</a>.</p>
    #               </li>
    #            </ul>
    #            <p>The default option is the current Amazon Linux version.
    #         For more information about supported operating systems,
    #         see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p>
    #
    # @option params [String] :hostname_theme
    #   <p>The stack's host name theme, with spaces replaced by underscores. The theme is used to
    #         generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set
    #         to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's
    #         short name. The other themes are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Baked_Goods</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Clouds</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Europe_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fruits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Greek_Deities_and_Titans</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Legendary_creatures_from_Japan</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Planets_and_Moons</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Roman_Deities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Scottish_Islands</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>US_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Wild_Cats</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a
    #         host name based on the current theme.</p>
    #
    # @option params [String] :default_availability_zone
    #   <p>The stack's default Availability Zone, which must be in the specified region. For more
    #         information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and
    #           Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must
    #         be in the same zone. For more information, see the <code>VpcId</code> parameter description.
    #       </p>
    #
    # @option params [String] :default_subnet_id
    #   <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the
    #           <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify
    #         otherwise when you create the instance. If you also specify a value for
    #           <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on
    #         default values and when this parameter is required, see the <code>VpcId</code> parameter
    #         description. </p>
    #
    # @option params [String] :custom_json
    #   <p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:</p>
    #            <p>
    #               <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code>
    #            </p>
    #            <p>For more information about custom JSON, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to
    #           Modify the Stack Configuration Attributes</a>.</p>
    #
    # @option params [StackConfigurationManager] :configuration_manager
    #   <p>The configuration manager. When you create a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>
    #
    # @option params [ChefConfiguration] :chef_configuration
    #   <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the
    #         Berkshelf version on Chef 11.10 stacks. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
    #
    # @option params [Boolean] :use_custom_cookbooks
    #   <p>Whether the stack uses custom cookbooks.</p>
    #
    # @option params [Boolean] :use_opsworks_security_groups
    #   <p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p>
    #            <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are
    #         associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead
    #         provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the
    #         following settings: </p>
    #            <ul>
    #               <li>
    #                  <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.</p>
    #               </li>
    #               <li>
    #                  <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New
    #           Stack</a>.</p>
    #
    # @option params [Source] :custom_cookbooks_source
    #   <p>Contains the information required to retrieve an app or cookbook from a repository. For more information,
    #               see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Adding Apps</a> or
    #               <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Cookbooks and Recipes</a>.</p>
    #
    # @option params [String] :default_ssh_key_name
    #   <p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS
    #         OpsWorks installs the public key on the instance and you can use the private key with an SSH
    #         client to log in to the instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to
    #           Communicate with an Instance</a> and <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH
    #           Access</a>. You can override this setting by specifying a different key pair, or no key
    #         pair, when you <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">
    #           create an instance</a>. </p>
    #
    # @option params [String] :default_root_device_type
    #   <p>The default root device type. This value is the default for all instances in the stack,
    #         but you can override it when you create an instance. The default option is
    #           <code>instance-store</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
    #
    # @option params [String] :agent_version
    #   <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks
    #           automatically installs new agent versions on the stack's instances as soon as
    #           they are available.</p>
    #               </li>
    #               <li>
    #                  <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is the most recent release of the agent. To specify an agent version,
    #         you must use the complete version number, not the abbreviated number shown on the console.
    #         For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>
    #            <note>
    #               <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p>
    #            </note>
    #
    # @return [Types::CreateStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack(
    #     name: 'Name', # required
    #     region: 'Region', # required
    #     vpc_id: 'VpcId',
    #     attributes: {
    #       'key' => 'value'
    #     },
    #     service_role_arn: 'ServiceRoleArn', # required
    #     default_instance_profile_arn: 'DefaultInstanceProfileArn', # required
    #     default_os: 'DefaultOs',
    #     hostname_theme: 'HostnameTheme',
    #     default_availability_zone: 'DefaultAvailabilityZone',
    #     default_subnet_id: 'DefaultSubnetId',
    #     custom_json: 'CustomJson',
    #     configuration_manager: {
    #       name: 'Name',
    #       version: 'Version'
    #     },
    #     chef_configuration: {
    #       manage_berkshelf: false,
    #       berkshelf_version: 'BerkshelfVersion'
    #     },
    #     use_custom_cookbooks: false,
    #     use_opsworks_security_groups: false,
    #     custom_cookbooks_source: {
    #       type: 'git', # accepts ["git", "svn", "archive", "s3"]
    #       url: 'Url',
    #       username: 'Username',
    #       password: 'Password',
    #       ssh_key: 'SshKey',
    #       revision: 'Revision'
    #     },
    #     default_ssh_key_name: 'DefaultSshKeyName',
    #     default_root_device_type: 'ebs', # accepts ["ebs", "instance-store"]
    #     agent_version: 'AgentVersion'
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException]),
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

    # <p>Creates a new user profile.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy
    #       that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserProfileInput}.
    #
    # @option params [String] :iam_user_arn
    #   <p>The user's IAM ARN; this can also be a federated user's ARN.</p>
    #
    # @option params [String] :ssh_username
    #   <p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If
    #         the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example,
    #           <code>my.name</code> will be changed to <code>myname</code>. If you do not specify an SSH
    #         user name, AWS OpsWorks Stacks generates one from the IAM user name. </p>
    #
    # @option params [String] :ssh_public_key
    #   <p>The user's public SSH key.</p>
    #
    # @option params [Boolean] :allow_self_management
    #   <p>Whether users can specify their own SSH public key through the My Settings page. For more
    #         information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Setting an IAM
    #           User's Public SSH Key</a>.</p>
    #
    # @return [Types::CreateUserProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_profile(
    #     iam_user_arn: 'IamUserArn', # required
    #     ssh_username: 'SshUsername',
    #     ssh_public_key: 'SshPublicKey',
    #     allow_self_management: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserProfileOutput
    #   resp.data.iam_user_arn #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException]),
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

    # <p>Deletes a specified app.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @return [Types::DeleteAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app(
    #     app_id: 'AppId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppOutput
    #
    def delete_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeleteApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApp,
        stubs: @stubs,
        params_class: Params::DeleteAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specified instance, which terminates the associated Amazon EC2 instance. You must stop an instance before you can delete it.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html">Deleting
    #         Instances</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInstanceInput}.
    #
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    #
    # @option params [Boolean] :delete_elastic_ip
    #   <p>Whether to delete the instance Elastic IP address.</p>
    #
    # @option params [Boolean] :delete_volumes
    #   <p>Whether to delete the instance's Amazon EBS volumes.</p>
    #
    # @return [Types::DeleteInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance(
    #     instance_id: 'InstanceId', # required
    #     delete_elastic_ip: false,
    #     delete_volumes: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInstanceOutput
    #
    def delete_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeleteInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInstance,
        stubs: @stubs,
        params_class: Params::DeleteInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specified layer. You must first stop and then delete all associated instances or
    #       unassign registered instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html">How to
    #         Delete a Layer</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLayerInput}.
    #
    # @option params [String] :layer_id
    #   <p>The layer ID.</p>
    #
    # @return [Types::DeleteLayerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_layer(
    #     layer_id: 'LayerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLayerOutput
    #
    def delete_layer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLayerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLayerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLayer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeleteLayer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLayer,
        stubs: @stubs,
        params_class: Params::DeleteLayerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_layer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specified stack. You must first delete all instances, layers, and apps or
    #       deregister registered instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html">Shut Down a
    #         Stack</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStackInput}.
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @return [Types::DeleteStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack(
    #     stack_id: 'StackId' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Deletes a user profile.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy
    #       that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserProfileInput}.
    #
    # @option params [String] :iam_user_arn
    #   <p>The user's IAM ARN. This can also be a federated user's ARN.</p>
    #
    # @return [Types::DeleteUserProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_profile(
    #     iam_user_arn: 'IamUserArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserProfileOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Deregisters a specified Amazon ECS cluster from a stack.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete">
    #         Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see
    #       <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterEcsClusterInput}.
    #
    # @option params [String] :ecs_cluster_arn
    #   <p>The cluster's Amazon Resource Number (ARN).</p>
    #
    # @return [Types::DeregisterEcsClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_ecs_cluster(
    #     ecs_cluster_arn: 'EcsClusterArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterEcsClusterOutput
    #
    def deregister_ecs_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterEcsClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterEcsClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterEcsCluster
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeregisterEcsCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterEcsCluster,
        stubs: @stubs,
        params_class: Params::DeregisterEcsClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_ecs_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters a specified Elastic IP address. The address can then be registered by another
    #       stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterElasticIpInput}.
    #
    # @option params [String] :elastic_ip
    #   <p>The Elastic IP address.</p>
    #
    # @return [Types::DeregisterElasticIpOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_elastic_ip(
    #     elastic_ip: 'ElasticIp' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterElasticIpOutput
    #
    def deregister_elastic_ip(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterElasticIpInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterElasticIpInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterElasticIp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeregisterElasticIp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterElasticIp,
        stubs: @stubs,
        params_class: Params::DeregisterElasticIpOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_elastic_ip
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregister a registered Amazon EC2 or on-premises instance. This action removes the
    #           instance from the stack and returns it to your control. This action cannot be used with
    #           instances that were created with AWS OpsWorks Stacks.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterInstanceInput}.
    #
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    #
    # @return [Types::DeregisterInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_instance(
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterInstanceOutput
    #
    def deregister_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeregisterInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterInstance,
        stubs: @stubs,
        params_class: Params::DeregisterInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters an Amazon RDS instance.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterRdsDbInstanceInput}.
    #
    # @option params [String] :rds_db_instance_arn
    #   <p>The Amazon RDS instance's ARN.</p>
    #
    # @return [Types::DeregisterRdsDbInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_rds_db_instance(
    #     rds_db_instance_arn: 'RdsDbInstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterRdsDbInstanceOutput
    #
    def deregister_rds_db_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterRdsDbInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterRdsDbInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterRdsDbInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeregisterRdsDbInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterRdsDbInstance,
        stubs: @stubs,
        params_class: Params::DeregisterRdsDbInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_rds_db_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters an Amazon EBS volume. The volume can then be registered by another stack. For more
    #       information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
    #         Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterVolumeInput}.
    #
    # @option params [String] :volume_id
    #   <p>The AWS OpsWorks Stacks volume ID, which is the GUID that AWS OpsWorks Stacks assigned to the instance when you registered the volume with the stack, not the Amazon EC2 volume ID.</p>
    #
    # @return [Types::DeregisterVolumeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_volume(
    #     volume_id: 'VolumeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterVolumeOutput
    #
    def deregister_volume(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterVolumeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterVolumeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterVolume
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeregisterVolume
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterVolume,
        stubs: @stubs,
        params_class: Params::DeregisterVolumeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_volume
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the available AWS OpsWorks Stacks agent versions. You must specify a stack ID or a
    #     configuration manager. <code>DescribeAgentVersions</code> returns a list of available
    #     agent versions for the specified stack or configuration manager.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAgentVersionsInput}.
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @option params [StackConfigurationManager] :configuration_manager
    #   <p>The configuration manager.</p>
    #
    # @return [Types::DescribeAgentVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_agent_versions(
    #     stack_id: 'StackId',
    #     configuration_manager: {
    #       name: 'Name',
    #       version: 'Version'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAgentVersionsOutput
    #   resp.data.agent_versions #=> Array<AgentVersion>
    #   resp.data.agent_versions[0] #=> Types::AgentVersion
    #   resp.data.agent_versions[0].version #=> String
    #   resp.data.agent_versions[0].configuration_manager #=> Types::StackConfigurationManager
    #   resp.data.agent_versions[0].configuration_manager.name #=> String
    #   resp.data.agent_versions[0].configuration_manager.version #=> String
    #
    def describe_agent_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAgentVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAgentVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAgentVersions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeAgentVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAgentVersions,
        stubs: @stubs,
        params_class: Params::DescribeAgentVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_agent_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests a description of a specified set of apps.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAppsInput}.
    #
    # @option params [String] :stack_id
    #   <p>The app stack ID. If you use this parameter, <code>DescribeApps</code> returns a description
    #         of the apps in the specified stack.</p>
    #
    # @option params [Array<String>] :app_ids
    #   <p>An array of app IDs for the apps to be described. If you use this parameter,
    #           <code>DescribeApps</code> returns a description of the specified apps. Otherwise, it returns
    #         a description of every app.</p>
    #
    # @return [Types::DescribeAppsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_apps(
    #     stack_id: 'StackId',
    #     app_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAppsOutput
    #   resp.data.apps #=> Array<App>
    #   resp.data.apps[0] #=> Types::App
    #   resp.data.apps[0].app_id #=> String
    #   resp.data.apps[0].stack_id #=> String
    #   resp.data.apps[0].shortname #=> String
    #   resp.data.apps[0].name #=> String
    #   resp.data.apps[0].description #=> String
    #   resp.data.apps[0].data_sources #=> Array<DataSource>
    #   resp.data.apps[0].data_sources[0] #=> Types::DataSource
    #   resp.data.apps[0].data_sources[0].type #=> String
    #   resp.data.apps[0].data_sources[0].arn #=> String
    #   resp.data.apps[0].data_sources[0].database_name #=> String
    #   resp.data.apps[0].type #=> String, one of ["aws-flow-ruby", "java", "rails", "php", "nodejs", "static", "other"]
    #   resp.data.apps[0].app_source #=> Types::Source
    #   resp.data.apps[0].app_source.type #=> String, one of ["git", "svn", "archive", "s3"]
    #   resp.data.apps[0].app_source.url #=> String
    #   resp.data.apps[0].app_source.username #=> String
    #   resp.data.apps[0].app_source.password #=> String
    #   resp.data.apps[0].app_source.ssh_key #=> String
    #   resp.data.apps[0].app_source.revision #=> String
    #   resp.data.apps[0].domains #=> Array<String>
    #   resp.data.apps[0].domains[0] #=> String
    #   resp.data.apps[0].enable_ssl #=> Boolean
    #   resp.data.apps[0].ssl_configuration #=> Types::SslConfiguration
    #   resp.data.apps[0].ssl_configuration.certificate #=> String
    #   resp.data.apps[0].ssl_configuration.private_key #=> String
    #   resp.data.apps[0].ssl_configuration.chain #=> String
    #   resp.data.apps[0].attributes #=> Hash<String, String>
    #   resp.data.apps[0].attributes['key'] #=> String
    #   resp.data.apps[0].created_at #=> String
    #   resp.data.apps[0].environment #=> Array<EnvironmentVariable>
    #   resp.data.apps[0].environment[0] #=> Types::EnvironmentVariable
    #   resp.data.apps[0].environment[0].key #=> String
    #   resp.data.apps[0].environment[0].value #=> String
    #   resp.data.apps[0].environment[0].secure #=> Boolean
    #
    def describe_apps(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAppsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAppsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeApps
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeApps
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeApps,
        stubs: @stubs,
        params_class: Params::DescribeAppsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_apps
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the results of specified commands.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCommandsInput}.
    #
    # @option params [String] :deployment_id
    #   <p>The deployment ID. If you include this parameter, <code>DescribeCommands</code> returns a
    #         description of the commands associated with the specified deployment.</p>
    #
    # @option params [String] :instance_id
    #   <p>The instance ID. If you include this parameter, <code>DescribeCommands</code> returns a
    #         description of the commands associated with the specified instance.</p>
    #
    # @option params [Array<String>] :command_ids
    #   <p>An array of command IDs. If you include this parameter, <code>DescribeCommands</code> returns
    #         a description of the specified commands. Otherwise, it returns a description of every
    #         command.</p>
    #
    # @return [Types::DescribeCommandsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_commands(
    #     deployment_id: 'DeploymentId',
    #     instance_id: 'InstanceId',
    #     command_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCommandsOutput
    #   resp.data.commands #=> Array<Command>
    #   resp.data.commands[0] #=> Types::Command
    #   resp.data.commands[0].command_id #=> String
    #   resp.data.commands[0].instance_id #=> String
    #   resp.data.commands[0].deployment_id #=> String
    #   resp.data.commands[0].created_at #=> String
    #   resp.data.commands[0].acknowledged_at #=> String
    #   resp.data.commands[0].completed_at #=> String
    #   resp.data.commands[0].status #=> String
    #   resp.data.commands[0].exit_code #=> Integer
    #   resp.data.commands[0].log_url #=> String
    #   resp.data.commands[0].type #=> String
    #
    def describe_commands(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCommandsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCommandsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCommands
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeCommands
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCommands,
        stubs: @stubs,
        params_class: Params::DescribeCommandsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_commands
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests a description of a specified set of deployments.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDeploymentsInput}.
    #
    # @option params [String] :stack_id
    #   <p>The stack ID. If you include this parameter, the command returns a
    #         description of the commands associated with the specified stack.</p>
    #
    # @option params [String] :app_id
    #   <p>The app ID. If you include this parameter, the command returns a
    #         description of the commands associated with the specified app.</p>
    #
    # @option params [Array<String>] :deployment_ids
    #   <p>An array of deployment IDs to be described. If you include this parameter,
    #           the command returns a description of the specified deployments.
    #         Otherwise, it returns a description of every deployment.</p>
    #
    # @return [Types::DescribeDeploymentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_deployments(
    #     stack_id: 'StackId',
    #     app_id: 'AppId',
    #     deployment_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDeploymentsOutput
    #   resp.data.deployments #=> Array<Deployment>
    #   resp.data.deployments[0] #=> Types::Deployment
    #   resp.data.deployments[0].deployment_id #=> String
    #   resp.data.deployments[0].stack_id #=> String
    #   resp.data.deployments[0].app_id #=> String
    #   resp.data.deployments[0].created_at #=> String
    #   resp.data.deployments[0].completed_at #=> String
    #   resp.data.deployments[0].duration #=> Integer
    #   resp.data.deployments[0].iam_user_arn #=> String
    #   resp.data.deployments[0].comment #=> String
    #   resp.data.deployments[0].command #=> Types::DeploymentCommand
    #   resp.data.deployments[0].command.name #=> String, one of ["install_dependencies", "update_dependencies", "update_custom_cookbooks", "execute_recipes", "configure", "setup", "deploy", "rollback", "start", "stop", "restart", "undeploy"]
    #   resp.data.deployments[0].command.args #=> Hash<String, Array<String>>
    #   resp.data.deployments[0].command.args['key'] #=> Array<String>
    #   resp.data.deployments[0].command.args['key'][0] #=> String
    #   resp.data.deployments[0].status #=> String
    #   resp.data.deployments[0].custom_json #=> String
    #   resp.data.deployments[0].instance_ids #=> Array<String>
    #
    def describe_deployments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDeploymentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDeploymentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDeployments
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeDeployments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDeployments,
        stubs: @stubs,
        params_class: Params::DescribeDeploymentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_deployments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes Amazon ECS clusters that are registered with a stack. If you specify only a stack ID,
    #     you can use the <code>MaxResults</code> and <code>NextToken</code> parameters to paginate the
    #     response. However, AWS OpsWorks Stacks currently supports only one cluster per layer, so the result
    #     set has a maximum of one element.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack or an attached policy that explicitly grants
    #       permission. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #          <p>This call accepts only one resource-identifying parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEcsClustersInput}.
    #
    # @option params [Array<String>] :ecs_cluster_arns
    #   <p>A list of ARNs, one for each cluster to be described.</p>
    #
    # @option params [String] :stack_id
    #   <p>A stack ID.
    #         <code>DescribeEcsClusters</code> returns a description of the cluster that is registered with the stack.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results,
    #         the response object's<code>NextToken</code> parameter value is set to a token.
    #         To retrieve the next set of results, call <code>DescribeEcsClusters</code>
    #         again and assign that token to the request object's <code>NextToken</code> parameter.
    #         If there are no remaining results, the previous response
    #         object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>To receive a paginated response, use this parameter to specify the maximum number
    #         of results to be returned with a single call. If the number of available results exceeds this maximum, the
    #         response includes a <code>NextToken</code> value that you can assign
    #         to the <code>NextToken</code> request parameter to get the next set of results.</p>
    #
    # @return [Types::DescribeEcsClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ecs_clusters(
    #     ecs_cluster_arns: [
    #       'member'
    #     ],
    #     stack_id: 'StackId',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEcsClustersOutput
    #   resp.data.ecs_clusters #=> Array<EcsCluster>
    #   resp.data.ecs_clusters[0] #=> Types::EcsCluster
    #   resp.data.ecs_clusters[0].ecs_cluster_arn #=> String
    #   resp.data.ecs_clusters[0].ecs_cluster_name #=> String
    #   resp.data.ecs_clusters[0].stack_id #=> String
    #   resp.data.ecs_clusters[0].registered_at #=> String
    #   resp.data.next_token #=> String
    #
    def describe_ecs_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEcsClustersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEcsClustersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEcsClusters
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeEcsClusters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEcsClusters,
        stubs: @stubs,
        params_class: Params::DescribeEcsClustersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_ecs_clusters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP addresses</a>.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeElasticIpsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The instance ID. If you include this parameter, <code>DescribeElasticIps</code> returns a
    #         description of the Elastic IP addresses associated with the specified instance.</p>
    #
    # @option params [String] :stack_id
    #   <p>A stack ID. If you include this parameter, <code>DescribeElasticIps</code> returns a
    #         description of the Elastic IP addresses that are registered with the specified stack.</p>
    #
    # @option params [Array<String>] :ips
    #   <p>An array of Elastic IP addresses to be described. If you include this parameter,
    #           <code>DescribeElasticIps</code> returns a description of the specified Elastic IP addresses.
    #         Otherwise, it returns a description of every Elastic IP address.</p>
    #
    # @return [Types::DescribeElasticIpsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_elastic_ips(
    #     instance_id: 'InstanceId',
    #     stack_id: 'StackId',
    #     ips: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeElasticIpsOutput
    #   resp.data.elastic_ips #=> Array<ElasticIp>
    #   resp.data.elastic_ips[0] #=> Types::ElasticIp
    #   resp.data.elastic_ips[0].ip #=> String
    #   resp.data.elastic_ips[0].name #=> String
    #   resp.data.elastic_ips[0].domain #=> String
    #   resp.data.elastic_ips[0].region #=> String
    #   resp.data.elastic_ips[0].instance_id #=> String
    #
    def describe_elastic_ips(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeElasticIpsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeElasticIpsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeElasticIps
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeElasticIps
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeElasticIps,
        stubs: @stubs,
        params_class: Params::DescribeElasticIpsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_elastic_ips
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a stack's Elastic Load Balancing instances.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeElasticLoadBalancersInput}.
    #
    # @option params [String] :stack_id
    #   <p>A stack ID. The action describes the stack's Elastic Load Balancing instances.</p>
    #
    # @option params [Array<String>] :layer_ids
    #   <p>A list of layer IDs. The action describes the Elastic Load Balancing instances for the specified layers.</p>
    #
    # @return [Types::DescribeElasticLoadBalancersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_elastic_load_balancers(
    #     stack_id: 'StackId',
    #     layer_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeElasticLoadBalancersOutput
    #   resp.data.elastic_load_balancers #=> Array<ElasticLoadBalancer>
    #   resp.data.elastic_load_balancers[0] #=> Types::ElasticLoadBalancer
    #   resp.data.elastic_load_balancers[0].elastic_load_balancer_name #=> String
    #   resp.data.elastic_load_balancers[0].region #=> String
    #   resp.data.elastic_load_balancers[0].dns_name #=> String
    #   resp.data.elastic_load_balancers[0].stack_id #=> String
    #   resp.data.elastic_load_balancers[0].layer_id #=> String
    #   resp.data.elastic_load_balancers[0].vpc_id #=> String
    #   resp.data.elastic_load_balancers[0].availability_zones #=> Array<String>
    #   resp.data.elastic_load_balancers[0].availability_zones[0] #=> String
    #   resp.data.elastic_load_balancers[0].subnet_ids #=> Array<String>
    #   resp.data.elastic_load_balancers[0].ec2_instance_ids #=> Array<String>
    #
    def describe_elastic_load_balancers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeElasticLoadBalancersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeElasticLoadBalancersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeElasticLoadBalancers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeElasticLoadBalancers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeElasticLoadBalancers,
        stubs: @stubs,
        params_class: Params::DescribeElasticLoadBalancersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_elastic_load_balancers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests a description of a set of instances.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInstancesInput}.
    #
    # @option params [String] :stack_id
    #   <p>A stack ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of
    #         the instances associated with the specified stack.</p>
    #
    # @option params [String] :layer_id
    #   <p>A layer ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of
    #         the instances associated with the specified layer.</p>
    #
    # @option params [Array<String>] :instance_ids
    #   <p>An array of instance IDs to be described. If you use this parameter,
    #           <code>DescribeInstances</code> returns a description of the specified instances. Otherwise,
    #         it returns a description of every instance.</p>
    #
    # @return [Types::DescribeInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instances(
    #     stack_id: 'StackId',
    #     layer_id: 'LayerId',
    #     instance_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInstancesOutput
    #   resp.data.instances #=> Array<Instance>
    #   resp.data.instances[0] #=> Types::Instance
    #   resp.data.instances[0].agent_version #=> String
    #   resp.data.instances[0].ami_id #=> String
    #   resp.data.instances[0].architecture #=> String, one of ["x86_64", "i386"]
    #   resp.data.instances[0].arn #=> String
    #   resp.data.instances[0].auto_scaling_type #=> String, one of ["load", "timer"]
    #   resp.data.instances[0].availability_zone #=> String
    #   resp.data.instances[0].block_device_mappings #=> Array<BlockDeviceMapping>
    #   resp.data.instances[0].block_device_mappings[0] #=> Types::BlockDeviceMapping
    #   resp.data.instances[0].block_device_mappings[0].device_name #=> String
    #   resp.data.instances[0].block_device_mappings[0].no_device #=> String
    #   resp.data.instances[0].block_device_mappings[0].virtual_name #=> String
    #   resp.data.instances[0].block_device_mappings[0].ebs #=> Types::EbsBlockDevice
    #   resp.data.instances[0].block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.data.instances[0].block_device_mappings[0].ebs.iops #=> Integer
    #   resp.data.instances[0].block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.data.instances[0].block_device_mappings[0].ebs.volume_type #=> String, one of ["gp2", "io1", "standard"]
    #   resp.data.instances[0].block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.data.instances[0].created_at #=> String
    #   resp.data.instances[0].ebs_optimized #=> Boolean
    #   resp.data.instances[0].ec2_instance_id #=> String
    #   resp.data.instances[0].ecs_cluster_arn #=> String
    #   resp.data.instances[0].ecs_container_instance_arn #=> String
    #   resp.data.instances[0].elastic_ip #=> String
    #   resp.data.instances[0].hostname #=> String
    #   resp.data.instances[0].infrastructure_class #=> String
    #   resp.data.instances[0].install_updates_on_boot #=> Boolean
    #   resp.data.instances[0].instance_id #=> String
    #   resp.data.instances[0].instance_profile_arn #=> String
    #   resp.data.instances[0].instance_type #=> String
    #   resp.data.instances[0].last_service_error_id #=> String
    #   resp.data.instances[0].layer_ids #=> Array<String>
    #   resp.data.instances[0].layer_ids[0] #=> String
    #   resp.data.instances[0].os #=> String
    #   resp.data.instances[0].platform #=> String
    #   resp.data.instances[0].private_dns #=> String
    #   resp.data.instances[0].private_ip #=> String
    #   resp.data.instances[0].public_dns #=> String
    #   resp.data.instances[0].public_ip #=> String
    #   resp.data.instances[0].registered_by #=> String
    #   resp.data.instances[0].reported_agent_version #=> String
    #   resp.data.instances[0].reported_os #=> Types::ReportedOs
    #   resp.data.instances[0].reported_os.family #=> String
    #   resp.data.instances[0].reported_os.name #=> String
    #   resp.data.instances[0].reported_os.version #=> String
    #   resp.data.instances[0].root_device_type #=> String, one of ["ebs", "instance-store"]
    #   resp.data.instances[0].root_device_volume_id #=> String
    #   resp.data.instances[0].security_group_ids #=> Array<String>
    #   resp.data.instances[0].ssh_host_dsa_key_fingerprint #=> String
    #   resp.data.instances[0].ssh_host_rsa_key_fingerprint #=> String
    #   resp.data.instances[0].ssh_key_name #=> String
    #   resp.data.instances[0].stack_id #=> String
    #   resp.data.instances[0].status #=> String
    #   resp.data.instances[0].subnet_id #=> String
    #   resp.data.instances[0].tenancy #=> String
    #   resp.data.instances[0].virtualization_type #=> String, one of ["paravirtual", "hvm"]
    #
    def describe_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInstances
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInstances,
        stubs: @stubs,
        params_class: Params::DescribeInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests a description of one or more layers in a specified stack.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLayersInput}.
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @option params [Array<String>] :layer_ids
    #   <p>An array of layer IDs that specify the layers to be described. If you omit this parameter,
    #           <code>DescribeLayers</code> returns a description of every layer in the specified stack.</p>
    #
    # @return [Types::DescribeLayersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_layers(
    #     stack_id: 'StackId',
    #     layer_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLayersOutput
    #   resp.data.layers #=> Array<Layer>
    #   resp.data.layers[0] #=> Types::Layer
    #   resp.data.layers[0].arn #=> String
    #   resp.data.layers[0].stack_id #=> String
    #   resp.data.layers[0].layer_id #=> String
    #   resp.data.layers[0].type #=> String, one of ["aws-flow-ruby", "ecs-cluster", "java-app", "lb", "web", "php-app", "rails-app", "nodejs-app", "memcached", "db-master", "monitoring-master", "custom"]
    #   resp.data.layers[0].name #=> String
    #   resp.data.layers[0].shortname #=> String
    #   resp.data.layers[0].attributes #=> Hash<String, String>
    #   resp.data.layers[0].attributes['key'] #=> String
    #   resp.data.layers[0].cloud_watch_logs_configuration #=> Types::CloudWatchLogsConfiguration
    #   resp.data.layers[0].cloud_watch_logs_configuration.enabled #=> Boolean
    #   resp.data.layers[0].cloud_watch_logs_configuration.log_streams #=> Array<CloudWatchLogsLogStream>
    #   resp.data.layers[0].cloud_watch_logs_configuration.log_streams[0] #=> Types::CloudWatchLogsLogStream
    #   resp.data.layers[0].cloud_watch_logs_configuration.log_streams[0].log_group_name #=> String
    #   resp.data.layers[0].cloud_watch_logs_configuration.log_streams[0].datetime_format #=> String
    #   resp.data.layers[0].cloud_watch_logs_configuration.log_streams[0].time_zone #=> String, one of ["LOCAL", "UTC"]
    #   resp.data.layers[0].cloud_watch_logs_configuration.log_streams[0].file #=> String
    #   resp.data.layers[0].cloud_watch_logs_configuration.log_streams[0].file_fingerprint_lines #=> String
    #   resp.data.layers[0].cloud_watch_logs_configuration.log_streams[0].multi_line_start_pattern #=> String
    #   resp.data.layers[0].cloud_watch_logs_configuration.log_streams[0].initial_position #=> String, one of ["start_of_file", "end_of_file"]
    #   resp.data.layers[0].cloud_watch_logs_configuration.log_streams[0].encoding #=> String, one of ["ascii", "big5", "big5hkscs", "cp037", "cp424", "cp437", "cp500", "cp720", "cp737", "cp775", "cp850", "cp852", "cp855", "cp856", "cp857", "cp858", "cp860", "cp861", "cp862", "cp863", "cp864", "cp865", "cp866", "cp869", "cp874", "cp875", "cp932", "cp949", "cp950", "cp1006", "cp1026", "cp1140", "cp1250", "cp1251", "cp1252", "cp1253", "cp1254", "cp1255", "cp1256", "cp1257", "cp1258", "euc_jp", "euc_jis_2004", "euc_jisx0213", "euc_kr", "gb2312", "gbk", "gb18030", "hz", "iso2022_jp", "iso2022_jp_1", "iso2022_jp_2", "iso2022_jp_2004", "iso2022_jp_3", "iso2022_jp_ext", "iso2022_kr", "latin_1", "iso8859_2", "iso8859_3", "iso8859_4", "iso8859_5", "iso8859_6", "iso8859_7", "iso8859_8", "iso8859_9", "iso8859_10", "iso8859_13", "iso8859_14", "iso8859_15", "iso8859_16", "johab", "koi8_r", "koi8_u", "mac_cyrillic", "mac_greek", "mac_iceland", "mac_latin2", "mac_roman", "mac_turkish", "ptcp154", "shift_jis", "shift_jis_2004", "shift_jisx0213", "utf_32", "utf_32_be", "utf_32_le", "utf_16", "utf_16_be", "utf_16_le", "utf_7", "utf_8", "utf_8_sig"]
    #   resp.data.layers[0].cloud_watch_logs_configuration.log_streams[0].buffer_duration #=> Integer
    #   resp.data.layers[0].cloud_watch_logs_configuration.log_streams[0].batch_count #=> Integer
    #   resp.data.layers[0].cloud_watch_logs_configuration.log_streams[0].batch_size #=> Integer
    #   resp.data.layers[0].custom_instance_profile_arn #=> String
    #   resp.data.layers[0].custom_json #=> String
    #   resp.data.layers[0].custom_security_group_ids #=> Array<String>
    #   resp.data.layers[0].custom_security_group_ids[0] #=> String
    #   resp.data.layers[0].default_security_group_names #=> Array<String>
    #   resp.data.layers[0].packages #=> Array<String>
    #   resp.data.layers[0].volume_configurations #=> Array<VolumeConfiguration>
    #   resp.data.layers[0].volume_configurations[0] #=> Types::VolumeConfiguration
    #   resp.data.layers[0].volume_configurations[0].mount_point #=> String
    #   resp.data.layers[0].volume_configurations[0].raid_level #=> Integer
    #   resp.data.layers[0].volume_configurations[0].number_of_disks #=> Integer
    #   resp.data.layers[0].volume_configurations[0].size #=> Integer
    #   resp.data.layers[0].volume_configurations[0].volume_type #=> String
    #   resp.data.layers[0].volume_configurations[0].iops #=> Integer
    #   resp.data.layers[0].volume_configurations[0].encrypted #=> Boolean
    #   resp.data.layers[0].enable_auto_healing #=> Boolean
    #   resp.data.layers[0].auto_assign_elastic_ips #=> Boolean
    #   resp.data.layers[0].auto_assign_public_ips #=> Boolean
    #   resp.data.layers[0].default_recipes #=> Types::Recipes
    #   resp.data.layers[0].default_recipes.setup #=> Array<String>
    #   resp.data.layers[0].default_recipes.configure #=> Array<String>
    #   resp.data.layers[0].default_recipes.deploy #=> Array<String>
    #   resp.data.layers[0].default_recipes.undeploy #=> Array<String>
    #   resp.data.layers[0].default_recipes.shutdown #=> Array<String>
    #   resp.data.layers[0].custom_recipes #=> Types::Recipes
    #   resp.data.layers[0].created_at #=> String
    #   resp.data.layers[0].install_updates_on_boot #=> Boolean
    #   resp.data.layers[0].use_ebs_optimized_instances #=> Boolean
    #   resp.data.layers[0].lifecycle_event_configuration #=> Types::LifecycleEventConfiguration
    #   resp.data.layers[0].lifecycle_event_configuration.shutdown #=> Types::ShutdownEventConfiguration
    #   resp.data.layers[0].lifecycle_event_configuration.shutdown.execution_timeout #=> Integer
    #   resp.data.layers[0].lifecycle_event_configuration.shutdown.delay_until_elb_connections_drained #=> Boolean
    #
    def describe_layers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLayersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLayersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLayers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeLayers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLayers,
        stubs: @stubs,
        params_class: Params::DescribeLayersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_layers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes load-based auto scaling configurations for specified layers.</p>
    #          <note>
    #             <p>You must specify at least one of the parameters.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLoadBasedAutoScalingInput}.
    #
    # @option params [Array<String>] :layer_ids
    #   <p>An array of layer IDs.</p>
    #
    # @return [Types::DescribeLoadBasedAutoScalingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_based_auto_scaling(
    #     layer_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLoadBasedAutoScalingOutput
    #   resp.data.load_based_auto_scaling_configurations #=> Array<LoadBasedAutoScalingConfiguration>
    #   resp.data.load_based_auto_scaling_configurations[0] #=> Types::LoadBasedAutoScalingConfiguration
    #   resp.data.load_based_auto_scaling_configurations[0].layer_id #=> String
    #   resp.data.load_based_auto_scaling_configurations[0].enable #=> Boolean
    #   resp.data.load_based_auto_scaling_configurations[0].up_scaling #=> Types::AutoScalingThresholds
    #   resp.data.load_based_auto_scaling_configurations[0].up_scaling.instance_count #=> Integer
    #   resp.data.load_based_auto_scaling_configurations[0].up_scaling.thresholds_wait_time #=> Integer
    #   resp.data.load_based_auto_scaling_configurations[0].up_scaling.ignore_metrics_time #=> Integer
    #   resp.data.load_based_auto_scaling_configurations[0].up_scaling.cpu_threshold #=> Float
    #   resp.data.load_based_auto_scaling_configurations[0].up_scaling.memory_threshold #=> Float
    #   resp.data.load_based_auto_scaling_configurations[0].up_scaling.load_threshold #=> Float
    #   resp.data.load_based_auto_scaling_configurations[0].up_scaling.alarms #=> Array<String>
    #   resp.data.load_based_auto_scaling_configurations[0].up_scaling.alarms[0] #=> String
    #   resp.data.load_based_auto_scaling_configurations[0].down_scaling #=> Types::AutoScalingThresholds
    #
    def describe_load_based_auto_scaling(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLoadBasedAutoScalingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLoadBasedAutoScalingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLoadBasedAutoScaling
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeLoadBasedAutoScaling
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLoadBasedAutoScaling,
        stubs: @stubs,
        params_class: Params::DescribeLoadBasedAutoScalingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_load_based_auto_scaling
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a user's SSH information.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have self-management
    #       enabled or an attached policy that explicitly grants permissions. For more information about user
    #       permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMyUserProfileInput}.
    #
    # @return [Types::DescribeMyUserProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_my_user_profile()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMyUserProfileOutput
    #   resp.data.user_profile #=> Types::SelfUserProfile
    #   resp.data.user_profile.iam_user_arn #=> String
    #   resp.data.user_profile.name #=> String
    #   resp.data.user_profile.ssh_username #=> String
    #   resp.data.user_profile.ssh_public_key #=> String
    #
    def describe_my_user_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMyUserProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMyUserProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMyUserProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DescribeMyUserProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMyUserProfile,
        stubs: @stubs,
        params_class: Params::DescribeMyUserProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_my_user_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the operating systems that are supported by AWS OpsWorks Stacks.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOperatingSystemsInput}.
    #
    # @return [Types::DescribeOperatingSystemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_operating_systems()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOperatingSystemsOutput
    #   resp.data.operating_systems #=> Array<OperatingSystem>
    #   resp.data.operating_systems[0] #=> Types::OperatingSystem
    #   resp.data.operating_systems[0].name #=> String
    #   resp.data.operating_systems[0].id #=> String
    #   resp.data.operating_systems[0].type #=> String
    #   resp.data.operating_systems[0].configuration_managers #=> Array<OperatingSystemConfigurationManager>
    #   resp.data.operating_systems[0].configuration_managers[0] #=> Types::OperatingSystemConfigurationManager
    #   resp.data.operating_systems[0].configuration_managers[0].name #=> String
    #   resp.data.operating_systems[0].configuration_managers[0].version #=> String
    #   resp.data.operating_systems[0].reported_name #=> String
    #   resp.data.operating_systems[0].reported_version #=> String
    #   resp.data.operating_systems[0].supported #=> Boolean
    #
    def describe_operating_systems(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOperatingSystemsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOperatingSystemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOperatingSystems
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DescribeOperatingSystems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOperatingSystems,
        stubs: @stubs,
        params_class: Params::DescribeOperatingSystemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_operating_systems
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the permissions for a specified stack.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePermissionsInput}.
    #
    # @option params [String] :iam_user_arn
    #   <p>The user's IAM ARN. This can also be a federated user's ARN. For more information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @return [Types::DescribePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_permissions(
    #     iam_user_arn: 'IamUserArn',
    #     stack_id: 'StackId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePermissionsOutput
    #   resp.data.permissions #=> Array<Permission>
    #   resp.data.permissions[0] #=> Types::Permission
    #   resp.data.permissions[0].stack_id #=> String
    #   resp.data.permissions[0].iam_user_arn #=> String
    #   resp.data.permissions[0].allow_ssh #=> Boolean
    #   resp.data.permissions[0].allow_sudo #=> Boolean
    #   resp.data.permissions[0].level #=> String
    #
    def describe_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePermissions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePermissions,
        stubs: @stubs,
        params_class: Params::DescribePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe an instance's RAID arrays.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRaidArraysInput}.
    #
    # @option params [String] :instance_id
    #   <p>The instance ID. If you use this parameter, <code>DescribeRaidArrays</code> returns
    #         descriptions of the RAID arrays associated with the specified instance. </p>
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @option params [Array<String>] :raid_array_ids
    #   <p>An array of RAID array IDs. If you use this parameter, <code>DescribeRaidArrays</code>
    #         returns descriptions of the specified arrays. Otherwise, it returns a description of every
    #         array.</p>
    #
    # @return [Types::DescribeRaidArraysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_raid_arrays(
    #     instance_id: 'InstanceId',
    #     stack_id: 'StackId',
    #     raid_array_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRaidArraysOutput
    #   resp.data.raid_arrays #=> Array<RaidArray>
    #   resp.data.raid_arrays[0] #=> Types::RaidArray
    #   resp.data.raid_arrays[0].raid_array_id #=> String
    #   resp.data.raid_arrays[0].instance_id #=> String
    #   resp.data.raid_arrays[0].name #=> String
    #   resp.data.raid_arrays[0].raid_level #=> Integer
    #   resp.data.raid_arrays[0].number_of_disks #=> Integer
    #   resp.data.raid_arrays[0].size #=> Integer
    #   resp.data.raid_arrays[0].device #=> String
    #   resp.data.raid_arrays[0].mount_point #=> String
    #   resp.data.raid_arrays[0].availability_zone #=> String
    #   resp.data.raid_arrays[0].created_at #=> String
    #   resp.data.raid_arrays[0].stack_id #=> String
    #   resp.data.raid_arrays[0].volume_type #=> String
    #   resp.data.raid_arrays[0].iops #=> Integer
    #
    def describe_raid_arrays(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRaidArraysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRaidArraysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRaidArrays
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeRaidArrays
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRaidArrays,
        stubs: @stubs,
        params_class: Params::DescribeRaidArraysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_raid_arrays
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes Amazon RDS instances.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #          <p>This call accepts only one resource-identifying parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRdsDbInstancesInput}.
    #
    # @option params [String] :stack_id
    #   <p>The ID of the stack with which the instances are registered. The operation returns descriptions of all registered Amazon RDS instances.</p>
    #
    # @option params [Array<String>] :rds_db_instance_arns
    #   <p>An array containing the ARNs of the instances to be described.</p>
    #
    # @return [Types::DescribeRdsDbInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rds_db_instances(
    #     stack_id: 'StackId', # required
    #     rds_db_instance_arns: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRdsDbInstancesOutput
    #   resp.data.rds_db_instances #=> Array<RdsDbInstance>
    #   resp.data.rds_db_instances[0] #=> Types::RdsDbInstance
    #   resp.data.rds_db_instances[0].rds_db_instance_arn #=> String
    #   resp.data.rds_db_instances[0].db_instance_identifier #=> String
    #   resp.data.rds_db_instances[0].db_user #=> String
    #   resp.data.rds_db_instances[0].db_password #=> String
    #   resp.data.rds_db_instances[0].region #=> String
    #   resp.data.rds_db_instances[0].address #=> String
    #   resp.data.rds_db_instances[0].engine #=> String
    #   resp.data.rds_db_instances[0].stack_id #=> String
    #   resp.data.rds_db_instances[0].missing_on_rds #=> Boolean
    #
    def describe_rds_db_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRdsDbInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRdsDbInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRdsDbInstances
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeRdsDbInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRdsDbInstances,
        stubs: @stubs,
        params_class: Params::DescribeRdsDbInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_rds_db_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes AWS OpsWorks Stacks service errors.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #          <p>This call accepts only one resource-identifying parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeServiceErrorsInput}.
    #
    # @option params [String] :stack_id
    #   <p>The stack ID. If you use this parameter, <code>DescribeServiceErrors</code> returns
    #         descriptions of the errors associated with the specified stack.</p>
    #
    # @option params [String] :instance_id
    #   <p>The instance ID. If you use this parameter, <code>DescribeServiceErrors</code> returns
    #         descriptions of the errors associated with the specified instance.</p>
    #
    # @option params [Array<String>] :service_error_ids
    #   <p>An array of service error IDs. If you use this parameter, <code>DescribeServiceErrors</code>
    #         returns descriptions of the specified errors. Otherwise, it returns a description of every
    #         error.</p>
    #
    # @return [Types::DescribeServiceErrorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service_errors(
    #     stack_id: 'StackId',
    #     instance_id: 'InstanceId',
    #     service_error_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeServiceErrorsOutput
    #   resp.data.service_errors #=> Array<ServiceError>
    #   resp.data.service_errors[0] #=> Types::ServiceError
    #   resp.data.service_errors[0].service_error_id #=> String
    #   resp.data.service_errors[0].stack_id #=> String
    #   resp.data.service_errors[0].instance_id #=> String
    #   resp.data.service_errors[0].type #=> String
    #   resp.data.service_errors[0].message #=> String
    #   resp.data.service_errors[0].created_at #=> String
    #
    def describe_service_errors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeServiceErrorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeServiceErrorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeServiceErrors
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeServiceErrors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeServiceErrors,
        stubs: @stubs,
        params_class: Params::DescribeServiceErrorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_service_errors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests a description of a stack's provisioning parameters.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStackProvisioningParametersInput}.
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @return [Types::DescribeStackProvisioningParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_provisioning_parameters(
    #     stack_id: 'StackId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStackProvisioningParametersOutput
    #   resp.data.agent_installer_url #=> String
    #   resp.data.parameters #=> Hash<String, String>
    #   resp.data.parameters['key'] #=> String
    #
    def describe_stack_provisioning_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStackProvisioningParametersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStackProvisioningParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStackProvisioningParameters
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeStackProvisioningParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStackProvisioningParameters,
        stubs: @stubs,
        params_class: Params::DescribeStackProvisioningParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stack_provisioning_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the number of layers and apps in a specified stack, and the number of instances in
    #       each state, such as <code>running_setup</code> or <code>online</code>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStackSummaryInput}.
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @return [Types::DescribeStackSummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_summary(
    #     stack_id: 'StackId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStackSummaryOutput
    #   resp.data.stack_summary #=> Types::StackSummary
    #   resp.data.stack_summary.stack_id #=> String
    #   resp.data.stack_summary.name #=> String
    #   resp.data.stack_summary.arn #=> String
    #   resp.data.stack_summary.layers_count #=> Integer
    #   resp.data.stack_summary.apps_count #=> Integer
    #   resp.data.stack_summary.instances_count #=> Types::InstancesCount
    #   resp.data.stack_summary.instances_count.assigning #=> Integer
    #   resp.data.stack_summary.instances_count.booting #=> Integer
    #   resp.data.stack_summary.instances_count.connection_lost #=> Integer
    #   resp.data.stack_summary.instances_count.deregistering #=> Integer
    #   resp.data.stack_summary.instances_count.online #=> Integer
    #   resp.data.stack_summary.instances_count.pending #=> Integer
    #   resp.data.stack_summary.instances_count.rebooting #=> Integer
    #   resp.data.stack_summary.instances_count.registered #=> Integer
    #   resp.data.stack_summary.instances_count.registering #=> Integer
    #   resp.data.stack_summary.instances_count.requested #=> Integer
    #   resp.data.stack_summary.instances_count.running_setup #=> Integer
    #   resp.data.stack_summary.instances_count.setup_failed #=> Integer
    #   resp.data.stack_summary.instances_count.shutting_down #=> Integer
    #   resp.data.stack_summary.instances_count.start_failed #=> Integer
    #   resp.data.stack_summary.instances_count.stop_failed #=> Integer
    #   resp.data.stack_summary.instances_count.stopped #=> Integer
    #   resp.data.stack_summary.instances_count.stopping #=> Integer
    #   resp.data.stack_summary.instances_count.terminated #=> Integer
    #   resp.data.stack_summary.instances_count.terminating #=> Integer
    #   resp.data.stack_summary.instances_count.unassigning #=> Integer
    #
    def describe_stack_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStackSummaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStackSummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStackSummary
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeStackSummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStackSummary,
        stubs: @stubs,
        params_class: Params::DescribeStackSummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stack_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests a description of one or more stacks.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStacksInput}.
    #
    # @option params [Array<String>] :stack_ids
    #   <p>An array of stack IDs that specify the stacks to be described. If you omit this parameter,
    #           <code>DescribeStacks</code> returns a description of every stack.</p>
    #
    # @return [Types::DescribeStacksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stacks(
    #     stack_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStacksOutput
    #   resp.data.stacks #=> Array<Stack>
    #   resp.data.stacks[0] #=> Types::Stack
    #   resp.data.stacks[0].stack_id #=> String
    #   resp.data.stacks[0].name #=> String
    #   resp.data.stacks[0].arn #=> String
    #   resp.data.stacks[0].region #=> String
    #   resp.data.stacks[0].vpc_id #=> String
    #   resp.data.stacks[0].attributes #=> Hash<String, String>
    #   resp.data.stacks[0].attributes['key'] #=> String
    #   resp.data.stacks[0].service_role_arn #=> String
    #   resp.data.stacks[0].default_instance_profile_arn #=> String
    #   resp.data.stacks[0].default_os #=> String
    #   resp.data.stacks[0].hostname_theme #=> String
    #   resp.data.stacks[0].default_availability_zone #=> String
    #   resp.data.stacks[0].default_subnet_id #=> String
    #   resp.data.stacks[0].custom_json #=> String
    #   resp.data.stacks[0].configuration_manager #=> Types::StackConfigurationManager
    #   resp.data.stacks[0].configuration_manager.name #=> String
    #   resp.data.stacks[0].configuration_manager.version #=> String
    #   resp.data.stacks[0].chef_configuration #=> Types::ChefConfiguration
    #   resp.data.stacks[0].chef_configuration.manage_berkshelf #=> Boolean
    #   resp.data.stacks[0].chef_configuration.berkshelf_version #=> String
    #   resp.data.stacks[0].use_custom_cookbooks #=> Boolean
    #   resp.data.stacks[0].use_opsworks_security_groups #=> Boolean
    #   resp.data.stacks[0].custom_cookbooks_source #=> Types::Source
    #   resp.data.stacks[0].custom_cookbooks_source.type #=> String, one of ["git", "svn", "archive", "s3"]
    #   resp.data.stacks[0].custom_cookbooks_source.url #=> String
    #   resp.data.stacks[0].custom_cookbooks_source.username #=> String
    #   resp.data.stacks[0].custom_cookbooks_source.password #=> String
    #   resp.data.stacks[0].custom_cookbooks_source.ssh_key #=> String
    #   resp.data.stacks[0].custom_cookbooks_source.revision #=> String
    #   resp.data.stacks[0].default_ssh_key_name #=> String
    #   resp.data.stacks[0].created_at #=> String
    #   resp.data.stacks[0].default_root_device_type #=> String, one of ["ebs", "instance-store"]
    #   resp.data.stacks[0].agent_version #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Describes time-based auto scaling configurations for specified instances.</p>
    #          <note>
    #             <p>You must specify at least one of the parameters.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTimeBasedAutoScalingInput}.
    #
    # @option params [Array<String>] :instance_ids
    #   <p>An array of instance IDs.</p>
    #
    # @return [Types::DescribeTimeBasedAutoScalingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_time_based_auto_scaling(
    #     instance_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTimeBasedAutoScalingOutput
    #   resp.data.time_based_auto_scaling_configurations #=> Array<TimeBasedAutoScalingConfiguration>
    #   resp.data.time_based_auto_scaling_configurations[0] #=> Types::TimeBasedAutoScalingConfiguration
    #   resp.data.time_based_auto_scaling_configurations[0].instance_id #=> String
    #   resp.data.time_based_auto_scaling_configurations[0].auto_scaling_schedule #=> Types::WeeklyAutoScalingSchedule
    #   resp.data.time_based_auto_scaling_configurations[0].auto_scaling_schedule.monday #=> Hash<String, String>
    #   resp.data.time_based_auto_scaling_configurations[0].auto_scaling_schedule.monday['key'] #=> String
    #   resp.data.time_based_auto_scaling_configurations[0].auto_scaling_schedule.tuesday #=> Hash<String, String>
    #   resp.data.time_based_auto_scaling_configurations[0].auto_scaling_schedule.wednesday #=> Hash<String, String>
    #   resp.data.time_based_auto_scaling_configurations[0].auto_scaling_schedule.thursday #=> Hash<String, String>
    #   resp.data.time_based_auto_scaling_configurations[0].auto_scaling_schedule.friday #=> Hash<String, String>
    #   resp.data.time_based_auto_scaling_configurations[0].auto_scaling_schedule.saturday #=> Hash<String, String>
    #   resp.data.time_based_auto_scaling_configurations[0].auto_scaling_schedule.sunday #=> Hash<String, String>
    #
    def describe_time_based_auto_scaling(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTimeBasedAutoScalingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTimeBasedAutoScalingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTimeBasedAutoScaling
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeTimeBasedAutoScaling
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTimeBasedAutoScaling,
        stubs: @stubs,
        params_class: Params::DescribeTimeBasedAutoScalingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_time_based_auto_scaling
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe specified users.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy
    #       that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserProfilesInput}.
    #
    # @option params [Array<String>] :iam_user_arns
    #   <p>An array of IAM or federated user ARNs that identify the users to be described.</p>
    #
    # @return [Types::DescribeUserProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_profiles(
    #     iam_user_arns: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserProfilesOutput
    #   resp.data.user_profiles #=> Array<UserProfile>
    #   resp.data.user_profiles[0] #=> Types::UserProfile
    #   resp.data.user_profiles[0].iam_user_arn #=> String
    #   resp.data.user_profiles[0].name #=> String
    #   resp.data.user_profiles[0].ssh_username #=> String
    #   resp.data.user_profiles[0].ssh_public_key #=> String
    #   resp.data.user_profiles[0].allow_self_management #=> Boolean
    #
    def describe_user_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUserProfiles
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeUserProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUserProfiles,
        stubs: @stubs,
        params_class: Params::DescribeUserProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an instance's Amazon EBS volumes.</p>
    #          <note>
    #             <p>This call accepts only one resource-identifying parameter.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or
    #       Manage permissions level for the stack, or an attached policy that explicitly grants
    #       permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVolumesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The instance ID. If you use this parameter, <code>DescribeVolumes</code> returns descriptions
    #         of the volumes associated with the specified instance.</p>
    #
    # @option params [String] :stack_id
    #   <p>A stack ID. The action describes the stack's registered Amazon EBS volumes.</p>
    #
    # @option params [String] :raid_array_id
    #   <p>The RAID array ID. If you use this parameter, <code>DescribeVolumes</code> returns
    #         descriptions of the volumes associated with the specified RAID array.</p>
    #
    # @option params [Array<String>] :volume_ids
    #   <p>Am array of volume IDs. If you use this parameter, <code>DescribeVolumes</code> returns
    #         descriptions of the specified volumes. Otherwise, it returns a description of every
    #         volume.</p>
    #
    # @return [Types::DescribeVolumesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_volumes(
    #     instance_id: 'InstanceId',
    #     stack_id: 'StackId',
    #     raid_array_id: 'RaidArrayId',
    #     volume_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVolumesOutput
    #   resp.data.volumes #=> Array<Volume>
    #   resp.data.volumes[0] #=> Types::Volume
    #   resp.data.volumes[0].volume_id #=> String
    #   resp.data.volumes[0].ec2_volume_id #=> String
    #   resp.data.volumes[0].name #=> String
    #   resp.data.volumes[0].raid_array_id #=> String
    #   resp.data.volumes[0].instance_id #=> String
    #   resp.data.volumes[0].status #=> String
    #   resp.data.volumes[0].size #=> Integer
    #   resp.data.volumes[0].device #=> String
    #   resp.data.volumes[0].mount_point #=> String
    #   resp.data.volumes[0].region #=> String
    #   resp.data.volumes[0].availability_zone #=> String
    #   resp.data.volumes[0].volume_type #=> String
    #   resp.data.volumes[0].iops #=> Integer
    #   resp.data.volumes[0].encrypted #=> Boolean
    #
    def describe_volumes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVolumesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVolumesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVolumes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DescribeVolumes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVolumes,
        stubs: @stubs,
        params_class: Params::DescribeVolumesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_volumes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detaches a specified Elastic Load Balancing instance from its layer.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachElasticLoadBalancerInput}.
    #
    # @option params [String] :elastic_load_balancer_name
    #   <p>The Elastic Load Balancing instance's name.</p>
    #
    # @option params [String] :layer_id
    #   <p>The ID of the layer that the Elastic Load Balancing instance is attached to.</p>
    #
    # @return [Types::DetachElasticLoadBalancerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_elastic_load_balancer(
    #     elastic_load_balancer_name: 'ElasticLoadBalancerName', # required
    #     layer_id: 'LayerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachElasticLoadBalancerOutput
    #
    def detach_elastic_load_balancer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachElasticLoadBalancerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachElasticLoadBalancerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachElasticLoadBalancer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DetachElasticLoadBalancer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachElasticLoadBalancer,
        stubs: @stubs,
        params_class: Params::DetachElasticLoadBalancerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_elastic_load_balancer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates an Elastic IP address from its instance. The address remains registered with
    #       the stack. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateElasticIpInput}.
    #
    # @option params [String] :elastic_ip
    #   <p>The Elastic IP address.</p>
    #
    # @return [Types::DisassociateElasticIpOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_elastic_ip(
    #     elastic_ip: 'ElasticIp' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateElasticIpOutput
    #
    def disassociate_elastic_ip(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateElasticIpInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateElasticIpInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateElasticIp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateElasticIp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateElasticIp,
        stubs: @stubs,
        params_class: Params::DisassociateElasticIpOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_elastic_ip
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a generated host name for the specified layer, based on the current host name theme.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetHostnameSuggestionInput}.
    #
    # @option params [String] :layer_id
    #   <p>The layer ID.</p>
    #
    # @return [Types::GetHostnameSuggestionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hostname_suggestion(
    #     layer_id: 'LayerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetHostnameSuggestionOutput
    #   resp.data.layer_id #=> String
    #   resp.data.hostname #=> String
    #
    def get_hostname_suggestion(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetHostnameSuggestionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetHostnameSuggestionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetHostnameSuggestion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GetHostnameSuggestion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetHostnameSuggestion,
        stubs: @stubs,
        params_class: Params::GetHostnameSuggestionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_hostname_suggestion
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action can be used only with Windows stacks.</p>
    #          </note>
    #          <p>Grants RDP access to a Windows instance for a specified time period.</p>
    #
    # @param [Hash] params
    #   See {Types::GrantAccessInput}.
    #
    # @option params [String] :instance_id
    #   <p>The instance's AWS OpsWorks Stacks ID.</p>
    #
    # @option params [Integer] :valid_for_in_minutes
    #   <p>The length of time (in minutes) that the grant is valid. When the grant expires at the end of this period, the user will no longer be able to use the credentials to log in. If the user is logged in at the time, he or she automatically will be logged out.</p>
    #
    # @return [Types::GrantAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.grant_access(
    #     instance_id: 'InstanceId', # required
    #     valid_for_in_minutes: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GrantAccessOutput
    #   resp.data.temporary_credential #=> Types::TemporaryCredential
    #   resp.data.temporary_credential.username #=> String
    #   resp.data.temporary_credential.password #=> String
    #   resp.data.temporary_credential.valid_for_in_minutes #=> Integer
    #   resp.data.temporary_credential.instance_id #=> String
    #
    def grant_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GrantAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GrantAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GrantAccess
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GrantAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GrantAccess,
        stubs: @stubs,
        params_class: Params::GrantAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :grant_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of tags that are applied to the specified stack or layer.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The stack or layer's Amazon Resource Number (ARN).</p>
    #
    # @option params [Integer] :max_results
    #   <p>Do not use. A validation exception occurs if you add a <code>MaxResults</code> parameter to a <code>ListTagsRequest</code> call.
    #         </p>
    #
    # @option params [String] :next_token
    #   <p>Do not use. A validation exception occurs if you add a <code>NextToken</code> parameter to a <code>ListTagsRequest</code> call.
    #         </p>
    #
    # @return [Types::ListTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags(
    #     resource_arn: 'ResourceArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.next_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Reboots a specified instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting,
    #         Stopping, and Rebooting Instances</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RebootInstanceInput}.
    #
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    #
    # @return [Types::RebootInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_instance(
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RebootInstanceOutput
    #
    def reboot_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RebootInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RebootInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RebootInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::RebootInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RebootInstance,
        stubs: @stubs,
        params_class: Params::RebootInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reboot_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a specified Amazon ECS cluster with a stack. You can register only one
    #       cluster with a stack. A cluster can be registered with only one stack.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html">
    #       Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see
    #       <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">
    #       Managing User Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterEcsClusterInput}.
    #
    # @option params [String] :ecs_cluster_arn
    #   <p>The cluster's ARN.</p>
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @return [Types::RegisterEcsClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_ecs_cluster(
    #     ecs_cluster_arn: 'EcsClusterArn', # required
    #     stack_id: 'StackId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterEcsClusterOutput
    #   resp.data.ecs_cluster_arn #=> String
    #
    def register_ecs_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterEcsClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterEcsClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterEcsCluster
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::RegisterEcsCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterEcsCluster,
        stubs: @stubs,
        params_class: Params::RegisterEcsClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_ecs_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers an Elastic IP address with a specified stack. An address can be registered with
    #       only one stack at a time. If the address is already registered, you must first deregister it
    #       by calling <a>DeregisterElasticIp</a>. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterElasticIpInput}.
    #
    # @option params [String] :elastic_ip
    #   <p>The Elastic IP address.</p>
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @return [Types::RegisterElasticIpOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_elastic_ip(
    #     elastic_ip: 'ElasticIp', # required
    #     stack_id: 'StackId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterElasticIpOutput
    #   resp.data.elastic_ip #=> String
    #
    def register_elastic_ip(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterElasticIpInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterElasticIpInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterElasticIp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::RegisterElasticIp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterElasticIp,
        stubs: @stubs,
        params_class: Params::RegisterElasticIpOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_elastic_ip
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers instances that were created outside of AWS OpsWorks Stacks with a specified stack.</p>
    #          <note>
    #             <p>We do not recommend using this action to register instances. The complete registration
    #       operation includes two tasks: installing the AWS OpsWorks Stacks agent on the instance, and registering
    #       the instance with the stack. <code>RegisterInstance</code> handles only the second step. You
    #       should instead use the AWS CLI <code>register</code> command, which performs the entire
    #       registration operation. For more information,
    #       see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html">
    #       Registering an Instance with an AWS OpsWorks Stacks Stack</a>.</p>
    #          </note>
    #          <p>Registered instances have the same requirements as instances that are created by using the <a>CreateInstance</a> API.
    #       For example, registered instances must be running a supported Linux-based operating system, and they must have a supported instance
    #       type. For more information about requirements for instances that you want to register, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register-registering-preparer.html">
    #           Preparing the Instance</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterInstanceInput}.
    #
    # @option params [String] :stack_id
    #   <p>The ID of the stack that the instance is to be registered with.</p>
    #
    # @option params [String] :hostname
    #   <p>The instance's hostname.</p>
    #
    # @option params [String] :public_ip
    #   <p>The instance's public IP address.</p>
    #
    # @option params [String] :private_ip
    #   <p>The instance's private IP address.</p>
    #
    # @option params [String] :rsa_public_key
    #   <p>The instances public RSA key. This key is used to encrypt communication between the instance and the service.</p>
    #
    # @option params [String] :rsa_public_key_fingerprint
    #   <p>The instances public RSA key fingerprint.</p>
    #
    # @option params [InstanceIdentity] :instance_identity
    #   <p>An InstanceIdentity object that contains the instance's identity.</p>
    #
    # @return [Types::RegisterInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_instance(
    #     stack_id: 'StackId', # required
    #     hostname: 'Hostname',
    #     public_ip: 'PublicIp',
    #     private_ip: 'PrivateIp',
    #     rsa_public_key: 'RsaPublicKey',
    #     rsa_public_key_fingerprint: 'RsaPublicKeyFingerprint',
    #     instance_identity: {
    #       document: 'Document',
    #       signature: 'Signature'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterInstanceOutput
    #   resp.data.instance_id #=> String
    #
    def register_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::RegisterInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterInstance,
        stubs: @stubs,
        params_class: Params::RegisterInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers an Amazon RDS instance with a stack.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterRdsDbInstanceInput}.
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @option params [String] :rds_db_instance_arn
    #   <p>The Amazon RDS instance's ARN.</p>
    #
    # @option params [String] :db_user
    #   <p>The database's master user name.</p>
    #
    # @option params [String] :db_password
    #   <p>The database password.</p>
    #
    # @return [Types::RegisterRdsDbInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_rds_db_instance(
    #     stack_id: 'StackId', # required
    #     rds_db_instance_arn: 'RdsDbInstanceArn', # required
    #     db_user: 'DbUser', # required
    #     db_password: 'DbPassword' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterRdsDbInstanceOutput
    #
    def register_rds_db_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterRdsDbInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterRdsDbInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterRdsDbInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::RegisterRdsDbInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterRdsDbInstance,
        stubs: @stubs,
        params_class: Params::RegisterRdsDbInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_rds_db_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers an Amazon EBS volume with a specified stack. A volume can be registered with only one
    #       stack at a time. If the volume is already registered, you must first deregister it by calling
    #         <a>DeregisterVolume</a>. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterVolumeInput}.
    #
    # @option params [String] :ec2_volume_id
    #   <p>The Amazon EBS volume ID.</p>
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @return [Types::RegisterVolumeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_volume(
    #     ec2_volume_id: 'Ec2VolumeId',
    #     stack_id: 'StackId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterVolumeOutput
    #   resp.data.volume_id #=> String
    #
    def register_volume(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterVolumeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterVolumeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterVolume
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::RegisterVolume
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterVolume,
        stubs: @stubs,
        params_class: Params::RegisterVolumeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_volume
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Specify the load-based auto scaling configuration for a specified layer. For more
    #       information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing
    #         Load with Time-based and Load-based Instances</a>.</p>
    #          <note>
    #             <p>To use load-based auto scaling, you must create a set of load-based auto scaling instances. Load-based auto scaling operates only on the instances from that set, so you must ensure that you have created enough instances to handle the maximum anticipated load.</p>
    #          </note>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetLoadBasedAutoScalingInput}.
    #
    # @option params [String] :layer_id
    #   <p>The layer ID.</p>
    #
    # @option params [Boolean] :enable
    #   <p>Enables load-based auto scaling for the layer.</p>
    #
    # @option params [AutoScalingThresholds] :up_scaling
    #   <p>An <code>AutoScalingThresholds</code> object with the upscaling threshold configuration. If
    #         the load exceeds these thresholds for a specified amount of time, AWS OpsWorks Stacks starts a specified
    #         number of instances.</p>
    #
    # @option params [AutoScalingThresholds] :down_scaling
    #   <p>An <code>AutoScalingThresholds</code> object with the downscaling threshold configuration. If
    #         the load falls below these thresholds for a specified amount of time, AWS OpsWorks Stacks stops a specified
    #         number of instances.</p>
    #
    # @return [Types::SetLoadBasedAutoScalingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_load_based_auto_scaling(
    #     layer_id: 'LayerId', # required
    #     enable: false,
    #     up_scaling: {
    #       instance_count: 1,
    #       thresholds_wait_time: 1,
    #       ignore_metrics_time: 1,
    #       cpu_threshold: 1.0,
    #       memory_threshold: 1.0,
    #       load_threshold: 1.0,
    #       alarms: [
    #         'member'
    #       ]
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetLoadBasedAutoScalingOutput
    #
    def set_load_based_auto_scaling(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetLoadBasedAutoScalingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetLoadBasedAutoScalingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetLoadBasedAutoScaling
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::SetLoadBasedAutoScaling
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetLoadBasedAutoScaling,
        stubs: @stubs,
        params_class: Params::SetLoadBasedAutoScalingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_load_based_auto_scaling
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Specifies a user's permissions. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html">Security and
    #         Permissions</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetPermissionInput}.
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @option params [String] :iam_user_arn
    #   <p>The user's IAM ARN. This can also be a federated user's ARN.</p>
    #
    # @option params [Boolean] :allow_ssh
    #   <p>The user is allowed to use SSH to communicate with the instance.</p>
    #
    # @option params [Boolean] :allow_sudo
    #   <p>The user is allowed to use <b>sudo</b> to elevate privileges.</p>
    #
    # @option params [String] :level
    #   <p>The user's permission level, which must be set to one of the following strings. You cannot set your own permissions level.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>deny</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>show</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deploy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>manage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>iam_only</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about the permissions associated with these levels, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>
    #
    # @return [Types::SetPermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_permission(
    #     stack_id: 'StackId', # required
    #     iam_user_arn: 'IamUserArn', # required
    #     allow_ssh: false,
    #     allow_sudo: false,
    #     level: 'Level'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetPermissionOutput
    #
    def set_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetPermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetPermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetPermission
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::SetPermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetPermission,
        stubs: @stubs,
        params_class: Params::SetPermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Specify the time-based auto scaling configuration for a specified instance. For more
    #       information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing
    #         Load with Time-based and Load-based Instances</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetTimeBasedAutoScalingInput}.
    #
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    #
    # @option params [WeeklyAutoScalingSchedule] :auto_scaling_schedule
    #   <p>An <code>AutoScalingSchedule</code> with the instance schedule.</p>
    #
    # @return [Types::SetTimeBasedAutoScalingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_time_based_auto_scaling(
    #     instance_id: 'InstanceId', # required
    #     auto_scaling_schedule: {
    #       monday: {
    #         'key' => 'value'
    #       },
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetTimeBasedAutoScalingOutput
    #
    def set_time_based_auto_scaling(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetTimeBasedAutoScalingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetTimeBasedAutoScalingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetTimeBasedAutoScaling
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::SetTimeBasedAutoScaling
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetTimeBasedAutoScaling,
        stubs: @stubs,
        params_class: Params::SetTimeBasedAutoScalingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_time_based_auto_scaling
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a specified instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting,
    #         Stopping, and Rebooting Instances</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartInstanceInput}.
    #
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    #
    # @return [Types::StartInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_instance(
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartInstanceOutput
    #
    def start_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::StartInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartInstance,
        stubs: @stubs,
        params_class: Params::StartInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a stack's instances.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartStackInput}.
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @return [Types::StartStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_stack(
    #     stack_id: 'StackId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartStackOutput
    #
    def start_stack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartStackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartStackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartStack
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::StartStack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartStack,
        stubs: @stubs,
        params_class: Params::StartStackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_stack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a specified instance. When you stop a standard instance, the data disappears and must
    #       be reinstalled when you restart the instance. You can stop an Amazon EBS-backed instance without
    #       losing data. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting,
    #         Stopping, and Rebooting Instances</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StopInstanceInput}.
    #
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    #
    # @option params [Boolean] :force
    #   <p>Specifies whether to force an instance to stop. If the instance's root device type is <code>ebs</code>, or EBS-backed,
    #               adding the <code>Force</code> parameter to the <code>StopInstances</code> API call disassociates the AWS OpsWorks Stacks instance from EC2, and forces deletion of <i>only</i> the OpsWorks Stacks instance.
    #               You must also delete the formerly-associated instance in EC2 after troubleshooting and replacing the AWS OpsWorks Stacks instance with a new one.</p>
    #
    # @return [Types::StopInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_instance(
    #     instance_id: 'InstanceId', # required
    #     force: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopInstanceOutput
    #
    def stop_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::StopInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopInstance,
        stubs: @stubs,
        params_class: Params::StopInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a specified stack.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StopStackInput}.
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @return [Types::StopStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_stack(
    #     stack_id: 'StackId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopStackOutput
    #
    def stop_stack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopStackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopStackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopStack
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::StopStack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopStack,
        stubs: @stubs,
        params_class: Params::StopStackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_stack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks Stacks. For more information about how tagging works, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html">Tags</a> in the AWS OpsWorks User Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The stack or layer's Amazon Resource Number (ARN).</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to a stack or layer.</p>
    #            <ul>
    #               <li>
    #                  <p>The key cannot be empty.</p>
    #               </li>
    #               <li>
    #                  <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Leading and trailing white spaces are trimmed from both the key and value.</p>
    #               </li>
    #               <li>
    #                  <p>A maximum of 40 tags is allowed for any resource.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Unassigns a registered instance from all layers that are using the instance.
    #           The instance remains in the stack as an unassigned instance, and can be assigned to
    #           another layer as needed. You cannot use this action with instances that were created
    #           with AWS OpsWorks Stacks.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must
    #           have a Manage permissions level for the stack or an attached policy that explicitly
    #           grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UnassignInstanceInput}.
    #
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    #
    # @return [Types::UnassignInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unassign_instance(
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UnassignInstanceOutput
    #
    def unassign_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UnassignInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UnassignInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UnassignInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::UnassignInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UnassignInstance,
        stubs: @stubs,
        params_class: Params::UnassignInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :unassign_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Unassigns an assigned Amazon EBS volume. The volume remains registered with the stack. For more
    #       information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource
    #         Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UnassignVolumeInput}.
    #
    # @option params [String] :volume_id
    #   <p>The volume ID.</p>
    #
    # @return [Types::UnassignVolumeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unassign_volume(
    #     volume_id: 'VolumeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UnassignVolumeOutput
    #
    def unassign_volume(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UnassignVolumeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UnassignVolumeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UnassignVolume
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::UnassignVolume
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UnassignVolume,
        stubs: @stubs,
        params_class: Params::UnassignVolumeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :unassign_volume
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes tags from a specified stack or layer.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The stack or layer's Amazon Resource Number (ARN).</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the keys of tags to be removed from a stack or layer.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Updates a specified app.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage
    #       permissions level for the stack, or an attached policy that explicitly grants permissions. For
    #       more information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAppInput}.
    #
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    #
    # @option params [String] :name
    #   <p>The app name.</p>
    #
    # @option params [String] :description
    #   <p>A description of the app.</p>
    #
    # @option params [Array<DataSource>] :data_sources
    #   <p>The app's data sources.</p>
    #
    # @option params [String] :type
    #   <p>The app type.</p>
    #
    # @option params [Source] :app_source
    #   <p>A <code>Source</code> object that specifies the app repository.</p>
    #
    # @option params [Array<String>] :domains
    #   <p>The app's virtual host settings, with multiple domains separated by commas. For example:
    #           <code>'www.example.com, example.com'</code>
    #            </p>
    #
    # @option params [Boolean] :enable_ssl
    #   <p>Whether SSL is enabled for the app.</p>
    #
    # @option params [SslConfiguration] :ssl_configuration
    #   <p>An <code>SslConfiguration</code> object with the SSL configuration.</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
    #
    # @option params [Array<EnvironmentVariable>] :environment
    #   <p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be
    #         associated with the app. After you deploy the app, these variables are defined on the
    #         associated app server instances.For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment"> Environment Variables</a>.</p>
    #            <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, "Environment: is too large (maximum is 20 KB)."</p>
    #            <note>
    #               <p>If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p>
    #            </note>
    #
    # @return [Types::UpdateAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app(
    #     app_id: 'AppId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     data_sources: [
    #       {
    #         type: 'Type',
    #         arn: 'Arn',
    #         database_name: 'DatabaseName'
    #       }
    #     ],
    #     type: 'aws-flow-ruby', # accepts ["aws-flow-ruby", "java", "rails", "php", "nodejs", "static", "other"]
    #     app_source: {
    #       type: 'git', # accepts ["git", "svn", "archive", "s3"]
    #       url: 'Url',
    #       username: 'Username',
    #       password: 'Password',
    #       ssh_key: 'SshKey',
    #       revision: 'Revision'
    #     },
    #     domains: [
    #       'member'
    #     ],
    #     enable_ssl: false,
    #     ssl_configuration: {
    #       certificate: 'Certificate', # required
    #       private_key: 'PrivateKey', # required
    #       chain: 'Chain'
    #     },
    #     attributes: {
    #       'key' => 'value'
    #     },
    #     environment: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value', # required
    #         secure: false
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAppOutput
    #
    def update_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAppInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::UpdateApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApp,
        stubs: @stubs,
        params_class: Params::UpdateAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a registered Elastic IP address's name. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateElasticIpInput}.
    #
    # @option params [String] :elastic_ip
    #   <p>The IP address for which you want to update the name.</p>
    #
    # @option params [String] :name
    #   <p>The new name.</p>
    #
    # @return [Types::UpdateElasticIpOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_elastic_ip(
    #     elastic_ip: 'ElasticIp', # required
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateElasticIpOutput
    #
    def update_elastic_ip(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateElasticIpInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateElasticIpInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateElasticIp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::UpdateElasticIp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateElasticIp,
        stubs: @stubs,
        params_class: Params::UpdateElasticIpOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_elastic_ip
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a specified instance.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateInstanceInput}.
    #
    # @option params [String] :instance_id
    #   <p>The instance ID.</p>
    #
    # @option params [Array<String>] :layer_ids
    #   <p>The instance's layer IDs.</p>
    #
    # @option params [String] :instance_type
    #   <p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types,
    #         open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>.
    #         The <b>Size</b> list contains the currently supported types. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
    #           Families and Types</a>. The parameter values that you use to specify the various types are
    #         in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>
    #
    # @option params [String] :auto_scaling_type
    #   <p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>
    #
    # @option params [String] :hostname
    #   <p>The instance host name.</p>
    #
    # @option params [String] :os
    #   <p>The instance's operating system, which must be set to one of the following. You cannot update an instance that is using a custom AMI.</p>
    #            <ul>
    #               <li>
    #                  <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux
    #           2015.03</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CentOS Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Red Hat Enterprise Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>,
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about supported operating systems,
    #         see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p>
    #            <p>The default option is the current Amazon Linux version. If you set this parameter to
    #           <code>Custom</code>, you must use the AmiId parameter to
    #         specify the custom AMI that you want to use. For more information about supported operating
    #         systems, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">Operating Systems</a>. For more information about how to use custom AMIs with OpsWorks, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
    #           Custom AMIs</a>.</p>
    #            <note>
    #               <p>You can specify a different Linux operating system for the updated stack, but you cannot change from Linux to Windows or Windows to Linux.</p>
    #            </note>
    #
    # @option params [String] :ami_id
    #   <p>The ID of the AMI that was used to create the instance. The value of this parameter must be the same AMI ID that the instance is already using.
    #             You cannot apply a new AMI to an instance by running UpdateInstance. UpdateInstance does not work on instances that are using custom AMIs.
    #         </p>
    #
    # @option params [String] :ssh_key_name
    #   <p>The instance's Amazon EC2 key name.</p>
    #
    # @option params [String] :architecture
    #   <p>The instance architecture. Instance types do not necessarily support both architectures. For
    #         a list of the architectures that are supported by the different instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
    #           Families and Types</a>.</p>
    #
    # @option params [Boolean] :install_updates_on_boot
    #   <p>Whether to install operating system and package updates when the instance boots. The default
    #         value is <code>true</code>. To control when updates are installed, set this value to
    #           <code>false</code>. You must then update your instances manually by using
    #           <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
    #         by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
    #         instances. </p>
    #            <note>
    #               <p>We strongly recommend using the default value of <code>true</code>, to ensure that your
    #           instances have the latest security updates.</p>
    #            </note>
    #
    # @option params [Boolean] :ebs_optimized
    #   <p>This property cannot be updated.</p>
    #
    # @option params [String] :agent_version
    #   <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INHERIT</code> - Use the stack's default agent version setting.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>version_number</i> - Use the specified agent version.
    #           This value overrides the stack's default setting.
    #           To update the agent version, you must edit the instance configuration and specify a
    #           new version.
    #           AWS OpsWorks Stacks then automatically installs that version on the instance.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is <code>INHERIT</code>. To specify an agent version,
    #         you must use the complete version number, not the abbreviated number shown on the console.
    #         For a list of available agent version numbers, call <a>DescribeAgentVersions</a>.</p>
    #            <p>AgentVersion cannot be set to Chef 12.2.</p>
    #
    # @return [Types::UpdateInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance(
    #     instance_id: 'InstanceId', # required
    #     layer_ids: [
    #       'member'
    #     ],
    #     instance_type: 'InstanceType',
    #     auto_scaling_type: 'load', # accepts ["load", "timer"]
    #     hostname: 'Hostname',
    #     os: 'Os',
    #     ami_id: 'AmiId',
    #     ssh_key_name: 'SshKeyName',
    #     architecture: 'x86_64', # accepts ["x86_64", "i386"]
    #     install_updates_on_boot: false,
    #     ebs_optimized: false,
    #     agent_version: 'AgentVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateInstanceOutput
    #
    def update_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::UpdateInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateInstance,
        stubs: @stubs,
        params_class: Params::UpdateInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a specified layer.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLayerInput}.
    #
    # @option params [String] :layer_id
    #   <p>The layer ID.</p>
    #
    # @option params [String] :name
    #   <p>The layer name, which is used by the console.</p>
    #
    # @option params [String] :shortname
    #   <p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters and must be in the following format: /\A[a-z0-9\-\_\.]+\Z/.</p>
    #            <p>The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html">Layer Reference</a>
    #            </p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>One or more user-defined key/value pairs to be added to the stack attributes.</p>
    #
    # @option params [CloudWatchLogsConfiguration] :cloud_watch_logs_configuration
    #   <p>Specifies CloudWatch Logs configuration options for the layer. For more information, see <a>CloudWatchLogsLogStream</a>.</p>
    #
    # @option params [String] :custom_instance_profile_arn
    #   <p>The ARN of an IAM profile to be used for all of the layer's EC2 instances. For more
    #         information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #
    # @option params [String] :custom_json
    #   <p>A JSON-formatted string containing custom stack configuration and deployment attributes
    #         to be installed on the layer's instances. For more information, see
    #         <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html">
    #           Using Custom JSON</a>.
    #       </p>
    #
    # @option params [Array<String>] :custom_security_group_ids
    #   <p>An array containing the layer's custom security group IDs.</p>
    #
    # @option params [Array<String>] :packages
    #   <p>An array of <code>Package</code> objects that describe the layer's packages.</p>
    #
    # @option params [Array<VolumeConfiguration>] :volume_configurations
    #   <p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>
    #
    # @option params [Boolean] :enable_auto_healing
    #   <p>Whether to disable auto healing for the layer.</p>
    #
    # @option params [Boolean] :auto_assign_elastic_ips
    #   <p>Whether to automatically assign an <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP
    #           address</a> to the layer's instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit
    #           a Layer</a>.</p>
    #
    # @option params [Boolean] :auto_assign_public_ips
    #   <p>For stacks that are running in a VPC, whether to automatically assign a public IP address to
    #         the layer's instances. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How to Edit
    #           a Layer</a>.</p>
    #
    # @option params [Recipes] :custom_recipes
    #   <p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>
    #
    # @option params [Boolean] :install_updates_on_boot
    #   <p>Whether to install operating system and package updates when the instance boots. The default
    #         value is <code>true</code>. To control when updates are installed, set this value to
    #           <code>false</code>. You must then update your instances manually by using
    #           <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or
    #         manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
    #         instances. </p>
    #            <note>
    #               <p>We strongly recommend using the default value of <code>true</code>, to ensure that your
    #           instances have the latest security updates.</p>
    #            </note>
    #
    # @option params [Boolean] :use_ebs_optimized_instances
    #   <p>Whether to use Amazon EBS-optimized instances.</p>
    #
    # @option params [LifecycleEventConfiguration] :lifecycle_event_configuration
    #   <p></p>
    #
    # @return [Types::UpdateLayerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_layer(
    #     layer_id: 'LayerId', # required
    #     name: 'Name',
    #     shortname: 'Shortname',
    #     attributes: {
    #       'key' => 'value'
    #     },
    #     cloud_watch_logs_configuration: {
    #       enabled: false,
    #       log_streams: [
    #         {
    #           log_group_name: 'LogGroupName',
    #           datetime_format: 'DatetimeFormat',
    #           time_zone: 'LOCAL', # accepts ["LOCAL", "UTC"]
    #           file: 'File',
    #           file_fingerprint_lines: 'FileFingerprintLines',
    #           multi_line_start_pattern: 'MultiLineStartPattern',
    #           initial_position: 'start_of_file', # accepts ["start_of_file", "end_of_file"]
    #           encoding: 'ascii', # accepts ["ascii", "big5", "big5hkscs", "cp037", "cp424", "cp437", "cp500", "cp720", "cp737", "cp775", "cp850", "cp852", "cp855", "cp856", "cp857", "cp858", "cp860", "cp861", "cp862", "cp863", "cp864", "cp865", "cp866", "cp869", "cp874", "cp875", "cp932", "cp949", "cp950", "cp1006", "cp1026", "cp1140", "cp1250", "cp1251", "cp1252", "cp1253", "cp1254", "cp1255", "cp1256", "cp1257", "cp1258", "euc_jp", "euc_jis_2004", "euc_jisx0213", "euc_kr", "gb2312", "gbk", "gb18030", "hz", "iso2022_jp", "iso2022_jp_1", "iso2022_jp_2", "iso2022_jp_2004", "iso2022_jp_3", "iso2022_jp_ext", "iso2022_kr", "latin_1", "iso8859_2", "iso8859_3", "iso8859_4", "iso8859_5", "iso8859_6", "iso8859_7", "iso8859_8", "iso8859_9", "iso8859_10", "iso8859_13", "iso8859_14", "iso8859_15", "iso8859_16", "johab", "koi8_r", "koi8_u", "mac_cyrillic", "mac_greek", "mac_iceland", "mac_latin2", "mac_roman", "mac_turkish", "ptcp154", "shift_jis", "shift_jis_2004", "shift_jisx0213", "utf_32", "utf_32_be", "utf_32_le", "utf_16", "utf_16_be", "utf_16_le", "utf_7", "utf_8", "utf_8_sig"]
    #           buffer_duration: 1,
    #           batch_count: 1,
    #           batch_size: 1
    #         }
    #       ]
    #     },
    #     custom_instance_profile_arn: 'CustomInstanceProfileArn',
    #     custom_json: 'CustomJson',
    #     custom_security_group_ids: [
    #       'member'
    #     ],
    #     volume_configurations: [
    #       {
    #         mount_point: 'MountPoint', # required
    #         raid_level: 1,
    #         number_of_disks: 1, # required
    #         size: 1, # required
    #         volume_type: 'VolumeType',
    #         iops: 1,
    #         encrypted: false
    #       }
    #     ],
    #     enable_auto_healing: false,
    #     auto_assign_elastic_ips: false,
    #     auto_assign_public_ips: false,
    #     custom_recipes: {
    #     },
    #     install_updates_on_boot: false,
    #     use_ebs_optimized_instances: false,
    #     lifecycle_event_configuration: {
    #       shutdown: {
    #         execution_timeout: 1,
    #         delay_until_elb_connections_drained: false
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLayerOutput
    #
    def update_layer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLayerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLayerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLayer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::UpdateLayer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLayer,
        stubs: @stubs,
        params_class: Params::UpdateLayerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_layer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a user's SSH public key.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have self-management
    #       enabled or an attached policy that explicitly grants permissions. For more information about user
    #       permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMyUserProfileInput}.
    #
    # @option params [String] :ssh_public_key
    #   <p>The user's SSH public key.</p>
    #
    # @return [Types::UpdateMyUserProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_my_user_profile(
    #     ssh_public_key: 'SshPublicKey'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMyUserProfileOutput
    #
    def update_my_user_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMyUserProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMyUserProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMyUserProfile
      )
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
        data_parser: Parsers::UpdateMyUserProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMyUserProfile,
        stubs: @stubs,
        params_class: Params::UpdateMyUserProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_my_user_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an Amazon RDS instance.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRdsDbInstanceInput}.
    #
    # @option params [String] :rds_db_instance_arn
    #   <p>The Amazon RDS instance's ARN.</p>
    #
    # @option params [String] :db_user
    #   <p>The master user name.</p>
    #
    # @option params [String] :db_password
    #   <p>The database password.</p>
    #
    # @return [Types::UpdateRdsDbInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rds_db_instance(
    #     rds_db_instance_arn: 'RdsDbInstanceArn', # required
    #     db_user: 'DbUser',
    #     db_password: 'DbPassword'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRdsDbInstanceOutput
    #
    def update_rds_db_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRdsDbInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRdsDbInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRdsDbInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::UpdateRdsDbInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRdsDbInstance,
        stubs: @stubs,
        params_class: Params::UpdateRdsDbInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_rds_db_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a specified stack.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStackInput}.
    #
    # @option params [String] :stack_id
    #   <p>The stack ID.</p>
    #
    # @option params [String] :name
    #   <p>The stack's new name.</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>One or more user-defined key-value pairs to be added to the stack attributes.</p>
    #
    # @option params [String] :service_role_arn
    #   <p>Do not use this parameter. You cannot update a stack's service role.</p>
    #
    # @option params [String] :default_instance_profile_arn
    #   <p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances.
    #         For more information about IAM ARNs, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">Using
    #         Identifiers</a>.</p>
    #
    # @option params [String] :default_os
    #   <p>The stack's operating system, which must be set to one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>,
    #                 <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CentOS Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Red Hat Enterprise Linux 7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>,
    #                 <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when
    #           you create instances. For more information about how to use custom AMIs with OpsWorks, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html">Using
    #             Custom AMIs</a>.</p>
    #               </li>
    #            </ul>
    #            <p>The default option is the stack's current operating system.
    #         For more information about supported operating systems,
    #         see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html">AWS OpsWorks Stacks Operating Systems</a>.</p>
    #
    # @option params [String] :hostname_theme
    #   <p>The stack's new host name theme, with spaces replaced by underscores.
    #         The theme is used to generate host names for the stack's instances.
    #         By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to the
    #         layer's short name. The other themes are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Baked_Goods</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Clouds</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Europe_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fruits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Greek_Deities_and_Titans</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Legendary_creatures_from_Japan</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Planets_and_Moons</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Roman_Deities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Scottish_Islands</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>US_Cities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Wild_Cats</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a
    #         host name based on the current theme.</p>
    #
    # @option params [String] :default_availability_zone
    #   <p>The stack's default Availability Zone, which must be in the
    #         stack's region. For more
    #         information, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and
    #           Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must
    #         be in the same zone. For more information, see <a>CreateStack</a>. </p>
    #
    # @option params [String] :default_subnet_id
    #   <p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the
    #           <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify
    #         otherwise when you create the instance. If you also specify a value for
    #           <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on
    #         default values and when this parameter is required, see the <code>VpcId</code> parameter
    #         description. </p>
    #
    # @option params [String] :custom_json
    #   <p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration JSON values or to pass data to recipes. The string should be in the following format:</p>
    #            <p>
    #               <code>"{\"key1\": \"value1\", \"key2\": \"value2\",...}"</code>
    #            </p>
    #            <p>For more information about custom JSON, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html">Use Custom JSON to
    #           Modify the Stack Configuration Attributes</a>.</p>
    #
    # @option params [StackConfigurationManager] :configuration_manager
    #   <p>The configuration manager. When you update a stack, we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>
    #
    # @option params [ChefConfiguration] :chef_configuration
    #   <p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the
    #         Berkshelf version on Chef 11.10 stacks. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New Stack</a>.</p>
    #
    # @option params [Boolean] :use_custom_cookbooks
    #   <p>Whether the stack uses custom cookbooks.</p>
    #
    # @option params [Source] :custom_cookbooks_source
    #   <p>Contains the information required to retrieve an app or cookbook from a repository. For more information,
    #               see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Adding Apps</a> or <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Cookbooks and Recipes</a>.</p>
    #
    # @option params [String] :default_ssh_key_name
    #   <p>A default Amazon EC2 key-pair name. The default value is
    #         <code>none</code>. If you specify a key-pair name,
    #         AWS OpsWorks Stacks installs the public key on the instance and you can use the private key with an SSH
    #         client to log in to the instance. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html"> Using SSH to
    #           Communicate with an Instance</a> and <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html"> Managing SSH
    #           Access</a>. You can override this setting by specifying a different key pair, or no key
    #         pair, when you <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">
    #           create an instance</a>. </p>
    #
    # @option params [String] :default_root_device_type
    #   <p>The default root device type. This value is used by default for all instances in the stack,
    #         but you can override it when you create an instance. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device">Storage for the Root Device</a>.</p>
    #
    # @option params [Boolean] :use_opsworks_security_groups
    #   <p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p>
    #            <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are
    #         associated with layers by default. <code>UseOpsworksSecurityGroups</code> allows you to
    #         provide your own custom security groups
    #         instead of using the built-in groups. <code>UseOpsworksSecurityGroups</code> has
    #         the following settings: </p>
    #            <ul>
    #               <li>
    #                  <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.</p>
    #               </li>
    #               <li>
    #                  <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on. Custom security groups are required only for those layers that need custom settings.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html">Create a New
    #           Stack</a>.</p>
    #
    # @option params [String] :agent_version
    #   <p>The default AWS OpsWorks Stacks agent version. You have the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks
    #           automatically installs new agent versions on the stack's instances as soon as
    #           they are available.</p>
    #               </li>
    #               <li>
    #                  <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is <code>LATEST</code>. To specify an agent version,
    #         you must use the complete version number, not the abbreviated number shown on the console.
    #         For a list of available agent version numbers, call <a>DescribeAgentVersions</a>.
    #             AgentVersion cannot be set to Chef 12.2.</p>
    #            <note>
    #               <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p>
    #            </note>
    #
    # @return [Types::UpdateStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack(
    #     stack_id: 'StackId', # required
    #     name: 'Name',
    #     attributes: {
    #       'key' => 'value'
    #     },
    #     service_role_arn: 'ServiceRoleArn',
    #     default_instance_profile_arn: 'DefaultInstanceProfileArn',
    #     default_os: 'DefaultOs',
    #     hostname_theme: 'HostnameTheme',
    #     default_availability_zone: 'DefaultAvailabilityZone',
    #     default_subnet_id: 'DefaultSubnetId',
    #     custom_json: 'CustomJson',
    #     configuration_manager: {
    #       name: 'Name',
    #       version: 'Version'
    #     },
    #     chef_configuration: {
    #       manage_berkshelf: false,
    #       berkshelf_version: 'BerkshelfVersion'
    #     },
    #     use_custom_cookbooks: false,
    #     custom_cookbooks_source: {
    #       type: 'git', # accepts ["git", "svn", "archive", "s3"]
    #       url: 'Url',
    #       username: 'Username',
    #       password: 'Password',
    #       ssh_key: 'SshKey',
    #       revision: 'Revision'
    #     },
    #     default_ssh_key_name: 'DefaultSshKeyName',
    #     default_root_device_type: 'ebs', # accepts ["ebs", "instance-store"]
    #     use_opsworks_security_groups: false,
    #     agent_version: 'AgentVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStackOutput
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Updates a specified user profile.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy
    #       that explicitly grants permissions. For more information about user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserProfileInput}.
    #
    # @option params [String] :iam_user_arn
    #   <p>The user IAM ARN. This can also be a federated user's ARN.</p>
    #
    # @option params [String] :ssh_username
    #   <p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If
    #         the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example,
    #           <code>my.name</code> will be changed to <code>myname</code>. If you do not specify an SSH
    #         user name, AWS OpsWorks Stacks generates one from the IAM user name. </p>
    #
    # @option params [String] :ssh_public_key
    #   <p>The user's new SSH public key.</p>
    #
    # @option params [Boolean] :allow_self_management
    #   <p>Whether users can specify their own SSH public key through the My Settings page. For more
    #         information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Managing User
    #           Permissions</a>.</p>
    #
    # @return [Types::UpdateUserProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_profile(
    #     iam_user_arn: 'IamUserArn', # required
    #     ssh_username: 'SshUsername',
    #     ssh_public_key: 'SshPublicKey',
    #     allow_self_management: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserProfileOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Updates an Amazon EBS volume's name or mount point. For more information, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p>
    #          <p>
    #             <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions
    #       level for the stack, or an attached policy that explicitly grants permissions. For more
    #       information on user permissions, see <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User
    #         Permissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVolumeInput}.
    #
    # @option params [String] :volume_id
    #   <p>The volume ID.</p>
    #
    # @option params [String] :name
    #   <p>The new name.</p>
    #
    # @option params [String] :mount_point
    #   <p>The new mount point.</p>
    #
    # @return [Types::UpdateVolumeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_volume(
    #     volume_id: 'VolumeId', # required
    #     name: 'Name',
    #     mount_point: 'MountPoint'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVolumeOutput
    #
    def update_volume(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVolumeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVolumeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVolume
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::UpdateVolume
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVolume,
        stubs: @stubs,
        params_class: Params::UpdateVolumeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_volume
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
