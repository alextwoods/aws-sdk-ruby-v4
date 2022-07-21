# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Resiliencehub
  # An API client for AwsResilienceHub
  # See {#initialize} for a full list of supported configuration options
  # <p>AWS Resilience Hub helps you proactively prepare and protect your Amazon Web Services applications from
  #       disruptions. Resilience Hub offers continuous resiliency assessment and validation that integrates
  #       into your software development lifecycle. This enables you to uncover resiliency weaknesses,
  #       ensure recovery time objective (RTO) and recovery point objective (RPO) targets for your
  #       applications are met, and resolve issues before they are released into production. </p>
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
    def initialize(config = AWS::SDK::Resiliencehub::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds the resource mapping for the draft application version.</p>
    #
    # @param [Hash] params
    #   See {Types::AddDraftAppVersionResourceMappingsInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [Array<ResourceMapping>] :resource_mappings
    #   <p> Mappings used to map logical resources from the template to physical resources. You can
    #         use the mapping type <code>CFN_STACK</code> if the application template uses
    #         a logical stack name. Or you can map individual resources by using the mapping type
    #         <code>RESOURCE</code>. We recommend using the mapping type <code>CFN_STACK</code> if the
    #         application is backed by a CloudFormation stack.</p>
    #
    # @return [Types::AddDraftAppVersionResourceMappingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_draft_app_version_resource_mappings(
    #     app_arn: 'appArn', # required
    #     resource_mappings: [
    #       {
    #         resource_name: 'resourceName',
    #         logical_stack_name: 'logicalStackName',
    #         app_registry_app_name: 'appRegistryAppName',
    #         resource_group_name: 'resourceGroupName',
    #         mapping_type: 'CfnStack', # required - accepts ["CfnStack", "Resource", "AppRegistryApp", "ResourceGroup", "Terraform"]
    #         physical_resource_id: {
    #           identifier: 'identifier', # required
    #           type: 'Arn', # required - accepts ["Arn", "Native"]
    #           aws_region: 'awsRegion',
    #           aws_account_id: 'awsAccountId'
    #         }, # required
    #         terraform_source_name: 'terraformSourceName'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddDraftAppVersionResourceMappingsOutput
    #   resp.data.app_arn #=> String
    #   resp.data.app_version #=> String
    #   resp.data.resource_mappings #=> Array<ResourceMapping>
    #   resp.data.resource_mappings[0] #=> Types::ResourceMapping
    #   resp.data.resource_mappings[0].resource_name #=> String
    #   resp.data.resource_mappings[0].logical_stack_name #=> String
    #   resp.data.resource_mappings[0].app_registry_app_name #=> String
    #   resp.data.resource_mappings[0].resource_group_name #=> String
    #   resp.data.resource_mappings[0].mapping_type #=> String, one of ["CfnStack", "Resource", "AppRegistryApp", "ResourceGroup", "Terraform"]
    #   resp.data.resource_mappings[0].physical_resource_id #=> Types::PhysicalResourceId
    #   resp.data.resource_mappings[0].physical_resource_id.identifier #=> String
    #   resp.data.resource_mappings[0].physical_resource_id.type #=> String, one of ["Arn", "Native"]
    #   resp.data.resource_mappings[0].physical_resource_id.aws_region #=> String
    #   resp.data.resource_mappings[0].physical_resource_id.aws_account_id #=> String
    #   resp.data.resource_mappings[0].terraform_source_name #=> String
    #
    def add_draft_app_version_resource_mappings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddDraftAppVersionResourceMappingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddDraftAppVersionResourceMappingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddDraftAppVersionResourceMappings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::AddDraftAppVersionResourceMappings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddDraftAppVersionResourceMappings,
        stubs: @stubs,
        params_class: Params::AddDraftAppVersionResourceMappingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_draft_app_version_resource_mappings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Resilience Hub application. A Resilience Hub application is a collection of Amazon Web Services
    #       resources structured to prevent and recover Amazon Web Services application disruptions. To describe a
    #       Resilience Hub application, you provide an application name, resources from one or more–up to
    #       five–CloudFormation stacks, and an appropriate resiliency policy.</p>
    #
    #          <p>After you create a Resilience Hub application, you publish it so that you can run a resiliency
    #       assessment on it. You can then use recommendations from the assessment to improve resiliency
    #       by running another assessment, comparing results, and then iterating the process until you
    #       achieve your goals for recovery time objective (RTO) and recovery point objective
    #       (RPO).</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAppInput}.
    #
    # @option params [String] :name
    #   <p>The name for the application.</p>
    #
    # @option params [String] :description
    #   <p>The optional description for an app.</p>
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key/value pair.</p>
    #
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    # @option params [String] :assessment_schedule
    #   <p>
    #         Assessment execution schedule with 'Daily' or 'Disabled' values.
    #       </p>
    #
    # @return [Types::CreateAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app(
    #     name: 'name', # required
    #     description: 'description',
    #     policy_arn: 'policyArn',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken',
    #     assessment_schedule: 'Disabled' # accepts ["Disabled", "Daily"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAppOutput
    #   resp.data.app #=> Types::App
    #   resp.data.app.app_arn #=> String
    #   resp.data.app.name #=> String
    #   resp.data.app.description #=> String
    #   resp.data.app.policy_arn #=> String
    #   resp.data.app.creation_time #=> Time
    #   resp.data.app.status #=> String, one of ["Active", "Deleting"]
    #   resp.data.app.compliance_status #=> String, one of ["PolicyBreached", "PolicyMet", "NotAssessed", "ChangesDetected"]
    #   resp.data.app.last_app_compliance_evaluation_time #=> Time
    #   resp.data.app.resiliency_score #=> Float
    #   resp.data.app.last_resiliency_score_evaluation_time #=> Time
    #   resp.data.app.tags #=> Hash<String, String>
    #   resp.data.app.tags['key'] #=> String
    #   resp.data.app.assessment_schedule #=> String, one of ["Disabled", "Daily"]
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Creates a new recommendation template.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRecommendationTemplateInput}.
    #
    # @option params [Array<String>] :recommendation_ids
    #   <p>Identifiers for the recommendations used to create a recommendation template.</p>
    #
    # @option params [String] :format
    #   <p>The format for the recommendation template.</p>
    #            <dl>
    #               <dt>CfnJson</dt>
    #               <dd>
    #                  <p>The template is CloudFormation JSON.</p>
    #               </dd>
    #               <dt>CfnYaml</dt>
    #               <dd>
    #                  <p>The template is CloudFormation YAML.</p>
    #               </dd>
    #            </dl>
    #
    # @option params [Array<String>] :recommendation_types
    #   <p>An array of strings that specify the recommendation template type or types.</p>
    #            <dl>
    #               <dt>Alarm</dt>
    #               <dd>
    #                  <p>The template is an <a>AlarmRecommendation</a> template.</p>
    #               </dd>
    #               <dt>Sop</dt>
    #               <dd>
    #                  <p>The template is a <a>SopRecommendation</a> template.</p>
    #               </dd>
    #               <dt>Test</dt>
    #               <dd>
    #                  <p>The template is a <a>TestRecommendation</a> template.</p>
    #               </dd>
    #            </dl>
    #
    # @option params [String] :assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :name
    #   <p>The name for the recommendation template.</p>
    #
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key/value pair.</p>
    #
    # @option params [String] :bucket_name
    #   <p>The name of the Amazon S3 bucket that will contain the recommendation template.</p>
    #
    # @return [Types::CreateRecommendationTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_recommendation_template(
    #     recommendation_ids: [
    #       'member'
    #     ],
    #     format: 'CfnYaml', # accepts ["CfnYaml", "CfnJson"]
    #     recommendation_types: [
    #       'Alarm' # accepts ["Alarm", "Sop", "Test"]
    #     ],
    #     assessment_arn: 'assessmentArn', # required
    #     name: 'name', # required
    #     client_token: 'clientToken',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     bucket_name: 'bucketName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRecommendationTemplateOutput
    #   resp.data.recommendation_template #=> Types::RecommendationTemplate
    #   resp.data.recommendation_template.templates_location #=> Types::S3Location
    #   resp.data.recommendation_template.templates_location.bucket #=> String
    #   resp.data.recommendation_template.templates_location.prefix #=> String
    #   resp.data.recommendation_template.assessment_arn #=> String
    #   resp.data.recommendation_template.app_arn #=> String
    #   resp.data.recommendation_template.recommendation_ids #=> Array<String>
    #   resp.data.recommendation_template.recommendation_ids[0] #=> String
    #   resp.data.recommendation_template.recommendation_types #=> Array<String>
    #   resp.data.recommendation_template.recommendation_types[0] #=> String, one of ["Alarm", "Sop", "Test"]
    #   resp.data.recommendation_template.format #=> String, one of ["CfnYaml", "CfnJson"]
    #   resp.data.recommendation_template.recommendation_template_arn #=> String
    #   resp.data.recommendation_template.message #=> String
    #   resp.data.recommendation_template.status #=> String, one of ["Pending", "InProgress", "Failed", "Success"]
    #   resp.data.recommendation_template.name #=> String
    #   resp.data.recommendation_template.start_time #=> Time
    #   resp.data.recommendation_template.end_time #=> Time
    #   resp.data.recommendation_template.tags #=> Hash<String, String>
    #   resp.data.recommendation_template.tags['key'] #=> String
    #   resp.data.recommendation_template.needs_replacements #=> Boolean
    #
    def create_recommendation_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRecommendationTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRecommendationTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRecommendationTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::CreateRecommendationTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRecommendationTemplate,
        stubs: @stubs,
        params_class: Params::CreateRecommendationTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_recommendation_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a resiliency policy for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateResiliencyPolicyInput}.
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy</p>
    #
    # @option params [String] :policy_description
    #   <p>The description for the policy.</p>
    #
    # @option params [String] :data_location_constraint
    #   <p>Specifies a high-level geographical location constraint for where your resilience policy
    #         data can be stored.</p>
    #
    # @option params [String] :tier
    #   <p>The tier for this resiliency policy, ranging from the highest severity
    #           (<code>MissionCritical</code>) to lowest (<code>NonCritical</code>).</p>
    #
    # @option params [Hash<String, FailurePolicy>] :policy
    #   <p>The type of resiliency policy to be created, including the recovery time objective (RTO)
    #         and recovery point objective (RPO) in seconds.</p>
    #
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key/value pair.</p>
    #
    # @return [Types::CreateResiliencyPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resiliency_policy(
    #     policy_name: 'policyName', # required
    #     policy_description: 'policyDescription',
    #     data_location_constraint: 'AnyLocation', # accepts ["AnyLocation", "SameContinent", "SameCountry"]
    #     tier: 'MissionCritical', # required - accepts ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"]
    #     policy: {
    #       'key' => {
    #         rto_in_secs: 1, # required
    #         rpo_in_secs: 1 # required
    #       }
    #     }, # required
    #     client_token: 'clientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResiliencyPolicyOutput
    #   resp.data.policy #=> Types::ResiliencyPolicy
    #   resp.data.policy.policy_arn #=> String
    #   resp.data.policy.policy_name #=> String
    #   resp.data.policy.policy_description #=> String
    #   resp.data.policy.data_location_constraint #=> String, one of ["AnyLocation", "SameContinent", "SameCountry"]
    #   resp.data.policy.tier #=> String, one of ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"]
    #   resp.data.policy.estimated_cost_tier #=> String, one of ["L1", "L2", "L3", "L4"]
    #   resp.data.policy.policy #=> Hash<String, FailurePolicy>
    #   resp.data.policy.policy['key'] #=> Types::FailurePolicy
    #   resp.data.policy.policy['key'].rto_in_secs #=> Integer
    #   resp.data.policy.policy['key'].rpo_in_secs #=> Integer
    #   resp.data.policy.creation_time #=> Time
    #   resp.data.policy.tags #=> Hash<String, String>
    #   resp.data.policy.tags['key'] #=> String
    #
    def create_resiliency_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResiliencyPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResiliencyPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResiliencyPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::CreateResiliencyPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResiliencyPolicy,
        stubs: @stubs,
        params_class: Params::CreateResiliencyPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resiliency_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an AWS Resilience Hub application. This is a destructive action that can't be
    #       undone.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [Boolean] :force_delete
    #   <p>A boolean option to force the deletion of a Resilience Hub application. </p>
    #
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    # @return [Types::DeleteAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app(
    #     app_arn: 'appArn', # required
    #     force_delete: false,
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppOutput
    #   resp.data.app_arn #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Deletes an AWS Resilience Hub application assessment. This is a destructive action that can't
    #       be undone.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppAssessmentInput}.
    #
    # @option params [String] :assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    # @return [Types::DeleteAppAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_assessment(
    #     assessment_arn: 'assessmentArn', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppAssessmentOutput
    #   resp.data.assessment_arn #=> String
    #   resp.data.assessment_status #=> String, one of ["Pending", "InProgress", "Failed", "Success"]
    #
    def delete_app_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppAssessmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAppAssessment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteAppAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAppAssessment,
        stubs: @stubs,
        params_class: Params::DeleteAppAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a recommendation template. This is a destructive action that can't be
    #       undone.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRecommendationTemplateInput}.
    #
    # @option params [String] :recommendation_template_arn
    #   <p>The Amazon Resource Name (ARN) for a recommendation template.</p>
    #
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    # @return [Types::DeleteRecommendationTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recommendation_template(
    #     recommendation_template_arn: 'recommendationTemplateArn', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRecommendationTemplateOutput
    #   resp.data.recommendation_template_arn #=> String
    #   resp.data.status #=> String, one of ["Pending", "InProgress", "Failed", "Success"]
    #
    def delete_recommendation_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRecommendationTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRecommendationTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRecommendationTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteRecommendationTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRecommendationTemplate,
        stubs: @stubs,
        params_class: Params::DeleteRecommendationTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_recommendation_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a resiliency policy. This is a destructive action that can't be undone.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResiliencyPolicyInput}.
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    # @return [Types::DeleteResiliencyPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resiliency_policy(
    #     policy_arn: 'policyArn', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResiliencyPolicyOutput
    #   resp.data.policy_arn #=> String
    #
    def delete_resiliency_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResiliencyPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResiliencyPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResiliencyPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteResiliencyPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResiliencyPolicy,
        stubs: @stubs,
        params_class: Params::DeleteResiliencyPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resiliency_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an AWS Resilience Hub application.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAppInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @return [Types::DescribeAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app(
    #     app_arn: 'appArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAppOutput
    #   resp.data.app #=> Types::App
    #   resp.data.app.app_arn #=> String
    #   resp.data.app.name #=> String
    #   resp.data.app.description #=> String
    #   resp.data.app.policy_arn #=> String
    #   resp.data.app.creation_time #=> Time
    #   resp.data.app.status #=> String, one of ["Active", "Deleting"]
    #   resp.data.app.compliance_status #=> String, one of ["PolicyBreached", "PolicyMet", "NotAssessed", "ChangesDetected"]
    #   resp.data.app.last_app_compliance_evaluation_time #=> Time
    #   resp.data.app.resiliency_score #=> Float
    #   resp.data.app.last_resiliency_score_evaluation_time #=> Time
    #   resp.data.app.tags #=> Hash<String, String>
    #   resp.data.app.tags['key'] #=> String
    #   resp.data.app.assessment_schedule #=> String, one of ["Disabled", "Daily"]
    #
    def describe_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAppInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeApp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeApp,
        stubs: @stubs,
        params_class: Params::DescribeAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an assessment for an AWS Resilience Hub application.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAppAssessmentInput}.
    #
    # @option params [String] :assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @return [Types::DescribeAppAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_assessment(
    #     assessment_arn: 'assessmentArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAppAssessmentOutput
    #   resp.data.assessment #=> Types::AppAssessment
    #   resp.data.assessment.app_arn #=> String
    #   resp.data.assessment.app_version #=> String
    #   resp.data.assessment.invoker #=> String, one of ["User", "System"]
    #   resp.data.assessment.cost #=> Types::Cost
    #   resp.data.assessment.cost.amount #=> Float
    #   resp.data.assessment.cost.currency #=> String
    #   resp.data.assessment.cost.frequency #=> String, one of ["Hourly", "Daily", "Monthly", "Yearly"]
    #   resp.data.assessment.resiliency_score #=> Types::ResiliencyScore
    #   resp.data.assessment.resiliency_score.score #=> Float
    #   resp.data.assessment.resiliency_score.disruption_score #=> Hash<String, Float>
    #   resp.data.assessment.resiliency_score.disruption_score['key'] #=> Float
    #   resp.data.assessment.compliance #=> Hash<String, DisruptionCompliance>
    #   resp.data.assessment.compliance['key'] #=> Types::DisruptionCompliance
    #   resp.data.assessment.compliance['key'].achievable_rto_in_secs #=> Integer
    #   resp.data.assessment.compliance['key'].current_rto_in_secs #=> Integer
    #   resp.data.assessment.compliance['key'].rto_reference_id #=> String
    #   resp.data.assessment.compliance['key'].rto_description #=> String
    #   resp.data.assessment.compliance['key'].current_rpo_in_secs #=> Integer
    #   resp.data.assessment.compliance['key'].rpo_reference_id #=> String
    #   resp.data.assessment.compliance['key'].rpo_description #=> String
    #   resp.data.assessment.compliance['key'].compliance_status #=> String, one of ["PolicyBreached", "PolicyMet"]
    #   resp.data.assessment.compliance['key'].achievable_rpo_in_secs #=> Integer
    #   resp.data.assessment.compliance['key'].message #=> String
    #   resp.data.assessment.compliance_status #=> String, one of ["PolicyBreached", "PolicyMet"]
    #   resp.data.assessment.assessment_status #=> String, one of ["Pending", "InProgress", "Failed", "Success"]
    #   resp.data.assessment.start_time #=> Time
    #   resp.data.assessment.end_time #=> Time
    #   resp.data.assessment.message #=> String
    #   resp.data.assessment.assessment_name #=> String
    #   resp.data.assessment.assessment_arn #=> String
    #   resp.data.assessment.policy #=> Types::ResiliencyPolicy
    #   resp.data.assessment.policy.policy_arn #=> String
    #   resp.data.assessment.policy.policy_name #=> String
    #   resp.data.assessment.policy.policy_description #=> String
    #   resp.data.assessment.policy.data_location_constraint #=> String, one of ["AnyLocation", "SameContinent", "SameCountry"]
    #   resp.data.assessment.policy.tier #=> String, one of ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"]
    #   resp.data.assessment.policy.estimated_cost_tier #=> String, one of ["L1", "L2", "L3", "L4"]
    #   resp.data.assessment.policy.policy #=> Hash<String, FailurePolicy>
    #   resp.data.assessment.policy.policy['key'] #=> Types::FailurePolicy
    #   resp.data.assessment.policy.policy['key'].rto_in_secs #=> Integer
    #   resp.data.assessment.policy.policy['key'].rpo_in_secs #=> Integer
    #   resp.data.assessment.policy.creation_time #=> Time
    #   resp.data.assessment.policy.tags #=> Hash<String, String>
    #   resp.data.assessment.policy.tags['key'] #=> String
    #   resp.data.assessment.tags #=> Hash<String, String>
    #   resp.data.assessment.resource_errors_details #=> Types::ResourceErrorsDetails
    #   resp.data.assessment.resource_errors_details.resource_errors #=> Array<ResourceError>
    #   resp.data.assessment.resource_errors_details.resource_errors[0] #=> Types::ResourceError
    #   resp.data.assessment.resource_errors_details.resource_errors[0].logical_resource_id #=> String
    #   resp.data.assessment.resource_errors_details.resource_errors[0].physical_resource_id #=> String
    #   resp.data.assessment.resource_errors_details.resource_errors[0].reason #=> String
    #   resp.data.assessment.resource_errors_details.has_more_errors #=> Boolean
    #
    def describe_app_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAppAssessmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAppAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAppAssessment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeAppAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAppAssessment,
        stubs: @stubs,
        params_class: Params::DescribeAppAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_app_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the resolution status for the specified resolution identifier for an application
    #       version. If <code>resolutionId</code> is not specified, the current resolution status is
    #       returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAppVersionResourcesResolutionStatusInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :app_version
    #   <p>The version of the application.</p>
    #
    # @option params [String] :resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #
    # @return [Types::DescribeAppVersionResourcesResolutionStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_version_resources_resolution_status(
    #     app_arn: 'appArn', # required
    #     app_version: 'appVersion', # required
    #     resolution_id: 'resolutionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAppVersionResourcesResolutionStatusOutput
    #   resp.data.app_arn #=> String
    #   resp.data.app_version #=> String
    #   resp.data.resolution_id #=> String
    #   resp.data.status #=> String, one of ["Pending", "InProgress", "Failed", "Success"]
    #   resp.data.error_message #=> String
    #
    def describe_app_version_resources_resolution_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAppVersionResourcesResolutionStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAppVersionResourcesResolutionStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAppVersionResourcesResolutionStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeAppVersionResourcesResolutionStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAppVersionResourcesResolutionStatus,
        stubs: @stubs,
        params_class: Params::DescribeAppVersionResourcesResolutionStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_app_version_resources_resolution_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes details about an AWS Resilience Hub </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAppVersionTemplateInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :app_version
    #   <p>The version of the application.</p>
    #
    # @return [Types::DescribeAppVersionTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_version_template(
    #     app_arn: 'appArn', # required
    #     app_version: 'appVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAppVersionTemplateOutput
    #   resp.data.app_arn #=> String
    #   resp.data.app_version #=> String
    #   resp.data.app_template_body #=> String
    #
    def describe_app_version_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAppVersionTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAppVersionTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAppVersionTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeAppVersionTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAppVersionTemplate,
        stubs: @stubs,
        params_class: Params::DescribeAppVersionTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_app_version_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the status of importing resources to an application version.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDraftAppVersionResourcesImportStatusInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @return [Types::DescribeDraftAppVersionResourcesImportStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_draft_app_version_resources_import_status(
    #     app_arn: 'appArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDraftAppVersionResourcesImportStatusOutput
    #   resp.data.app_arn #=> String
    #   resp.data.app_version #=> String
    #   resp.data.status #=> String, one of ["Pending", "InProgress", "Failed", "Success"]
    #   resp.data.status_change_time #=> Time
    #   resp.data.error_message #=> String
    #
    def describe_draft_app_version_resources_import_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDraftAppVersionResourcesImportStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDraftAppVersionResourcesImportStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDraftAppVersionResourcesImportStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeDraftAppVersionResourcesImportStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDraftAppVersionResourcesImportStatus,
        stubs: @stubs,
        params_class: Params::DescribeDraftAppVersionResourcesImportStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_draft_app_version_resources_import_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a specified resiliency policy for an AWS Resilience Hub application. The returned
    #       policy object includes creation time, data location constraints, the Amazon Resource Name
    #       (ARN) for the policy, tags, tier, and more.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeResiliencyPolicyInput}.
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @return [Types::DescribeResiliencyPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resiliency_policy(
    #     policy_arn: 'policyArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeResiliencyPolicyOutput
    #   resp.data.policy #=> Types::ResiliencyPolicy
    #   resp.data.policy.policy_arn #=> String
    #   resp.data.policy.policy_name #=> String
    #   resp.data.policy.policy_description #=> String
    #   resp.data.policy.data_location_constraint #=> String, one of ["AnyLocation", "SameContinent", "SameCountry"]
    #   resp.data.policy.tier #=> String, one of ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"]
    #   resp.data.policy.estimated_cost_tier #=> String, one of ["L1", "L2", "L3", "L4"]
    #   resp.data.policy.policy #=> Hash<String, FailurePolicy>
    #   resp.data.policy.policy['key'] #=> Types::FailurePolicy
    #   resp.data.policy.policy['key'].rto_in_secs #=> Integer
    #   resp.data.policy.policy['key'].rpo_in_secs #=> Integer
    #   resp.data.policy.creation_time #=> Time
    #   resp.data.policy.tags #=> Hash<String, String>
    #   resp.data.policy.tags['key'] #=> String
    #
    def describe_resiliency_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeResiliencyPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeResiliencyPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeResiliencyPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeResiliencyPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeResiliencyPolicy,
        stubs: @stubs,
        params_class: Params::DescribeResiliencyPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_resiliency_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports resources from sources such as a CloudFormation stack, resource-groups, or application
    #       registry app to a draft application version.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportResourcesToDraftAppVersionInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [Array<String>] :source_arns
    #   <p>The Amazon Resource Names (ARNs) for the resources that you want to import.</p>
    #
    # @option params [Array<TerraformSource>] :terraform_sources
    #   <p>
    #         A list of terraform file s3 URLs you need to import.
    #       </p>
    #
    # @return [Types::ImportResourcesToDraftAppVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_resources_to_draft_app_version(
    #     app_arn: 'appArn', # required
    #     source_arns: [
    #       'member'
    #     ],
    #     terraform_sources: [
    #       {
    #         s3_state_file_url: 's3StateFileUrl' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportResourcesToDraftAppVersionOutput
    #   resp.data.app_arn #=> String
    #   resp.data.app_version #=> String
    #   resp.data.source_arns #=> Array<String>
    #   resp.data.source_arns[0] #=> String
    #   resp.data.status #=> String, one of ["Pending", "InProgress", "Failed", "Success"]
    #   resp.data.terraform_sources #=> Array<TerraformSource>
    #   resp.data.terraform_sources[0] #=> Types::TerraformSource
    #   resp.data.terraform_sources[0].s3_state_file_url #=> String
    #
    def import_resources_to_draft_app_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportResourcesToDraftAppVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportResourcesToDraftAppVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportResourcesToDraftAppVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ImportResourcesToDraftAppVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportResourcesToDraftAppVersion,
        stubs: @stubs,
        params_class: Params::ImportResourcesToDraftAppVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_resources_to_draft_app_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the alarm recommendations for a AWS Resilience Hub application.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAlarmRecommendationsInput}.
    #
    # @option params [String] :assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @return [Types::ListAlarmRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_alarm_recommendations(
    #     assessment_arn: 'assessmentArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAlarmRecommendationsOutput
    #   resp.data.alarm_recommendations #=> Array<AlarmRecommendation>
    #   resp.data.alarm_recommendations[0] #=> Types::AlarmRecommendation
    #   resp.data.alarm_recommendations[0].recommendation_id #=> String
    #   resp.data.alarm_recommendations[0].reference_id #=> String
    #   resp.data.alarm_recommendations[0].name #=> String
    #   resp.data.alarm_recommendations[0].description #=> String
    #   resp.data.alarm_recommendations[0].type #=> String, one of ["Metric", "Composite", "Canary", "Logs", "Event"]
    #   resp.data.alarm_recommendations[0].app_component_name #=> String
    #   resp.data.alarm_recommendations[0].items #=> Array<RecommendationItem>
    #   resp.data.alarm_recommendations[0].items[0] #=> Types::RecommendationItem
    #   resp.data.alarm_recommendations[0].items[0].resource_id #=> String
    #   resp.data.alarm_recommendations[0].items[0].target_account_id #=> String
    #   resp.data.alarm_recommendations[0].items[0].target_region #=> String
    #   resp.data.alarm_recommendations[0].items[0].already_implemented #=> Boolean
    #   resp.data.alarm_recommendations[0].prerequisite #=> String
    #   resp.data.next_token #=> String
    #
    def list_alarm_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAlarmRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAlarmRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAlarmRecommendations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListAlarmRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAlarmRecommendations,
        stubs: @stubs,
        params_class: Params::ListAlarmRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_alarm_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the assessments for an AWS Resilience Hub application. You can use request parameters to
    #       refine the results for the response object.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppAssessmentsInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :assessment_name
    #   <p>The name for the assessment.</p>
    #
    # @option params [Array<String>] :assessment_status
    #   <p>The current status of the assessment for the resiliency policy.</p>
    #
    # @option params [String] :compliance_status
    #   <p>The current status of compliance for the resiliency policy.</p>
    #
    # @option params [String] :invoker
    #   <p>Specifies the entity that invoked a specific assessment, either a <code>User</code> or the
    #           <code>System</code>.</p>
    #
    # @option params [Boolean] :reverse_order
    #   <p>The default is to sort by ascending <b>startTime</b>.
    #   To sort by descending <b>startTime</b>, set reverseOrder to <code>true</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @return [Types::ListAppAssessmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_assessments(
    #     app_arn: 'appArn',
    #     assessment_name: 'assessmentName',
    #     assessment_status: [
    #       'Pending' # accepts ["Pending", "InProgress", "Failed", "Success"]
    #     ],
    #     compliance_status: 'PolicyBreached', # accepts ["PolicyBreached", "PolicyMet"]
    #     invoker: 'User', # accepts ["User", "System"]
    #     reverse_order: false,
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppAssessmentsOutput
    #   resp.data.next_token #=> String
    #   resp.data.assessment_summaries #=> Array<AppAssessmentSummary>
    #   resp.data.assessment_summaries[0] #=> Types::AppAssessmentSummary
    #   resp.data.assessment_summaries[0].app_arn #=> String
    #   resp.data.assessment_summaries[0].app_version #=> String
    #   resp.data.assessment_summaries[0].assessment_status #=> String, one of ["Pending", "InProgress", "Failed", "Success"]
    #   resp.data.assessment_summaries[0].invoker #=> String, one of ["User", "System"]
    #   resp.data.assessment_summaries[0].start_time #=> Time
    #   resp.data.assessment_summaries[0].end_time #=> Time
    #   resp.data.assessment_summaries[0].message #=> String
    #   resp.data.assessment_summaries[0].assessment_name #=> String
    #   resp.data.assessment_summaries[0].assessment_arn #=> String
    #   resp.data.assessment_summaries[0].compliance_status #=> String, one of ["PolicyBreached", "PolicyMet"]
    #   resp.data.assessment_summaries[0].cost #=> Types::Cost
    #   resp.data.assessment_summaries[0].cost.amount #=> Float
    #   resp.data.assessment_summaries[0].cost.currency #=> String
    #   resp.data.assessment_summaries[0].cost.frequency #=> String, one of ["Hourly", "Daily", "Monthly", "Yearly"]
    #   resp.data.assessment_summaries[0].resiliency_score #=> Float
    #
    def list_app_assessments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppAssessmentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppAssessmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppAssessments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListAppAssessments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppAssessments,
        stubs: @stubs,
        params_class: Params::ListAppAssessmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_app_assessments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the compliances for an AWS Resilience Hub component.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppComponentCompliancesInput}.
    #
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @return [Types::ListAppComponentCompliancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_component_compliances(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     assessment_arn: 'assessmentArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppComponentCompliancesOutput
    #   resp.data.component_compliances #=> Array<AppComponentCompliance>
    #   resp.data.component_compliances[0] #=> Types::AppComponentCompliance
    #   resp.data.component_compliances[0].cost #=> Types::Cost
    #   resp.data.component_compliances[0].cost.amount #=> Float
    #   resp.data.component_compliances[0].cost.currency #=> String
    #   resp.data.component_compliances[0].cost.frequency #=> String, one of ["Hourly", "Daily", "Monthly", "Yearly"]
    #   resp.data.component_compliances[0].app_component_name #=> String
    #   resp.data.component_compliances[0].compliance #=> Hash<String, DisruptionCompliance>
    #   resp.data.component_compliances[0].compliance['key'] #=> Types::DisruptionCompliance
    #   resp.data.component_compliances[0].compliance['key'].achievable_rto_in_secs #=> Integer
    #   resp.data.component_compliances[0].compliance['key'].current_rto_in_secs #=> Integer
    #   resp.data.component_compliances[0].compliance['key'].rto_reference_id #=> String
    #   resp.data.component_compliances[0].compliance['key'].rto_description #=> String
    #   resp.data.component_compliances[0].compliance['key'].current_rpo_in_secs #=> Integer
    #   resp.data.component_compliances[0].compliance['key'].rpo_reference_id #=> String
    #   resp.data.component_compliances[0].compliance['key'].rpo_description #=> String
    #   resp.data.component_compliances[0].compliance['key'].compliance_status #=> String, one of ["PolicyBreached", "PolicyMet"]
    #   resp.data.component_compliances[0].compliance['key'].achievable_rpo_in_secs #=> Integer
    #   resp.data.component_compliances[0].compliance['key'].message #=> String
    #   resp.data.component_compliances[0].message #=> String
    #   resp.data.component_compliances[0].status #=> String, one of ["PolicyBreached", "PolicyMet"]
    #   resp.data.component_compliances[0].resiliency_score #=> Types::ResiliencyScore
    #   resp.data.component_compliances[0].resiliency_score.score #=> Float
    #   resp.data.component_compliances[0].resiliency_score.disruption_score #=> Hash<String, Float>
    #   resp.data.component_compliances[0].resiliency_score.disruption_score['key'] #=> Float
    #   resp.data.next_token #=> String
    #
    def list_app_component_compliances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppComponentCompliancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppComponentCompliancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppComponentCompliances
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListAppComponentCompliances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppComponentCompliances,
        stubs: @stubs,
        params_class: Params::ListAppComponentCompliancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_app_component_compliances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the recommendations for an AWS Resilience Hub component.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppComponentRecommendationsInput}.
    #
    # @option params [String] :assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @return [Types::ListAppComponentRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_component_recommendations(
    #     assessment_arn: 'assessmentArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppComponentRecommendationsOutput
    #   resp.data.component_recommendations #=> Array<ComponentRecommendation>
    #   resp.data.component_recommendations[0] #=> Types::ComponentRecommendation
    #   resp.data.component_recommendations[0].app_component_name #=> String
    #   resp.data.component_recommendations[0].recommendation_status #=> String, one of ["BreachedUnattainable", "BreachedCanMeet", "MetCanImprove"]
    #   resp.data.component_recommendations[0].config_recommendations #=> Array<ConfigRecommendation>
    #   resp.data.component_recommendations[0].config_recommendations[0] #=> Types::ConfigRecommendation
    #   resp.data.component_recommendations[0].config_recommendations[0].cost #=> Types::Cost
    #   resp.data.component_recommendations[0].config_recommendations[0].cost.amount #=> Float
    #   resp.data.component_recommendations[0].config_recommendations[0].cost.currency #=> String
    #   resp.data.component_recommendations[0].config_recommendations[0].cost.frequency #=> String, one of ["Hourly", "Daily", "Monthly", "Yearly"]
    #   resp.data.component_recommendations[0].config_recommendations[0].app_component_name #=> String
    #   resp.data.component_recommendations[0].config_recommendations[0].compliance #=> Hash<String, DisruptionCompliance>
    #   resp.data.component_recommendations[0].config_recommendations[0].compliance['key'] #=> Types::DisruptionCompliance
    #   resp.data.component_recommendations[0].config_recommendations[0].compliance['key'].achievable_rto_in_secs #=> Integer
    #   resp.data.component_recommendations[0].config_recommendations[0].compliance['key'].current_rto_in_secs #=> Integer
    #   resp.data.component_recommendations[0].config_recommendations[0].compliance['key'].rto_reference_id #=> String
    #   resp.data.component_recommendations[0].config_recommendations[0].compliance['key'].rto_description #=> String
    #   resp.data.component_recommendations[0].config_recommendations[0].compliance['key'].current_rpo_in_secs #=> Integer
    #   resp.data.component_recommendations[0].config_recommendations[0].compliance['key'].rpo_reference_id #=> String
    #   resp.data.component_recommendations[0].config_recommendations[0].compliance['key'].rpo_description #=> String
    #   resp.data.component_recommendations[0].config_recommendations[0].compliance['key'].compliance_status #=> String, one of ["PolicyBreached", "PolicyMet"]
    #   resp.data.component_recommendations[0].config_recommendations[0].compliance['key'].achievable_rpo_in_secs #=> Integer
    #   resp.data.component_recommendations[0].config_recommendations[0].compliance['key'].message #=> String
    #   resp.data.component_recommendations[0].config_recommendations[0].recommendation_compliance #=> Hash<String, RecommendationDisruptionCompliance>
    #   resp.data.component_recommendations[0].config_recommendations[0].recommendation_compliance['key'] #=> Types::RecommendationDisruptionCompliance
    #   resp.data.component_recommendations[0].config_recommendations[0].recommendation_compliance['key'].expected_compliance_status #=> String, one of ["PolicyBreached", "PolicyMet"]
    #   resp.data.component_recommendations[0].config_recommendations[0].recommendation_compliance['key'].expected_rto_in_secs #=> Integer
    #   resp.data.component_recommendations[0].config_recommendations[0].recommendation_compliance['key'].expected_rto_description #=> String
    #   resp.data.component_recommendations[0].config_recommendations[0].recommendation_compliance['key'].expected_rpo_in_secs #=> Integer
    #   resp.data.component_recommendations[0].config_recommendations[0].recommendation_compliance['key'].expected_rpo_description #=> String
    #   resp.data.component_recommendations[0].config_recommendations[0].optimization_type #=> String, one of ["LeastCost", "LeastChange", "BestAZRecovery", "LeastErrors", "BestAttainable"]
    #   resp.data.component_recommendations[0].config_recommendations[0].name #=> String
    #   resp.data.component_recommendations[0].config_recommendations[0].description #=> String
    #   resp.data.component_recommendations[0].config_recommendations[0].suggested_changes #=> Array<String>
    #   resp.data.component_recommendations[0].config_recommendations[0].suggested_changes[0] #=> String
    #   resp.data.component_recommendations[0].config_recommendations[0].ha_architecture #=> String, one of ["MultiSite", "WarmStandby", "PilotLight", "BackupAndRestore", "NoRecoveryPlan"]
    #   resp.data.component_recommendations[0].config_recommendations[0].reference_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_app_component_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppComponentRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppComponentRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppComponentRecommendations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListAppComponentRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppComponentRecommendations,
        stubs: @stubs,
        params_class: Params::ListAppComponentRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_app_component_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists how the resources in an application version are mapped/sourced from. Mappings can be
    #       physical resource identifiers, CloudFormation stacks, resource-groups, or an application registry
    #       app.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppVersionResourceMappingsInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :app_version
    #   <p>The version of the application.</p>
    #
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @return [Types::ListAppVersionResourceMappingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_version_resource_mappings(
    #     app_arn: 'appArn', # required
    #     app_version: 'appVersion', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppVersionResourceMappingsOutput
    #   resp.data.resource_mappings #=> Array<ResourceMapping>
    #   resp.data.resource_mappings[0] #=> Types::ResourceMapping
    #   resp.data.resource_mappings[0].resource_name #=> String
    #   resp.data.resource_mappings[0].logical_stack_name #=> String
    #   resp.data.resource_mappings[0].app_registry_app_name #=> String
    #   resp.data.resource_mappings[0].resource_group_name #=> String
    #   resp.data.resource_mappings[0].mapping_type #=> String, one of ["CfnStack", "Resource", "AppRegistryApp", "ResourceGroup", "Terraform"]
    #   resp.data.resource_mappings[0].physical_resource_id #=> Types::PhysicalResourceId
    #   resp.data.resource_mappings[0].physical_resource_id.identifier #=> String
    #   resp.data.resource_mappings[0].physical_resource_id.type #=> String, one of ["Arn", "Native"]
    #   resp.data.resource_mappings[0].physical_resource_id.aws_region #=> String
    #   resp.data.resource_mappings[0].physical_resource_id.aws_account_id #=> String
    #   resp.data.resource_mappings[0].terraform_source_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_app_version_resource_mappings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppVersionResourceMappingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppVersionResourceMappingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppVersionResourceMappings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListAppVersionResourceMappings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppVersionResourceMappings,
        stubs: @stubs,
        params_class: Params::ListAppVersionResourceMappingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_app_version_resource_mappings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the resources in an application version.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppVersionResourcesInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :app_version
    #   <p>The version of the application.</p>
    #
    # @option params [String] :resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @return [Types::ListAppVersionResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_version_resources(
    #     app_arn: 'appArn', # required
    #     app_version: 'appVersion', # required
    #     resolution_id: 'resolutionId',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppVersionResourcesOutput
    #   resp.data.physical_resources #=> Array<PhysicalResource>
    #   resp.data.physical_resources[0] #=> Types::PhysicalResource
    #   resp.data.physical_resources[0].resource_name #=> String
    #   resp.data.physical_resources[0].logical_resource_id #=> Types::LogicalResourceId
    #   resp.data.physical_resources[0].logical_resource_id.identifier #=> String
    #   resp.data.physical_resources[0].logical_resource_id.logical_stack_name #=> String
    #   resp.data.physical_resources[0].logical_resource_id.resource_group_name #=> String
    #   resp.data.physical_resources[0].logical_resource_id.terraform_source_name #=> String
    #   resp.data.physical_resources[0].physical_resource_id #=> Types::PhysicalResourceId
    #   resp.data.physical_resources[0].physical_resource_id.identifier #=> String
    #   resp.data.physical_resources[0].physical_resource_id.type #=> String, one of ["Arn", "Native"]
    #   resp.data.physical_resources[0].physical_resource_id.aws_region #=> String
    #   resp.data.physical_resources[0].physical_resource_id.aws_account_id #=> String
    #   resp.data.physical_resources[0].resource_type #=> String
    #   resp.data.physical_resources[0].app_components #=> Array<AppComponent>
    #   resp.data.physical_resources[0].app_components[0] #=> Types::AppComponent
    #   resp.data.physical_resources[0].app_components[0].name #=> String
    #   resp.data.physical_resources[0].app_components[0].type #=> String
    #   resp.data.resolution_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_app_version_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppVersionResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppVersionResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppVersionResources
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListAppVersionResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppVersionResources,
        stubs: @stubs,
        params_class: Params::ListAppVersionResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_app_version_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the different versions for the Resilience Hub applications.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppVersionsInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @return [Types::ListAppVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_versions(
    #     app_arn: 'appArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppVersionsOutput
    #   resp.data.app_versions #=> Array<AppVersionSummary>
    #   resp.data.app_versions[0] #=> Types::AppVersionSummary
    #   resp.data.app_versions[0].app_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_app_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppVersions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListAppVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppVersions,
        stubs: @stubs,
        params_class: Params::ListAppVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_app_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists your Resilience Hub applications.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppsInput}.
    #
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :name
    #   <p>The name for the one of the listed applications.</p>
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @return [Types::ListAppsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_apps(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     name: 'name',
    #     app_arn: 'appArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppsOutput
    #   resp.data.app_summaries #=> Array<AppSummary>
    #   resp.data.app_summaries[0] #=> Types::AppSummary
    #   resp.data.app_summaries[0].app_arn #=> String
    #   resp.data.app_summaries[0].name #=> String
    #   resp.data.app_summaries[0].description #=> String
    #   resp.data.app_summaries[0].creation_time #=> Time
    #   resp.data.app_summaries[0].compliance_status #=> String, one of ["PolicyBreached", "PolicyMet", "NotAssessed", "ChangesDetected"]
    #   resp.data.app_summaries[0].resiliency_score #=> Float
    #   resp.data.app_summaries[0].assessment_schedule #=> String, one of ["Disabled", "Daily"]
    #   resp.data.next_token #=> String
    #
    def list_apps(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApps
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListApps
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApps,
        stubs: @stubs,
        params_class: Params::ListAppsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_apps
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the recommendation templates for the Resilience Hub applications.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRecommendationTemplatesInput}.
    #
    # @option params [String] :assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [Boolean] :reverse_order
    #   <p>The default is to sort by ascending <b>startTime</b>.
    #   To sort by descending <b>startTime</b>, set reverseOrder to <code>true</code>.</p>
    #
    # @option params [Array<String>] :status
    #   <p>The status of the action.</p>
    #
    # @option params [String] :recommendation_template_arn
    #   <p>The Amazon Resource Name (ARN) for a recommendation template.</p>
    #
    # @option params [String] :name
    #   <p>The name for one of the listed recommendation templates.</p>
    #
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @return [Types::ListRecommendationTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendation_templates(
    #     assessment_arn: 'assessmentArn', # required
    #     reverse_order: false,
    #     status: [
    #       'Pending' # accepts ["Pending", "InProgress", "Failed", "Success"]
    #     ],
    #     recommendation_template_arn: 'recommendationTemplateArn',
    #     name: 'name',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRecommendationTemplatesOutput
    #   resp.data.next_token #=> String
    #   resp.data.recommendation_templates #=> Array<RecommendationTemplate>
    #   resp.data.recommendation_templates[0] #=> Types::RecommendationTemplate
    #   resp.data.recommendation_templates[0].templates_location #=> Types::S3Location
    #   resp.data.recommendation_templates[0].templates_location.bucket #=> String
    #   resp.data.recommendation_templates[0].templates_location.prefix #=> String
    #   resp.data.recommendation_templates[0].assessment_arn #=> String
    #   resp.data.recommendation_templates[0].app_arn #=> String
    #   resp.data.recommendation_templates[0].recommendation_ids #=> Array<String>
    #   resp.data.recommendation_templates[0].recommendation_ids[0] #=> String
    #   resp.data.recommendation_templates[0].recommendation_types #=> Array<String>
    #   resp.data.recommendation_templates[0].recommendation_types[0] #=> String, one of ["Alarm", "Sop", "Test"]
    #   resp.data.recommendation_templates[0].format #=> String, one of ["CfnYaml", "CfnJson"]
    #   resp.data.recommendation_templates[0].recommendation_template_arn #=> String
    #   resp.data.recommendation_templates[0].message #=> String
    #   resp.data.recommendation_templates[0].status #=> String, one of ["Pending", "InProgress", "Failed", "Success"]
    #   resp.data.recommendation_templates[0].name #=> String
    #   resp.data.recommendation_templates[0].start_time #=> Time
    #   resp.data.recommendation_templates[0].end_time #=> Time
    #   resp.data.recommendation_templates[0].tags #=> Hash<String, String>
    #   resp.data.recommendation_templates[0].tags['key'] #=> String
    #   resp.data.recommendation_templates[0].needs_replacements #=> Boolean
    #
    def list_recommendation_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRecommendationTemplatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRecommendationTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRecommendationTemplates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListRecommendationTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRecommendationTemplates,
        stubs: @stubs,
        params_class: Params::ListRecommendationTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_recommendation_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the resiliency policies for the Resilience Hub applications.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResiliencyPoliciesInput}.
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy</p>
    #
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @return [Types::ListResiliencyPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resiliency_policies(
    #     policy_name: 'policyName',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResiliencyPoliciesOutput
    #   resp.data.resiliency_policies #=> Array<ResiliencyPolicy>
    #   resp.data.resiliency_policies[0] #=> Types::ResiliencyPolicy
    #   resp.data.resiliency_policies[0].policy_arn #=> String
    #   resp.data.resiliency_policies[0].policy_name #=> String
    #   resp.data.resiliency_policies[0].policy_description #=> String
    #   resp.data.resiliency_policies[0].data_location_constraint #=> String, one of ["AnyLocation", "SameContinent", "SameCountry"]
    #   resp.data.resiliency_policies[0].tier #=> String, one of ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"]
    #   resp.data.resiliency_policies[0].estimated_cost_tier #=> String, one of ["L1", "L2", "L3", "L4"]
    #   resp.data.resiliency_policies[0].policy #=> Hash<String, FailurePolicy>
    #   resp.data.resiliency_policies[0].policy['key'] #=> Types::FailurePolicy
    #   resp.data.resiliency_policies[0].policy['key'].rto_in_secs #=> Integer
    #   resp.data.resiliency_policies[0].policy['key'].rpo_in_secs #=> Integer
    #   resp.data.resiliency_policies[0].creation_time #=> Time
    #   resp.data.resiliency_policies[0].tags #=> Hash<String, String>
    #   resp.data.resiliency_policies[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_resiliency_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResiliencyPoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResiliencyPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResiliencyPolicies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListResiliencyPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResiliencyPolicies,
        stubs: @stubs,
        params_class: Params::ListResiliencyPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resiliency_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the standard operating procedure (SOP) recommendations for the Resilience Hub
    #       applications.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSopRecommendationsInput}.
    #
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @return [Types::ListSopRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sop_recommendations(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     assessment_arn: 'assessmentArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSopRecommendationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.sop_recommendations #=> Array<SopRecommendation>
    #   resp.data.sop_recommendations[0] #=> Types::SopRecommendation
    #   resp.data.sop_recommendations[0].service_type #=> String, one of ["SSM"]
    #   resp.data.sop_recommendations[0].app_component_name #=> String
    #   resp.data.sop_recommendations[0].description #=> String
    #   resp.data.sop_recommendations[0].recommendation_id #=> String
    #   resp.data.sop_recommendations[0].name #=> String
    #   resp.data.sop_recommendations[0].items #=> Array<RecommendationItem>
    #   resp.data.sop_recommendations[0].items[0] #=> Types::RecommendationItem
    #   resp.data.sop_recommendations[0].items[0].resource_id #=> String
    #   resp.data.sop_recommendations[0].items[0].target_account_id #=> String
    #   resp.data.sop_recommendations[0].items[0].target_region #=> String
    #   resp.data.sop_recommendations[0].items[0].already_implemented #=> Boolean
    #   resp.data.sop_recommendations[0].reference_id #=> String
    #   resp.data.sop_recommendations[0].prerequisite #=> String
    #
    def list_sop_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSopRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSopRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSopRecommendations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListSopRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSopRecommendations,
        stubs: @stubs,
        params_class: Params::ListSopRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_sop_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the suggested resiliency policies for the Resilience Hub applications.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSuggestedResiliencyPoliciesInput}.
    #
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @return [Types::ListSuggestedResiliencyPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_suggested_resiliency_policies(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSuggestedResiliencyPoliciesOutput
    #   resp.data.resiliency_policies #=> Array<ResiliencyPolicy>
    #   resp.data.resiliency_policies[0] #=> Types::ResiliencyPolicy
    #   resp.data.resiliency_policies[0].policy_arn #=> String
    #   resp.data.resiliency_policies[0].policy_name #=> String
    #   resp.data.resiliency_policies[0].policy_description #=> String
    #   resp.data.resiliency_policies[0].data_location_constraint #=> String, one of ["AnyLocation", "SameContinent", "SameCountry"]
    #   resp.data.resiliency_policies[0].tier #=> String, one of ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"]
    #   resp.data.resiliency_policies[0].estimated_cost_tier #=> String, one of ["L1", "L2", "L3", "L4"]
    #   resp.data.resiliency_policies[0].policy #=> Hash<String, FailurePolicy>
    #   resp.data.resiliency_policies[0].policy['key'] #=> Types::FailurePolicy
    #   resp.data.resiliency_policies[0].policy['key'].rto_in_secs #=> Integer
    #   resp.data.resiliency_policies[0].policy['key'].rpo_in_secs #=> Integer
    #   resp.data.resiliency_policies[0].creation_time #=> Time
    #   resp.data.resiliency_policies[0].tags #=> Hash<String, String>
    #   resp.data.resiliency_policies[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_suggested_resiliency_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSuggestedResiliencyPoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSuggestedResiliencyPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSuggestedResiliencyPolicies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListSuggestedResiliencyPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSuggestedResiliencyPolicies,
        stubs: @stubs,
        params_class: Params::ListSuggestedResiliencyPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_suggested_resiliency_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for your resources in your Resilience Hub applications.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for a specific resource in your Resilience Hub
    #         application.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Lists the test recommendations for the Resilience Hub application.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTestRecommendationsInput}.
    #
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @option params [String] :assessment_arn
    #   <p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @return [Types::ListTestRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_recommendations(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     assessment_arn: 'assessmentArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTestRecommendationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.test_recommendations #=> Array<TestRecommendation>
    #   resp.data.test_recommendations[0] #=> Types::TestRecommendation
    #   resp.data.test_recommendations[0].recommendation_id #=> String
    #   resp.data.test_recommendations[0].reference_id #=> String
    #   resp.data.test_recommendations[0].app_component_name #=> String
    #   resp.data.test_recommendations[0].name #=> String
    #   resp.data.test_recommendations[0].intent #=> String
    #   resp.data.test_recommendations[0].risk #=> String, one of ["Small", "Medium", "High"]
    #   resp.data.test_recommendations[0].type #=> String, one of ["Software", "Hardware", "AZ", "Region"]
    #   resp.data.test_recommendations[0].description #=> String
    #   resp.data.test_recommendations[0].items #=> Array<RecommendationItem>
    #   resp.data.test_recommendations[0].items[0] #=> Types::RecommendationItem
    #   resp.data.test_recommendations[0].items[0].resource_id #=> String
    #   resp.data.test_recommendations[0].items[0].target_account_id #=> String
    #   resp.data.test_recommendations[0].items[0].target_region #=> String
    #   resp.data.test_recommendations[0].items[0].already_implemented #=> Boolean
    #   resp.data.test_recommendations[0].prerequisite #=> String
    #   resp.data.test_recommendations[0].depends_on_alarms #=> Array<String>
    #   resp.data.test_recommendations[0].depends_on_alarms[0] #=> String
    #
    def list_test_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTestRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTestRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTestRecommendations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListTestRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTestRecommendations,
        stubs: @stubs,
        params_class: Params::ListTestRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_test_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the resources that are not currently supported in AWS Resilience Hub. An unsupported
    #       resource is a resource that exists in the object that was used to create an app, but is not
    #       supported by Resilience Hub.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUnsupportedAppVersionResourcesInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :app_version
    #   <p>The version of the application.</p>
    #
    # @option params [String] :resolution_id
    #   <p>The identifier for a specific resolution.</p>
    #
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the specified
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    #
    # @return [Types::ListUnsupportedAppVersionResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_unsupported_app_version_resources(
    #     app_arn: 'appArn', # required
    #     app_version: 'appVersion', # required
    #     resolution_id: 'resolutionId',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUnsupportedAppVersionResourcesOutput
    #   resp.data.unsupported_resources #=> Array<UnsupportedResource>
    #   resp.data.unsupported_resources[0] #=> Types::UnsupportedResource
    #   resp.data.unsupported_resources[0].logical_resource_id #=> Types::LogicalResourceId
    #   resp.data.unsupported_resources[0].logical_resource_id.identifier #=> String
    #   resp.data.unsupported_resources[0].logical_resource_id.logical_stack_name #=> String
    #   resp.data.unsupported_resources[0].logical_resource_id.resource_group_name #=> String
    #   resp.data.unsupported_resources[0].logical_resource_id.terraform_source_name #=> String
    #   resp.data.unsupported_resources[0].physical_resource_id #=> Types::PhysicalResourceId
    #   resp.data.unsupported_resources[0].physical_resource_id.identifier #=> String
    #   resp.data.unsupported_resources[0].physical_resource_id.type #=> String, one of ["Arn", "Native"]
    #   resp.data.unsupported_resources[0].physical_resource_id.aws_region #=> String
    #   resp.data.unsupported_resources[0].physical_resource_id.aws_account_id #=> String
    #   resp.data.unsupported_resources[0].resource_type #=> String
    #   resp.data.resolution_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_unsupported_app_version_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUnsupportedAppVersionResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUnsupportedAppVersionResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUnsupportedAppVersionResources
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListUnsupportedAppVersionResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUnsupportedAppVersionResources,
        stubs: @stubs,
        params_class: Params::ListUnsupportedAppVersionResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_unsupported_app_version_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Publishes a new version of a specific Resilience Hub application.</p>
    #
    # @param [Hash] params
    #   See {Types::PublishAppVersionInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @return [Types::PublishAppVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_app_version(
    #     app_arn: 'appArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PublishAppVersionOutput
    #   resp.data.app_arn #=> String
    #   resp.data.app_version #=> String
    #
    def publish_app_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PublishAppVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PublishAppVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PublishAppVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::PublishAppVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PublishAppVersion,
        stubs: @stubs,
        params_class: Params::PublishAppVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :publish_app_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates the app template for a draft version of a Resilience Hub app.</p>
    #
    # @param [Hash] params
    #   See {Types::PutDraftAppVersionTemplateInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :app_template_body
    #   <p>A JSON string that contains the body of the app template.</p>
    #
    # @return [Types::PutDraftAppVersionTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_draft_app_version_template(
    #     app_arn: 'appArn', # required
    #     app_template_body: 'appTemplateBody' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutDraftAppVersionTemplateOutput
    #   resp.data.app_arn #=> String
    #   resp.data.app_version #=> String
    #
    def put_draft_app_version_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutDraftAppVersionTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutDraftAppVersionTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutDraftAppVersionTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::PutDraftAppVersionTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutDraftAppVersionTemplate,
        stubs: @stubs,
        params_class: Params::PutDraftAppVersionTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_draft_app_version_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes resource mappings from a draft application version.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveDraftAppVersionResourceMappingsInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [Array<String>] :resource_names
    #   <p>The names of the resources to remove from the resource mappings.</p>
    #
    # @option params [Array<String>] :logical_stack_names
    #   <p>The names of the CloudFormation stacks to remove from the resource mappings.</p>
    #
    # @option params [Array<String>] :app_registry_app_names
    #   <p>The names of the registered applications to remove from the resource mappings.</p>
    #
    # @option params [Array<String>] :resource_group_names
    #   <p>The names of the resource groups to remove from the resource mappings.</p>
    #
    # @option params [Array<String>] :terraform_source_names
    #   <p>
    #
    #       </p>
    #
    # @return [Types::RemoveDraftAppVersionResourceMappingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_draft_app_version_resource_mappings(
    #     app_arn: 'appArn', # required
    #     resource_names: [
    #       'member'
    #     ],
    #     logical_stack_names: [
    #       'member'
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveDraftAppVersionResourceMappingsOutput
    #   resp.data.app_arn #=> String
    #   resp.data.app_version #=> String
    #
    def remove_draft_app_version_resource_mappings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveDraftAppVersionResourceMappingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveDraftAppVersionResourceMappingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveDraftAppVersionResourceMappings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::RemoveDraftAppVersionResourceMappings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveDraftAppVersionResourceMappings,
        stubs: @stubs,
        params_class: Params::RemoveDraftAppVersionResourceMappingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_draft_app_version_resource_mappings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resolves the resources for an application version.</p>
    #
    # @param [Hash] params
    #   See {Types::ResolveAppVersionResourcesInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :app_version
    #   <p>The version of the application.</p>
    #
    # @return [Types::ResolveAppVersionResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_app_version_resources(
    #     app_arn: 'appArn', # required
    #     app_version: 'appVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResolveAppVersionResourcesOutput
    #   resp.data.app_arn #=> String
    #   resp.data.app_version #=> String
    #   resp.data.resolution_id #=> String
    #   resp.data.status #=> String, one of ["Pending", "InProgress", "Failed", "Success"]
    #
    def resolve_app_version_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResolveAppVersionResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResolveAppVersionResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResolveAppVersionResources
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ResolveAppVersionResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResolveAppVersionResources,
        stubs: @stubs,
        params_class: Params::ResolveAppVersionResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resolve_app_version_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new application assessment for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::StartAppAssessmentInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :app_version
    #   <p>The version of the application.</p>
    #
    # @option params [String] :assessment_name
    #   <p>The name for the assessment.</p>
    #
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters.
    #   You should not reuse the same client token for other API requests.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key/value pair.</p>
    #
    # @return [Types::StartAppAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_app_assessment(
    #     app_arn: 'appArn', # required
    #     app_version: 'appVersion', # required
    #     assessment_name: 'assessmentName', # required
    #     client_token: 'clientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartAppAssessmentOutput
    #   resp.data.assessment #=> Types::AppAssessment
    #   resp.data.assessment.app_arn #=> String
    #   resp.data.assessment.app_version #=> String
    #   resp.data.assessment.invoker #=> String, one of ["User", "System"]
    #   resp.data.assessment.cost #=> Types::Cost
    #   resp.data.assessment.cost.amount #=> Float
    #   resp.data.assessment.cost.currency #=> String
    #   resp.data.assessment.cost.frequency #=> String, one of ["Hourly", "Daily", "Monthly", "Yearly"]
    #   resp.data.assessment.resiliency_score #=> Types::ResiliencyScore
    #   resp.data.assessment.resiliency_score.score #=> Float
    #   resp.data.assessment.resiliency_score.disruption_score #=> Hash<String, Float>
    #   resp.data.assessment.resiliency_score.disruption_score['key'] #=> Float
    #   resp.data.assessment.compliance #=> Hash<String, DisruptionCompliance>
    #   resp.data.assessment.compliance['key'] #=> Types::DisruptionCompliance
    #   resp.data.assessment.compliance['key'].achievable_rto_in_secs #=> Integer
    #   resp.data.assessment.compliance['key'].current_rto_in_secs #=> Integer
    #   resp.data.assessment.compliance['key'].rto_reference_id #=> String
    #   resp.data.assessment.compliance['key'].rto_description #=> String
    #   resp.data.assessment.compliance['key'].current_rpo_in_secs #=> Integer
    #   resp.data.assessment.compliance['key'].rpo_reference_id #=> String
    #   resp.data.assessment.compliance['key'].rpo_description #=> String
    #   resp.data.assessment.compliance['key'].compliance_status #=> String, one of ["PolicyBreached", "PolicyMet"]
    #   resp.data.assessment.compliance['key'].achievable_rpo_in_secs #=> Integer
    #   resp.data.assessment.compliance['key'].message #=> String
    #   resp.data.assessment.compliance_status #=> String, one of ["PolicyBreached", "PolicyMet"]
    #   resp.data.assessment.assessment_status #=> String, one of ["Pending", "InProgress", "Failed", "Success"]
    #   resp.data.assessment.start_time #=> Time
    #   resp.data.assessment.end_time #=> Time
    #   resp.data.assessment.message #=> String
    #   resp.data.assessment.assessment_name #=> String
    #   resp.data.assessment.assessment_arn #=> String
    #   resp.data.assessment.policy #=> Types::ResiliencyPolicy
    #   resp.data.assessment.policy.policy_arn #=> String
    #   resp.data.assessment.policy.policy_name #=> String
    #   resp.data.assessment.policy.policy_description #=> String
    #   resp.data.assessment.policy.data_location_constraint #=> String, one of ["AnyLocation", "SameContinent", "SameCountry"]
    #   resp.data.assessment.policy.tier #=> String, one of ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"]
    #   resp.data.assessment.policy.estimated_cost_tier #=> String, one of ["L1", "L2", "L3", "L4"]
    #   resp.data.assessment.policy.policy #=> Hash<String, FailurePolicy>
    #   resp.data.assessment.policy.policy['key'] #=> Types::FailurePolicy
    #   resp.data.assessment.policy.policy['key'].rto_in_secs #=> Integer
    #   resp.data.assessment.policy.policy['key'].rpo_in_secs #=> Integer
    #   resp.data.assessment.policy.creation_time #=> Time
    #   resp.data.assessment.policy.tags #=> Hash<String, String>
    #   resp.data.assessment.policy.tags['key'] #=> String
    #   resp.data.assessment.tags #=> Hash<String, String>
    #   resp.data.assessment.resource_errors_details #=> Types::ResourceErrorsDetails
    #   resp.data.assessment.resource_errors_details.resource_errors #=> Array<ResourceError>
    #   resp.data.assessment.resource_errors_details.resource_errors[0] #=> Types::ResourceError
    #   resp.data.assessment.resource_errors_details.resource_errors[0].logical_resource_id #=> String
    #   resp.data.assessment.resource_errors_details.resource_errors[0].physical_resource_id #=> String
    #   resp.data.assessment.resource_errors_details.resource_errors[0].reason #=> String
    #   resp.data.assessment.resource_errors_details.has_more_errors #=> Boolean
    #
    def start_app_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartAppAssessmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartAppAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartAppAssessment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::StartAppAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartAppAssessment,
        stubs: @stubs,
        params_class: Params::StartAppAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_app_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies one or more tags to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the resource. Each tag consists of a key/value pair.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Removes one or more tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Updates an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAppInput}.
    #
    # @option params [String] :app_arn
    #   <p>The Amazon Resource Name (ARN) of the application. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :description
    #   <p>The optional description for an app.</p>
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [Boolean] :clear_resiliency_policy_arn
    #   <p>Specifies if the resiliency policy ARN should be cleared.</p>
    #
    # @option params [String] :assessment_schedule
    #   <p>
    #         Assessment execution schedule with 'Daily' or 'Disabled' values.
    #       </p>
    #
    # @return [Types::UpdateAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app(
    #     app_arn: 'appArn', # required
    #     description: 'description',
    #     policy_arn: 'policyArn',
    #     clear_resiliency_policy_arn: false,
    #     assessment_schedule: 'Disabled' # accepts ["Disabled", "Daily"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAppOutput
    #   resp.data.app #=> Types::App
    #   resp.data.app.app_arn #=> String
    #   resp.data.app.name #=> String
    #   resp.data.app.description #=> String
    #   resp.data.app.policy_arn #=> String
    #   resp.data.app.creation_time #=> Time
    #   resp.data.app.status #=> String, one of ["Active", "Deleting"]
    #   resp.data.app.compliance_status #=> String, one of ["PolicyBreached", "PolicyMet", "NotAssessed", "ChangesDetected"]
    #   resp.data.app.last_app_compliance_evaluation_time #=> Time
    #   resp.data.app.resiliency_score #=> Float
    #   resp.data.app.last_resiliency_score_evaluation_time #=> Time
    #   resp.data.app.tags #=> Hash<String, String>
    #   resp.data.app.tags['key'] #=> String
    #   resp.data.app.assessment_schedule #=> String, one of ["Disabled", "Daily"]
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Updates a resiliency policy.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResiliencyPolicyInput}.
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is:
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs,
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the
    #                       <i>AWS General Reference</i>.</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy</p>
    #
    # @option params [String] :policy_description
    #   <p>The description for the policy.</p>
    #
    # @option params [String] :data_location_constraint
    #   <p>Specifies a high-level geographical location constraint for where your resilience policy
    #         data can be stored.</p>
    #
    # @option params [String] :tier
    #   <p>The tier for this resiliency policy, ranging from the highest severity
    #           (<code>MissionCritical</code>) to lowest (<code>NonCritical</code>).</p>
    #
    # @option params [Hash<String, FailurePolicy>] :policy
    #   <p>The type of resiliency policy to be created, including the recovery time objective (RTO)
    #         and recovery point objective (RPO) in seconds.</p>
    #
    # @return [Types::UpdateResiliencyPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resiliency_policy(
    #     policy_arn: 'policyArn', # required
    #     policy_name: 'policyName',
    #     policy_description: 'policyDescription',
    #     data_location_constraint: 'AnyLocation', # accepts ["AnyLocation", "SameContinent", "SameCountry"]
    #     tier: 'MissionCritical', # accepts ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"]
    #     policy: {
    #       'key' => {
    #         rto_in_secs: 1, # required
    #         rpo_in_secs: 1 # required
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResiliencyPolicyOutput
    #   resp.data.policy #=> Types::ResiliencyPolicy
    #   resp.data.policy.policy_arn #=> String
    #   resp.data.policy.policy_name #=> String
    #   resp.data.policy.policy_description #=> String
    #   resp.data.policy.data_location_constraint #=> String, one of ["AnyLocation", "SameContinent", "SameCountry"]
    #   resp.data.policy.tier #=> String, one of ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical"]
    #   resp.data.policy.estimated_cost_tier #=> String, one of ["L1", "L2", "L3", "L4"]
    #   resp.data.policy.policy #=> Hash<String, FailurePolicy>
    #   resp.data.policy.policy['key'] #=> Types::FailurePolicy
    #   resp.data.policy.policy['key'].rto_in_secs #=> Integer
    #   resp.data.policy.policy['key'].rpo_in_secs #=> Integer
    #   resp.data.policy.creation_time #=> Time
    #   resp.data.policy.tags #=> Hash<String, String>
    #   resp.data.policy.tags['key'] #=> String
    #
    def update_resiliency_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResiliencyPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResiliencyPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResiliencyPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateResiliencyPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResiliencyPolicy,
        stubs: @stubs,
        params_class: Params::UpdateResiliencyPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resiliency_policy
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
