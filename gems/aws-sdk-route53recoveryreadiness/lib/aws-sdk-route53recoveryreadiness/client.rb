# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Route53RecoveryReadiness
  # An API client for Route53RecoveryReadiness
  # See {#initialize} for a full list of supported configuration options
  # <p>Recovery readiness</p>
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
    def initialize(config = AWS::SDK::Route53RecoveryReadiness::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a cell in an account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCellInput}.
    #
    # @option params [String] :cell_name
    #   <p>The name of the cell to create.</p>
    #
    # @option params [Array<String>] :cells
    #   <p>A list of cell Amazon Resource Names (ARNs) contained within this cell, for use in nested cells. For example, Availability Zones within specific Amazon Web Services Regions.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of tags associated with a resource.</p>
    #
    # @return [Types::CreateCellOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cell(
    #     cell_name: 'CellName', # required
    #     cells: [
    #       'member'
    #     ],
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCellOutput
    #   resp.data.cell_arn #=> String
    #   resp.data.cell_name #=> String
    #   resp.data.cells #=> Array<String>
    #   resp.data.cells[0] #=> String
    #   resp.data.parent_readiness_scopes #=> Array<String>
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_cell(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCellInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCellInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCell
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::ConflictException]),
        data_parser: Parsers::CreateCell
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCell,
        stubs: @stubs,
        params_class: Params::CreateCellOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cell
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a cross-account readiness authorization. This lets you authorize another account to work with Route 53 Application Recovery Controller, for example, to check the readiness status of resources in a separate account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCrossAccountAuthorizationInput}.
    #
    # @option params [String] :cross_account_authorization
    #   <p>The cross-account authorization.</p>
    #
    # @return [Types::CreateCrossAccountAuthorizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cross_account_authorization(
    #     cross_account_authorization: 'CrossAccountAuthorization' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCrossAccountAuthorizationOutput
    #   resp.data.cross_account_authorization #=> String
    #
    def create_cross_account_authorization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCrossAccountAuthorizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCrossAccountAuthorizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCrossAccountAuthorization
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::ConflictException]),
        data_parser: Parsers::CreateCrossAccountAuthorization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCrossAccountAuthorization,
        stubs: @stubs,
        params_class: Params::CreateCrossAccountAuthorizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cross_account_authorization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a readiness check in an account. A readiness check monitors a resource set in your application, such as a set of Amazon Aurora instances, that Application Recovery Controller is auditing recovery readiness for. The audits run once every minute on every resource that's associated with a readiness check.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateReadinessCheckInput}.
    #
    # @option params [String] :readiness_check_name
    #   <p>The name of the readiness check to create.</p>
    #
    # @option params [String] :resource_set_name
    #   <p>The name of the resource set to check.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of tags associated with a resource.</p>
    #
    # @return [Types::CreateReadinessCheckOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_readiness_check(
    #     readiness_check_name: 'ReadinessCheckName', # required
    #     resource_set_name: 'ResourceSetName', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReadinessCheckOutput
    #   resp.data.readiness_check_arn #=> String
    #   resp.data.readiness_check_name #=> String
    #   resp.data.resource_set #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_readiness_check(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReadinessCheckInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReadinessCheckInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReadinessCheck
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::ConflictException]),
        data_parser: Parsers::CreateReadinessCheck
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReadinessCheck,
        stubs: @stubs,
        params_class: Params::CreateReadinessCheckOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_readiness_check
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a recovery group in an account. A recovery group corresponds to an application and includes a list of the cells that make up the application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRecoveryGroupInput}.
    #
    # @option params [Array<String>] :cells
    #   <p>A list of the cell Amazon Resource Names (ARNs) in the recovery group.</p>
    #
    # @option params [String] :recovery_group_name
    #   <p>The name of the recovery group to create.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of tags associated with a resource.</p>
    #
    # @return [Types::CreateRecoveryGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_recovery_group(
    #     cells: [
    #       'member'
    #     ],
    #     recovery_group_name: 'RecoveryGroupName', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRecoveryGroupOutput
    #   resp.data.cells #=> Array<String>
    #   resp.data.cells[0] #=> String
    #   resp.data.recovery_group_arn #=> String
    #   resp.data.recovery_group_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_recovery_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRecoveryGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRecoveryGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRecoveryGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::ConflictException]),
        data_parser: Parsers::CreateRecoveryGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRecoveryGroup,
        stubs: @stubs,
        params_class: Params::CreateRecoveryGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_recovery_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a resource set. A resource set is a set of resources of one type that span multiple cells. You can associate a resource set with a readiness check to monitor the resources for failover readiness.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateResourceSetInput}.
    #
    # @option params [String] :resource_set_name
    #   <p>The name of the resource set to create.</p>
    #
    # @option params [String] :resource_set_type
    #   <p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>
    #
    # @option params [Array<Resource>] :resources
    #   <p>A list of resource objects in the resource set.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A tag to associate with the parameters for a resource set.</p>
    #
    # @return [Types::CreateResourceSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_set(
    #     resource_set_name: 'ResourceSetName', # required
    #     resource_set_type: 'ResourceSetType', # required
    #     resources: [
    #       {
    #         component_id: 'ComponentId',
    #         dns_target_resource: {
    #           domain_name: 'DomainName',
    #           hosted_zone_arn: 'HostedZoneArn',
    #           record_set_id: 'RecordSetId',
    #           record_type: 'RecordType',
    #           target_resource: {
    #             nlb_resource: {
    #               arn: 'Arn'
    #             },
    #             r53_resource: {
    #               domain_name: 'DomainName',
    #               record_set_id: 'RecordSetId'
    #             }
    #           }
    #         },
    #         readiness_scopes: [
    #           'member'
    #         ],
    #         resource_arn: 'ResourceArn'
    #       }
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResourceSetOutput
    #   resp.data.resource_set_arn #=> String
    #   resp.data.resource_set_name #=> String
    #   resp.data.resource_set_type #=> String
    #   resp.data.resources #=> Array<Resource>
    #   resp.data.resources[0] #=> Types::Resource
    #   resp.data.resources[0].component_id #=> String
    #   resp.data.resources[0].dns_target_resource #=> Types::DNSTargetResource
    #   resp.data.resources[0].dns_target_resource.domain_name #=> String
    #   resp.data.resources[0].dns_target_resource.hosted_zone_arn #=> String
    #   resp.data.resources[0].dns_target_resource.record_set_id #=> String
    #   resp.data.resources[0].dns_target_resource.record_type #=> String
    #   resp.data.resources[0].dns_target_resource.target_resource #=> Types::TargetResource
    #   resp.data.resources[0].dns_target_resource.target_resource.nlb_resource #=> Types::NLBResource
    #   resp.data.resources[0].dns_target_resource.target_resource.nlb_resource.arn #=> String
    #   resp.data.resources[0].dns_target_resource.target_resource.r53_resource #=> Types::R53ResourceRecord
    #   resp.data.resources[0].dns_target_resource.target_resource.r53_resource.domain_name #=> String
    #   resp.data.resources[0].dns_target_resource.target_resource.r53_resource.record_set_id #=> String
    #   resp.data.resources[0].readiness_scopes #=> Array<String>
    #   resp.data.resources[0].readiness_scopes[0] #=> String
    #   resp.data.resources[0].resource_arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_resource_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResourceSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResourceSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResourceSet
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::ConflictException]),
        data_parser: Parsers::CreateResourceSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResourceSet,
        stubs: @stubs,
        params_class: Params::CreateResourceSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resource_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete a cell. When successful, the response code is 204, with no response body.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCellInput}.
    #
    # @option params [String] :cell_name
    #   <p>The name of the cell.</p>
    #
    # @return [Types::DeleteCellOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cell(
    #     cell_name: 'CellName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCellOutput
    #
    def delete_cell(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCellInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCellInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCell
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteCell
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCell,
        stubs: @stubs,
        params_class: Params::DeleteCellOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cell
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes cross account readiness authorization.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCrossAccountAuthorizationInput}.
    #
    # @option params [String] :cross_account_authorization
    #   <p>The cross-account authorization.</p>
    #
    # @return [Types::DeleteCrossAccountAuthorizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cross_account_authorization(
    #     cross_account_authorization: 'CrossAccountAuthorization' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCrossAccountAuthorizationOutput
    #
    def delete_cross_account_authorization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCrossAccountAuthorizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCrossAccountAuthorizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCrossAccountAuthorization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteCrossAccountAuthorization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCrossAccountAuthorization,
        stubs: @stubs,
        params_class: Params::DeleteCrossAccountAuthorizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cross_account_authorization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a readiness check.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReadinessCheckInput}.
    #
    # @option params [String] :readiness_check_name
    #   <p>Name of a readiness check.</p>
    #
    # @return [Types::DeleteReadinessCheckOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_readiness_check(
    #     readiness_check_name: 'ReadinessCheckName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReadinessCheckOutput
    #
    def delete_readiness_check(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReadinessCheckInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReadinessCheckInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReadinessCheck
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteReadinessCheck
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReadinessCheck,
        stubs: @stubs,
        params_class: Params::DeleteReadinessCheckOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_readiness_check
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a recovery group.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRecoveryGroupInput}.
    #
    # @option params [String] :recovery_group_name
    #   <p>The name of a recovery group.</p>
    #
    # @return [Types::DeleteRecoveryGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recovery_group(
    #     recovery_group_name: 'RecoveryGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRecoveryGroupOutput
    #
    def delete_recovery_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRecoveryGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRecoveryGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRecoveryGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteRecoveryGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRecoveryGroup,
        stubs: @stubs,
        params_class: Params::DeleteRecoveryGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_recovery_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a resource set.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourceSetInput}.
    #
    # @option params [String] :resource_set_name
    #   <p>Name of a resource set.</p>
    #
    # @return [Types::DeleteResourceSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_set(
    #     resource_set_name: 'ResourceSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourceSetOutput
    #
    def delete_resource_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourceSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourceSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourceSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteResourceSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourceSet,
        stubs: @stubs,
        params_class: Params::DeleteResourceSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets recommendations about architecture designs for improving resiliency for an application, based on a recovery group.</p>
    #
    # @param [Hash] params
    #   See {Types::GetArchitectureRecommendationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @option params [String] :recovery_group_name
    #   <p>The name of a recovery group.</p>
    #
    # @return [Types::GetArchitectureRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_architecture_recommendations(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     recovery_group_name: 'RecoveryGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetArchitectureRecommendationsOutput
    #   resp.data.last_audit_timestamp #=> Time
    #   resp.data.next_token #=> String
    #   resp.data.recommendations #=> Array<Recommendation>
    #   resp.data.recommendations[0] #=> Types::Recommendation
    #   resp.data.recommendations[0].recommendation_text #=> String
    #
    def get_architecture_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetArchitectureRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetArchitectureRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetArchitectureRecommendations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetArchitectureRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetArchitectureRecommendations,
        stubs: @stubs,
        params_class: Params::GetArchitectureRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_architecture_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a cell including cell name, cell Amazon Resource Name (ARN), ARNs of nested cells for this cell, and a list of those cell ARNs with their associated recovery group ARNs.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCellInput}.
    #
    # @option params [String] :cell_name
    #   <p>The name of the cell.</p>
    #
    # @return [Types::GetCellOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cell(
    #     cell_name: 'CellName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCellOutput
    #   resp.data.cell_arn #=> String
    #   resp.data.cell_name #=> String
    #   resp.data.cells #=> Array<String>
    #   resp.data.cells[0] #=> String
    #   resp.data.parent_readiness_scopes #=> Array<String>
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_cell(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCellInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCellInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCell
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetCell
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCell,
        stubs: @stubs,
        params_class: Params::GetCellOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_cell
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets readiness for a cell. Aggregates the readiness of all the resources that are associated with the cell into a single value.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCellReadinessSummaryInput}.
    #
    # @option params [String] :cell_name
    #   <p>The name of the cell.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @return [Types::GetCellReadinessSummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cell_readiness_summary(
    #     cell_name: 'CellName', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCellReadinessSummaryOutput
    #   resp.data.next_token #=> String
    #   resp.data.readiness #=> String, one of ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"]
    #   resp.data.readiness_checks #=> Array<ReadinessCheckSummary>
    #   resp.data.readiness_checks[0] #=> Types::ReadinessCheckSummary
    #   resp.data.readiness_checks[0].readiness #=> String, one of ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"]
    #   resp.data.readiness_checks[0].readiness_check_name #=> String
    #
    def get_cell_readiness_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCellReadinessSummaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCellReadinessSummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCellReadinessSummary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetCellReadinessSummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCellReadinessSummary,
        stubs: @stubs,
        params_class: Params::GetCellReadinessSummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_cell_readiness_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details about a readiness check.</p>
    #
    # @param [Hash] params
    #   See {Types::GetReadinessCheckInput}.
    #
    # @option params [String] :readiness_check_name
    #   <p>Name of a readiness check.</p>
    #
    # @return [Types::GetReadinessCheckOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_readiness_check(
    #     readiness_check_name: 'ReadinessCheckName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReadinessCheckOutput
    #   resp.data.readiness_check_arn #=> String
    #   resp.data.readiness_check_name #=> String
    #   resp.data.resource_set #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_readiness_check(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReadinessCheckInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReadinessCheckInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReadinessCheck
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetReadinessCheck
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReadinessCheck,
        stubs: @stubs,
        params_class: Params::GetReadinessCheckOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_readiness_check
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets individual readiness status for a readiness check. To see the overall readiness status for a recovery group, that considers the readiness status for all the readiness checks in the recovery group, use GetRecoveryGroupReadinessSummary.</p>
    #
    # @param [Hash] params
    #   See {Types::GetReadinessCheckResourceStatusInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @option params [String] :readiness_check_name
    #   <p>Name of a readiness check.</p>
    #
    # @option params [String] :resource_identifier
    #   <p>The resource identifier, which is the Amazon Resource Name (ARN) or the identifier generated for the resource by Application Recovery Controller (for example, for a DNS target resource).</p>
    #
    # @return [Types::GetReadinessCheckResourceStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_readiness_check_resource_status(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     readiness_check_name: 'ReadinessCheckName', # required
    #     resource_identifier: 'ResourceIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReadinessCheckResourceStatusOutput
    #   resp.data.next_token #=> String
    #   resp.data.readiness #=> String, one of ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"]
    #   resp.data.rules #=> Array<RuleResult>
    #   resp.data.rules[0] #=> Types::RuleResult
    #   resp.data.rules[0].last_checked_timestamp #=> Time
    #   resp.data.rules[0].messages #=> Array<Message>
    #   resp.data.rules[0].messages[0] #=> Types::Message
    #   resp.data.rules[0].messages[0].message_text #=> String
    #   resp.data.rules[0].readiness #=> String, one of ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"]
    #   resp.data.rules[0].rule_id #=> String
    #
    def get_readiness_check_resource_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReadinessCheckResourceStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReadinessCheckResourceStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReadinessCheckResourceStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetReadinessCheckResourceStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReadinessCheckResourceStatus,
        stubs: @stubs,
        params_class: Params::GetReadinessCheckResourceStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_readiness_check_resource_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the readiness status for an individual readiness check. To see the overall readiness status for a recovery group, that considers the readiness status for all the readiness checks in a recovery group, use GetRecoveryGroupReadinessSummary.</p>
    #
    # @param [Hash] params
    #   See {Types::GetReadinessCheckStatusInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @option params [String] :readiness_check_name
    #   <p>Name of a readiness check.</p>
    #
    # @return [Types::GetReadinessCheckStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_readiness_check_status(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     readiness_check_name: 'ReadinessCheckName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReadinessCheckStatusOutput
    #   resp.data.messages #=> Array<Message>
    #   resp.data.messages[0] #=> Types::Message
    #   resp.data.messages[0].message_text #=> String
    #   resp.data.next_token #=> String
    #   resp.data.readiness #=> String, one of ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"]
    #   resp.data.resources #=> Array<ResourceResult>
    #   resp.data.resources[0] #=> Types::ResourceResult
    #   resp.data.resources[0].component_id #=> String
    #   resp.data.resources[0].last_checked_timestamp #=> Time
    #   resp.data.resources[0].readiness #=> String, one of ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"]
    #   resp.data.resources[0].resource_arn #=> String
    #
    def get_readiness_check_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReadinessCheckStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReadinessCheckStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReadinessCheckStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetReadinessCheckStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReadinessCheckStatus,
        stubs: @stubs,
        params_class: Params::GetReadinessCheckStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_readiness_check_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details about a recovery group, including a list of the cells that are included in it.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRecoveryGroupInput}.
    #
    # @option params [String] :recovery_group_name
    #   <p>The name of a recovery group.</p>
    #
    # @return [Types::GetRecoveryGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recovery_group(
    #     recovery_group_name: 'RecoveryGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRecoveryGroupOutput
    #   resp.data.cells #=> Array<String>
    #   resp.data.cells[0] #=> String
    #   resp.data.recovery_group_arn #=> String
    #   resp.data.recovery_group_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_recovery_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRecoveryGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRecoveryGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRecoveryGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetRecoveryGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRecoveryGroup,
        stubs: @stubs,
        params_class: Params::GetRecoveryGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_recovery_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays a summary of information about a recovery group's readiness status. Includes the readiness checks for resources in the recovery group and the readiness status of each one.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRecoveryGroupReadinessSummaryInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @option params [String] :recovery_group_name
    #   <p>The name of a recovery group.</p>
    #
    # @return [Types::GetRecoveryGroupReadinessSummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recovery_group_readiness_summary(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     recovery_group_name: 'RecoveryGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRecoveryGroupReadinessSummaryOutput
    #   resp.data.next_token #=> String
    #   resp.data.readiness #=> String, one of ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"]
    #   resp.data.readiness_checks #=> Array<ReadinessCheckSummary>
    #   resp.data.readiness_checks[0] #=> Types::ReadinessCheckSummary
    #   resp.data.readiness_checks[0].readiness #=> String, one of ["READY", "NOT_READY", "UNKNOWN", "NOT_AUTHORIZED"]
    #   resp.data.readiness_checks[0].readiness_check_name #=> String
    #
    def get_recovery_group_readiness_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRecoveryGroupReadinessSummaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRecoveryGroupReadinessSummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRecoveryGroupReadinessSummary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetRecoveryGroupReadinessSummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRecoveryGroupReadinessSummary,
        stubs: @stubs,
        params_class: Params::GetRecoveryGroupReadinessSummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_recovery_group_readiness_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays the details about a resource set, including a list of the resources in the set.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourceSetInput}.
    #
    # @option params [String] :resource_set_name
    #   <p>Name of a resource set.</p>
    #
    # @return [Types::GetResourceSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_set(
    #     resource_set_name: 'ResourceSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceSetOutput
    #   resp.data.resource_set_arn #=> String
    #   resp.data.resource_set_name #=> String
    #   resp.data.resource_set_type #=> String
    #   resp.data.resources #=> Array<Resource>
    #   resp.data.resources[0] #=> Types::Resource
    #   resp.data.resources[0].component_id #=> String
    #   resp.data.resources[0].dns_target_resource #=> Types::DNSTargetResource
    #   resp.data.resources[0].dns_target_resource.domain_name #=> String
    #   resp.data.resources[0].dns_target_resource.hosted_zone_arn #=> String
    #   resp.data.resources[0].dns_target_resource.record_set_id #=> String
    #   resp.data.resources[0].dns_target_resource.record_type #=> String
    #   resp.data.resources[0].dns_target_resource.target_resource #=> Types::TargetResource
    #   resp.data.resources[0].dns_target_resource.target_resource.nlb_resource #=> Types::NLBResource
    #   resp.data.resources[0].dns_target_resource.target_resource.nlb_resource.arn #=> String
    #   resp.data.resources[0].dns_target_resource.target_resource.r53_resource #=> Types::R53ResourceRecord
    #   resp.data.resources[0].dns_target_resource.target_resource.r53_resource.domain_name #=> String
    #   resp.data.resources[0].dns_target_resource.target_resource.r53_resource.record_set_id #=> String
    #   resp.data.resources[0].readiness_scopes #=> Array<String>
    #   resp.data.resources[0].readiness_scopes[0] #=> String
    #   resp.data.resources[0].resource_arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_resource_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourceSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourceSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourceSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetResourceSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourceSet,
        stubs: @stubs,
        params_class: Params::GetResourceSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the cells for an account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCellsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @return [Types::ListCellsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cells(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCellsOutput
    #   resp.data.cells #=> Array<CellOutput>
    #   resp.data.cells[0] #=> Types::CellOutput
    #   resp.data.cells[0].cell_arn #=> String
    #   resp.data.cells[0].cell_name #=> String
    #   resp.data.cells[0].cells #=> Array<String>
    #   resp.data.cells[0].cells[0] #=> String
    #   resp.data.cells[0].parent_readiness_scopes #=> Array<String>
    #   resp.data.cells[0].tags #=> Hash<String, String>
    #   resp.data.cells[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_cells(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCellsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCellsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCells
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListCells
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCells,
        stubs: @stubs,
        params_class: Params::ListCellsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_cells
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the cross-account readiness authorizations that are in place for an account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCrossAccountAuthorizationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @return [Types::ListCrossAccountAuthorizationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cross_account_authorizations(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCrossAccountAuthorizationsOutput
    #   resp.data.cross_account_authorizations #=> Array<String>
    #   resp.data.cross_account_authorizations[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_cross_account_authorizations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCrossAccountAuthorizationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCrossAccountAuthorizationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCrossAccountAuthorizations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListCrossAccountAuthorizations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCrossAccountAuthorizations,
        stubs: @stubs,
        params_class: Params::ListCrossAccountAuthorizationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_cross_account_authorizations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the readiness checks for an account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListReadinessChecksInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @return [Types::ListReadinessChecksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_readiness_checks(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReadinessChecksOutput
    #   resp.data.next_token #=> String
    #   resp.data.readiness_checks #=> Array<ReadinessCheckOutput>
    #   resp.data.readiness_checks[0] #=> Types::ReadinessCheckOutput
    #   resp.data.readiness_checks[0].readiness_check_arn #=> String
    #   resp.data.readiness_checks[0].readiness_check_name #=> String
    #   resp.data.readiness_checks[0].resource_set #=> String
    #   resp.data.readiness_checks[0].tags #=> Hash<String, String>
    #   resp.data.readiness_checks[0].tags['key'] #=> String
    #
    def list_readiness_checks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReadinessChecksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReadinessChecksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReadinessChecks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListReadinessChecks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReadinessChecks,
        stubs: @stubs,
        params_class: Params::ListReadinessChecksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_readiness_checks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the recovery groups in an account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRecoveryGroupsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @return [Types::ListRecoveryGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recovery_groups(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRecoveryGroupsOutput
    #   resp.data.next_token #=> String
    #   resp.data.recovery_groups #=> Array<RecoveryGroupOutput>
    #   resp.data.recovery_groups[0] #=> Types::RecoveryGroupOutput
    #   resp.data.recovery_groups[0].cells #=> Array<String>
    #   resp.data.recovery_groups[0].cells[0] #=> String
    #   resp.data.recovery_groups[0].recovery_group_arn #=> String
    #   resp.data.recovery_groups[0].recovery_group_name #=> String
    #   resp.data.recovery_groups[0].tags #=> Hash<String, String>
    #   resp.data.recovery_groups[0].tags['key'] #=> String
    #
    def list_recovery_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRecoveryGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRecoveryGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRecoveryGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListRecoveryGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRecoveryGroups,
        stubs: @stubs,
        params_class: Params::ListRecoveryGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_recovery_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the resource sets in an account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResourceSetsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @return [Types::ListResourceSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_sets(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourceSetsOutput
    #   resp.data.next_token #=> String
    #   resp.data.resource_sets #=> Array<ResourceSetOutput>
    #   resp.data.resource_sets[0] #=> Types::ResourceSetOutput
    #   resp.data.resource_sets[0].resource_set_arn #=> String
    #   resp.data.resource_sets[0].resource_set_name #=> String
    #   resp.data.resource_sets[0].resource_set_type #=> String
    #   resp.data.resource_sets[0].resources #=> Array<Resource>
    #   resp.data.resource_sets[0].resources[0] #=> Types::Resource
    #   resp.data.resource_sets[0].resources[0].component_id #=> String
    #   resp.data.resource_sets[0].resources[0].dns_target_resource #=> Types::DNSTargetResource
    #   resp.data.resource_sets[0].resources[0].dns_target_resource.domain_name #=> String
    #   resp.data.resource_sets[0].resources[0].dns_target_resource.hosted_zone_arn #=> String
    #   resp.data.resource_sets[0].resources[0].dns_target_resource.record_set_id #=> String
    #   resp.data.resource_sets[0].resources[0].dns_target_resource.record_type #=> String
    #   resp.data.resource_sets[0].resources[0].dns_target_resource.target_resource #=> Types::TargetResource
    #   resp.data.resource_sets[0].resources[0].dns_target_resource.target_resource.nlb_resource #=> Types::NLBResource
    #   resp.data.resource_sets[0].resources[0].dns_target_resource.target_resource.nlb_resource.arn #=> String
    #   resp.data.resource_sets[0].resources[0].dns_target_resource.target_resource.r53_resource #=> Types::R53ResourceRecord
    #   resp.data.resource_sets[0].resources[0].dns_target_resource.target_resource.r53_resource.domain_name #=> String
    #   resp.data.resource_sets[0].resources[0].dns_target_resource.target_resource.r53_resource.record_set_id #=> String
    #   resp.data.resource_sets[0].resources[0].readiness_scopes #=> Array<String>
    #   resp.data.resource_sets[0].resources[0].readiness_scopes[0] #=> String
    #   resp.data.resource_sets[0].resources[0].resource_arn #=> String
    #   resp.data.resource_sets[0].tags #=> Hash<String, String>
    #   resp.data.resource_sets[0].tags['key'] #=> String
    #
    def list_resource_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourceSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourceSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourceSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListResourceSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourceSets,
        stubs: @stubs,
        params_class: Params::ListResourceSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resource_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all readiness rules, or lists the readiness rules for a specific resource type.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRulesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The number of objects that you want to return with this call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that identifies which batch of results you want to see.</p>
    #
    # @option params [String] :resource_type
    #   <p>The resource type that a readiness rule applies to.</p>
    #
    # @return [Types::ListRulesOperationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rules(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     resource_type: 'ResourceType'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRulesOperationOutput
    #   resp.data.next_token #=> String
    #   resp.data.rules #=> Array<ListRulesOutput>
    #   resp.data.rules[0] #=> Types::ListRulesOutput
    #   resp.data.rules[0].resource_type #=> String
    #   resp.data.rules[0].rule_description #=> String
    #   resp.data.rules[0].rule_id #=> String
    #
    def list_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRules
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRules,
        stubs: @stubs,
        params_class: Params::ListRulesOperationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourcesInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for a resource.</p>
    #
    # @return [Types::ListTagsForResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resources(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourcesOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def list_tags_for_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::ListTagsForResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResources,
        stubs: @stubs,
        params_class: Params::ListTagsForResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a tag to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for a resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p></p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Removes a tag from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for a resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys for tags you add to resources.</p>
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Updates a cell to replace the list of nested cells with a new list of nested cells.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCellInput}.
    #
    # @option params [String] :cell_name
    #   <p>The name of the cell.</p>
    #
    # @option params [Array<String>] :cells
    #   <p>A list of cell Amazon Resource Names (ARNs), which completely replaces the previous list.</p>
    #
    # @return [Types::UpdateCellOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cell(
    #     cell_name: 'CellName', # required
    #     cells: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCellOutput
    #   resp.data.cell_arn #=> String
    #   resp.data.cell_name #=> String
    #   resp.data.cells #=> Array<String>
    #   resp.data.cells[0] #=> String
    #   resp.data.parent_readiness_scopes #=> Array<String>
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_cell(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCellInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCellInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCell
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateCell
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCell,
        stubs: @stubs,
        params_class: Params::UpdateCellOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_cell
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a readiness check.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateReadinessCheckInput}.
    #
    # @option params [String] :readiness_check_name
    #   <p>Name of a readiness check.</p>
    #
    # @option params [String] :resource_set_name
    #   <p>The name of the resource set to be checked.</p>
    #
    # @return [Types::UpdateReadinessCheckOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_readiness_check(
    #     readiness_check_name: 'ReadinessCheckName', # required
    #     resource_set_name: 'ResourceSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateReadinessCheckOutput
    #   resp.data.readiness_check_arn #=> String
    #   resp.data.readiness_check_name #=> String
    #   resp.data.resource_set #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_readiness_check(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateReadinessCheckInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateReadinessCheckInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateReadinessCheck
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateReadinessCheck
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateReadinessCheck,
        stubs: @stubs,
        params_class: Params::UpdateReadinessCheckOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_readiness_check
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a recovery group.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRecoveryGroupInput}.
    #
    # @option params [Array<String>] :cells
    #   <p>A list of cell Amazon Resource Names (ARNs). This list completely replaces the previous list.</p>
    #
    # @option params [String] :recovery_group_name
    #   <p>The name of a recovery group.</p>
    #
    # @return [Types::UpdateRecoveryGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_recovery_group(
    #     cells: [
    #       'member'
    #     ], # required
    #     recovery_group_name: 'RecoveryGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRecoveryGroupOutput
    #   resp.data.cells #=> Array<String>
    #   resp.data.cells[0] #=> String
    #   resp.data.recovery_group_arn #=> String
    #   resp.data.recovery_group_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_recovery_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRecoveryGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRecoveryGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRecoveryGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateRecoveryGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRecoveryGroup,
        stubs: @stubs,
        params_class: Params::UpdateRecoveryGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_recovery_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a resource set.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResourceSetInput}.
    #
    # @option params [String] :resource_set_name
    #   <p>Name of a resource set.</p>
    #
    # @option params [String] :resource_set_type
    #   <p>The resource type of the resources in the resource set. Enter one of the following values for resource type:</p> <p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage, AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource</p>
    #
    # @option params [Array<Resource>] :resources
    #   <p>A list of resource objects.</p>
    #
    # @return [Types::UpdateResourceSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_set(
    #     resource_set_name: 'ResourceSetName', # required
    #     resource_set_type: 'ResourceSetType', # required
    #     resources: [
    #       {
    #         component_id: 'ComponentId',
    #         dns_target_resource: {
    #           domain_name: 'DomainName',
    #           hosted_zone_arn: 'HostedZoneArn',
    #           record_set_id: 'RecordSetId',
    #           record_type: 'RecordType',
    #           target_resource: {
    #             nlb_resource: {
    #               arn: 'Arn'
    #             },
    #             r53_resource: {
    #               domain_name: 'DomainName',
    #               record_set_id: 'RecordSetId'
    #             }
    #           }
    #         },
    #         readiness_scopes: [
    #           'member'
    #         ],
    #         resource_arn: 'ResourceArn'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResourceSetOutput
    #   resp.data.resource_set_arn #=> String
    #   resp.data.resource_set_name #=> String
    #   resp.data.resource_set_type #=> String
    #   resp.data.resources #=> Array<Resource>
    #   resp.data.resources[0] #=> Types::Resource
    #   resp.data.resources[0].component_id #=> String
    #   resp.data.resources[0].dns_target_resource #=> Types::DNSTargetResource
    #   resp.data.resources[0].dns_target_resource.domain_name #=> String
    #   resp.data.resources[0].dns_target_resource.hosted_zone_arn #=> String
    #   resp.data.resources[0].dns_target_resource.record_set_id #=> String
    #   resp.data.resources[0].dns_target_resource.record_type #=> String
    #   resp.data.resources[0].dns_target_resource.target_resource #=> Types::TargetResource
    #   resp.data.resources[0].dns_target_resource.target_resource.nlb_resource #=> Types::NLBResource
    #   resp.data.resources[0].dns_target_resource.target_resource.nlb_resource.arn #=> String
    #   resp.data.resources[0].dns_target_resource.target_resource.r53_resource #=> Types::R53ResourceRecord
    #   resp.data.resources[0].dns_target_resource.target_resource.r53_resource.domain_name #=> String
    #   resp.data.resources[0].dns_target_resource.target_resource.r53_resource.record_set_id #=> String
    #   resp.data.resources[0].readiness_scopes #=> Array<String>
    #   resp.data.resources[0].readiness_scopes[0] #=> String
    #   resp.data.resources[0].resource_arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_resource_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResourceSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResourceSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResourceSet
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateResourceSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResourceSet,
        stubs: @stubs,
        params_class: Params::UpdateResourceSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resource_set
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
