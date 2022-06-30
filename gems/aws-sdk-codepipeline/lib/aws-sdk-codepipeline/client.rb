# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::CodePipeline
  # An API client for CodePipeline_20150709
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS CodePipeline</fullname>
  #         <p>
  #             <b>Overview</b>
  #         </p>
  #         <p>This is the AWS CodePipeline API Reference. This guide provides descriptions of the
  #             actions and data types for AWS CodePipeline. Some functionality for your pipeline can
  #             only be configured through the API. For more information, see the <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html">AWS
  #                 CodePipeline User Guide</a>.</p>
  #         <p>You can use the AWS CodePipeline API to work with pipelines, stages, actions, and
  #             transitions.</p>
  #         <p>
  #             <i>Pipelines</i> are models of automated release processes. Each pipeline
  #             is uniquely named, and consists of stages, actions, and transitions. </p>
  #         <p>You can work with pipelines by calling:</p>
  #         <ul>
  #             <li>
  #                 <p>
  #                     <a>CreatePipeline</a>, which creates a uniquely named
  #                     pipeline.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>DeletePipeline</a>, which deletes the specified
  #                     pipeline.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>GetPipeline</a>, which returns information about the pipeline
  #                     structure and pipeline metadata, including the pipeline Amazon Resource Name
  #                     (ARN).</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>GetPipelineExecution</a>, which returns information about a
  #                     specific execution of a pipeline.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>GetPipelineState</a>, which returns information about the current
  #                     state of the stages and actions of a pipeline.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>ListActionExecutions</a>, which returns action-level details
  #                     for past executions. The details include full stage and action-level details,
  #                     including individual action duration, status, any errors that occurred during
  #                     the execution, and input and output artifact location details.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>ListPipelines</a>, which gets a summary of all of the pipelines
  #                     associated with your account.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>ListPipelineExecutions</a>, which gets a summary of the most
  #                     recent executions for a pipeline.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>StartPipelineExecution</a>, which runs the most recent revision of
  #                     an artifact through the pipeline.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>StopPipelineExecution</a>, which stops the specified pipeline
  #                     execution from continuing through the pipeline.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>UpdatePipeline</a>, which updates a pipeline with edits or changes
  #                     to the structure of the pipeline.</p>
  #             </li>
  #          </ul>
  #         <p>Pipelines include <i>stages</i>. Each stage contains one or more
  #             actions that must complete before the next stage begins. A stage results in success or
  #             failure. If a stage fails, the pipeline stops at that stage and remains stopped until
  #             either a new version of an artifact appears in the source location, or a user takes
  #             action to rerun the most recent artifact through the pipeline. You can call <a>GetPipelineState</a>, which displays the status of a pipeline, including the
  #             status of stages in the pipeline, or <a>GetPipeline</a>, which returns the
  #             entire structure of the pipeline, including the stages of that pipeline. For more
  #             information about the structure of stages and actions, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-structure.html">AWS CodePipeline
  #                 Pipeline Structure Reference</a>.</p>
  #         <p>Pipeline stages include <i>actions</i> that are categorized into
  #             categories such as source or build actions performed in a stage of a pipeline. For
  #             example, you can use a source action to import artifacts into a pipeline from a source
  #             such as Amazon S3. Like stages, you do not work with actions directly in most cases, but
  #             you do define and interact with actions when working with pipeline operations such as
  #                 <a>CreatePipeline</a> and <a>GetPipelineState</a>. Valid
  #             action categories are:</p>
  #         <ul>
  #             <li>
  #                 <p>Source</p>
  #             </li>
  #             <li>
  #                 <p>Build</p>
  #             </li>
  #             <li>
  #                 <p>Test</p>
  #             </li>
  #             <li>
  #                 <p>Deploy</p>
  #             </li>
  #             <li>
  #                 <p>Approval</p>
  #             </li>
  #             <li>
  #                 <p>Invoke</p>
  #             </li>
  #          </ul>
  #         <p>Pipelines also include <i>transitions</i>, which allow the transition
  #             of artifacts from one stage to the next in a pipeline after the actions in one stage
  #             complete.</p>
  #         <p>You can work with transitions by calling:</p>
  #         <ul>
  #             <li>
  #                 <p>
  #                     <a>DisableStageTransition</a>, which prevents artifacts from
  #                     transitioning to the next stage in a pipeline.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>EnableStageTransition</a>, which enables transition of artifacts
  #                     between stages in a pipeline. </p>
  #             </li>
  #          </ul>
  #         <p>
  #             <b>Using the API to integrate with AWS CodePipeline</b>
  #         </p>
  #         <p>For third-party integrators or developers who want to create their own integrations
  #             with AWS CodePipeline, the expected sequence varies from the standard API user. To
  #             integrate with AWS CodePipeline, developers need to work with the following
  #             items:</p>
  #         <p>
  #             <b>Jobs</b>, which are instances of an action. For
  #             example, a job for a source action might import a revision of an artifact from a source. </p>
  #         <p>You can work with jobs by calling:</p>
  #         <ul>
  #             <li>
  #                 <p>
  #                     <a>AcknowledgeJob</a>, which confirms whether a job worker has
  #                     received the specified job.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>GetJobDetails</a>, which returns the details of a job.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>PollForJobs</a>, which determines whether there are any jobs to
  #                     act on.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>PutJobFailureResult</a>, which provides details of a job failure.
  #                 </p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>PutJobSuccessResult</a>, which provides details of a job
  #                     success.</p>
  #             </li>
  #          </ul>
  #         <p>
  #             <b>Third party jobs</b>, which are instances of an action
  #             created by a partner action and integrated into AWS CodePipeline. Partner actions are
  #             created by members of the AWS Partner Network.</p>
  #         <p>You can work with third party jobs by calling:</p>
  #         <ul>
  #             <li>
  #                 <p>
  #                     <a>AcknowledgeThirdPartyJob</a>, which confirms whether a job worker
  #                     has received the specified job.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>GetThirdPartyJobDetails</a>, which requests the details of a job
  #                     for a partner action.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>PollForThirdPartyJobs</a>, which determines whether there are any
  #                     jobs to act on. </p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>PutThirdPartyJobFailureResult</a>, which provides details of a job
  #                     failure.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                     <a>PutThirdPartyJobSuccessResult</a>, which provides details of a job
  #                     success.</p>
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
    def initialize(config = AWS::SDK::CodePipeline::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Returns information about a specified job and whether that job has been received by
    #             the job worker. Used for custom actions only.</p>
    #
    # @param [Hash] params
    #   See {Types::AcknowledgeJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique system-generated ID of the job for which you want to confirm
    #               receipt.</p>
    #
    # @option params [String] :nonce
    #   <p>A system-generated random number that AWS CodePipeline uses to ensure that the job
    #               is being worked on by only one job worker. Get this number from the response of the
    #                   <a>PollForJobs</a> request that returned this job.</p>
    #
    # @return [Types::AcknowledgeJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.acknowledge_job(
    #     job_id: 'jobId', # required
    #     nonce: 'nonce' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcknowledgeJobOutput
    #   resp.data.status #=> String, one of ["Created", "Queued", "Dispatched", "InProgress", "TimedOut", "Succeeded", "Failed"]
    #
    def acknowledge_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcknowledgeJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcknowledgeJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcknowledgeJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNonceException, Errors::JobNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::AcknowledgeJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcknowledgeJob,
        stubs: @stubs,
        params_class: Params::AcknowledgeJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :acknowledge_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Confirms a job worker has received the specified job. Used for partner actions
    #             only.</p>
    #
    # @param [Hash] params
    #   See {Types::AcknowledgeThirdPartyJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique system-generated ID of the job.</p>
    #
    # @option params [String] :nonce
    #   <p>A system-generated random number that AWS CodePipeline uses to ensure that the job
    #               is being worked on by only one job worker. Get this number from the response to a <a>GetThirdPartyJobDetails</a> request.</p>
    #
    # @option params [String] :client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    #
    # @return [Types::AcknowledgeThirdPartyJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.acknowledge_third_party_job(
    #     job_id: 'jobId', # required
    #     nonce: 'nonce', # required
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcknowledgeThirdPartyJobOutput
    #   resp.data.status #=> String, one of ["Created", "Queued", "Dispatched", "InProgress", "TimedOut", "Succeeded", "Failed"]
    #
    def acknowledge_third_party_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcknowledgeThirdPartyJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcknowledgeThirdPartyJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcknowledgeThirdPartyJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClientTokenException, Errors::InvalidNonceException, Errors::JobNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::AcknowledgeThirdPartyJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcknowledgeThirdPartyJob,
        stubs: @stubs,
        params_class: Params::AcknowledgeThirdPartyJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :acknowledge_third_party_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new custom action that can be used in all pipelines associated with the
    #             AWS account. Only used for custom actions.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCustomActionTypeInput}.
    #
    # @option params [String] :category
    #   <p>The category of the custom action, such as a build action or a test
    #               action.</p>
    #
    # @option params [String] :provider
    #   <p>The provider of the service used in the custom action, such as AWS
    #               CodeDeploy.</p>
    #
    # @option params [String] :version
    #   <p>The version identifier of the custom action.</p>
    #
    # @option params [ActionTypeSettings] :settings
    #   <p>URLs that provide users information about this custom action.</p>
    #
    # @option params [Array<ActionConfigurationProperty>] :configuration_properties
    #   <p>The configuration properties for the custom action.</p>
    #           <note>
    #               <p>You can refer to a name in the configuration properties of the custom action
    #                   within the URL templates by following the format of {Config:name}, as long as the
    #                   configuration property is both required and not secret. For more information, see
    #                       <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html">Create a
    #                       Custom Action for a Pipeline</a>.</p>
    #           </note>
    #
    # @option params [ArtifactDetails] :input_artifact_details
    #   <p>The details of the input artifact for the action, such as its commit ID.</p>
    #
    # @option params [ArtifactDetails] :output_artifact_details
    #   <p>The details of the output artifact of the action, such as its commit ID.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags for the custom action.</p>
    #
    # @return [Types::CreateCustomActionTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_action_type(
    #     category: 'Source', # required - accepts ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #     provider: 'provider', # required
    #     version: 'version', # required
    #     settings: {
    #       third_party_configuration_url: 'thirdPartyConfigurationUrl',
    #       entity_url_template: 'entityUrlTemplate',
    #       execution_url_template: 'executionUrlTemplate',
    #       revision_url_template: 'revisionUrlTemplate'
    #     },
    #     configuration_properties: [
    #       {
    #         name: 'name', # required
    #         required: false, # required
    #         key: false, # required
    #         secret: false, # required
    #         queryable: false,
    #         description: 'description',
    #         type: 'String' # accepts ["String", "Number", "Boolean"]
    #       }
    #     ],
    #     input_artifact_details: {
    #       minimum_count: 1, # required
    #       maximum_count: 1 # required
    #     }, # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCustomActionTypeOutput
    #   resp.data.action_type #=> Types::ActionType
    #   resp.data.action_type.id #=> Types::ActionTypeId
    #   resp.data.action_type.id.category #=> String, one of ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #   resp.data.action_type.id.owner #=> String, one of ["AWS", "ThirdParty", "Custom"]
    #   resp.data.action_type.id.provider #=> String
    #   resp.data.action_type.id.version #=> String
    #   resp.data.action_type.settings #=> Types::ActionTypeSettings
    #   resp.data.action_type.settings.third_party_configuration_url #=> String
    #   resp.data.action_type.settings.entity_url_template #=> String
    #   resp.data.action_type.settings.execution_url_template #=> String
    #   resp.data.action_type.settings.revision_url_template #=> String
    #   resp.data.action_type.action_configuration_properties #=> Array<ActionConfigurationProperty>
    #   resp.data.action_type.action_configuration_properties[0] #=> Types::ActionConfigurationProperty
    #   resp.data.action_type.action_configuration_properties[0].name #=> String
    #   resp.data.action_type.action_configuration_properties[0].required #=> Boolean
    #   resp.data.action_type.action_configuration_properties[0].key #=> Boolean
    #   resp.data.action_type.action_configuration_properties[0].secret #=> Boolean
    #   resp.data.action_type.action_configuration_properties[0].queryable #=> Boolean
    #   resp.data.action_type.action_configuration_properties[0].description #=> String
    #   resp.data.action_type.action_configuration_properties[0].type #=> String, one of ["String", "Number", "Boolean"]
    #   resp.data.action_type.input_artifact_details #=> Types::ArtifactDetails
    #   resp.data.action_type.input_artifact_details.minimum_count #=> Integer
    #   resp.data.action_type.input_artifact_details.maximum_count #=> Integer
    #   resp.data.action_type.output_artifact_details #=> Types::ArtifactDetails
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def create_custom_action_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCustomActionTypeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCustomActionTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCustomActionType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidTagsException, Errors::LimitExceededException, Errors::TooManyTagsException, Errors::ValidationException]),
        data_parser: Parsers::CreateCustomActionType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCustomActionType,
        stubs: @stubs,
        params_class: Params::CreateCustomActionTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_custom_action_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a pipeline.</p>
    #         <note>
    #             <p>In the pipeline structure, you must include either <code>artifactStore</code>
    #                 or <code>artifactStores</code> in your pipeline, but you cannot use both. If you
    #                 create a cross-region action in your pipeline, you must use
    #                     <code>artifactStores</code>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreatePipelineInput}.
    #
    # @option params [PipelineDeclaration] :pipeline
    #   <p>Represents the structure of actions and stages to be performed in the pipeline.
    #           </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags for the pipeline.</p>
    #
    # @return [Types::CreatePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pipeline(
    #     pipeline: {
    #       name: 'name', # required
    #       role_arn: 'roleArn', # required
    #       artifact_store: {
    #         type: 'S3', # required - accepts ["S3"]
    #         location: 'location', # required
    #         encryption_key: {
    #           id: 'id', # required
    #           type: 'KMS' # required - accepts ["KMS"]
    #         }
    #       },
    #       stages: [
    #         {
    #           name: 'name', # required
    #           blockers: [
    #             {
    #               name: 'name', # required
    #               type: 'Schedule' # required - accepts ["Schedule"]
    #             }
    #           ],
    #           actions: [
    #             {
    #               name: 'name', # required
    #               action_type_id: {
    #                 category: 'Source', # required - accepts ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #                 owner: 'AWS', # required - accepts ["AWS", "ThirdParty", "Custom"]
    #                 provider: 'provider', # required
    #                 version: 'version' # required
    #               }, # required
    #               run_order: 1,
    #               configuration: {
    #                 'key' => 'value'
    #               },
    #               output_artifacts: [
    #                 {
    #                   name: 'name' # required
    #                 }
    #               ],
    #               input_artifacts: [
    #                 {
    #                   name: 'name' # required
    #                 }
    #               ],
    #               role_arn: 'roleArn',
    #               region: 'region',
    #               namespace: 'namespace'
    #             }
    #           ] # required
    #         }
    #       ], # required
    #       version: 1
    #     }, # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePipelineOutput
    #   resp.data.pipeline #=> Types::PipelineDeclaration
    #   resp.data.pipeline.name #=> String
    #   resp.data.pipeline.role_arn #=> String
    #   resp.data.pipeline.artifact_store #=> Types::ArtifactStore
    #   resp.data.pipeline.artifact_store.type #=> String, one of ["S3"]
    #   resp.data.pipeline.artifact_store.location #=> String
    #   resp.data.pipeline.artifact_store.encryption_key #=> Types::EncryptionKey
    #   resp.data.pipeline.artifact_store.encryption_key.id #=> String
    #   resp.data.pipeline.artifact_store.encryption_key.type #=> String, one of ["KMS"]
    #   resp.data.pipeline.artifact_stores #=> Hash<String, ArtifactStore>
    #   resp.data.pipeline.stages #=> Array<StageDeclaration>
    #   resp.data.pipeline.stages[0] #=> Types::StageDeclaration
    #   resp.data.pipeline.stages[0].name #=> String
    #   resp.data.pipeline.stages[0].blockers #=> Array<BlockerDeclaration>
    #   resp.data.pipeline.stages[0].blockers[0] #=> Types::BlockerDeclaration
    #   resp.data.pipeline.stages[0].blockers[0].name #=> String
    #   resp.data.pipeline.stages[0].blockers[0].type #=> String, one of ["Schedule"]
    #   resp.data.pipeline.stages[0].actions #=> Array<ActionDeclaration>
    #   resp.data.pipeline.stages[0].actions[0] #=> Types::ActionDeclaration
    #   resp.data.pipeline.stages[0].actions[0].name #=> String
    #   resp.data.pipeline.stages[0].actions[0].action_type_id #=> Types::ActionTypeId
    #   resp.data.pipeline.stages[0].actions[0].action_type_id.category #=> String, one of ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #   resp.data.pipeline.stages[0].actions[0].action_type_id.owner #=> String, one of ["AWS", "ThirdParty", "Custom"]
    #   resp.data.pipeline.stages[0].actions[0].action_type_id.provider #=> String
    #   resp.data.pipeline.stages[0].actions[0].action_type_id.version #=> String
    #   resp.data.pipeline.stages[0].actions[0].run_order #=> Integer
    #   resp.data.pipeline.stages[0].actions[0].configuration #=> Hash<String, String>
    #   resp.data.pipeline.stages[0].actions[0].configuration['key'] #=> String
    #   resp.data.pipeline.stages[0].actions[0].output_artifacts #=> Array<OutputArtifact>
    #   resp.data.pipeline.stages[0].actions[0].output_artifacts[0] #=> Types::OutputArtifact
    #   resp.data.pipeline.stages[0].actions[0].output_artifacts[0].name #=> String
    #   resp.data.pipeline.stages[0].actions[0].input_artifacts #=> Array<InputArtifact>
    #   resp.data.pipeline.stages[0].actions[0].input_artifacts[0] #=> Types::InputArtifact
    #   resp.data.pipeline.stages[0].actions[0].input_artifacts[0].name #=> String
    #   resp.data.pipeline.stages[0].actions[0].role_arn #=> String
    #   resp.data.pipeline.stages[0].actions[0].region #=> String
    #   resp.data.pipeline.stages[0].actions[0].namespace #=> String
    #   resp.data.pipeline.version #=> Integer
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def create_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePipelineInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePipeline
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidActionDeclarationException, Errors::InvalidBlockerDeclarationException, Errors::InvalidStageDeclarationException, Errors::InvalidStructureException, Errors::InvalidTagsException, Errors::LimitExceededException, Errors::PipelineNameInUseException, Errors::TooManyTagsException, Errors::ValidationException]),
        data_parser: Parsers::CreatePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePipeline,
        stubs: @stubs,
        params_class: Params::CreatePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Marks a custom action as deleted. <code>PollForJobs</code> for the custom action
    #             fails after the action is marked for deletion. Used for custom actions only.</p>
    #         <important>
    #             <p>To re-create a custom action after it has been deleted you must use a string in
    #                 the version field that has never been used before. This string can be an incremented
    #                 version number, for example. To restore a deleted custom action, use a JSON file
    #                 that is identical to the deleted action, including the original string in the
    #                 version field.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteCustomActionTypeInput}.
    #
    # @option params [String] :category
    #   <p>The category of the custom action that you want to delete, such as source or
    #               deploy.</p>
    #
    # @option params [String] :provider
    #   <p>The provider of the service used in the custom action, such as AWS
    #               CodeDeploy.</p>
    #
    # @option params [String] :version
    #   <p>The version of the custom action to delete.</p>
    #
    # @return [Types::DeleteCustomActionTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_action_type(
    #     category: 'Source', # required - accepts ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #     provider: 'provider', # required
    #     version: 'version' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCustomActionTypeOutput
    #
    def delete_custom_action_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCustomActionTypeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCustomActionTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCustomActionType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ValidationException]),
        data_parser: Parsers::DeleteCustomActionType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCustomActionType,
        stubs: @stubs,
        params_class: Params::DeleteCustomActionTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_custom_action_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePipelineInput}.
    #
    # @option params [String] :name
    #   <p>The name of the pipeline to be deleted.</p>
    #
    # @return [Types::DeletePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pipeline(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePipelineOutput
    #
    def delete_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePipelineInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePipeline
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ValidationException]),
        data_parser: Parsers::DeletePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePipeline,
        stubs: @stubs,
        params_class: Params::DeletePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a previously created webhook by name. Deleting the webhook stops AWS
    #             CodePipeline from starting a pipeline every time an external event occurs. The API
    #             returns successfully when trying to delete a webhook that is already deleted. If a
    #             deleted webhook is re-created by calling PutWebhook with the same name, it will have a
    #             different URL.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWebhookInput}.
    #
    # @option params [String] :name
    #   <p>The name of the webhook you want to delete.</p>
    #
    # @return [Types::DeleteWebhookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_webhook(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWebhookOutput
    #
    def delete_webhook(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWebhookInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWebhookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWebhook
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ValidationException]),
        data_parser: Parsers::DeleteWebhook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWebhook,
        stubs: @stubs,
        params_class: Params::DeleteWebhookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_webhook
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the connection between the webhook that was created by CodePipeline and the
    #             external tool with events to be detected. Currently supported only for webhooks that
    #             target an action type of GitHub.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterWebhookWithThirdPartyInput}.
    #
    # @option params [String] :webhook_name
    #   <p>The name of the webhook you want to deregister.</p>
    #
    # @return [Types::DeregisterWebhookWithThirdPartyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_webhook_with_third_party(
    #     webhook_name: 'webhookName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterWebhookWithThirdPartyOutput
    #
    def deregister_webhook_with_third_party(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterWebhookWithThirdPartyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterWebhookWithThirdPartyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterWebhookWithThirdParty
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::WebhookNotFoundException]),
        data_parser: Parsers::DeregisterWebhookWithThirdParty
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterWebhookWithThirdParty,
        stubs: @stubs,
        params_class: Params::DeregisterWebhookWithThirdPartyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_webhook_with_third_party
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Prevents artifacts in a pipeline from transitioning to the next stage in the
    #             pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableStageTransitionInput}.
    #
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline in which you want to disable the flow of artifacts from
    #               one stage to another.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage where you want to disable the inbound or outbound transition
    #               of artifacts.</p>
    #
    # @option params [String] :transition_type
    #   <p>Specifies whether artifacts are prevented from transitioning into the stage and
    #               being processed by the actions in that stage (inbound), or prevented from transitioning
    #               from the stage after they have been processed by the actions in that stage
    #               (outbound).</p>
    #
    # @option params [String] :reason
    #   <p>The reason given to the user that a stage is disabled, such as waiting for manual
    #               approval or manual tests. This message is displayed in the pipeline console
    #               UI.</p>
    #
    # @return [Types::DisableStageTransitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_stage_transition(
    #     pipeline_name: 'pipelineName', # required
    #     stage_name: 'stageName', # required
    #     transition_type: 'Inbound', # required - accepts ["Inbound", "Outbound"]
    #     reason: 'reason' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableStageTransitionOutput
    #
    def disable_stage_transition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableStageTransitionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableStageTransitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableStageTransition
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PipelineNotFoundException, Errors::StageNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DisableStageTransition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableStageTransition,
        stubs: @stubs,
        params_class: Params::DisableStageTransitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_stage_transition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables artifacts in a pipeline to transition to a stage in a pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableStageTransitionInput}.
    #
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline in which you want to enable the flow of artifacts from one
    #               stage to another.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage where you want to enable the transition of artifacts, either
    #               into the stage (inbound) or from that stage to the next stage (outbound).</p>
    #
    # @option params [String] :transition_type
    #   <p>Specifies whether artifacts are allowed to enter the stage and be processed by the
    #               actions in that stage (inbound) or whether already processed artifacts are allowed to
    #               transition to the next stage (outbound).</p>
    #
    # @return [Types::EnableStageTransitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_stage_transition(
    #     pipeline_name: 'pipelineName', # required
    #     stage_name: 'stageName', # required
    #     transition_type: 'Inbound' # required - accepts ["Inbound", "Outbound"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableStageTransitionOutput
    #
    def enable_stage_transition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableStageTransitionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableStageTransitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableStageTransition
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PipelineNotFoundException, Errors::StageNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::EnableStageTransition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableStageTransition,
        stubs: @stubs,
        params_class: Params::EnableStageTransitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_stage_transition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about an action type created for an external provider, where the
    #             action is to be used by customers of the external provider. The action can be created
    #             with any supported integration model.</p>
    #
    # @param [Hash] params
    #   See {Types::GetActionTypeInput}.
    #
    # @option params [String] :category
    #   <p>Defines what kind of action can be taken in the stage. The following are the valid
    #               values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Source</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Build</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Test</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Deploy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Approval</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Invoke</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :owner
    #   <p>The creator of an action type that was created with any supported integration model.
    #               There are two valid values: <code>AWS</code> and <code>ThirdParty</code>.</p>
    #
    # @option params [String] :provider
    #   <p>The provider of the action type being called. The provider name is specified when the
    #               action type is created.</p>
    #
    # @option params [String] :version
    #   <p>A string that describes the action type version.</p>
    #
    # @return [Types::GetActionTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_action_type(
    #     category: 'Source', # required - accepts ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #     owner: 'owner', # required
    #     provider: 'provider', # required
    #     version: 'version' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetActionTypeOutput
    #   resp.data.action_type #=> Types::ActionTypeDeclaration
    #   resp.data.action_type.description #=> String
    #   resp.data.action_type.executor #=> Types::ActionTypeExecutor
    #   resp.data.action_type.executor.configuration #=> Types::ExecutorConfiguration
    #   resp.data.action_type.executor.configuration.lambda_executor_configuration #=> Types::LambdaExecutorConfiguration
    #   resp.data.action_type.executor.configuration.lambda_executor_configuration.lambda_function_arn #=> String
    #   resp.data.action_type.executor.configuration.job_worker_executor_configuration #=> Types::JobWorkerExecutorConfiguration
    #   resp.data.action_type.executor.configuration.job_worker_executor_configuration.polling_accounts #=> Array<String>
    #   resp.data.action_type.executor.configuration.job_worker_executor_configuration.polling_accounts[0] #=> String
    #   resp.data.action_type.executor.configuration.job_worker_executor_configuration.polling_service_principals #=> Array<String>
    #   resp.data.action_type.executor.configuration.job_worker_executor_configuration.polling_service_principals[0] #=> String
    #   resp.data.action_type.executor.type #=> String, one of ["JobWorker", "Lambda"]
    #   resp.data.action_type.executor.policy_statements_template #=> String
    #   resp.data.action_type.executor.job_timeout #=> Integer
    #   resp.data.action_type.id #=> Types::ActionTypeIdentifier
    #   resp.data.action_type.id.category #=> String, one of ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #   resp.data.action_type.id.owner #=> String
    #   resp.data.action_type.id.provider #=> String
    #   resp.data.action_type.id.version #=> String
    #   resp.data.action_type.input_artifact_details #=> Types::ActionTypeArtifactDetails
    #   resp.data.action_type.input_artifact_details.minimum_count #=> Integer
    #   resp.data.action_type.input_artifact_details.maximum_count #=> Integer
    #   resp.data.action_type.output_artifact_details #=> Types::ActionTypeArtifactDetails
    #   resp.data.action_type.permissions #=> Types::ActionTypePermissions
    #   resp.data.action_type.permissions.allowed_accounts #=> Array<String>
    #   resp.data.action_type.permissions.allowed_accounts[0] #=> String
    #   resp.data.action_type.properties #=> Array<ActionTypeProperty>
    #   resp.data.action_type.properties[0] #=> Types::ActionTypeProperty
    #   resp.data.action_type.properties[0].name #=> String
    #   resp.data.action_type.properties[0].optional #=> Boolean
    #   resp.data.action_type.properties[0].key #=> Boolean
    #   resp.data.action_type.properties[0].no_echo #=> Boolean
    #   resp.data.action_type.properties[0].queryable #=> Boolean
    #   resp.data.action_type.properties[0].description #=> String
    #   resp.data.action_type.urls #=> Types::ActionTypeUrls
    #   resp.data.action_type.urls.configuration_url #=> String
    #   resp.data.action_type.urls.entity_url_template #=> String
    #   resp.data.action_type.urls.execution_url_template #=> String
    #   resp.data.action_type.urls.revision_url_template #=> String
    #
    def get_action_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetActionTypeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetActionTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetActionType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ActionTypeNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GetActionType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetActionType,
        stubs: @stubs,
        params_class: Params::GetActionTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_action_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a job. Used for custom actions only.</p>
    #         <important>
    #             <p>When this API is called, AWS CodePipeline returns temporary credentials for the
    #                 S3 bucket used to store artifacts for the pipeline, if the action requires access to
    #                 that S3 bucket for input or output artifacts. This API also returns any secret
    #                 values defined for the action.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::GetJobDetailsInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique system-generated ID for the job.</p>
    #
    # @return [Types::GetJobDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_details(
    #     job_id: 'jobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetJobDetailsOutput
    #   resp.data.job_details #=> Types::JobDetails
    #   resp.data.job_details.id #=> String
    #   resp.data.job_details.data #=> Types::JobData
    #   resp.data.job_details.data.action_type_id #=> Types::ActionTypeId
    #   resp.data.job_details.data.action_type_id.category #=> String, one of ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #   resp.data.job_details.data.action_type_id.owner #=> String, one of ["AWS", "ThirdParty", "Custom"]
    #   resp.data.job_details.data.action_type_id.provider #=> String
    #   resp.data.job_details.data.action_type_id.version #=> String
    #   resp.data.job_details.data.action_configuration #=> Types::ActionConfiguration
    #   resp.data.job_details.data.action_configuration.configuration #=> Hash<String, String>
    #   resp.data.job_details.data.action_configuration.configuration['key'] #=> String
    #   resp.data.job_details.data.pipeline_context #=> Types::PipelineContext
    #   resp.data.job_details.data.pipeline_context.pipeline_name #=> String
    #   resp.data.job_details.data.pipeline_context.stage #=> Types::StageContext
    #   resp.data.job_details.data.pipeline_context.stage.name #=> String
    #   resp.data.job_details.data.pipeline_context.action #=> Types::ActionContext
    #   resp.data.job_details.data.pipeline_context.action.name #=> String
    #   resp.data.job_details.data.pipeline_context.action.action_execution_id #=> String
    #   resp.data.job_details.data.pipeline_context.pipeline_arn #=> String
    #   resp.data.job_details.data.pipeline_context.pipeline_execution_id #=> String
    #   resp.data.job_details.data.input_artifacts #=> Array<Artifact>
    #   resp.data.job_details.data.input_artifacts[0] #=> Types::Artifact
    #   resp.data.job_details.data.input_artifacts[0].name #=> String
    #   resp.data.job_details.data.input_artifacts[0].revision #=> String
    #   resp.data.job_details.data.input_artifacts[0].location #=> Types::ArtifactLocation
    #   resp.data.job_details.data.input_artifacts[0].location.type #=> String, one of ["S3"]
    #   resp.data.job_details.data.input_artifacts[0].location.s3_location #=> Types::S3ArtifactLocation
    #   resp.data.job_details.data.input_artifacts[0].location.s3_location.bucket_name #=> String
    #   resp.data.job_details.data.input_artifacts[0].location.s3_location.object_key #=> String
    #   resp.data.job_details.data.output_artifacts #=> Array<Artifact>
    #   resp.data.job_details.data.artifact_credentials #=> Types::AWSSessionCredentials
    #   resp.data.job_details.data.artifact_credentials.access_key_id #=> String
    #   resp.data.job_details.data.artifact_credentials.secret_access_key #=> String
    #   resp.data.job_details.data.artifact_credentials.session_token #=> String
    #   resp.data.job_details.data.continuation_token #=> String
    #   resp.data.job_details.data.encryption_key #=> Types::EncryptionKey
    #   resp.data.job_details.data.encryption_key.id #=> String
    #   resp.data.job_details.data.encryption_key.type #=> String, one of ["KMS"]
    #   resp.data.job_details.account_id #=> String
    #
    def get_job_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetJobDetailsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetJobDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetJobDetails
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GetJobDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetJobDetails,
        stubs: @stubs,
        params_class: Params::GetJobDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_job_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the metadata, structure, stages, and actions of a pipeline. Can be used to
    #             return the entire structure of a pipeline in JSON format, which can then be modified and
    #             used to update the pipeline structure with <a>UpdatePipeline</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPipelineInput}.
    #
    # @option params [String] :name
    #   <p>The name of the pipeline for which you want to get information. Pipeline names must
    #               be unique under an AWS user account.</p>
    #
    # @option params [Integer] :version
    #   <p>The version number of the pipeline. If you do not specify a version, defaults to
    #               the current version.</p>
    #
    # @return [Types::GetPipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pipeline(
    #     name: 'name', # required
    #     version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPipelineOutput
    #   resp.data.pipeline #=> Types::PipelineDeclaration
    #   resp.data.pipeline.name #=> String
    #   resp.data.pipeline.role_arn #=> String
    #   resp.data.pipeline.artifact_store #=> Types::ArtifactStore
    #   resp.data.pipeline.artifact_store.type #=> String, one of ["S3"]
    #   resp.data.pipeline.artifact_store.location #=> String
    #   resp.data.pipeline.artifact_store.encryption_key #=> Types::EncryptionKey
    #   resp.data.pipeline.artifact_store.encryption_key.id #=> String
    #   resp.data.pipeline.artifact_store.encryption_key.type #=> String, one of ["KMS"]
    #   resp.data.pipeline.artifact_stores #=> Hash<String, ArtifactStore>
    #   resp.data.pipeline.stages #=> Array<StageDeclaration>
    #   resp.data.pipeline.stages[0] #=> Types::StageDeclaration
    #   resp.data.pipeline.stages[0].name #=> String
    #   resp.data.pipeline.stages[0].blockers #=> Array<BlockerDeclaration>
    #   resp.data.pipeline.stages[0].blockers[0] #=> Types::BlockerDeclaration
    #   resp.data.pipeline.stages[0].blockers[0].name #=> String
    #   resp.data.pipeline.stages[0].blockers[0].type #=> String, one of ["Schedule"]
    #   resp.data.pipeline.stages[0].actions #=> Array<ActionDeclaration>
    #   resp.data.pipeline.stages[0].actions[0] #=> Types::ActionDeclaration
    #   resp.data.pipeline.stages[0].actions[0].name #=> String
    #   resp.data.pipeline.stages[0].actions[0].action_type_id #=> Types::ActionTypeId
    #   resp.data.pipeline.stages[0].actions[0].action_type_id.category #=> String, one of ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #   resp.data.pipeline.stages[0].actions[0].action_type_id.owner #=> String, one of ["AWS", "ThirdParty", "Custom"]
    #   resp.data.pipeline.stages[0].actions[0].action_type_id.provider #=> String
    #   resp.data.pipeline.stages[0].actions[0].action_type_id.version #=> String
    #   resp.data.pipeline.stages[0].actions[0].run_order #=> Integer
    #   resp.data.pipeline.stages[0].actions[0].configuration #=> Hash<String, String>
    #   resp.data.pipeline.stages[0].actions[0].configuration['key'] #=> String
    #   resp.data.pipeline.stages[0].actions[0].output_artifacts #=> Array<OutputArtifact>
    #   resp.data.pipeline.stages[0].actions[0].output_artifacts[0] #=> Types::OutputArtifact
    #   resp.data.pipeline.stages[0].actions[0].output_artifacts[0].name #=> String
    #   resp.data.pipeline.stages[0].actions[0].input_artifacts #=> Array<InputArtifact>
    #   resp.data.pipeline.stages[0].actions[0].input_artifacts[0] #=> Types::InputArtifact
    #   resp.data.pipeline.stages[0].actions[0].input_artifacts[0].name #=> String
    #   resp.data.pipeline.stages[0].actions[0].role_arn #=> String
    #   resp.data.pipeline.stages[0].actions[0].region #=> String
    #   resp.data.pipeline.stages[0].actions[0].namespace #=> String
    #   resp.data.pipeline.version #=> Integer
    #   resp.data.metadata #=> Types::PipelineMetadata
    #   resp.data.metadata.pipeline_arn #=> String
    #   resp.data.metadata.created #=> Time
    #   resp.data.metadata.updated #=> Time
    #
    def get_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPipelineInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPipeline
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PipelineNotFoundException, Errors::PipelineVersionNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GetPipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPipeline,
        stubs: @stubs,
        params_class: Params::GetPipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about an execution of a pipeline, including details about
    #             artifacts, the pipeline execution ID, and the name, version, and status of the
    #             pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPipelineExecutionInput}.
    #
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline about which you want to get execution details.</p>
    #
    # @option params [String] :pipeline_execution_id
    #   <p>The ID of the pipeline execution about which you want to get execution
    #               details.</p>
    #
    # @return [Types::GetPipelineExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pipeline_execution(
    #     pipeline_name: 'pipelineName', # required
    #     pipeline_execution_id: 'pipelineExecutionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPipelineExecutionOutput
    #   resp.data.pipeline_execution #=> Types::PipelineExecution
    #   resp.data.pipeline_execution.pipeline_name #=> String
    #   resp.data.pipeline_execution.pipeline_version #=> Integer
    #   resp.data.pipeline_execution.pipeline_execution_id #=> String
    #   resp.data.pipeline_execution.status #=> String, one of ["Cancelled", "InProgress", "Stopped", "Stopping", "Succeeded", "Superseded", "Failed"]
    #   resp.data.pipeline_execution.status_summary #=> String
    #   resp.data.pipeline_execution.artifact_revisions #=> Array<ArtifactRevision>
    #   resp.data.pipeline_execution.artifact_revisions[0] #=> Types::ArtifactRevision
    #   resp.data.pipeline_execution.artifact_revisions[0].name #=> String
    #   resp.data.pipeline_execution.artifact_revisions[0].revision_id #=> String
    #   resp.data.pipeline_execution.artifact_revisions[0].revision_change_identifier #=> String
    #   resp.data.pipeline_execution.artifact_revisions[0].revision_summary #=> String
    #   resp.data.pipeline_execution.artifact_revisions[0].created #=> Time
    #   resp.data.pipeline_execution.artifact_revisions[0].revision_url #=> String
    #
    def get_pipeline_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPipelineExecutionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPipelineExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPipelineExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PipelineExecutionNotFoundException, Errors::PipelineNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GetPipelineExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPipelineExecution,
        stubs: @stubs,
        params_class: Params::GetPipelineExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_pipeline_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the state of a pipeline, including the stages and
    #             actions.</p>
    #         <note>
    #             <p>Values returned in the <code>revisionId</code> and <code>revisionUrl</code>
    #                 fields indicate the source revision information, such as the commit ID, for the
    #                 current state.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::GetPipelineStateInput}.
    #
    # @option params [String] :name
    #   <p>The name of the pipeline about which you want to get information.</p>
    #
    # @return [Types::GetPipelineStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pipeline_state(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPipelineStateOutput
    #   resp.data.pipeline_name #=> String
    #   resp.data.pipeline_version #=> Integer
    #   resp.data.stage_states #=> Array<StageState>
    #   resp.data.stage_states[0] #=> Types::StageState
    #   resp.data.stage_states[0].stage_name #=> String
    #   resp.data.stage_states[0].inbound_execution #=> Types::StageExecution
    #   resp.data.stage_states[0].inbound_execution.pipeline_execution_id #=> String
    #   resp.data.stage_states[0].inbound_execution.status #=> String, one of ["Cancelled", "InProgress", "Failed", "Stopped", "Stopping", "Succeeded"]
    #   resp.data.stage_states[0].inbound_transition_state #=> Types::TransitionState
    #   resp.data.stage_states[0].inbound_transition_state.enabled #=> Boolean
    #   resp.data.stage_states[0].inbound_transition_state.last_changed_by #=> String
    #   resp.data.stage_states[0].inbound_transition_state.last_changed_at #=> Time
    #   resp.data.stage_states[0].inbound_transition_state.disabled_reason #=> String
    #   resp.data.stage_states[0].action_states #=> Array<ActionState>
    #   resp.data.stage_states[0].action_states[0] #=> Types::ActionState
    #   resp.data.stage_states[0].action_states[0].action_name #=> String
    #   resp.data.stage_states[0].action_states[0].current_revision #=> Types::ActionRevision
    #   resp.data.stage_states[0].action_states[0].current_revision.revision_id #=> String
    #   resp.data.stage_states[0].action_states[0].current_revision.revision_change_id #=> String
    #   resp.data.stage_states[0].action_states[0].current_revision.created #=> Time
    #   resp.data.stage_states[0].action_states[0].latest_execution #=> Types::ActionExecution
    #   resp.data.stage_states[0].action_states[0].latest_execution.action_execution_id #=> String
    #   resp.data.stage_states[0].action_states[0].latest_execution.status #=> String, one of ["InProgress", "Abandoned", "Succeeded", "Failed"]
    #   resp.data.stage_states[0].action_states[0].latest_execution.summary #=> String
    #   resp.data.stage_states[0].action_states[0].latest_execution.last_status_change #=> Time
    #   resp.data.stage_states[0].action_states[0].latest_execution.token #=> String
    #   resp.data.stage_states[0].action_states[0].latest_execution.last_updated_by #=> String
    #   resp.data.stage_states[0].action_states[0].latest_execution.external_execution_id #=> String
    #   resp.data.stage_states[0].action_states[0].latest_execution.external_execution_url #=> String
    #   resp.data.stage_states[0].action_states[0].latest_execution.percent_complete #=> Integer
    #   resp.data.stage_states[0].action_states[0].latest_execution.error_details #=> Types::ErrorDetails
    #   resp.data.stage_states[0].action_states[0].latest_execution.error_details.code #=> String
    #   resp.data.stage_states[0].action_states[0].latest_execution.error_details.message #=> String
    #   resp.data.stage_states[0].action_states[0].entity_url #=> String
    #   resp.data.stage_states[0].action_states[0].revision_url #=> String
    #   resp.data.stage_states[0].latest_execution #=> Types::StageExecution
    #   resp.data.created #=> Time
    #   resp.data.updated #=> Time
    #
    def get_pipeline_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPipelineStateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPipelineStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPipelineState
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PipelineNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GetPipelineState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPipelineState,
        stubs: @stubs,
        params_class: Params::GetPipelineStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_pipeline_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests the details of a job for a third party action. Used for partner actions
    #             only.</p>
    #         <important>
    #             <p>When this API is called, AWS CodePipeline returns temporary credentials for the
    #                 S3 bucket used to store artifacts for the pipeline, if the action requires access to
    #                 that S3 bucket for input or output artifacts. This API also returns any secret
    #                 values defined for the action.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::GetThirdPartyJobDetailsInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique system-generated ID used for identifying the job.</p>
    #
    # @option params [String] :client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    #
    # @return [Types::GetThirdPartyJobDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_third_party_job_details(
    #     job_id: 'jobId', # required
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetThirdPartyJobDetailsOutput
    #   resp.data.job_details #=> Types::ThirdPartyJobDetails
    #   resp.data.job_details.id #=> String
    #   resp.data.job_details.data #=> Types::ThirdPartyJobData
    #   resp.data.job_details.data.action_type_id #=> Types::ActionTypeId
    #   resp.data.job_details.data.action_type_id.category #=> String, one of ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #   resp.data.job_details.data.action_type_id.owner #=> String, one of ["AWS", "ThirdParty", "Custom"]
    #   resp.data.job_details.data.action_type_id.provider #=> String
    #   resp.data.job_details.data.action_type_id.version #=> String
    #   resp.data.job_details.data.action_configuration #=> Types::ActionConfiguration
    #   resp.data.job_details.data.action_configuration.configuration #=> Hash<String, String>
    #   resp.data.job_details.data.action_configuration.configuration['key'] #=> String
    #   resp.data.job_details.data.pipeline_context #=> Types::PipelineContext
    #   resp.data.job_details.data.pipeline_context.pipeline_name #=> String
    #   resp.data.job_details.data.pipeline_context.stage #=> Types::StageContext
    #   resp.data.job_details.data.pipeline_context.stage.name #=> String
    #   resp.data.job_details.data.pipeline_context.action #=> Types::ActionContext
    #   resp.data.job_details.data.pipeline_context.action.name #=> String
    #   resp.data.job_details.data.pipeline_context.action.action_execution_id #=> String
    #   resp.data.job_details.data.pipeline_context.pipeline_arn #=> String
    #   resp.data.job_details.data.pipeline_context.pipeline_execution_id #=> String
    #   resp.data.job_details.data.input_artifacts #=> Array<Artifact>
    #   resp.data.job_details.data.input_artifacts[0] #=> Types::Artifact
    #   resp.data.job_details.data.input_artifacts[0].name #=> String
    #   resp.data.job_details.data.input_artifacts[0].revision #=> String
    #   resp.data.job_details.data.input_artifacts[0].location #=> Types::ArtifactLocation
    #   resp.data.job_details.data.input_artifacts[0].location.type #=> String, one of ["S3"]
    #   resp.data.job_details.data.input_artifacts[0].location.s3_location #=> Types::S3ArtifactLocation
    #   resp.data.job_details.data.input_artifacts[0].location.s3_location.bucket_name #=> String
    #   resp.data.job_details.data.input_artifacts[0].location.s3_location.object_key #=> String
    #   resp.data.job_details.data.output_artifacts #=> Array<Artifact>
    #   resp.data.job_details.data.artifact_credentials #=> Types::AWSSessionCredentials
    #   resp.data.job_details.data.artifact_credentials.access_key_id #=> String
    #   resp.data.job_details.data.artifact_credentials.secret_access_key #=> String
    #   resp.data.job_details.data.artifact_credentials.session_token #=> String
    #   resp.data.job_details.data.continuation_token #=> String
    #   resp.data.job_details.data.encryption_key #=> Types::EncryptionKey
    #   resp.data.job_details.data.encryption_key.id #=> String
    #   resp.data.job_details.data.encryption_key.type #=> String, one of ["KMS"]
    #   resp.data.job_details.nonce #=> String
    #
    def get_third_party_job_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetThirdPartyJobDetailsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetThirdPartyJobDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetThirdPartyJobDetails
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClientTokenException, Errors::InvalidJobException, Errors::JobNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GetThirdPartyJobDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetThirdPartyJobDetails,
        stubs: @stubs,
        params_class: Params::GetThirdPartyJobDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_third_party_job_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the action executions that have occurred in a pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::ListActionExecutionsInput}.
    #
    # @option params [String] :pipeline_name
    #   <p> The name of the pipeline for which you want to list action execution history.</p>
    #
    # @option params [ActionExecutionFilter] :filter
    #   <p>Input information used to filter action execution history.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value. Action execution history
    #               is retained for up to 12 months, based on action execution start times. Default value is
    #               100. </p>
    #           <note>
    #               <p>Detailed execution history is available for executions run on or after February
    #                   21, 2019.</p>
    #           </note>
    #
    # @option params [String] :next_token
    #   <p>The token that was returned from the previous <code>ListActionExecutions</code> call,
    #               which can be used to return the next set of action executions in the list.</p>
    #
    # @return [Types::ListActionExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_action_executions(
    #     pipeline_name: 'pipelineName', # required
    #     filter: {
    #       pipeline_execution_id: 'pipelineExecutionId'
    #     },
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListActionExecutionsOutput
    #   resp.data.action_execution_details #=> Array<ActionExecutionDetail>
    #   resp.data.action_execution_details[0] #=> Types::ActionExecutionDetail
    #   resp.data.action_execution_details[0].pipeline_execution_id #=> String
    #   resp.data.action_execution_details[0].action_execution_id #=> String
    #   resp.data.action_execution_details[0].pipeline_version #=> Integer
    #   resp.data.action_execution_details[0].stage_name #=> String
    #   resp.data.action_execution_details[0].action_name #=> String
    #   resp.data.action_execution_details[0].start_time #=> Time
    #   resp.data.action_execution_details[0].last_update_time #=> Time
    #   resp.data.action_execution_details[0].status #=> String, one of ["InProgress", "Abandoned", "Succeeded", "Failed"]
    #   resp.data.action_execution_details[0].input #=> Types::ActionExecutionInput
    #   resp.data.action_execution_details[0].input.action_type_id #=> Types::ActionTypeId
    #   resp.data.action_execution_details[0].input.action_type_id.category #=> String, one of ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #   resp.data.action_execution_details[0].input.action_type_id.owner #=> String, one of ["AWS", "ThirdParty", "Custom"]
    #   resp.data.action_execution_details[0].input.action_type_id.provider #=> String
    #   resp.data.action_execution_details[0].input.action_type_id.version #=> String
    #   resp.data.action_execution_details[0].input.configuration #=> Hash<String, String>
    #   resp.data.action_execution_details[0].input.configuration['key'] #=> String
    #   resp.data.action_execution_details[0].input.resolved_configuration #=> Hash<String, String>
    #   resp.data.action_execution_details[0].input.resolved_configuration['key'] #=> String
    #   resp.data.action_execution_details[0].input.role_arn #=> String
    #   resp.data.action_execution_details[0].input.region #=> String
    #   resp.data.action_execution_details[0].input.input_artifacts #=> Array<ArtifactDetail>
    #   resp.data.action_execution_details[0].input.input_artifacts[0] #=> Types::ArtifactDetail
    #   resp.data.action_execution_details[0].input.input_artifacts[0].name #=> String
    #   resp.data.action_execution_details[0].input.input_artifacts[0].s3location #=> Types::S3Location
    #   resp.data.action_execution_details[0].input.input_artifacts[0].s3location.bucket #=> String
    #   resp.data.action_execution_details[0].input.input_artifacts[0].s3location.key #=> String
    #   resp.data.action_execution_details[0].input.namespace #=> String
    #   resp.data.action_execution_details[0].output #=> Types::ActionExecutionOutput
    #   resp.data.action_execution_details[0].output.output_artifacts #=> Array<ArtifactDetail>
    #   resp.data.action_execution_details[0].output.execution_result #=> Types::ActionExecutionResult
    #   resp.data.action_execution_details[0].output.execution_result.external_execution_id #=> String
    #   resp.data.action_execution_details[0].output.execution_result.external_execution_summary #=> String
    #   resp.data.action_execution_details[0].output.execution_result.external_execution_url #=> String
    #   resp.data.action_execution_details[0].output.output_variables #=> Hash<String, String>
    #   resp.data.action_execution_details[0].output.output_variables['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_action_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListActionExecutionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListActionExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListActionExecutions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::PipelineExecutionNotFoundException, Errors::PipelineNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::ListActionExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListActionExecutions,
        stubs: @stubs,
        params_class: Params::ListActionExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_action_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a summary of all AWS CodePipeline action types associated with your
    #             account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListActionTypesInput}.
    #
    # @option params [String] :action_owner_filter
    #   <p>Filters the list of action types to those created by a specified entity.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous list action types call, which can
    #               be used to return the next set of action types in the list.</p>
    #
    # @option params [String] :region_filter
    #   <p>The Region to filter on for the list of action types.</p>
    #
    # @return [Types::ListActionTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_action_types(
    #     action_owner_filter: 'AWS', # accepts ["AWS", "ThirdParty", "Custom"]
    #     next_token: 'nextToken',
    #     region_filter: 'regionFilter'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListActionTypesOutput
    #   resp.data.action_types #=> Array<ActionType>
    #   resp.data.action_types[0] #=> Types::ActionType
    #   resp.data.action_types[0].id #=> Types::ActionTypeId
    #   resp.data.action_types[0].id.category #=> String, one of ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #   resp.data.action_types[0].id.owner #=> String, one of ["AWS", "ThirdParty", "Custom"]
    #   resp.data.action_types[0].id.provider #=> String
    #   resp.data.action_types[0].id.version #=> String
    #   resp.data.action_types[0].settings #=> Types::ActionTypeSettings
    #   resp.data.action_types[0].settings.third_party_configuration_url #=> String
    #   resp.data.action_types[0].settings.entity_url_template #=> String
    #   resp.data.action_types[0].settings.execution_url_template #=> String
    #   resp.data.action_types[0].settings.revision_url_template #=> String
    #   resp.data.action_types[0].action_configuration_properties #=> Array<ActionConfigurationProperty>
    #   resp.data.action_types[0].action_configuration_properties[0] #=> Types::ActionConfigurationProperty
    #   resp.data.action_types[0].action_configuration_properties[0].name #=> String
    #   resp.data.action_types[0].action_configuration_properties[0].required #=> Boolean
    #   resp.data.action_types[0].action_configuration_properties[0].key #=> Boolean
    #   resp.data.action_types[0].action_configuration_properties[0].secret #=> Boolean
    #   resp.data.action_types[0].action_configuration_properties[0].queryable #=> Boolean
    #   resp.data.action_types[0].action_configuration_properties[0].description #=> String
    #   resp.data.action_types[0].action_configuration_properties[0].type #=> String, one of ["String", "Number", "Boolean"]
    #   resp.data.action_types[0].input_artifact_details #=> Types::ArtifactDetails
    #   resp.data.action_types[0].input_artifact_details.minimum_count #=> Integer
    #   resp.data.action_types[0].input_artifact_details.maximum_count #=> Integer
    #   resp.data.action_types[0].output_artifact_details #=> Types::ArtifactDetails
    #   resp.data.next_token #=> String
    #
    def list_action_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListActionTypesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListActionTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListActionTypes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ValidationException]),
        data_parser: Parsers::ListActionTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListActionTypes,
        stubs: @stubs,
        params_class: Params::ListActionTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_action_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a summary of the most recent executions for a pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPipelineExecutionsInput}.
    #
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline for which you want to get execution summary
    #               information.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value. Pipeline history is
    #               limited to the most recent 12 months, based on pipeline execution start times. Default
    #               value is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that was returned from the previous <code>ListPipelineExecutions</code>
    #               call, which can be used to return the next set of pipeline executions in the
    #               list.</p>
    #
    # @return [Types::ListPipelineExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pipeline_executions(
    #     pipeline_name: 'pipelineName', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPipelineExecutionsOutput
    #   resp.data.pipeline_execution_summaries #=> Array<PipelineExecutionSummary>
    #   resp.data.pipeline_execution_summaries[0] #=> Types::PipelineExecutionSummary
    #   resp.data.pipeline_execution_summaries[0].pipeline_execution_id #=> String
    #   resp.data.pipeline_execution_summaries[0].status #=> String, one of ["Cancelled", "InProgress", "Stopped", "Stopping", "Succeeded", "Superseded", "Failed"]
    #   resp.data.pipeline_execution_summaries[0].start_time #=> Time
    #   resp.data.pipeline_execution_summaries[0].last_update_time #=> Time
    #   resp.data.pipeline_execution_summaries[0].source_revisions #=> Array<SourceRevision>
    #   resp.data.pipeline_execution_summaries[0].source_revisions[0] #=> Types::SourceRevision
    #   resp.data.pipeline_execution_summaries[0].source_revisions[0].action_name #=> String
    #   resp.data.pipeline_execution_summaries[0].source_revisions[0].revision_id #=> String
    #   resp.data.pipeline_execution_summaries[0].source_revisions[0].revision_summary #=> String
    #   resp.data.pipeline_execution_summaries[0].source_revisions[0].revision_url #=> String
    #   resp.data.pipeline_execution_summaries[0].trigger #=> Types::ExecutionTrigger
    #   resp.data.pipeline_execution_summaries[0].trigger.trigger_type #=> String, one of ["CreatePipeline", "StartPipelineExecution", "PollForSourceChanges", "Webhook", "CloudWatchEvent", "PutActionRevision"]
    #   resp.data.pipeline_execution_summaries[0].trigger.trigger_detail #=> String
    #   resp.data.pipeline_execution_summaries[0].stop_trigger #=> Types::StopExecutionTrigger
    #   resp.data.pipeline_execution_summaries[0].stop_trigger.reason #=> String
    #   resp.data.next_token #=> String
    #
    def list_pipeline_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPipelineExecutionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPipelineExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPipelineExecutions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::PipelineNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::ListPipelineExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPipelineExecutions,
        stubs: @stubs,
        params_class: Params::ListPipelineExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_pipeline_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a summary of all of the pipelines associated with your account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPipelinesInput}.
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous list pipelines call. It can be
    #               used to return the next set of pipelines in the list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of pipelines to return in a single call. To retrieve the remaining
    #               pipelines, make another call with the returned nextToken value. The minimum value you
    #               can specify is 1. The maximum accepted value is 1000.</p>
    #
    # @return [Types::ListPipelinesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pipelines(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPipelinesOutput
    #   resp.data.pipelines #=> Array<PipelineSummary>
    #   resp.data.pipelines[0] #=> Types::PipelineSummary
    #   resp.data.pipelines[0].name #=> String
    #   resp.data.pipelines[0].version #=> Integer
    #   resp.data.pipelines[0].created #=> Time
    #   resp.data.pipelines[0].updated #=> Time
    #   resp.data.next_token #=> String
    #
    def list_pipelines(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPipelinesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPipelinesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPipelines
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ValidationException]),
        data_parser: Parsers::ListPipelines
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPipelines,
        stubs: @stubs,
        params_class: Params::ListPipelinesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_pipelines
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the set of key-value pairs (metadata) that are used to manage the
    #             resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that was returned from the previous API call, which would be used to return
    #               the next page of the list. The ListTagsforResource call lists all available tags in one
    #               call and does not use pagination.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn', # required
    #     next_token: 'nextToken',
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Gets a listing of all the webhooks in this AWS Region for this account. The output
    #             lists all webhooks and includes the webhook URL and ARN and the configuration for each
    #             webhook.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWebhooksInput}.
    #
    # @option params [String] :next_token
    #   <p>The token that was returned from the previous ListWebhooks call, which can be used
    #               to return the next set of webhooks in the list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value.</p>
    #
    # @return [Types::ListWebhooksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_webhooks(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWebhooksOutput
    #   resp.data.webhooks #=> Array<ListWebhookItem>
    #   resp.data.webhooks[0] #=> Types::ListWebhookItem
    #   resp.data.webhooks[0].definition #=> Types::WebhookDefinition
    #   resp.data.webhooks[0].definition.name #=> String
    #   resp.data.webhooks[0].definition.target_pipeline #=> String
    #   resp.data.webhooks[0].definition.target_action #=> String
    #   resp.data.webhooks[0].definition.filters #=> Array<WebhookFilterRule>
    #   resp.data.webhooks[0].definition.filters[0] #=> Types::WebhookFilterRule
    #   resp.data.webhooks[0].definition.filters[0].json_path #=> String
    #   resp.data.webhooks[0].definition.filters[0].match_equals #=> String
    #   resp.data.webhooks[0].definition.authentication #=> String, one of ["GITHUB_HMAC", "IP", "UNAUTHENTICATED"]
    #   resp.data.webhooks[0].definition.authentication_configuration #=> Types::WebhookAuthConfiguration
    #   resp.data.webhooks[0].definition.authentication_configuration.allowed_ip_range #=> String
    #   resp.data.webhooks[0].definition.authentication_configuration.secret_token #=> String
    #   resp.data.webhooks[0].url #=> String
    #   resp.data.webhooks[0].error_message #=> String
    #   resp.data.webhooks[0].error_code #=> String
    #   resp.data.webhooks[0].last_triggered #=> Time
    #   resp.data.webhooks[0].arn #=> String
    #   resp.data.webhooks[0].tags #=> Array<Tag>
    #   resp.data.webhooks[0].tags[0] #=> Types::Tag
    #   resp.data.webhooks[0].tags[0].key #=> String
    #   resp.data.webhooks[0].tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def list_webhooks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWebhooksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWebhooksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWebhooks
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ValidationException]),
        data_parser: Parsers::ListWebhooks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWebhooks,
        stubs: @stubs,
        params_class: Params::ListWebhooksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_webhooks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about any jobs for AWS CodePipeline to act on.
    #                 <code>PollForJobs</code> is valid only for action types with "Custom" in the owner
    #             field. If the action type contains "AWS" or "ThirdParty" in the owner field, the
    #                 <code>PollForJobs</code> action returns an error.</p>
    #         <important>
    #             <p>When this API is called, AWS CodePipeline returns temporary credentials for the
    #                 S3 bucket used to store artifacts for the pipeline, if the action requires access to
    #                 that S3 bucket for input or output artifacts. This API also returns any secret
    #                 values defined for the action.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::PollForJobsInput}.
    #
    # @option params [ActionTypeId] :action_type_id
    #   <p>Represents information about an action type.</p>
    #
    # @option params [Integer] :max_batch_size
    #   <p>The maximum number of jobs to return in a poll for jobs call.</p>
    #
    # @option params [Hash<String, String>] :query_param
    #   <p>A map of property names and values. For an action type with no queryable
    #               properties, this value must be null or an empty map. For an action type with a queryable
    #               property, you must supply that property as a key in the map. Only jobs whose action
    #               configuration matches the mapped value are returned.</p>
    #
    # @return [Types::PollForJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.poll_for_jobs(
    #     action_type_id: {
    #       category: 'Source', # required - accepts ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #       owner: 'AWS', # required - accepts ["AWS", "ThirdParty", "Custom"]
    #       provider: 'provider', # required
    #       version: 'version' # required
    #     }, # required
    #     max_batch_size: 1,
    #     query_param: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PollForJobsOutput
    #   resp.data.jobs #=> Array<Job>
    #   resp.data.jobs[0] #=> Types::Job
    #   resp.data.jobs[0].id #=> String
    #   resp.data.jobs[0].data #=> Types::JobData
    #   resp.data.jobs[0].data.action_type_id #=> Types::ActionTypeId
    #   resp.data.jobs[0].data.action_type_id.category #=> String, one of ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #   resp.data.jobs[0].data.action_type_id.owner #=> String, one of ["AWS", "ThirdParty", "Custom"]
    #   resp.data.jobs[0].data.action_type_id.provider #=> String
    #   resp.data.jobs[0].data.action_type_id.version #=> String
    #   resp.data.jobs[0].data.action_configuration #=> Types::ActionConfiguration
    #   resp.data.jobs[0].data.action_configuration.configuration #=> Hash<String, String>
    #   resp.data.jobs[0].data.action_configuration.configuration['key'] #=> String
    #   resp.data.jobs[0].data.pipeline_context #=> Types::PipelineContext
    #   resp.data.jobs[0].data.pipeline_context.pipeline_name #=> String
    #   resp.data.jobs[0].data.pipeline_context.stage #=> Types::StageContext
    #   resp.data.jobs[0].data.pipeline_context.stage.name #=> String
    #   resp.data.jobs[0].data.pipeline_context.action #=> Types::ActionContext
    #   resp.data.jobs[0].data.pipeline_context.action.name #=> String
    #   resp.data.jobs[0].data.pipeline_context.action.action_execution_id #=> String
    #   resp.data.jobs[0].data.pipeline_context.pipeline_arn #=> String
    #   resp.data.jobs[0].data.pipeline_context.pipeline_execution_id #=> String
    #   resp.data.jobs[0].data.input_artifacts #=> Array<Artifact>
    #   resp.data.jobs[0].data.input_artifacts[0] #=> Types::Artifact
    #   resp.data.jobs[0].data.input_artifacts[0].name #=> String
    #   resp.data.jobs[0].data.input_artifacts[0].revision #=> String
    #   resp.data.jobs[0].data.input_artifacts[0].location #=> Types::ArtifactLocation
    #   resp.data.jobs[0].data.input_artifacts[0].location.type #=> String, one of ["S3"]
    #   resp.data.jobs[0].data.input_artifacts[0].location.s3_location #=> Types::S3ArtifactLocation
    #   resp.data.jobs[0].data.input_artifacts[0].location.s3_location.bucket_name #=> String
    #   resp.data.jobs[0].data.input_artifacts[0].location.s3_location.object_key #=> String
    #   resp.data.jobs[0].data.output_artifacts #=> Array<Artifact>
    #   resp.data.jobs[0].data.artifact_credentials #=> Types::AWSSessionCredentials
    #   resp.data.jobs[0].data.artifact_credentials.access_key_id #=> String
    #   resp.data.jobs[0].data.artifact_credentials.secret_access_key #=> String
    #   resp.data.jobs[0].data.artifact_credentials.session_token #=> String
    #   resp.data.jobs[0].data.continuation_token #=> String
    #   resp.data.jobs[0].data.encryption_key #=> Types::EncryptionKey
    #   resp.data.jobs[0].data.encryption_key.id #=> String
    #   resp.data.jobs[0].data.encryption_key.type #=> String, one of ["KMS"]
    #   resp.data.jobs[0].nonce #=> String
    #   resp.data.jobs[0].account_id #=> String
    #
    def poll_for_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PollForJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PollForJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PollForJobs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ActionTypeNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::PollForJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PollForJobs,
        stubs: @stubs,
        params_class: Params::PollForJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :poll_for_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Determines whether there are any third party jobs for a job worker to act on. Used
    #             for partner actions only.</p>
    #         <important>
    #             <p>When this API is called, AWS CodePipeline returns temporary credentials for the
    #                 S3 bucket used to store artifacts for the pipeline, if the action requires access to
    #                 that S3 bucket for input or output artifacts.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::PollForThirdPartyJobsInput}.
    #
    # @option params [ActionTypeId] :action_type_id
    #   <p>Represents information about an action type.</p>
    #
    # @option params [Integer] :max_batch_size
    #   <p>The maximum number of jobs to return in a poll for jobs call.</p>
    #
    # @return [Types::PollForThirdPartyJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.poll_for_third_party_jobs(
    #     action_type_id: {
    #       category: 'Source', # required - accepts ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #       owner: 'AWS', # required - accepts ["AWS", "ThirdParty", "Custom"]
    #       provider: 'provider', # required
    #       version: 'version' # required
    #     }, # required
    #     max_batch_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PollForThirdPartyJobsOutput
    #   resp.data.jobs #=> Array<ThirdPartyJob>
    #   resp.data.jobs[0] #=> Types::ThirdPartyJob
    #   resp.data.jobs[0].client_id #=> String
    #   resp.data.jobs[0].job_id #=> String
    #
    def poll_for_third_party_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PollForThirdPartyJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PollForThirdPartyJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PollForThirdPartyJobs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ActionTypeNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::PollForThirdPartyJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PollForThirdPartyJobs,
        stubs: @stubs,
        params_class: Params::PollForThirdPartyJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :poll_for_third_party_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information to AWS CodePipeline about new revisions to a source.</p>
    #
    # @param [Hash] params
    #   See {Types::PutActionRevisionInput}.
    #
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline that starts processing the revision to the
    #               source.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage that contains the action that acts on the revision.</p>
    #
    # @option params [String] :action_name
    #   <p>The name of the action that processes the revision.</p>
    #
    # @option params [ActionRevision] :action_revision
    #   <p>Represents information about the version (or revision) of an action.</p>
    #
    # @return [Types::PutActionRevisionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_action_revision(
    #     pipeline_name: 'pipelineName', # required
    #     stage_name: 'stageName', # required
    #     action_name: 'actionName', # required
    #     action_revision: {
    #       revision_id: 'revisionId', # required
    #       revision_change_id: 'revisionChangeId', # required
    #       created: Time.now # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutActionRevisionOutput
    #   resp.data.new_revision #=> Boolean
    #   resp.data.pipeline_execution_id #=> String
    #
    def put_action_revision(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutActionRevisionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutActionRevisionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutActionRevision
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ActionNotFoundException, Errors::PipelineNotFoundException, Errors::StageNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::PutActionRevision
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutActionRevision,
        stubs: @stubs,
        params_class: Params::PutActionRevisionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_action_revision
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides the response to a manual approval request to AWS CodePipeline. Valid
    #             responses include Approved and Rejected.</p>
    #
    # @param [Hash] params
    #   See {Types::PutApprovalResultInput}.
    #
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline that contains the action. </p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage that contains the action.</p>
    #
    # @option params [String] :action_name
    #   <p>The name of the action for which approval is requested.</p>
    #
    # @option params [ApprovalResult] :result
    #   <p>Represents information about the result of the approval request.</p>
    #
    # @option params [String] :token
    #   <p>The system-generated token used to identify a unique approval request. The token
    #               for each open approval request can be obtained using the <a>GetPipelineState</a> action. It is used to validate that the approval
    #               request corresponding to this token is still valid.</p>
    #
    # @return [Types::PutApprovalResultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_approval_result(
    #     pipeline_name: 'pipelineName', # required
    #     stage_name: 'stageName', # required
    #     action_name: 'actionName', # required
    #     result: {
    #       summary: 'summary', # required
    #       status: 'Approved' # required - accepts ["Approved", "Rejected"]
    #     }, # required
    #     token: 'token' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutApprovalResultOutput
    #   resp.data.approved_at #=> Time
    #
    def put_approval_result(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutApprovalResultInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutApprovalResultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutApprovalResult
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ActionNotFoundException, Errors::ApprovalAlreadyCompletedException, Errors::InvalidApprovalTokenException, Errors::PipelineNotFoundException, Errors::StageNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::PutApprovalResult
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutApprovalResult,
        stubs: @stubs,
        params_class: Params::PutApprovalResultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_approval_result
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Represents the failure of a job as returned to the pipeline by a job worker. Used
    #             for custom actions only.</p>
    #
    # @param [Hash] params
    #   See {Types::PutJobFailureResultInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique system-generated ID of the job that failed. This is the same ID returned
    #               from <code>PollForJobs</code>.</p>
    #
    # @option params [FailureDetails] :failure_details
    #   <p>The details about the failure of a job.</p>
    #
    # @return [Types::PutJobFailureResultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_job_failure_result(
    #     job_id: 'jobId', # required
    #     failure_details: {
    #       type: 'JobFailed', # required - accepts ["JobFailed", "ConfigurationError", "PermissionError", "RevisionOutOfSync", "RevisionUnavailable", "SystemUnavailable"]
    #       message: 'message', # required
    #       external_execution_id: 'externalExecutionId'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutJobFailureResultOutput
    #
    def put_job_failure_result(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutJobFailureResultInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutJobFailureResultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutJobFailureResult
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidJobStateException, Errors::JobNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::PutJobFailureResult
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutJobFailureResult,
        stubs: @stubs,
        params_class: Params::PutJobFailureResultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_job_failure_result
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Represents the success of a job as returned to the pipeline by a job worker. Used
    #             for custom actions only.</p>
    #
    # @param [Hash] params
    #   See {Types::PutJobSuccessResultInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique system-generated ID of the job that succeeded. This is the same ID
    #               returned from <code>PollForJobs</code>.</p>
    #
    # @option params [CurrentRevision] :current_revision
    #   <p>The ID of the current revision of the artifact successfully worked on by the
    #               job.</p>
    #
    # @option params [String] :continuation_token
    #   <p>A token generated by a job worker, such as an AWS CodeDeploy deployment ID, that a
    #               successful job provides to identify a custom action in progress. Future jobs use this
    #               token to identify the running instance of the action. It can be reused to return more
    #               information about the progress of the custom action. When the action is complete, no
    #               continuation token should be supplied.</p>
    #
    # @option params [ExecutionDetails] :execution_details
    #   <p>The execution details of the successful job, such as the actions taken by the job
    #               worker.</p>
    #
    # @option params [Hash<String, String>] :output_variables
    #   <p>Key-value pairs produced as output by a job worker that can be made available to a
    #               downstream action configuration. <code>outputVariables</code> can be included only when
    #               there is no continuation token on the request.</p>
    #
    # @return [Types::PutJobSuccessResultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_job_success_result(
    #     job_id: 'jobId', # required
    #     current_revision: {
    #       revision: 'revision', # required
    #       change_identifier: 'changeIdentifier', # required
    #       created: Time.now,
    #       revision_summary: 'revisionSummary'
    #     },
    #     continuation_token: 'continuationToken',
    #     execution_details: {
    #       summary: 'summary',
    #       external_execution_id: 'externalExecutionId',
    #       percent_complete: 1
    #     },
    #     output_variables: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutJobSuccessResultOutput
    #
    def put_job_success_result(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutJobSuccessResultInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutJobSuccessResultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutJobSuccessResult
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidJobStateException, Errors::JobNotFoundException, Errors::OutputVariablesSizeExceededException, Errors::ValidationException]),
        data_parser: Parsers::PutJobSuccessResult
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutJobSuccessResult,
        stubs: @stubs,
        params_class: Params::PutJobSuccessResultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_job_success_result
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Represents the failure of a third party job as returned to the pipeline by a job
    #             worker. Used for partner actions only.</p>
    #
    # @param [Hash] params
    #   See {Types::PutThirdPartyJobFailureResultInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the job that failed. This is the same ID returned from
    #                   <code>PollForThirdPartyJobs</code>.</p>
    #
    # @option params [String] :client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    #
    # @option params [FailureDetails] :failure_details
    #   <p>Represents information about failure details.</p>
    #
    # @return [Types::PutThirdPartyJobFailureResultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_third_party_job_failure_result(
    #     job_id: 'jobId', # required
    #     client_token: 'clientToken', # required
    #     failure_details: {
    #       type: 'JobFailed', # required - accepts ["JobFailed", "ConfigurationError", "PermissionError", "RevisionOutOfSync", "RevisionUnavailable", "SystemUnavailable"]
    #       message: 'message', # required
    #       external_execution_id: 'externalExecutionId'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutThirdPartyJobFailureResultOutput
    #
    def put_third_party_job_failure_result(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutThirdPartyJobFailureResultInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutThirdPartyJobFailureResultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutThirdPartyJobFailureResult
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClientTokenException, Errors::InvalidJobStateException, Errors::JobNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::PutThirdPartyJobFailureResult
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutThirdPartyJobFailureResult,
        stubs: @stubs,
        params_class: Params::PutThirdPartyJobFailureResultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_third_party_job_failure_result
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Represents the success of a third party job as returned to the pipeline by a job
    #             worker. Used for partner actions only.</p>
    #
    # @param [Hash] params
    #   See {Types::PutThirdPartyJobSuccessResultInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the job that successfully completed. This is the same ID returned from
    #                   <code>PollForThirdPartyJobs</code>.</p>
    #
    # @option params [String] :client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    #
    # @option params [CurrentRevision] :current_revision
    #   <p>Represents information about a current revision.</p>
    #
    # @option params [String] :continuation_token
    #   <p>A token generated by a job worker, such as an AWS CodeDeploy deployment ID, that a
    #               successful job provides to identify a partner action in progress. Future jobs use this
    #               token to identify the running instance of the action. It can be reused to return more
    #               information about the progress of the partner action. When the action is complete, no
    #               continuation token should be supplied.</p>
    #
    # @option params [ExecutionDetails] :execution_details
    #   <p>The details of the actions taken and results produced on an artifact as it passes
    #               through stages in the pipeline. </p>
    #
    # @return [Types::PutThirdPartyJobSuccessResultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_third_party_job_success_result(
    #     job_id: 'jobId', # required
    #     client_token: 'clientToken', # required
    #     current_revision: {
    #       revision: 'revision', # required
    #       change_identifier: 'changeIdentifier', # required
    #       created: Time.now,
    #       revision_summary: 'revisionSummary'
    #     },
    #     continuation_token: 'continuationToken',
    #     execution_details: {
    #       summary: 'summary',
    #       external_execution_id: 'externalExecutionId',
    #       percent_complete: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutThirdPartyJobSuccessResultOutput
    #
    def put_third_party_job_success_result(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutThirdPartyJobSuccessResultInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutThirdPartyJobSuccessResultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutThirdPartyJobSuccessResult
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidClientTokenException, Errors::InvalidJobStateException, Errors::JobNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::PutThirdPartyJobSuccessResult
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutThirdPartyJobSuccessResult,
        stubs: @stubs,
        params_class: Params::PutThirdPartyJobSuccessResultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_third_party_job_success_result
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Defines a webhook and returns a unique webhook URL generated by CodePipeline. This
    #             URL can be supplied to third party source hosting providers to call every time there's a
    #             code change. When CodePipeline receives a POST request on this URL, the pipeline defined
    #             in the webhook is started as long as the POST request satisfied the authentication and
    #             filtering requirements supplied when defining the webhook. RegisterWebhookWithThirdParty
    #             and DeregisterWebhookWithThirdParty APIs can be used to automatically configure
    #             supported third parties to call the generated webhook URL.</p>
    #
    # @param [Hash] params
    #   See {Types::PutWebhookInput}.
    #
    # @option params [WebhookDefinition] :webhook
    #   <p>The detail provided in an input file to create the webhook, such as the webhook
    #               name, the pipeline name, and the action name. Give the webhook a unique name that helps
    #               you identify it. You might name the webhook after the pipeline and action it targets so
    #               that you can easily recognize what it's used for later.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags for the webhook.</p>
    #
    # @return [Types::PutWebhookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_webhook(
    #     webhook: {
    #       name: 'name', # required
    #       target_pipeline: 'targetPipeline', # required
    #       target_action: 'targetAction', # required
    #       filters: [
    #         {
    #           json_path: 'jsonPath', # required
    #           match_equals: 'matchEquals'
    #         }
    #       ], # required
    #       authentication: 'GITHUB_HMAC', # required - accepts ["GITHUB_HMAC", "IP", "UNAUTHENTICATED"]
    #       authentication_configuration: {
    #         allowed_ip_range: 'AllowedIPRange',
    #         secret_token: 'SecretToken'
    #       } # required
    #     }, # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutWebhookOutput
    #   resp.data.webhook #=> Types::ListWebhookItem
    #   resp.data.webhook.definition #=> Types::WebhookDefinition
    #   resp.data.webhook.definition.name #=> String
    #   resp.data.webhook.definition.target_pipeline #=> String
    #   resp.data.webhook.definition.target_action #=> String
    #   resp.data.webhook.definition.filters #=> Array<WebhookFilterRule>
    #   resp.data.webhook.definition.filters[0] #=> Types::WebhookFilterRule
    #   resp.data.webhook.definition.filters[0].json_path #=> String
    #   resp.data.webhook.definition.filters[0].match_equals #=> String
    #   resp.data.webhook.definition.authentication #=> String, one of ["GITHUB_HMAC", "IP", "UNAUTHENTICATED"]
    #   resp.data.webhook.definition.authentication_configuration #=> Types::WebhookAuthConfiguration
    #   resp.data.webhook.definition.authentication_configuration.allowed_ip_range #=> String
    #   resp.data.webhook.definition.authentication_configuration.secret_token #=> String
    #   resp.data.webhook.url #=> String
    #   resp.data.webhook.error_message #=> String
    #   resp.data.webhook.error_code #=> String
    #   resp.data.webhook.last_triggered #=> Time
    #   resp.data.webhook.arn #=> String
    #   resp.data.webhook.tags #=> Array<Tag>
    #   resp.data.webhook.tags[0] #=> Types::Tag
    #   resp.data.webhook.tags[0].key #=> String
    #   resp.data.webhook.tags[0].value #=> String
    #
    def put_webhook(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutWebhookInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutWebhookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutWebhook
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidTagsException, Errors::InvalidWebhookAuthenticationParametersException, Errors::InvalidWebhookFilterPatternException, Errors::LimitExceededException, Errors::PipelineNotFoundException, Errors::TooManyTagsException, Errors::ValidationException]),
        data_parser: Parsers::PutWebhook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutWebhook,
        stubs: @stubs,
        params_class: Params::PutWebhookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_webhook
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures a connection between the webhook that was created and the external tool
    #             with events to be detected.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterWebhookWithThirdPartyInput}.
    #
    # @option params [String] :webhook_name
    #   <p>The name of an existing webhook created with PutWebhook to register with a
    #               supported third party. </p>
    #
    # @return [Types::RegisterWebhookWithThirdPartyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_webhook_with_third_party(
    #     webhook_name: 'webhookName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterWebhookWithThirdPartyOutput
    #
    def register_webhook_with_third_party(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterWebhookWithThirdPartyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterWebhookWithThirdPartyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterWebhookWithThirdParty
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::WebhookNotFoundException]),
        data_parser: Parsers::RegisterWebhookWithThirdParty
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterWebhookWithThirdParty,
        stubs: @stubs,
        params_class: Params::RegisterWebhookWithThirdPartyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_webhook_with_third_party
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resumes the pipeline execution by retrying the last failed actions in a stage. You
    #             can retry a stage immediately if any of the actions in the stage fail. When you retry,
    #             all actions that are still in progress continue working, and failed actions are
    #             triggered again.</p>
    #
    # @param [Hash] params
    #   See {Types::RetryStageExecutionInput}.
    #
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline that contains the failed stage.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the failed stage to be retried.</p>
    #
    # @option params [String] :pipeline_execution_id
    #   <p>The ID of the pipeline execution in the failed stage to be retried. Use the <a>GetPipelineState</a> action to retrieve the current pipelineExecutionId of
    #               the failed stage</p>
    #
    # @option params [String] :retry_mode
    #   <p>The scope of the retry attempt. Currently, the only supported value is
    #               FAILED_ACTIONS.</p>
    #
    # @return [Types::RetryStageExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retry_stage_execution(
    #     pipeline_name: 'pipelineName', # required
    #     stage_name: 'stageName', # required
    #     pipeline_execution_id: 'pipelineExecutionId', # required
    #     retry_mode: 'FAILED_ACTIONS' # required - accepts ["FAILED_ACTIONS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RetryStageExecutionOutput
    #   resp.data.pipeline_execution_id #=> String
    #
    def retry_stage_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RetryStageExecutionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RetryStageExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RetryStageExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::NotLatestPipelineExecutionException, Errors::PipelineNotFoundException, Errors::StageNotFoundException, Errors::StageNotRetryableException, Errors::ValidationException]),
        data_parser: Parsers::RetryStageExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RetryStageExecution,
        stubs: @stubs,
        params_class: Params::RetryStageExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :retry_stage_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the specified pipeline. Specifically, it begins processing the latest commit
    #             to the source location specified as part of the pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::StartPipelineExecutionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the pipeline to start.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The system-generated unique ID used to identify a unique execution
    #               request.</p>
    #
    # @return [Types::StartPipelineExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_pipeline_execution(
    #     name: 'name', # required
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartPipelineExecutionOutput
    #   resp.data.pipeline_execution_id #=> String
    #
    def start_pipeline_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartPipelineExecutionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartPipelineExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartPipelineExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::PipelineNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::StartPipelineExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartPipelineExecution,
        stubs: @stubs,
        params_class: Params::StartPipelineExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_pipeline_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops the specified pipeline execution. You choose to either stop the pipeline
    #             execution by completing in-progress actions without starting subsequent actions, or by
    #             abandoning in-progress actions. While completing or abandoning in-progress actions, the
    #             pipeline execution is in a <code>Stopping</code> state. After all in-progress actions
    #             are completed or abandoned, the pipeline execution is in a <code>Stopped</code>
    #             state.</p>
    #
    # @param [Hash] params
    #   See {Types::StopPipelineExecutionInput}.
    #
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline to stop.</p>
    #
    # @option params [String] :pipeline_execution_id
    #   <p>The ID of the pipeline execution to be stopped in the current stage. Use the
    #                   <code>GetPipelineState</code> action to retrieve the current
    #               pipelineExecutionId.</p>
    #
    # @option params [Boolean] :abandon
    #   <p>Use this option to stop the pipeline execution by abandoning, rather than finishing,
    #               in-progress actions.</p>
    #           <note>
    #               <p>This option can lead to failed or out-of-sequence tasks.</p>
    #           </note>
    #
    # @option params [String] :reason
    #   <p>Use this option to enter comments, such as the reason the pipeline was stopped.</p>
    #
    # @return [Types::StopPipelineExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_pipeline_execution(
    #     pipeline_name: 'pipelineName', # required
    #     pipeline_execution_id: 'pipelineExecutionId', # required
    #     abandon: false,
    #     reason: 'reason'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopPipelineExecutionOutput
    #   resp.data.pipeline_execution_id #=> String
    #
    def stop_pipeline_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopPipelineExecutionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopPipelineExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopPipelineExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::DuplicatedStopRequestException, Errors::PipelineExecutionNotStoppableException, Errors::PipelineNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::StopPipelineExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopPipelineExecution,
        stubs: @stubs,
        params_class: Params::StopPipelineExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_pipeline_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds to or modifies the tags of the given resource. Tags are metadata that can be used
    #             to manage a resource. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags you want to modify or add to the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidArnException, Errors::InvalidTagsException, Errors::ResourceNotFoundException, Errors::TooManyTagsException, Errors::ValidationException]),
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

    # <p>Removes tags from an AWS resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of keys for the tags to be removed from the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidArnException, Errors::InvalidTagsException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Updates an action type that was created with any supported integration model, where
    #             the action type is to be used by customers of the action type provider. Use a JSON file
    #             with the action definition and <code>UpdateActionType</code> to provide the full
    #             structure.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateActionTypeInput}.
    #
    # @option params [ActionTypeDeclaration] :action_type
    #   <p>The action type definition for the action type to be updated.</p>
    #
    # @return [Types::UpdateActionTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_action_type(
    #     action_type: {
    #       description: 'description',
    #       executor: {
    #         configuration: {
    #           lambda_executor_configuration: {
    #             lambda_function_arn: 'lambdaFunctionArn' # required
    #           },
    #           job_worker_executor_configuration: {
    #             polling_accounts: [
    #               'member'
    #             ],
    #             polling_service_principals: [
    #               'member'
    #             ]
    #           }
    #         }, # required
    #         type: 'JobWorker', # required - accepts ["JobWorker", "Lambda"]
    #         policy_statements_template: 'policyStatementsTemplate',
    #         job_timeout: 1
    #       }, # required
    #       id: {
    #         category: 'Source', # required - accepts ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #         owner: 'owner', # required
    #         provider: 'provider', # required
    #         version: 'version' # required
    #       }, # required
    #       input_artifact_details: {
    #         minimum_count: 1, # required
    #         maximum_count: 1 # required
    #       }, # required
    #       permissions: {
    #         allowed_accounts: [
    #           'member'
    #         ] # required
    #       },
    #       properties: [
    #         {
    #           name: 'name', # required
    #           optional: false, # required
    #           key: false, # required
    #           no_echo: false, # required
    #           queryable: false,
    #           description: 'description'
    #         }
    #       ],
    #       urls: {
    #         configuration_url: 'configurationUrl',
    #         entity_url_template: 'entityUrlTemplate',
    #         execution_url_template: 'executionUrlTemplate',
    #         revision_url_template: 'revisionUrlTemplate'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateActionTypeOutput
    #
    def update_action_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateActionTypeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateActionTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateActionType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ActionTypeNotFoundException, Errors::RequestFailedException, Errors::ValidationException]),
        data_parser: Parsers::UpdateActionType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateActionType,
        stubs: @stubs,
        params_class: Params::UpdateActionTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_action_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a specified pipeline with edits or changes to its structure. Use a JSON
    #             file with the pipeline structure and <code>UpdatePipeline</code> to provide the full
    #             structure of the pipeline. Updating the pipeline increases the version number of the
    #             pipeline by 1.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePipelineInput}.
    #
    # @option params [PipelineDeclaration] :pipeline
    #   <p>The name of the pipeline to be updated.</p>
    #
    # @return [Types::UpdatePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pipeline(
    #     pipeline: {
    #       name: 'name', # required
    #       role_arn: 'roleArn', # required
    #       artifact_store: {
    #         type: 'S3', # required - accepts ["S3"]
    #         location: 'location', # required
    #         encryption_key: {
    #           id: 'id', # required
    #           type: 'KMS' # required - accepts ["KMS"]
    #         }
    #       },
    #       stages: [
    #         {
    #           name: 'name', # required
    #           blockers: [
    #             {
    #               name: 'name', # required
    #               type: 'Schedule' # required - accepts ["Schedule"]
    #             }
    #           ],
    #           actions: [
    #             {
    #               name: 'name', # required
    #               action_type_id: {
    #                 category: 'Source', # required - accepts ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #                 owner: 'AWS', # required - accepts ["AWS", "ThirdParty", "Custom"]
    #                 provider: 'provider', # required
    #                 version: 'version' # required
    #               }, # required
    #               run_order: 1,
    #               configuration: {
    #                 'key' => 'value'
    #               },
    #               output_artifacts: [
    #                 {
    #                   name: 'name' # required
    #                 }
    #               ],
    #               input_artifacts: [
    #                 {
    #                   name: 'name' # required
    #                 }
    #               ],
    #               role_arn: 'roleArn',
    #               region: 'region',
    #               namespace: 'namespace'
    #             }
    #           ] # required
    #         }
    #       ], # required
    #       version: 1
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePipelineOutput
    #   resp.data.pipeline #=> Types::PipelineDeclaration
    #   resp.data.pipeline.name #=> String
    #   resp.data.pipeline.role_arn #=> String
    #   resp.data.pipeline.artifact_store #=> Types::ArtifactStore
    #   resp.data.pipeline.artifact_store.type #=> String, one of ["S3"]
    #   resp.data.pipeline.artifact_store.location #=> String
    #   resp.data.pipeline.artifact_store.encryption_key #=> Types::EncryptionKey
    #   resp.data.pipeline.artifact_store.encryption_key.id #=> String
    #   resp.data.pipeline.artifact_store.encryption_key.type #=> String, one of ["KMS"]
    #   resp.data.pipeline.artifact_stores #=> Hash<String, ArtifactStore>
    #   resp.data.pipeline.stages #=> Array<StageDeclaration>
    #   resp.data.pipeline.stages[0] #=> Types::StageDeclaration
    #   resp.data.pipeline.stages[0].name #=> String
    #   resp.data.pipeline.stages[0].blockers #=> Array<BlockerDeclaration>
    #   resp.data.pipeline.stages[0].blockers[0] #=> Types::BlockerDeclaration
    #   resp.data.pipeline.stages[0].blockers[0].name #=> String
    #   resp.data.pipeline.stages[0].blockers[0].type #=> String, one of ["Schedule"]
    #   resp.data.pipeline.stages[0].actions #=> Array<ActionDeclaration>
    #   resp.data.pipeline.stages[0].actions[0] #=> Types::ActionDeclaration
    #   resp.data.pipeline.stages[0].actions[0].name #=> String
    #   resp.data.pipeline.stages[0].actions[0].action_type_id #=> Types::ActionTypeId
    #   resp.data.pipeline.stages[0].actions[0].action_type_id.category #=> String, one of ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #   resp.data.pipeline.stages[0].actions[0].action_type_id.owner #=> String, one of ["AWS", "ThirdParty", "Custom"]
    #   resp.data.pipeline.stages[0].actions[0].action_type_id.provider #=> String
    #   resp.data.pipeline.stages[0].actions[0].action_type_id.version #=> String
    #   resp.data.pipeline.stages[0].actions[0].run_order #=> Integer
    #   resp.data.pipeline.stages[0].actions[0].configuration #=> Hash<String, String>
    #   resp.data.pipeline.stages[0].actions[0].configuration['key'] #=> String
    #   resp.data.pipeline.stages[0].actions[0].output_artifacts #=> Array<OutputArtifact>
    #   resp.data.pipeline.stages[0].actions[0].output_artifacts[0] #=> Types::OutputArtifact
    #   resp.data.pipeline.stages[0].actions[0].output_artifacts[0].name #=> String
    #   resp.data.pipeline.stages[0].actions[0].input_artifacts #=> Array<InputArtifact>
    #   resp.data.pipeline.stages[0].actions[0].input_artifacts[0] #=> Types::InputArtifact
    #   resp.data.pipeline.stages[0].actions[0].input_artifacts[0].name #=> String
    #   resp.data.pipeline.stages[0].actions[0].role_arn #=> String
    #   resp.data.pipeline.stages[0].actions[0].region #=> String
    #   resp.data.pipeline.stages[0].actions[0].namespace #=> String
    #   resp.data.pipeline.version #=> Integer
    #
    def update_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePipelineInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePipeline
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidActionDeclarationException, Errors::InvalidBlockerDeclarationException, Errors::InvalidStageDeclarationException, Errors::InvalidStructureException, Errors::LimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::UpdatePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePipeline,
        stubs: @stubs,
        params_class: Params::UpdatePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_pipeline
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
