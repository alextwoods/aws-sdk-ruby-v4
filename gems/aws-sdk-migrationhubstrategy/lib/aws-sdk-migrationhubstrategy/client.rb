# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::MigrationHubStrategy
  # An API client for AWSMigrationHubStrategyRecommendation
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Migration Hub Strategy Recommendations</fullname>
  #
  #          <p>This API reference provides descriptions, syntax, and other details about each of the
  #       actions and data types for Migration Hub Strategy Recommendations (Strategy Recommendations). The topic for each action shows the API
  #       request parameters and the response. Alternatively, you can use one of the AWS SDKs to access
  #       an API that is tailored to the programming language or platform that you're using. For more
  #       information, see <a href="http://aws.amazon.com/tools/#SDKs">AWS SDKs</a>.</p>
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
    def initialize(config = AWS::SDK::MigrationHubStrategy::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p> Retrieves details about an application component. </p>
    #
    # @param [Hash] params
    #   See {Types::GetApplicationComponentDetailsInput}.
    #
    # @option params [String] :application_component_id
    #   <p> The ID of the application component. The ID is unique within an AWS account.</p>
    #
    # @return [Types::GetApplicationComponentDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_component_details(
    #     application_component_id: 'applicationComponentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApplicationComponentDetailsOutput
    #   resp.data.application_component_detail #=> Types::ApplicationComponentDetail
    #   resp.data.application_component_detail.id #=> String
    #   resp.data.application_component_detail.name #=> String
    #   resp.data.application_component_detail.recommendation_set #=> Types::RecommendationSet
    #   resp.data.application_component_detail.recommendation_set.transformation_tool #=> Types::TransformationTool
    #   resp.data.application_component_detail.recommendation_set.transformation_tool.name #=> String, one of ["App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"]
    #   resp.data.application_component_detail.recommendation_set.transformation_tool.description #=> String
    #   resp.data.application_component_detail.recommendation_set.transformation_tool.tranformation_tool_installation_link #=> String
    #   resp.data.application_component_detail.recommendation_set.target_destination #=> String, one of ["None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service"]
    #   resp.data.application_component_detail.recommendation_set.strategy #=> String, one of ["Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"]
    #   resp.data.application_component_detail.analysis_status #=> String, one of ["ANALYSIS_TO_BE_SCHEDULED", "ANALYSIS_STARTED", "ANALYSIS_SUCCESS", "ANALYSIS_FAILED"]
    #   resp.data.application_component_detail.status_message #=> String
    #   resp.data.application_component_detail.list_antipattern_severity_summary #=> Array<AntipatternSeveritySummary>
    #   resp.data.application_component_detail.list_antipattern_severity_summary[0] #=> Types::AntipatternSeveritySummary
    #   resp.data.application_component_detail.list_antipattern_severity_summary[0].severity #=> String, one of ["HIGH", "MEDIUM", "LOW"]
    #   resp.data.application_component_detail.list_antipattern_severity_summary[0].count #=> Integer
    #   resp.data.application_component_detail.database_config_detail #=> Types::DatabaseConfigDetail
    #   resp.data.application_component_detail.database_config_detail.secret_name #=> String
    #   resp.data.application_component_detail.source_code_repositories #=> Array<SourceCodeRepository>
    #   resp.data.application_component_detail.source_code_repositories[0] #=> Types::SourceCodeRepository
    #   resp.data.application_component_detail.source_code_repositories[0].repository #=> String
    #   resp.data.application_component_detail.source_code_repositories[0].branch #=> String
    #   resp.data.application_component_detail.source_code_repositories[0].version_control_type #=> String
    #   resp.data.application_component_detail.app_type #=> String, one of ["DotNetFramework", "Java", "SQLServer", "IIS", "Oracle", "Other"]
    #   resp.data.application_component_detail.resource_sub_type #=> String, one of ["Database", "Process", "DatabaseProcess"]
    #   resp.data.application_component_detail.inclusion_status #=> String, one of ["excludeFromAssessment", "includeInAssessment"]
    #   resp.data.application_component_detail.antipattern_report_s3_object #=> Types::S3Object
    #   resp.data.application_component_detail.antipattern_report_s3_object.s3_bucket #=> String
    #   resp.data.application_component_detail.antipattern_report_s3_object.s3key #=> String
    #   resp.data.application_component_detail.antipattern_report_status #=> String, one of ["FAILED", "IN_PROGRESS", "SUCCESS"]
    #   resp.data.application_component_detail.antipattern_report_status_message #=> String
    #   resp.data.application_component_detail.os_version #=> String
    #   resp.data.application_component_detail.os_driver #=> String
    #   resp.data.application_component_detail.last_analyzed_timestamp #=> Time
    #   resp.data.application_component_detail.associated_server_id #=> String
    #   resp.data.application_component_detail.more_server_association_exists #=> Boolean
    #   resp.data.associated_applications #=> Array<AssociatedApplication>
    #   resp.data.associated_applications[0] #=> Types::AssociatedApplication
    #   resp.data.associated_applications[0].name #=> String
    #   resp.data.associated_applications[0].id #=> String
    #   resp.data.more_application_resource #=> Boolean
    #   resp.data.associated_server_ids #=> Array<String>
    #   resp.data.associated_server_ids[0] #=> String
    #
    def get_application_component_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApplicationComponentDetailsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApplicationComponentDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApplicationComponentDetails
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetApplicationComponentDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApplicationComponentDetails,
        stubs: @stubs,
        params_class: Params::GetApplicationComponentDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_application_component_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Retrieves a list of all the recommended strategies and tools for an application component
    #       running on a server. </p>
    #
    # @param [Hash] params
    #   See {Types::GetApplicationComponentStrategiesInput}.
    #
    # @option params [String] :application_component_id
    #   <p> The ID of the application component. The ID is unique within an AWS account.</p>
    #
    # @return [Types::GetApplicationComponentStrategiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_component_strategies(
    #     application_component_id: 'applicationComponentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApplicationComponentStrategiesOutput
    #   resp.data.application_component_strategies #=> Array<ApplicationComponentStrategy>
    #   resp.data.application_component_strategies[0] #=> Types::ApplicationComponentStrategy
    #   resp.data.application_component_strategies[0].recommendation #=> Types::RecommendationSet
    #   resp.data.application_component_strategies[0].recommendation.transformation_tool #=> Types::TransformationTool
    #   resp.data.application_component_strategies[0].recommendation.transformation_tool.name #=> String, one of ["App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"]
    #   resp.data.application_component_strategies[0].recommendation.transformation_tool.description #=> String
    #   resp.data.application_component_strategies[0].recommendation.transformation_tool.tranformation_tool_installation_link #=> String
    #   resp.data.application_component_strategies[0].recommendation.target_destination #=> String, one of ["None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service"]
    #   resp.data.application_component_strategies[0].recommendation.strategy #=> String, one of ["Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"]
    #   resp.data.application_component_strategies[0].status #=> String, one of ["recommended", "viableOption", "notRecommended"]
    #   resp.data.application_component_strategies[0].is_preferred #=> Boolean
    #
    def get_application_component_strategies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApplicationComponentStrategiesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApplicationComponentStrategiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApplicationComponentStrategies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetApplicationComponentStrategies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApplicationComponentStrategies,
        stubs: @stubs,
        params_class: Params::GetApplicationComponentStrategiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_application_component_strategies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Retrieves the status of an on-going assessment. </p>
    #
    # @param [Hash] params
    #   See {Types::GetAssessmentInput}.
    #
    # @option params [String] :id
    #   <p> The <code>assessmentid</code> returned by <a>StartAssessment</a>.</p>
    #
    # @return [Types::GetAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assessment(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAssessmentOutput
    #   resp.data.id #=> String
    #   resp.data.data_collection_details #=> Types::DataCollectionDetails
    #   resp.data.data_collection_details.status #=> String, one of ["IN_PROGRESS", "COMPLETE", "FAILED", "STOPPED"]
    #   resp.data.data_collection_details.servers #=> Integer
    #   resp.data.data_collection_details.failed #=> Integer
    #   resp.data.data_collection_details.success #=> Integer
    #   resp.data.data_collection_details.in_progress #=> Integer
    #   resp.data.data_collection_details.start_time #=> Time
    #   resp.data.data_collection_details.completion_time #=> Time
    #
    def get_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAssessmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAssessment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAssessment,
        stubs: @stubs,
        params_class: Params::GetAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Retrieves the details about a specific import task. </p>
    #
    # @param [Hash] params
    #   See {Types::GetImportFileTaskInput}.
    #
    # @option params [String] :id
    #   <p> The ID of the import file task. This ID is returned in the response of
    #         <a>StartImportFileTask</a>. </p>
    #
    # @return [Types::GetImportFileTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import_file_task(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetImportFileTaskOutput
    #   resp.data.id #=> String
    #   resp.data.status #=> String, one of ["ImportInProgress", "ImportFailed", "ImportPartialSuccess", "ImportSuccess", "DeleteInProgress", "DeleteFailed", "DeletePartialSuccess", "DeleteSuccess"]
    #   resp.data.start_time #=> Time
    #   resp.data.input_s3_bucket #=> String
    #   resp.data.input_s3_key #=> String
    #   resp.data.status_report_s3_bucket #=> String
    #   resp.data.status_report_s3_key #=> String
    #   resp.data.completion_time #=> Time
    #   resp.data.number_of_records_success #=> Integer
    #   resp.data.number_of_records_failed #=> Integer
    #   resp.data.import_name #=> String
    #
    def get_import_file_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetImportFileTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetImportFileTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetImportFileTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetImportFileTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetImportFileTask,
        stubs: @stubs,
        params_class: Params::GetImportFileTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_import_file_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Retrieves your migration and modernization preferences. </p>
    #
    # @param [Hash] params
    #   See {Types::GetPortfolioPreferencesInput}.
    #
    # @return [Types::GetPortfolioPreferencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_portfolio_preferences()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPortfolioPreferencesOutput
    #   resp.data.prioritize_business_goals #=> Types::PrioritizeBusinessGoals
    #   resp.data.prioritize_business_goals.business_goals #=> Types::BusinessGoals
    #   resp.data.prioritize_business_goals.business_goals.speed_of_migration #=> Integer
    #   resp.data.prioritize_business_goals.business_goals.reduce_operational_overhead_with_managed_services #=> Integer
    #   resp.data.prioritize_business_goals.business_goals.modernize_infrastructure_with_cloud_native_technologies #=> Integer
    #   resp.data.prioritize_business_goals.business_goals.license_cost_reduction #=> Integer
    #   resp.data.application_preferences #=> Types::ApplicationPreferences
    #   resp.data.application_preferences.management_preference #=> ManagementPreference
    #   resp.data.database_preferences #=> Types::DatabasePreferences
    #   resp.data.database_preferences.database_management_preference #=> String, one of ["AWS-managed", "Self-manage", "No preference"]
    #   resp.data.database_preferences.database_migration_preference #=> DatabaseMigrationPreference
    #
    def get_portfolio_preferences(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPortfolioPreferencesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPortfolioPreferencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPortfolioPreferences
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetPortfolioPreferences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPortfolioPreferences,
        stubs: @stubs,
        params_class: Params::GetPortfolioPreferencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_portfolio_preferences
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Retrieves overall summary including the number of servers to rehost and the overall
    #       number of anti-patterns. </p>
    #
    # @param [Hash] params
    #   See {Types::GetPortfolioSummaryInput}.
    #
    # @return [Types::GetPortfolioSummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_portfolio_summary()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPortfolioSummaryOutput
    #   resp.data.assessment_summary #=> Types::AssessmentSummary
    #   resp.data.assessment_summary.list_server_strategy_summary #=> Array<StrategySummary>
    #   resp.data.assessment_summary.list_server_strategy_summary[0] #=> Types::StrategySummary
    #   resp.data.assessment_summary.list_server_strategy_summary[0].strategy #=> String, one of ["Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"]
    #   resp.data.assessment_summary.list_server_strategy_summary[0].count #=> Integer
    #   resp.data.assessment_summary.list_application_component_strategy_summary #=> Array<StrategySummary>
    #   resp.data.assessment_summary.list_antipattern_severity_summary #=> Array<AntipatternSeveritySummary>
    #   resp.data.assessment_summary.list_antipattern_severity_summary[0] #=> Types::AntipatternSeveritySummary
    #   resp.data.assessment_summary.list_antipattern_severity_summary[0].severity #=> String, one of ["HIGH", "MEDIUM", "LOW"]
    #   resp.data.assessment_summary.list_antipattern_severity_summary[0].count #=> Integer
    #   resp.data.assessment_summary.list_application_component_summary #=> Array<ApplicationComponentSummary>
    #   resp.data.assessment_summary.list_application_component_summary[0] #=> Types::ApplicationComponentSummary
    #   resp.data.assessment_summary.list_application_component_summary[0].app_type #=> String, one of ["DotNetFramework", "Java", "SQLServer", "IIS", "Oracle", "Other"]
    #   resp.data.assessment_summary.list_application_component_summary[0].count #=> Integer
    #   resp.data.assessment_summary.list_server_summary #=> Array<ServerSummary>
    #   resp.data.assessment_summary.list_server_summary[0] #=> Types::ServerSummary
    #   resp.data.assessment_summary.list_server_summary[0].server_os_type #=> String, one of ["WindowsServer", "AmazonLinux", "EndOfSupportWindowsServer", "Redhat", "Other"]
    #   resp.data.assessment_summary.list_server_summary[0].count #=> Integer
    #   resp.data.assessment_summary.antipattern_report_s3_object #=> Types::S3Object
    #   resp.data.assessment_summary.antipattern_report_s3_object.s3_bucket #=> String
    #   resp.data.assessment_summary.antipattern_report_s3_object.s3key #=> String
    #   resp.data.assessment_summary.antipattern_report_status #=> String, one of ["FAILED", "IN_PROGRESS", "SUCCESS"]
    #   resp.data.assessment_summary.antipattern_report_status_message #=> String
    #   resp.data.assessment_summary.last_analyzed_timestamp #=> Time
    #
    def get_portfolio_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPortfolioSummaryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPortfolioSummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPortfolioSummary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetPortfolioSummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPortfolioSummary,
        stubs: @stubs,
        params_class: Params::GetPortfolioSummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_portfolio_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Retrieves detailed information about the specified recommendation report. </p>
    #
    # @param [Hash] params
    #   See {Types::GetRecommendationReportDetailsInput}.
    #
    # @option params [String] :id
    #   <p> The recommendation report generation task <code>id</code> returned by
    #         <a>StartRecommendationReportGeneration</a>. </p>
    #
    # @return [Types::GetRecommendationReportDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendation_report_details(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRecommendationReportDetailsOutput
    #   resp.data.id #=> String
    #   resp.data.recommendation_report_details #=> Types::RecommendationReportDetails
    #   resp.data.recommendation_report_details.status #=> String, one of ["FAILED", "IN_PROGRESS", "SUCCESS"]
    #   resp.data.recommendation_report_details.status_message #=> String
    #   resp.data.recommendation_report_details.start_time #=> Time
    #   resp.data.recommendation_report_details.completion_time #=> Time
    #   resp.data.recommendation_report_details.s3_bucket #=> String
    #   resp.data.recommendation_report_details.s3_keys #=> Array<String>
    #   resp.data.recommendation_report_details.s3_keys[0] #=> String
    #
    def get_recommendation_report_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRecommendationReportDetailsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRecommendationReportDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRecommendationReportDetails
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetRecommendationReportDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRecommendationReportDetails,
        stubs: @stubs,
        params_class: Params::GetRecommendationReportDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_recommendation_report_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Retrieves detailed information about a specified server. </p>
    #
    # @param [Hash] params
    #   See {Types::GetServerDetailsInput}.
    #
    # @option params [String] :server_id
    #   <p> The ID of the server. </p>
    #
    # @option params [String] :next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example,
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    #
    # @return [Types::GetServerDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_server_details(
    #     server_id: 'serverId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServerDetailsOutput
    #   resp.data.next_token #=> String
    #   resp.data.server_detail #=> Types::ServerDetail
    #   resp.data.server_detail.id #=> String
    #   resp.data.server_detail.name #=> String
    #   resp.data.server_detail.recommendation_set #=> Types::RecommendationSet
    #   resp.data.server_detail.recommendation_set.transformation_tool #=> Types::TransformationTool
    #   resp.data.server_detail.recommendation_set.transformation_tool.name #=> String, one of ["App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"]
    #   resp.data.server_detail.recommendation_set.transformation_tool.description #=> String
    #   resp.data.server_detail.recommendation_set.transformation_tool.tranformation_tool_installation_link #=> String
    #   resp.data.server_detail.recommendation_set.target_destination #=> String, one of ["None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service"]
    #   resp.data.server_detail.recommendation_set.strategy #=> String, one of ["Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"]
    #   resp.data.server_detail.data_collection_status #=> String, one of ["dataCollectionTaskToBeScheduled", "dataCollectionTaskScheduled", "dataCollectionTaskStarted", "dataCollectionTaskStopped", "dataCollectionTaskSuccess", "dataCollectionTaskFailed", "dataCollectionTaskPartialSuccess"]
    #   resp.data.server_detail.status_message #=> String
    #   resp.data.server_detail.list_antipattern_severity_summary #=> Array<AntipatternSeveritySummary>
    #   resp.data.server_detail.list_antipattern_severity_summary[0] #=> Types::AntipatternSeveritySummary
    #   resp.data.server_detail.list_antipattern_severity_summary[0].severity #=> String, one of ["HIGH", "MEDIUM", "LOW"]
    #   resp.data.server_detail.list_antipattern_severity_summary[0].count #=> Integer
    #   resp.data.server_detail.system_info #=> Types::SystemInfo
    #   resp.data.server_detail.system_info.os_info #=> Types::OSInfo
    #   resp.data.server_detail.system_info.os_info.type #=> String, one of ["LINUX", "WINDOWS"]
    #   resp.data.server_detail.system_info.os_info.version #=> String
    #   resp.data.server_detail.system_info.file_system_type #=> String
    #   resp.data.server_detail.system_info.network_info_list #=> Array<NetworkInfo>
    #   resp.data.server_detail.system_info.network_info_list[0] #=> Types::NetworkInfo
    #   resp.data.server_detail.system_info.network_info_list[0].interface_name #=> String
    #   resp.data.server_detail.system_info.network_info_list[0].ip_address #=> String
    #   resp.data.server_detail.system_info.network_info_list[0].mac_address #=> String
    #   resp.data.server_detail.system_info.network_info_list[0].net_mask #=> String
    #   resp.data.server_detail.system_info.cpu_architecture #=> String
    #   resp.data.server_detail.application_component_strategy_summary #=> Array<StrategySummary>
    #   resp.data.server_detail.application_component_strategy_summary[0] #=> Types::StrategySummary
    #   resp.data.server_detail.application_component_strategy_summary[0].strategy #=> String, one of ["Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"]
    #   resp.data.server_detail.application_component_strategy_summary[0].count #=> Integer
    #   resp.data.server_detail.antipattern_report_s3_object #=> Types::S3Object
    #   resp.data.server_detail.antipattern_report_s3_object.s3_bucket #=> String
    #   resp.data.server_detail.antipattern_report_s3_object.s3key #=> String
    #   resp.data.server_detail.antipattern_report_status #=> String, one of ["FAILED", "IN_PROGRESS", "SUCCESS"]
    #   resp.data.server_detail.antipattern_report_status_message #=> String
    #   resp.data.server_detail.server_type #=> String
    #   resp.data.server_detail.last_analyzed_timestamp #=> Time
    #   resp.data.associated_applications #=> Array<AssociatedApplication>
    #   resp.data.associated_applications[0] #=> Types::AssociatedApplication
    #   resp.data.associated_applications[0].name #=> String
    #   resp.data.associated_applications[0].id #=> String
    #
    def get_server_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServerDetailsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServerDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServerDetails
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetServerDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServerDetails,
        stubs: @stubs,
        params_class: Params::GetServerDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_server_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Retrieves recommended strategies and tools for the specified server. </p>
    #
    # @param [Hash] params
    #   See {Types::GetServerStrategiesInput}.
    #
    # @option params [String] :server_id
    #   <p> The ID of the server. </p>
    #
    # @return [Types::GetServerStrategiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_server_strategies(
    #     server_id: 'serverId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServerStrategiesOutput
    #   resp.data.server_strategies #=> Array<ServerStrategy>
    #   resp.data.server_strategies[0] #=> Types::ServerStrategy
    #   resp.data.server_strategies[0].recommendation #=> Types::RecommendationSet
    #   resp.data.server_strategies[0].recommendation.transformation_tool #=> Types::TransformationTool
    #   resp.data.server_strategies[0].recommendation.transformation_tool.name #=> String, one of ["App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"]
    #   resp.data.server_strategies[0].recommendation.transformation_tool.description #=> String
    #   resp.data.server_strategies[0].recommendation.transformation_tool.tranformation_tool_installation_link #=> String
    #   resp.data.server_strategies[0].recommendation.target_destination #=> String, one of ["None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service"]
    #   resp.data.server_strategies[0].recommendation.strategy #=> String, one of ["Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"]
    #   resp.data.server_strategies[0].status #=> String, one of ["recommended", "viableOption", "notRecommended"]
    #   resp.data.server_strategies[0].number_of_application_components #=> Integer
    #   resp.data.server_strategies[0].is_preferred #=> Boolean
    #
    def get_server_strategies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServerStrategiesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServerStrategiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServerStrategies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetServerStrategies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServerStrategies,
        stubs: @stubs,
        params_class: Params::GetServerStrategiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_server_strategies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Retrieves a list of all the application components (processes). </p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationComponentsInput}.
    #
    # @option params [String] :application_component_criteria
    #   <p> Criteria for filtering the list of application components. </p>
    #
    # @option params [String] :filter_value
    #   <p> Specify the value based on the application component criteria type. For example, if
    #           <code>applicationComponentCriteria</code> is set to <code>SERVER_ID</code> and
    #           <code>filterValue</code> is set to <code>server1</code>, then <a>ListApplicationComponents</a> returns all the application components running on
    #         server1. </p>
    #
    # @option params [String] :sort
    #   <p> Specifies whether to sort by ascending (<code>ASC</code>) or descending
    #         (<code>DESC</code>) order. </p>
    #
    # @option params [Array<Group>] :group_id_filter
    #   <p> The group ID specified in to filter on. </p>
    #
    # @option params [String] :next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example,
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    #
    # @return [Types::ListApplicationComponentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_components(
    #     application_component_criteria: 'NOT_DEFINED', # accepts ["NOT_DEFINED", "APP_NAME", "SERVER_ID", "APP_TYPE", "STRATEGY", "DESTINATION"]
    #     filter_value: 'filterValue',
    #     sort: 'ASC', # accepts ["ASC", "DESC"]
    #     group_id_filter: [
    #       {
    #         name: 'ExternalId', # accepts ["ExternalId"]
    #         value: 'value'
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationComponentsOutput
    #   resp.data.application_component_infos #=> Array<ApplicationComponentDetail>
    #   resp.data.application_component_infos[0] #=> Types::ApplicationComponentDetail
    #   resp.data.application_component_infos[0].id #=> String
    #   resp.data.application_component_infos[0].name #=> String
    #   resp.data.application_component_infos[0].recommendation_set #=> Types::RecommendationSet
    #   resp.data.application_component_infos[0].recommendation_set.transformation_tool #=> Types::TransformationTool
    #   resp.data.application_component_infos[0].recommendation_set.transformation_tool.name #=> String, one of ["App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"]
    #   resp.data.application_component_infos[0].recommendation_set.transformation_tool.description #=> String
    #   resp.data.application_component_infos[0].recommendation_set.transformation_tool.tranformation_tool_installation_link #=> String
    #   resp.data.application_component_infos[0].recommendation_set.target_destination #=> String, one of ["None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service"]
    #   resp.data.application_component_infos[0].recommendation_set.strategy #=> String, one of ["Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"]
    #   resp.data.application_component_infos[0].analysis_status #=> String, one of ["ANALYSIS_TO_BE_SCHEDULED", "ANALYSIS_STARTED", "ANALYSIS_SUCCESS", "ANALYSIS_FAILED"]
    #   resp.data.application_component_infos[0].status_message #=> String
    #   resp.data.application_component_infos[0].list_antipattern_severity_summary #=> Array<AntipatternSeveritySummary>
    #   resp.data.application_component_infos[0].list_antipattern_severity_summary[0] #=> Types::AntipatternSeveritySummary
    #   resp.data.application_component_infos[0].list_antipattern_severity_summary[0].severity #=> String, one of ["HIGH", "MEDIUM", "LOW"]
    #   resp.data.application_component_infos[0].list_antipattern_severity_summary[0].count #=> Integer
    #   resp.data.application_component_infos[0].database_config_detail #=> Types::DatabaseConfigDetail
    #   resp.data.application_component_infos[0].database_config_detail.secret_name #=> String
    #   resp.data.application_component_infos[0].source_code_repositories #=> Array<SourceCodeRepository>
    #   resp.data.application_component_infos[0].source_code_repositories[0] #=> Types::SourceCodeRepository
    #   resp.data.application_component_infos[0].source_code_repositories[0].repository #=> String
    #   resp.data.application_component_infos[0].source_code_repositories[0].branch #=> String
    #   resp.data.application_component_infos[0].source_code_repositories[0].version_control_type #=> String
    #   resp.data.application_component_infos[0].app_type #=> String, one of ["DotNetFramework", "Java", "SQLServer", "IIS", "Oracle", "Other"]
    #   resp.data.application_component_infos[0].resource_sub_type #=> String, one of ["Database", "Process", "DatabaseProcess"]
    #   resp.data.application_component_infos[0].inclusion_status #=> String, one of ["excludeFromAssessment", "includeInAssessment"]
    #   resp.data.application_component_infos[0].antipattern_report_s3_object #=> Types::S3Object
    #   resp.data.application_component_infos[0].antipattern_report_s3_object.s3_bucket #=> String
    #   resp.data.application_component_infos[0].antipattern_report_s3_object.s3key #=> String
    #   resp.data.application_component_infos[0].antipattern_report_status #=> String, one of ["FAILED", "IN_PROGRESS", "SUCCESS"]
    #   resp.data.application_component_infos[0].antipattern_report_status_message #=> String
    #   resp.data.application_component_infos[0].os_version #=> String
    #   resp.data.application_component_infos[0].os_driver #=> String
    #   resp.data.application_component_infos[0].last_analyzed_timestamp #=> Time
    #   resp.data.application_component_infos[0].associated_server_id #=> String
    #   resp.data.application_component_infos[0].more_server_association_exists #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_application_components(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationComponentsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationComponentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplicationComponents
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleLockClientException, Errors::ValidationException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::ListApplicationComponents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplicationComponents,
        stubs: @stubs,
        params_class: Params::ListApplicationComponentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_application_components
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Retrieves a list of all the installed collectors. </p>
    #
    # @param [Hash] params
    #   See {Types::ListCollectorsInput}.
    #
    # @option params [String] :next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example,
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    #
    # @return [Types::ListCollectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collectors(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCollectorsOutput
    #   resp.data.collectors #=> Array<Collector>
    #   resp.data.collectors[0] #=> Types::Collector
    #   resp.data.collectors[0].collector_id #=> String
    #   resp.data.collectors[0].ip_address #=> String
    #   resp.data.collectors[0].host_name #=> String
    #   resp.data.collectors[0].collector_health #=> String, one of ["COLLECTOR_HEALTHY", "COLLECTOR_UNHEALTHY"]
    #   resp.data.collectors[0].collector_version #=> String
    #   resp.data.collectors[0].registered_time_stamp #=> String
    #   resp.data.collectors[0].last_activity_time_stamp #=> String
    #   resp.data.next_token #=> String
    #
    def list_collectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCollectorsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCollectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCollectors
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListCollectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCollectors,
        stubs: @stubs,
        params_class: Params::ListCollectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_collectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Retrieves a list of all the imports performed. </p>
    #
    # @param [Hash] params
    #   See {Types::ListImportFileTaskInput}.
    #
    # @option params [String] :next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example,
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    #
    # @option params [Integer] :max_results
    #   <p> The total number of items to return. The maximum value is 100. </p>
    #
    # @return [Types::ListImportFileTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_import_file_task(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListImportFileTaskOutput
    #   resp.data.task_infos #=> Array<ImportFileTaskInformation>
    #   resp.data.task_infos[0] #=> Types::ImportFileTaskInformation
    #   resp.data.task_infos[0].id #=> String
    #   resp.data.task_infos[0].status #=> String, one of ["ImportInProgress", "ImportFailed", "ImportPartialSuccess", "ImportSuccess", "DeleteInProgress", "DeleteFailed", "DeletePartialSuccess", "DeleteSuccess"]
    #   resp.data.task_infos[0].start_time #=> Time
    #   resp.data.task_infos[0].input_s3_bucket #=> String
    #   resp.data.task_infos[0].input_s3_key #=> String
    #   resp.data.task_infos[0].status_report_s3_bucket #=> String
    #   resp.data.task_infos[0].status_report_s3_key #=> String
    #   resp.data.task_infos[0].completion_time #=> Time
    #   resp.data.task_infos[0].number_of_records_success #=> Integer
    #   resp.data.task_infos[0].number_of_records_failed #=> Integer
    #   resp.data.task_infos[0].import_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_import_file_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListImportFileTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListImportFileTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListImportFileTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListImportFileTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListImportFileTask,
        stubs: @stubs,
        params_class: Params::ListImportFileTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_import_file_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of all the servers. </p>
    #
    # @param [Hash] params
    #   See {Types::ListServersInput}.
    #
    # @option params [String] :server_criteria
    #   <p> Criteria for filtering servers. </p>
    #
    # @option params [String] :filter_value
    #   <p> Specifies the filter value, which is based on the type of server criteria. For example,
    #         if <code>serverCriteria</code> is <code>OS_NAME</code>, and the <code>filterValue</code> is
    #         equal to <code>WindowsServer</code>, then <code>ListServers</code> returns all of the servers
    #         matching the OS name <code>WindowsServer</code>. </p>
    #
    # @option params [String] :sort
    #   <p> Specifies whether to sort by ascending (<code>ASC</code>) or descending
    #         (<code>DESC</code>) order. </p>
    #
    # @option params [Array<Group>] :group_id_filter
    #   <p> Specifies the group ID to filter on. </p>
    #
    # @option params [String] :next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example,
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    #
    # @return [Types::ListServersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_servers(
    #     server_criteria: 'NOT_DEFINED', # accepts ["NOT_DEFINED", "OS_NAME", "STRATEGY", "DESTINATION", "SERVER_ID"]
    #     filter_value: 'filterValue',
    #     sort: 'ASC', # accepts ["ASC", "DESC"]
    #     group_id_filter: [
    #       {
    #         name: 'ExternalId', # accepts ["ExternalId"]
    #         value: 'value'
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServersOutput
    #   resp.data.server_infos #=> Array<ServerDetail>
    #   resp.data.server_infos[0] #=> Types::ServerDetail
    #   resp.data.server_infos[0].id #=> String
    #   resp.data.server_infos[0].name #=> String
    #   resp.data.server_infos[0].recommendation_set #=> Types::RecommendationSet
    #   resp.data.server_infos[0].recommendation_set.transformation_tool #=> Types::TransformationTool
    #   resp.data.server_infos[0].recommendation_set.transformation_tool.name #=> String, one of ["App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"]
    #   resp.data.server_infos[0].recommendation_set.transformation_tool.description #=> String
    #   resp.data.server_infos[0].recommendation_set.transformation_tool.tranformation_tool_installation_link #=> String
    #   resp.data.server_infos[0].recommendation_set.target_destination #=> String, one of ["None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service"]
    #   resp.data.server_infos[0].recommendation_set.strategy #=> String, one of ["Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"]
    #   resp.data.server_infos[0].data_collection_status #=> String, one of ["dataCollectionTaskToBeScheduled", "dataCollectionTaskScheduled", "dataCollectionTaskStarted", "dataCollectionTaskStopped", "dataCollectionTaskSuccess", "dataCollectionTaskFailed", "dataCollectionTaskPartialSuccess"]
    #   resp.data.server_infos[0].status_message #=> String
    #   resp.data.server_infos[0].list_antipattern_severity_summary #=> Array<AntipatternSeveritySummary>
    #   resp.data.server_infos[0].list_antipattern_severity_summary[0] #=> Types::AntipatternSeveritySummary
    #   resp.data.server_infos[0].list_antipattern_severity_summary[0].severity #=> String, one of ["HIGH", "MEDIUM", "LOW"]
    #   resp.data.server_infos[0].list_antipattern_severity_summary[0].count #=> Integer
    #   resp.data.server_infos[0].system_info #=> Types::SystemInfo
    #   resp.data.server_infos[0].system_info.os_info #=> Types::OSInfo
    #   resp.data.server_infos[0].system_info.os_info.type #=> String, one of ["LINUX", "WINDOWS"]
    #   resp.data.server_infos[0].system_info.os_info.version #=> String
    #   resp.data.server_infos[0].system_info.file_system_type #=> String
    #   resp.data.server_infos[0].system_info.network_info_list #=> Array<NetworkInfo>
    #   resp.data.server_infos[0].system_info.network_info_list[0] #=> Types::NetworkInfo
    #   resp.data.server_infos[0].system_info.network_info_list[0].interface_name #=> String
    #   resp.data.server_infos[0].system_info.network_info_list[0].ip_address #=> String
    #   resp.data.server_infos[0].system_info.network_info_list[0].mac_address #=> String
    #   resp.data.server_infos[0].system_info.network_info_list[0].net_mask #=> String
    #   resp.data.server_infos[0].system_info.cpu_architecture #=> String
    #   resp.data.server_infos[0].application_component_strategy_summary #=> Array<StrategySummary>
    #   resp.data.server_infos[0].application_component_strategy_summary[0] #=> Types::StrategySummary
    #   resp.data.server_infos[0].application_component_strategy_summary[0].strategy #=> String, one of ["Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"]
    #   resp.data.server_infos[0].application_component_strategy_summary[0].count #=> Integer
    #   resp.data.server_infos[0].antipattern_report_s3_object #=> Types::S3Object
    #   resp.data.server_infos[0].antipattern_report_s3_object.s3_bucket #=> String
    #   resp.data.server_infos[0].antipattern_report_s3_object.s3key #=> String
    #   resp.data.server_infos[0].antipattern_report_status #=> String, one of ["FAILED", "IN_PROGRESS", "SUCCESS"]
    #   resp.data.server_infos[0].antipattern_report_status_message #=> String
    #   resp.data.server_infos[0].server_type #=> String
    #   resp.data.server_infos[0].last_analyzed_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_servers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListServers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServers,
        stubs: @stubs,
        params_class: Params::ListServersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_servers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Saves the specified migration and modernization preferences. </p>
    #
    # @param [Hash] params
    #   See {Types::PutPortfolioPreferencesInput}.
    #
    # @option params [PrioritizeBusinessGoals] :prioritize_business_goals
    #   <p> The rank of the business goals based on priority. </p>
    #
    # @option params [ApplicationPreferences] :application_preferences
    #   <p> The transformation preferences for non-database applications. </p>
    #
    # @option params [DatabasePreferences] :database_preferences
    #   <p> The transformation preferences for database applications. </p>
    #
    # @return [Types::PutPortfolioPreferencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_portfolio_preferences(
    #     prioritize_business_goals: {
    #       business_goals: {
    #         speed_of_migration: 1,
    #         reduce_operational_overhead_with_managed_services: 1,
    #         modernize_infrastructure_with_cloud_native_technologies: 1,
    #         license_cost_reduction: 1
    #       }
    #     },
    #     application_preferences: {
    #       management_preference: {
    #         # One of:
    #         aws_managed_resources: {
    #           target_destination: [
    #             'None specified' # accepts ["None specified", "AWS Elastic BeanStalk", "AWS Fargate"]
    #           ] # required
    #         },
    #         self_manage_resources: {
    #           target_destination: [
    #             'None specified' # accepts ["None specified", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)"]
    #           ] # required
    #         },
    #         no_preference: {
    #           target_destination: [
    #             'None specified' # accepts ["None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)"]
    #           ] # required
    #         }
    #       }
    #     },
    #     database_preferences: {
    #       database_management_preference: 'AWS-managed', # accepts ["AWS-managed", "Self-manage", "No preference"]
    #       database_migration_preference: {
    #         # One of:
    #         heterogeneous: {
    #           target_database_engine: [
    #             'None specified' # accepts ["None specified", "Amazon Aurora", "AWS PostgreSQL", "MySQL", "Microsoft SQL Server", "Oracle Database", "MariaDB", "SAP", "Db2 LUW", "MongoDB"]
    #           ] # required
    #         },
    #         homogeneous: {
    #           target_database_engine: [
    #             'None specified' # accepts ["None specified"]
    #           ]
    #         },
    #         no_preference: {
    #           target_database_engine: [
    #             'None specified' # accepts ["None specified", "Amazon Aurora", "AWS PostgreSQL", "MySQL", "Microsoft SQL Server", "Oracle Database", "MariaDB", "SAP", "Db2 LUW", "MongoDB"]
    #           ] # required
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutPortfolioPreferencesOutput
    #
    def put_portfolio_preferences(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutPortfolioPreferencesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutPortfolioPreferencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutPortfolioPreferences
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::PutPortfolioPreferences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutPortfolioPreferences,
        stubs: @stubs,
        params_class: Params::PutPortfolioPreferencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_portfolio_preferences
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Starts the assessment of an on-premises environment. </p>
    #
    # @param [Hash] params
    #   See {Types::StartAssessmentInput}.
    #
    # @option params [String] :s3bucket_for_analysis_data
    #   <p>
    #         The S3 bucket used by the collectors to send analysis data to the service.
    #         The bucket name must begin with <code>migrationhub-strategy-</code>.
    #       </p>
    #
    # @option params [String] :s3bucket_for_report_data
    #   <p>
    #         The S3 bucket where all the reports generated by the service are stored.
    #         The bucket name must begin with <code>migrationhub-strategy-</code>.
    #       </p>
    #
    # @return [Types::StartAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_assessment(
    #     s3bucket_for_analysis_data: 's3bucketForAnalysisData',
    #     s3bucket_for_report_data: 's3bucketForReportData'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartAssessmentOutput
    #   resp.data.assessment_id #=> String
    #
    def start_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartAssessmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartAssessment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::StartAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartAssessment,
        stubs: @stubs,
        params_class: Params::StartAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Starts a file import. </p>
    #
    # @param [Hash] params
    #   See {Types::StartImportFileTaskInput}.
    #
    # @option params [String] :name
    #   <p> A descriptive name for the request. </p>
    #
    # @option params [String] :s3_bucket
    #   <p> The S3 bucket where the import file is located. The bucket name is required to begin with
    #           <code>migrationhub-strategy-</code>.</p>
    #
    # @option params [String] :s3key
    #   <p> The Amazon S3 key name of the import file. </p>
    #
    # @option params [String] :data_source_type
    #   <p>Specifies the source that the servers are coming from. By default, Strategy Recommendations assumes that
    #         the servers specified in the import file are available in AWS Application Discovery Service. </p>
    #
    # @option params [Array<Group>] :group_id
    #   <p>Groups the resources in the import file together with a unique name. This ID can be as
    #         filter in <code>ListApplicationComponents</code> and <code>ListServers</code>. </p>
    #
    # @option params [String] :s3bucket_for_report_data
    #   <p> The S3 bucket where Strategy Recommendations uploads import results. The bucket name is required to
    #         begin with migrationhub-strategy-. </p>
    #
    # @return [Types::StartImportFileTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_import_file_task(
    #     name: 'name', # required
    #     s3_bucket: 'S3Bucket', # required
    #     s3key: 's3key', # required
    #     data_source_type: 'ApplicationDiscoveryService', # accepts ["ApplicationDiscoveryService", "MPA"]
    #     group_id: [
    #       {
    #         name: 'ExternalId', # accepts ["ExternalId"]
    #         value: 'value'
    #       }
    #     ],
    #     s3bucket_for_report_data: 's3bucketForReportData'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartImportFileTaskOutput
    #   resp.data.id #=> String
    #
    def start_import_file_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartImportFileTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartImportFileTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartImportFileTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::StartImportFileTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartImportFileTask,
        stubs: @stubs,
        params_class: Params::StartImportFileTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_import_file_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Starts generating a recommendation report. </p>
    #
    # @param [Hash] params
    #   See {Types::StartRecommendationReportGenerationInput}.
    #
    # @option params [String] :output_format
    #   <p> The output format for the recommendation report file. The default format is Microsoft Excel. </p>
    #
    # @option params [Array<Group>] :group_id_filter
    #   <p> Groups the resources in the recommendation report with a unique name. </p>
    #
    # @return [Types::StartRecommendationReportGenerationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_recommendation_report_generation(
    #     output_format: 'Excel', # accepts ["Excel", "Json"]
    #     group_id_filter: [
    #       {
    #         name: 'ExternalId', # accepts ["ExternalId"]
    #         value: 'value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartRecommendationReportGenerationOutput
    #   resp.data.id #=> String
    #
    def start_recommendation_report_generation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartRecommendationReportGenerationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartRecommendationReportGenerationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartRecommendationReportGeneration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::StartRecommendationReportGeneration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartRecommendationReportGeneration,
        stubs: @stubs,
        params_class: Params::StartRecommendationReportGenerationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_recommendation_report_generation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Stops the assessment of an on-premises environment. </p>
    #
    # @param [Hash] params
    #   See {Types::StopAssessmentInput}.
    #
    # @option params [String] :assessment_id
    #   <p> The <code>assessmentId</code> returned by <a>StartAssessment</a>. </p>
    #
    # @return [Types::StopAssessmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_assessment(
    #     assessment_id: 'assessmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopAssessmentOutput
    #
    def stop_assessment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopAssessmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopAssessmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopAssessment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::StopAssessment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopAssessment,
        stubs: @stubs,
        params_class: Params::StopAssessmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_assessment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates the configuration of an application component. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationComponentConfigInput}.
    #
    # @option params [String] :application_component_id
    #   <p> The ID of the application component. The ID is unique within an AWS account. </p>
    #
    # @option params [String] :inclusion_status
    #   <p> Indicates whether the application component has been included for server recommendation
    #         or not. </p>
    #
    # @option params [StrategyOption] :strategy_option
    #   <p> The preferred strategy options for the application component. Use values from the <a>GetApplicationComponentStrategies</a> response. </p>
    #
    # @option params [Array<SourceCode>] :source_code_list
    #   <p> The list of source code configurations to update for the application component. </p>
    #
    # @option params [String] :secrets_manager_key
    #   <p> Database credentials. </p>
    #
    # @return [Types::UpdateApplicationComponentConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application_component_config(
    #     application_component_id: 'applicationComponentId', # required
    #     inclusion_status: 'excludeFromAssessment', # accepts ["excludeFromAssessment", "includeInAssessment"]
    #     strategy_option: {
    #       strategy: 'Rehost', # accepts ["Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"]
    #       tool_name: 'App2Container', # accepts ["App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"]
    #       target_destination: 'None specified', # accepts ["None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service"]
    #       is_preferred: false
    #     },
    #     source_code_list: [
    #       {
    #         version_control: 'GITHUB', # accepts ["GITHUB", "GITHUB_ENTERPRISE"]
    #         source_version: 'sourceVersion',
    #         location: 'location'
    #       }
    #     ],
    #     secrets_manager_key: 'secretsManagerKey'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationComponentConfigOutput
    #
    def update_application_component_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationComponentConfigInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApplicationComponentConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApplicationComponentConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateApplicationComponentConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApplicationComponentConfig,
        stubs: @stubs,
        params_class: Params::UpdateApplicationComponentConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_application_component_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates the configuration of the specified server. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateServerConfigInput}.
    #
    # @option params [String] :server_id
    #   <p> The ID of the server. </p>
    #
    # @option params [StrategyOption] :strategy_option
    #   <p> The preferred strategy options for the application component. See the response from <a>GetServerStrategies</a>.</p>
    #
    # @return [Types::UpdateServerConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_server_config(
    #     server_id: 'serverId', # required
    #     strategy_option: {
    #       strategy: 'Rehost', # accepts ["Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"]
    #       tool_name: 'App2Container', # accepts ["App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"]
    #       target_destination: 'None specified', # accepts ["None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service"]
    #       is_preferred: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServerConfigOutput
    #
    def update_server_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServerConfigInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServerConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateServerConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateServerConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateServerConfig,
        stubs: @stubs,
        params_class: Params::UpdateServerConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_server_config
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
