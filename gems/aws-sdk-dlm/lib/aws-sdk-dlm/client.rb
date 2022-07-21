# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::DLM
  # An API client for dlm_20180112
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Data Lifecycle Manager</fullname>
  # 		       <p>With Amazon Data Lifecycle Manager, you can manage the lifecycle of your Amazon Web Services resources. You create
  # 			lifecycle policies, which are used to automate operations on the specified
  # 			resources.</p>
  # 		       <p>Amazon DLM supports Amazon EBS volumes and snapshots. For information about using Amazon DLM
  # 			with Amazon EBS, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html">Automating the Amazon EBS
  # 				Snapshot Lifecycle</a> in the <i>Amazon EC2 User Guide</i>.</p>
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
    def initialize(config = AWS::SDK::DLM::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a policy to manage the lifecycle of the specified Amazon Web Services resources. You can
    # 			create up to 100 lifecycle policies.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLifecyclePolicyInput}.
    #
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by
    #   			the lifecycle policy.</p>
    #
    # @option params [String] :description
    #   <p>A description of the lifecycle policy. The characters ^[0-9A-Za-z _-]+$ are
    #   			supported.</p>
    #
    # @option params [String] :state
    #   <p>The desired activation state of the lifecycle policy after creation.</p>
    #
    # @option params [PolicyDetails] :policy_details
    #   <p>The configuration details of the lifecycle policy.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to apply to the lifecycle policy during creation.</p>
    #
    # @return [Types::CreateLifecyclePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_lifecycle_policy(
    #     execution_role_arn: 'ExecutionRoleArn', # required
    #     description: 'Description', # required
    #     state: 'ENABLED', # required - accepts ["ENABLED", "DISABLED"]
    #     policy_details: {
    #       policy_type: 'EBS_SNAPSHOT_MANAGEMENT', # accepts ["EBS_SNAPSHOT_MANAGEMENT", "IMAGE_MANAGEMENT", "EVENT_BASED_POLICY"]
    #       resource_types: [
    #         'VOLUME' # accepts ["VOLUME", "INSTANCE"]
    #       ],
    #       resource_locations: [
    #         'CLOUD' # accepts ["CLOUD", "OUTPOST"]
    #       ],
    #       target_tags: [
    #         {
    #           key: 'Key', # required
    #           value: 'Value' # required
    #         }
    #       ],
    #       schedules: [
    #         {
    #           name: 'Name',
    #           copy_tags: false,
    #           create_rule: {
    #             location: 'CLOUD', # accepts ["CLOUD", "OUTPOST_LOCAL"]
    #             interval: 1,
    #             interval_unit: 'HOURS', # accepts ["HOURS"]
    #             times: [
    #               'member'
    #             ],
    #             cron_expression: 'CronExpression'
    #           },
    #           retain_rule: {
    #             count: 1,
    #             interval: 1,
    #             interval_unit: 'DAYS' # accepts ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #           },
    #           fast_restore_rule: {
    #             count: 1,
    #             interval: 1,
    #             interval_unit: 'DAYS', # accepts ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #             availability_zones: [
    #               'member'
    #             ] # required
    #           },
    #           cross_region_copy_rules: [
    #             {
    #               target_region: 'TargetRegion',
    #               target: 'Target',
    #               encrypted: false, # required
    #               cmk_arn: 'CmkArn',
    #               copy_tags: false,
    #               retain_rule: {
    #                 interval: 1,
    #                 interval_unit: 'DAYS' # accepts ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #               },
    #               deprecate_rule: {
    #                 interval: 1,
    #                 interval_unit: 'DAYS' # accepts ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #               }
    #             }
    #           ],
    #           share_rules: [
    #             {
    #               target_accounts: [
    #                 'member'
    #               ], # required
    #               unshare_interval: 1,
    #               unshare_interval_unit: 'DAYS' # accepts ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #             }
    #           ],
    #           deprecate_rule: {
    #             count: 1,
    #             interval: 1,
    #             interval_unit: 'DAYS' # accepts ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #           }
    #         }
    #       ],
    #       parameters: {
    #         exclude_boot_volume: false,
    #         no_reboot: false
    #       },
    #       event_source: {
    #         type: 'MANAGED_CWE', # required - accepts ["MANAGED_CWE"]
    #         parameters: {
    #           event_type: 'shareSnapshot', # required - accepts ["shareSnapshot"]
    #           snapshot_owner: [
    #             'member'
    #           ], # required
    #           description_regex: 'DescriptionRegex' # required
    #         }
    #       },
    #       actions: [
    #         {
    #           name: 'Name', # required
    #           cross_region_copy: [
    #             {
    #               target: 'Target', # required
    #               encryption_configuration: {
    #                 encrypted: false, # required
    #                 cmk_arn: 'CmkArn'
    #               }, # required
    #             }
    #           ] # required
    #         }
    #       ]
    #     }, # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLifecyclePolicyOutput
    #   resp.data.policy_id #=> String
    #
    def create_lifecycle_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLifecyclePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLifecyclePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLifecyclePolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServerException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateLifecyclePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLifecyclePolicy,
        stubs: @stubs,
        params_class: Params::CreateLifecyclePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_lifecycle_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified lifecycle policy and halts the automated operations that the
    # 			policy specified.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLifecyclePolicyInput}.
    #
    # @option params [String] :policy_id
    #   <p>The identifier of the lifecycle policy.</p>
    #
    # @return [Types::DeleteLifecyclePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lifecycle_policy(
    #     policy_id: 'PolicyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLifecyclePolicyOutput
    #
    def delete_lifecycle_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLifecyclePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLifecyclePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLifecyclePolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteLifecyclePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLifecyclePolicy,
        stubs: @stubs,
        params_class: Params::DeleteLifecyclePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_lifecycle_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets summary information about all or the specified data lifecycle policies.</p>
    # 		       <p>To get complete information about a policy, use <a>GetLifecyclePolicy</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLifecyclePoliciesInput}.
    #
    # @option params [Array<String>] :policy_ids
    #   <p>The identifiers of the data lifecycle policies.</p>
    #
    # @option params [String] :state
    #   <p>The activation state.</p>
    #
    # @option params [Array<String>] :resource_types
    #   <p>The resource type.</p>
    #
    # @option params [Array<String>] :target_tags
    #   <p>The target tag for a policy.</p>
    #   		       <p>Tags are strings in the format <code>key=value</code>.</p>
    #
    # @option params [Array<String>] :tags_to_add
    #   <p>The tags to add to objects created by the policy.</p>
    #   		       <p>Tags are strings in the format <code>key=value</code>.</p>
    #   		       <p>These user-defined tags are added in addition to the Amazon Web Services-added lifecycle tags.</p>
    #
    # @return [Types::GetLifecyclePoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lifecycle_policies(
    #     policy_ids: [
    #       'member'
    #     ],
    #     state: 'ENABLED', # accepts ["ENABLED", "DISABLED", "ERROR"]
    #     resource_types: [
    #       'VOLUME' # accepts ["VOLUME", "INSTANCE"]
    #     ],
    #     target_tags: [
    #       'member'
    #     ],
    #     tags_to_add: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLifecyclePoliciesOutput
    #   resp.data.policies #=> Array<LifecyclePolicySummary>
    #   resp.data.policies[0] #=> Types::LifecyclePolicySummary
    #   resp.data.policies[0].policy_id #=> String
    #   resp.data.policies[0].description #=> String
    #   resp.data.policies[0].state #=> String, one of ["ENABLED", "DISABLED", "ERROR"]
    #   resp.data.policies[0].tags #=> Hash<String, String>
    #   resp.data.policies[0].tags['key'] #=> String
    #   resp.data.policies[0].policy_type #=> String, one of ["EBS_SNAPSHOT_MANAGEMENT", "IMAGE_MANAGEMENT", "EVENT_BASED_POLICY"]
    #
    def get_lifecycle_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLifecyclePoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLifecyclePoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLifecyclePolicies
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServerException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetLifecyclePolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLifecyclePolicies,
        stubs: @stubs,
        params_class: Params::GetLifecyclePoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_lifecycle_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets detailed information about the specified lifecycle policy.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLifecyclePolicyInput}.
    #
    # @option params [String] :policy_id
    #   <p>The identifier of the lifecycle policy.</p>
    #
    # @return [Types::GetLifecyclePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lifecycle_policy(
    #     policy_id: 'PolicyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLifecyclePolicyOutput
    #   resp.data.policy #=> Types::LifecyclePolicy
    #   resp.data.policy.policy_id #=> String
    #   resp.data.policy.description #=> String
    #   resp.data.policy.state #=> String, one of ["ENABLED", "DISABLED", "ERROR"]
    #   resp.data.policy.status_message #=> String
    #   resp.data.policy.execution_role_arn #=> String
    #   resp.data.policy.date_created #=> Time
    #   resp.data.policy.date_modified #=> Time
    #   resp.data.policy.policy_details #=> Types::PolicyDetails
    #   resp.data.policy.policy_details.policy_type #=> String, one of ["EBS_SNAPSHOT_MANAGEMENT", "IMAGE_MANAGEMENT", "EVENT_BASED_POLICY"]
    #   resp.data.policy.policy_details.resource_types #=> Array<String>
    #   resp.data.policy.policy_details.resource_types[0] #=> String, one of ["VOLUME", "INSTANCE"]
    #   resp.data.policy.policy_details.resource_locations #=> Array<String>
    #   resp.data.policy.policy_details.resource_locations[0] #=> String, one of ["CLOUD", "OUTPOST"]
    #   resp.data.policy.policy_details.target_tags #=> Array<Tag>
    #   resp.data.policy.policy_details.target_tags[0] #=> Types::Tag
    #   resp.data.policy.policy_details.target_tags[0].key #=> String
    #   resp.data.policy.policy_details.target_tags[0].value #=> String
    #   resp.data.policy.policy_details.schedules #=> Array<Schedule>
    #   resp.data.policy.policy_details.schedules[0] #=> Types::Schedule
    #   resp.data.policy.policy_details.schedules[0].name #=> String
    #   resp.data.policy.policy_details.schedules[0].copy_tags #=> Boolean
    #   resp.data.policy.policy_details.schedules[0].tags_to_add #=> Array<Tag>
    #   resp.data.policy.policy_details.schedules[0].variable_tags #=> Array<Tag>
    #   resp.data.policy.policy_details.schedules[0].create_rule #=> Types::CreateRule
    #   resp.data.policy.policy_details.schedules[0].create_rule.location #=> String, one of ["CLOUD", "OUTPOST_LOCAL"]
    #   resp.data.policy.policy_details.schedules[0].create_rule.interval #=> Integer
    #   resp.data.policy.policy_details.schedules[0].create_rule.interval_unit #=> String, one of ["HOURS"]
    #   resp.data.policy.policy_details.schedules[0].create_rule.times #=> Array<String>
    #   resp.data.policy.policy_details.schedules[0].create_rule.times[0] #=> String
    #   resp.data.policy.policy_details.schedules[0].create_rule.cron_expression #=> String
    #   resp.data.policy.policy_details.schedules[0].retain_rule #=> Types::RetainRule
    #   resp.data.policy.policy_details.schedules[0].retain_rule.count #=> Integer
    #   resp.data.policy.policy_details.schedules[0].retain_rule.interval #=> Integer
    #   resp.data.policy.policy_details.schedules[0].retain_rule.interval_unit #=> String, one of ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #   resp.data.policy.policy_details.schedules[0].fast_restore_rule #=> Types::FastRestoreRule
    #   resp.data.policy.policy_details.schedules[0].fast_restore_rule.count #=> Integer
    #   resp.data.policy.policy_details.schedules[0].fast_restore_rule.interval #=> Integer
    #   resp.data.policy.policy_details.schedules[0].fast_restore_rule.interval_unit #=> String, one of ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #   resp.data.policy.policy_details.schedules[0].fast_restore_rule.availability_zones #=> Array<String>
    #   resp.data.policy.policy_details.schedules[0].fast_restore_rule.availability_zones[0] #=> String
    #   resp.data.policy.policy_details.schedules[0].cross_region_copy_rules #=> Array<CrossRegionCopyRule>
    #   resp.data.policy.policy_details.schedules[0].cross_region_copy_rules[0] #=> Types::CrossRegionCopyRule
    #   resp.data.policy.policy_details.schedules[0].cross_region_copy_rules[0].target_region #=> String
    #   resp.data.policy.policy_details.schedules[0].cross_region_copy_rules[0].target #=> String
    #   resp.data.policy.policy_details.schedules[0].cross_region_copy_rules[0].encrypted #=> Boolean
    #   resp.data.policy.policy_details.schedules[0].cross_region_copy_rules[0].cmk_arn #=> String
    #   resp.data.policy.policy_details.schedules[0].cross_region_copy_rules[0].copy_tags #=> Boolean
    #   resp.data.policy.policy_details.schedules[0].cross_region_copy_rules[0].retain_rule #=> Types::CrossRegionCopyRetainRule
    #   resp.data.policy.policy_details.schedules[0].cross_region_copy_rules[0].retain_rule.interval #=> Integer
    #   resp.data.policy.policy_details.schedules[0].cross_region_copy_rules[0].retain_rule.interval_unit #=> String, one of ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #   resp.data.policy.policy_details.schedules[0].cross_region_copy_rules[0].deprecate_rule #=> Types::CrossRegionCopyDeprecateRule
    #   resp.data.policy.policy_details.schedules[0].cross_region_copy_rules[0].deprecate_rule.interval #=> Integer
    #   resp.data.policy.policy_details.schedules[0].cross_region_copy_rules[0].deprecate_rule.interval_unit #=> String, one of ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #   resp.data.policy.policy_details.schedules[0].share_rules #=> Array<ShareRule>
    #   resp.data.policy.policy_details.schedules[0].share_rules[0] #=> Types::ShareRule
    #   resp.data.policy.policy_details.schedules[0].share_rules[0].target_accounts #=> Array<String>
    #   resp.data.policy.policy_details.schedules[0].share_rules[0].target_accounts[0] #=> String
    #   resp.data.policy.policy_details.schedules[0].share_rules[0].unshare_interval #=> Integer
    #   resp.data.policy.policy_details.schedules[0].share_rules[0].unshare_interval_unit #=> String, one of ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #   resp.data.policy.policy_details.schedules[0].deprecate_rule #=> Types::DeprecateRule
    #   resp.data.policy.policy_details.schedules[0].deprecate_rule.count #=> Integer
    #   resp.data.policy.policy_details.schedules[0].deprecate_rule.interval #=> Integer
    #   resp.data.policy.policy_details.schedules[0].deprecate_rule.interval_unit #=> String, one of ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #   resp.data.policy.policy_details.parameters #=> Types::Parameters
    #   resp.data.policy.policy_details.parameters.exclude_boot_volume #=> Boolean
    #   resp.data.policy.policy_details.parameters.no_reboot #=> Boolean
    #   resp.data.policy.policy_details.event_source #=> Types::EventSource
    #   resp.data.policy.policy_details.event_source.type #=> String, one of ["MANAGED_CWE"]
    #   resp.data.policy.policy_details.event_source.parameters #=> Types::EventParameters
    #   resp.data.policy.policy_details.event_source.parameters.event_type #=> String, one of ["shareSnapshot"]
    #   resp.data.policy.policy_details.event_source.parameters.snapshot_owner #=> Array<String>
    #   resp.data.policy.policy_details.event_source.parameters.snapshot_owner[0] #=> String
    #   resp.data.policy.policy_details.event_source.parameters.description_regex #=> String
    #   resp.data.policy.policy_details.actions #=> Array<Action>
    #   resp.data.policy.policy_details.actions[0] #=> Types::Action
    #   resp.data.policy.policy_details.actions[0].name #=> String
    #   resp.data.policy.policy_details.actions[0].cross_region_copy #=> Array<CrossRegionCopyAction>
    #   resp.data.policy.policy_details.actions[0].cross_region_copy[0] #=> Types::CrossRegionCopyAction
    #   resp.data.policy.policy_details.actions[0].cross_region_copy[0].target #=> String
    #   resp.data.policy.policy_details.actions[0].cross_region_copy[0].encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.policy.policy_details.actions[0].cross_region_copy[0].encryption_configuration.encrypted #=> Boolean
    #   resp.data.policy.policy_details.actions[0].cross_region_copy[0].encryption_configuration.cmk_arn #=> String
    #   resp.data.policy.policy_details.actions[0].cross_region_copy[0].retain_rule #=> Types::CrossRegionCopyRetainRule
    #   resp.data.policy.tags #=> Hash<String, String>
    #   resp.data.policy.tags['key'] #=> String
    #   resp.data.policy.policy_arn #=> String
    #
    def get_lifecycle_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLifecyclePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLifecyclePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLifecyclePolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetLifecyclePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLifecyclePolicy,
        stubs: @stubs,
        params_class: Params::GetLifecyclePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_lifecycle_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
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

    # <p>Adds the specified tags to the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
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

    # <p>Removes the specified tags from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
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

    # <p>Updates the specified lifecycle policy.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLifecyclePolicyInput}.
    #
    # @option params [String] :policy_id
    #   <p>The identifier of the lifecycle policy.</p>
    #
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by
    #   			the lifecycle policy.</p>
    #
    # @option params [String] :state
    #   <p>The desired activation state of the lifecycle policy after creation.</p>
    #
    # @option params [String] :description
    #   <p>A description of the lifecycle policy.</p>
    #
    # @option params [PolicyDetails] :policy_details
    #   <p>The configuration of the lifecycle policy. You cannot update the policy type or the
    #   			resource type.</p>
    #
    # @return [Types::UpdateLifecyclePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_lifecycle_policy(
    #     policy_id: 'PolicyId', # required
    #     execution_role_arn: 'ExecutionRoleArn',
    #     state: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     description: 'Description',
    #     policy_details: {
    #       policy_type: 'EBS_SNAPSHOT_MANAGEMENT', # accepts ["EBS_SNAPSHOT_MANAGEMENT", "IMAGE_MANAGEMENT", "EVENT_BASED_POLICY"]
    #       resource_types: [
    #         'VOLUME' # accepts ["VOLUME", "INSTANCE"]
    #       ],
    #       resource_locations: [
    #         'CLOUD' # accepts ["CLOUD", "OUTPOST"]
    #       ],
    #       target_tags: [
    #         {
    #           key: 'Key', # required
    #           value: 'Value' # required
    #         }
    #       ],
    #       schedules: [
    #         {
    #           name: 'Name',
    #           copy_tags: false,
    #           create_rule: {
    #             location: 'CLOUD', # accepts ["CLOUD", "OUTPOST_LOCAL"]
    #             interval: 1,
    #             interval_unit: 'HOURS', # accepts ["HOURS"]
    #             times: [
    #               'member'
    #             ],
    #             cron_expression: 'CronExpression'
    #           },
    #           retain_rule: {
    #             count: 1,
    #             interval: 1,
    #             interval_unit: 'DAYS' # accepts ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #           },
    #           fast_restore_rule: {
    #             count: 1,
    #             interval: 1,
    #             interval_unit: 'DAYS', # accepts ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #             availability_zones: [
    #               'member'
    #             ] # required
    #           },
    #           cross_region_copy_rules: [
    #             {
    #               target_region: 'TargetRegion',
    #               target: 'Target',
    #               encrypted: false, # required
    #               cmk_arn: 'CmkArn',
    #               copy_tags: false,
    #               retain_rule: {
    #                 interval: 1,
    #                 interval_unit: 'DAYS' # accepts ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #               },
    #               deprecate_rule: {
    #                 interval: 1,
    #                 interval_unit: 'DAYS' # accepts ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #               }
    #             }
    #           ],
    #           share_rules: [
    #             {
    #               target_accounts: [
    #                 'member'
    #               ], # required
    #               unshare_interval: 1,
    #               unshare_interval_unit: 'DAYS' # accepts ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #             }
    #           ],
    #           deprecate_rule: {
    #             count: 1,
    #             interval: 1,
    #             interval_unit: 'DAYS' # accepts ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #           }
    #         }
    #       ],
    #       parameters: {
    #         exclude_boot_volume: false,
    #         no_reboot: false
    #       },
    #       event_source: {
    #         type: 'MANAGED_CWE', # required - accepts ["MANAGED_CWE"]
    #         parameters: {
    #           event_type: 'shareSnapshot', # required - accepts ["shareSnapshot"]
    #           snapshot_owner: [
    #             'member'
    #           ], # required
    #           description_regex: 'DescriptionRegex' # required
    #         }
    #       },
    #       actions: [
    #         {
    #           name: 'Name', # required
    #           cross_region_copy: [
    #             {
    #               target: 'Target', # required
    #               encryption_configuration: {
    #                 encrypted: false, # required
    #                 cmk_arn: 'CmkArn'
    #               }, # required
    #             }
    #           ] # required
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLifecyclePolicyOutput
    #
    def update_lifecycle_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLifecyclePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLifecyclePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLifecyclePolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServerException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateLifecyclePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLifecyclePolicy,
        stubs: @stubs,
        params_class: Params::UpdateLifecyclePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_lifecycle_policy
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
