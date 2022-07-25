# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::DataBrew
  # An API client for AWSGlueDataBrew
  # See {#initialize} for a full list of supported configuration options
  # <p>Glue DataBrew is a visual, cloud-scale data-preparation service. DataBrew
  #             simplifies data preparation tasks, targeting data issues that are hard to spot and
  #             time-consuming to fix. DataBrew empowers users of all technical levels to visualize the
  #             data and perform one-click data transformations, with no coding required.</p>
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
    def initialize(config = AWS::SDK::DataBrew::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Deletes one or more versions of a recipe at a time.</p>
    #
    #         <p>The entire request will be rejected if:</p>
    #         <ul>
    #             <li>
    #                 <p>The recipe does not exist.</p>
    #             </li>
    #             <li>
    #                 <p>There is an invalid version identifier in the list of versions.</p>
    #             </li>
    #             <li>
    #                 <p>The version list is empty.</p>
    #             </li>
    #             <li>
    #                 <p>The version list size exceeds 50.</p>
    #             </li>
    #             <li>
    #                 <p>The version list contains duplicate entries.</p>
    #             </li>
    #          </ul>
    #
    #         <p>The request will complete successfully, but with partial failures, if:</p>
    #         <ul>
    #             <li>
    #                 <p>A version does not exist.</p>
    #             </li>
    #             <li>
    #                 <p>A version is being used by a job.</p>
    #             </li>
    #             <li>
    #                 <p>You specify <code>LATEST_WORKING</code>, but it's being used by a
    #                     project.</p>
    #             </li>
    #             <li>
    #                 <p>The version fails to be deleted.</p>
    #             </li>
    #          </ul>
    #         <p>The <code>LATEST_WORKING</code> version will only be deleted if the recipe has no
    #             other versions. If you try to delete <code>LATEST_WORKING</code> while other versions
    #             exist (or if they can't be deleted), then <code>LATEST_WORKING</code> will be listed as
    #             partial failure in the response.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDeleteRecipeVersionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the recipe whose versions are to be deleted.</p>
    #
    # @option params [Array<String>] :recipe_versions
    #   <p>An array of version identifiers, for the recipe versions to be deleted. You can
    #               specify numeric versions (<code>X.Y</code>) or <code>LATEST_WORKING</code>.
    #                   <code>LATEST_PUBLISHED</code> is not supported.</p>
    #
    # @return [Types::BatchDeleteRecipeVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_recipe_version(
    #     name: 'Name', # required
    #     recipe_versions: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDeleteRecipeVersionOutput
    #   resp.data.name #=> String
    #   resp.data.errors #=> Array<RecipeVersionErrorDetail>
    #   resp.data.errors[0] #=> Types::RecipeVersionErrorDetail
    #   resp.data.errors[0].error_code #=> String
    #   resp.data.errors[0].error_message #=> String
    #   resp.data.errors[0].recipe_version #=> String
    #
    def batch_delete_recipe_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDeleteRecipeVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDeleteRecipeVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDeleteRecipeVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::BatchDeleteRecipeVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDeleteRecipeVersion,
        stubs: @stubs,
        params_class: Params::BatchDeleteRecipeVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_delete_recipe_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new DataBrew dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDatasetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the dataset to be created. Valid characters are alphanumeric (A-Z, a-z,
    #               0-9), hyphen (-), period (.), and space.</p>
    #
    # @option params [String] :format
    #   <p>The file format of a dataset that is created from an Amazon S3 file or folder.</p>
    #
    # @option params [FormatOptions] :format_options
    #   <p>Represents a set of options that define the structure of either comma-separated value (CSV),
    #               Excel, or JSON input.</p>
    #
    # @option params [Input] :input
    #   <p>Represents information on how DataBrew can find data, in either the Glue Data Catalog or
    #               Amazon S3.</p>
    #
    # @option params [PathOptions] :path_options
    #   <p>A set of options that defines how DataBrew interprets an Amazon S3 path of the dataset.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata tags to apply to this dataset.</p>
    #
    # @return [Types::CreateDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset(
    #     name: 'Name', # required
    #     format: 'CSV', # accepts ["CSV", "JSON", "PARQUET", "EXCEL", "ORC"]
    #     format_options: {
    #       json: {
    #         multi_line: false
    #       },
    #       excel: {
    #         sheet_names: [
    #           'member'
    #         ],
    #         sheet_indexes: [
    #           1
    #         ],
    #         header_row: false
    #       },
    #       csv: {
    #         delimiter: 'Delimiter',
    #         header_row: false
    #       }
    #     },
    #     input: {
    #       s3_input_definition: {
    #         bucket: 'Bucket', # required
    #         key: 'Key',
    #         bucket_owner: 'BucketOwner'
    #       },
    #       data_catalog_input_definition: {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         table_name: 'TableName', # required
    #       },
    #       database_input_definition: {
    #         glue_connection_name: 'GlueConnectionName', # required
    #         database_table_name: 'DatabaseTableName',
    #         query_string: 'QueryString'
    #       },
    #       metadata: {
    #         source_arn: 'SourceArn'
    #       }
    #     }, # required
    #     path_options: {
    #       last_modified_date_condition: {
    #         expression: 'Expression', # required
    #         values_map: {
    #           'key' => 'value'
    #         } # required
    #       },
    #       files_limit: {
    #         max_files: 1, # required
    #         ordered_by: 'LAST_MODIFIED_DATE', # accepts ["LAST_MODIFIED_DATE"]
    #         order: 'DESCENDING' # accepts ["DESCENDING", "ASCENDING"]
    #       },
    #       parameters: {
    #         'key' => {
    #           name: 'Name', # required
    #           type: 'Datetime', # required - accepts ["Datetime", "Number", "String"]
    #           datetime_options: {
    #             format: 'Format', # required
    #             timezone_offset: 'TimezoneOffset',
    #             locale_code: 'LocaleCode'
    #           },
    #           create_column: false,
    #         }
    #       }
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDatasetOutput
    #   resp.data.name #=> String
    #
    def create_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataset
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::ServiceQuotaExceededException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataset,
        stubs: @stubs,
        params_class: Params::CreateDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new job to analyze a dataset and create its data profile.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProfileJobInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset that this job is to act upon.</p>
    #
    # @option params [String] :encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
    #               job.</p>
    #
    # @option params [String] :encryption_mode
    #   <p>The encryption mode for the job, which can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SSE-KMS</code> - <code>SSE-KMS</code> - Server-side encryption with
    #                       KMS-managed keys.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :name
    #   <p>The name of the job to be created. Valid characters are alphanumeric (A-Z, a-z, 0-9),
    #               hyphen (-), period (.), and space.</p>
    #
    # @option params [String] :log_subscription
    #   <p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
    #               CloudWatch writes one log stream for each job run.</p>
    #
    # @option params [Integer] :max_capacity
    #   <p>The maximum number of nodes that DataBrew can use when the job processes data.</p>
    #
    # @option params [Integer] :max_retries
    #   <p>The maximum number of times to retry the job after a job run fails.</p>
    #
    # @option params [S3Location] :output_location
    #   <p>Represents an Amazon S3 location (bucket name, bucket owner, and object key) where DataBrew can read
    #               input data, or write output from a job.</p>
    #
    # @option params [ProfileConfiguration] :configuration
    #   <p>Configuration for profile jobs. Used to select columns, do evaluations,
    #               and override default parameters of evaluations. When configuration is null, the
    #               profile job will run with default settings.</p>
    #
    # @option params [Array<ValidationConfiguration>] :validation_configurations
    #   <p>List of validation configurations that are applied to the profile job.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
    #               be assumed when DataBrew runs the job.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata tags to apply to this job.</p>
    #
    # @option params [Integer] :timeout
    #   <p>The job's timeout in minutes. A job that attempts to run longer than this timeout
    #               period ends with a status of <code>TIMEOUT</code>.</p>
    #
    # @option params [JobSample] :job_sample
    #   <p>Sample configuration for profile jobs only. Determines the number of rows on which the
    #               profile job will be executed. If a JobSample value is not provided, the default value
    #               will be used. The default value is CUSTOM_ROWS for the mode parameter and 20000 for the
    #               size parameter.</p>
    #
    # @return [Types::CreateProfileJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_profile_job(
    #     dataset_name: 'DatasetName', # required
    #     encryption_key_arn: 'EncryptionKeyArn',
    #     encryption_mode: 'SSE-KMS', # accepts ["SSE-KMS", "SSE-S3"]
    #     name: 'Name', # required
    #     log_subscription: 'ENABLE', # accepts ["ENABLE", "DISABLE"]
    #     max_capacity: 1,
    #     max_retries: 1,
    #     output_location: {
    #       bucket: 'Bucket', # required
    #       key: 'Key',
    #       bucket_owner: 'BucketOwner'
    #     }, # required
    #     configuration: {
    #       dataset_statistics_configuration: {
    #         included_statistics: [
    #           'member'
    #         ],
    #         overrides: [
    #           {
    #             statistic: 'Statistic', # required
    #             parameters: {
    #               'key' => 'value'
    #             } # required
    #           }
    #         ]
    #       },
    #       profile_columns: [
    #         {
    #           regex: 'Regex',
    #           name: 'Name'
    #         }
    #       ],
    #       column_statistics_configurations: [
    #         {
    #         }
    #       ],
    #       entity_detector_configuration: {
    #         entity_types: [
    #           'member'
    #         ], # required
    #         allowed_statistics: [
    #           {
    #           }
    #         ]
    #       }
    #     },
    #     validation_configurations: [
    #       {
    #         ruleset_arn: 'RulesetArn', # required
    #         validation_mode: 'CHECK_ALL' # accepts ["CHECK_ALL"]
    #       }
    #     ],
    #     role_arn: 'RoleArn', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     timeout: 1,
    #     job_sample: {
    #       mode: 'FULL_DATASET', # accepts ["FULL_DATASET", "CUSTOM_ROWS"]
    #       size: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProfileJobOutput
    #   resp.data.name #=> String
    #
    def create_profile_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProfileJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProfileJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProfileJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ServiceQuotaExceededException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateProfileJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProfileJob,
        stubs: @stubs,
        params_class: Params::CreateProfileJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_profile_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new DataBrew project.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProjectInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of an existing dataset to associate this project with.</p>
    #
    # @option params [String] :name
    #   <p>A unique name for the new project. Valid characters are alphanumeric (A-Z, a-z, 0-9),
    #               hyphen (-), period (.), and space.</p>
    #
    # @option params [String] :recipe_name
    #   <p>The name of an existing recipe to associate with the project.</p>
    #
    # @option params [Sample] :sample
    #   <p>Represents the sample size and sampling type for DataBrew to use for interactive data
    #               analysis.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
    #               be assumed for this request.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata tags to apply to this project.</p>
    #
    # @return [Types::CreateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project(
    #     dataset_name: 'DatasetName', # required
    #     name: 'Name', # required
    #     recipe_name: 'RecipeName', # required
    #     sample: {
    #       size: 1,
    #       type: 'FIRST_N' # required - accepts ["FIRST_N", "LAST_N", "RANDOM"]
    #     },
    #     role_arn: 'RoleArn', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProjectOutput
    #   resp.data.name #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
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

    # <p>Creates a new DataBrew recipe.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRecipeInput}.
    #
    # @option params [String] :description
    #   <p>A description for the recipe.</p>
    #
    # @option params [String] :name
    #   <p>A unique name for the recipe. Valid characters are alphanumeric (A-Z, a-z, 0-9),
    #               hyphen (-), period (.), and space.</p>
    #
    # @option params [Array<RecipeStep>] :steps
    #   <p>An array containing the steps to be performed by the recipe. Each recipe step consists
    #               of one recipe action and (optionally) an array of condition expressions.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata tags to apply to this recipe.</p>
    #
    # @return [Types::CreateRecipeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_recipe(
    #     description: 'Description',
    #     name: 'Name', # required
    #     steps: [
    #       {
    #         action: {
    #           operation: 'Operation', # required
    #           parameters: {
    #             'key' => 'value'
    #           }
    #         }, # required
    #         condition_expressions: [
    #           {
    #             condition: 'Condition', # required
    #             value: 'Value',
    #             target_column: 'TargetColumn' # required
    #           }
    #         ]
    #       }
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRecipeOutput
    #   resp.data.name #=> String
    #
    def create_recipe(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRecipeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRecipeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRecipe
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateRecipe
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRecipe,
        stubs: @stubs,
        params_class: Params::CreateRecipeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_recipe
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new job to transform input data, using steps defined in an existing Glue DataBrew recipe</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRecipeJobInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of the dataset that this job processes.</p>
    #
    # @option params [String] :encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
    #               job.</p>
    #
    # @option params [String] :encryption_mode
    #   <p>The encryption mode for the job, which can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :name
    #   <p>A unique name for the job. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen
    #               (-), period (.), and space.</p>
    #
    # @option params [String] :log_subscription
    #   <p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
    #               CloudWatch writes one log stream for each job run.</p>
    #
    # @option params [Integer] :max_capacity
    #   <p>The maximum number of nodes that DataBrew can consume when the job processes
    #               data.</p>
    #
    # @option params [Integer] :max_retries
    #   <p>The maximum number of times to retry the job after a job run fails.</p>
    #
    # @option params [Array<Output>] :outputs
    #   <p>One or more artifacts that represent the output from running the job.</p>
    #
    # @option params [Array<DataCatalogOutput>] :data_catalog_outputs
    #   <p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>
    #
    # @option params [Array<DatabaseOutput>] :database_outputs
    #   <p>Represents a list of JDBC database output objects which defines the output destination for
    #               a DataBrew recipe job to write to. </p>
    #
    # @option params [String] :project_name
    #   <p>Either the name of an existing project, or a combination of a recipe and a dataset to
    #               associate with the recipe.</p>
    #
    # @option params [RecipeReference] :recipe_reference
    #   <p>Represents the name and version of a DataBrew recipe.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
    #               be assumed when DataBrew runs the job.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata tags to apply to this job.</p>
    #
    # @option params [Integer] :timeout
    #   <p>The job's timeout in minutes. A job that attempts to run longer than this timeout
    #               period ends with a status of <code>TIMEOUT</code>.</p>
    #
    # @return [Types::CreateRecipeJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_recipe_job(
    #     dataset_name: 'DatasetName',
    #     encryption_key_arn: 'EncryptionKeyArn',
    #     encryption_mode: 'SSE-KMS', # accepts ["SSE-KMS", "SSE-S3"]
    #     name: 'Name', # required
    #     log_subscription: 'ENABLE', # accepts ["ENABLE", "DISABLE"]
    #     max_capacity: 1,
    #     max_retries: 1,
    #     outputs: [
    #       {
    #         compression_format: 'GZIP', # accepts ["GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"]
    #         format: 'CSV', # accepts ["CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML", "TABLEAUHYPER"]
    #         partition_columns: [
    #           'member'
    #         ],
    #         location: {
    #           bucket: 'Bucket', # required
    #           key: 'Key',
    #           bucket_owner: 'BucketOwner'
    #         }, # required
    #         overwrite: false,
    #         format_options: {
    #           csv: {
    #             delimiter: 'Delimiter'
    #           }
    #         },
    #         max_output_files: 1
    #       }
    #     ],
    #     data_catalog_outputs: [
    #       {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         table_name: 'TableName', # required
    #         s3_options: {
    #         },
    #         database_options: {
    #           table_name: 'TableName' # required
    #         },
    #         overwrite: false
    #       }
    #     ],
    #     database_outputs: [
    #       {
    #         glue_connection_name: 'GlueConnectionName', # required
    #         database_output_mode: 'NEW_TABLE' # accepts ["NEW_TABLE"]
    #       }
    #     ],
    #     project_name: 'ProjectName',
    #     recipe_reference: {
    #       name: 'Name', # required
    #       recipe_version: 'RecipeVersion'
    #     },
    #     role_arn: 'RoleArn', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     timeout: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRecipeJobOutput
    #   resp.data.name #=> String
    #
    def create_recipe_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRecipeJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRecipeJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRecipeJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ServiceQuotaExceededException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateRecipeJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRecipeJob,
        stubs: @stubs,
        params_class: Params::CreateRecipeJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_recipe_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new ruleset that can be used in a profile job to validate
    #             the data quality of a dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRulesetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the ruleset to be created. Valid characters are alphanumeric
    #               (A-Z, a-z, 0-9), hyphen (-), period (.), and space.</p>
    #
    # @option params [String] :description
    #   <p>The description of the ruleset.</p>
    #
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) of a resource (dataset) that the
    #               ruleset is associated with.</p>
    #
    # @option params [Array<Rule>] :rules
    #   <p>A list of rules that are defined with the ruleset. A rule includes
    #               one or more checks to be validated on a DataBrew dataset.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata tags to apply to the ruleset.</p>
    #
    # @return [Types::CreateRulesetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ruleset(
    #     name: 'Name', # required
    #     description: 'Description',
    #     target_arn: 'TargetArn', # required
    #     rules: [
    #       {
    #         name: 'Name', # required
    #         disabled: false,
    #         check_expression: 'CheckExpression', # required
    #         substitution_map: {
    #           'key' => 'value'
    #         },
    #         threshold: {
    #           value: 1.0, # required
    #           type: 'GREATER_THAN_OR_EQUAL', # accepts ["GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN"]
    #           unit: 'COUNT' # accepts ["COUNT", "PERCENTAGE"]
    #         },
    #         column_selectors: [
    #           {
    #             regex: 'Regex',
    #             name: 'Name'
    #           }
    #         ]
    #       }
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRulesetOutput
    #   resp.data.name #=> String
    #
    def create_ruleset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRulesetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRulesetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRuleset
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateRuleset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRuleset,
        stubs: @stubs,
        params_class: Params::CreateRulesetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_ruleset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new schedule for one or more DataBrew jobs. Jobs can be run at a specific
    #             date and time, or at regular intervals.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateScheduleInput}.
    #
    # @option params [Array<String>] :job_names
    #   <p>The name or names of one or more jobs to be run.</p>
    #
    # @option params [String] :cron_expression
    #   <p>The date or dates and time or times when the jobs are to be run. For more information,
    #               see <a href="https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html">Cron
    #                   expressions</a> in the <i>Glue DataBrew Developer
    #               Guide</i>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata tags to apply to this schedule.</p>
    #
    # @option params [String] :name
    #   <p>A unique name for the schedule. Valid characters are alphanumeric (A-Z, a-z, 0-9),
    #               hyphen (-), period (.), and space.</p>
    #
    # @return [Types::CreateScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_schedule(
    #     job_names: [
    #       'member'
    #     ],
    #     cron_expression: 'CronExpression', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateScheduleOutput
    #   resp.data.name #=> String
    #
    def create_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSchedule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSchedule,
        stubs: @stubs,
        params_class: Params::CreateScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a dataset from DataBrew.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDatasetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the dataset to be deleted.</p>
    #
    # @return [Types::DeleteDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDatasetOutput
    #   resp.data.name #=> String
    #
    def delete_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataset
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeleteDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataset,
        stubs: @stubs,
        params_class: Params::DeleteDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified DataBrew job.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteJobInput}.
    #
    # @option params [String] :name
    #   <p>The name of the job to be deleted.</p>
    #
    # @return [Types::DeleteJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteJobOutput
    #   resp.data.name #=> String
    #
    def delete_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeleteJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteJob,
        stubs: @stubs,
        params_class: Params::DeleteJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing DataBrew project.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProjectInput}.
    #
    # @option params [String] :name
    #   <p>The name of the project to be deleted.</p>
    #
    # @return [Types::DeleteProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProjectOutput
    #   resp.data.name #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Deletes a single version of a DataBrew recipe.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRecipeVersionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the recipe.</p>
    #
    # @option params [String] :recipe_version
    #   <p>The version of the recipe to be deleted. You can specify a numeric versions
    #                   (<code>X.Y</code>) or <code>LATEST_WORKING</code>. <code>LATEST_PUBLISHED</code> is
    #               not supported.</p>
    #
    # @return [Types::DeleteRecipeVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recipe_version(
    #     name: 'Name', # required
    #     recipe_version: 'RecipeVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRecipeVersionOutput
    #   resp.data.name #=> String
    #   resp.data.recipe_version #=> String
    #
    def delete_recipe_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRecipeVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRecipeVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRecipeVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeleteRecipeVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRecipeVersion,
        stubs: @stubs,
        params_class: Params::DeleteRecipeVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_recipe_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a ruleset.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRulesetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the ruleset to be deleted.</p>
    #
    # @return [Types::DeleteRulesetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ruleset(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRulesetOutput
    #   resp.data.name #=> String
    #
    def delete_ruleset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRulesetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRulesetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRuleset
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeleteRuleset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRuleset,
        stubs: @stubs,
        params_class: Params::DeleteRulesetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_ruleset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified DataBrew schedule.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteScheduleInput}.
    #
    # @option params [String] :name
    #   <p>The name of the schedule to be deleted.</p>
    #
    # @return [Types::DeleteScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schedule(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteScheduleOutput
    #   resp.data.name #=> String
    #
    def delete_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSchedule
      )
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
        data_parser: Parsers::DeleteSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSchedule,
        stubs: @stubs,
        params_class: Params::DeleteScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the definition of a specific DataBrew dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDatasetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the dataset to be described.</p>
    #
    # @return [Types::DescribeDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDatasetOutput
    #   resp.data.created_by #=> String
    #   resp.data.create_date #=> Time
    #   resp.data.name #=> String
    #   resp.data.format #=> String, one of ["CSV", "JSON", "PARQUET", "EXCEL", "ORC"]
    #   resp.data.format_options #=> Types::FormatOptions
    #   resp.data.format_options.json #=> Types::JsonOptions
    #   resp.data.format_options.json.multi_line #=> Boolean
    #   resp.data.format_options.excel #=> Types::ExcelOptions
    #   resp.data.format_options.excel.sheet_names #=> Array<String>
    #   resp.data.format_options.excel.sheet_names[0] #=> String
    #   resp.data.format_options.excel.sheet_indexes #=> Array<Integer>
    #   resp.data.format_options.excel.sheet_indexes[0] #=> Integer
    #   resp.data.format_options.excel.header_row #=> Boolean
    #   resp.data.format_options.csv #=> Types::CsvOptions
    #   resp.data.format_options.csv.delimiter #=> String
    #   resp.data.format_options.csv.header_row #=> Boolean
    #   resp.data.input #=> Types::Input
    #   resp.data.input.s3_input_definition #=> Types::S3Location
    #   resp.data.input.s3_input_definition.bucket #=> String
    #   resp.data.input.s3_input_definition.key #=> String
    #   resp.data.input.s3_input_definition.bucket_owner #=> String
    #   resp.data.input.data_catalog_input_definition #=> Types::DataCatalogInputDefinition
    #   resp.data.input.data_catalog_input_definition.catalog_id #=> String
    #   resp.data.input.data_catalog_input_definition.database_name #=> String
    #   resp.data.input.data_catalog_input_definition.table_name #=> String
    #   resp.data.input.data_catalog_input_definition.temp_directory #=> Types::S3Location
    #   resp.data.input.database_input_definition #=> Types::DatabaseInputDefinition
    #   resp.data.input.database_input_definition.glue_connection_name #=> String
    #   resp.data.input.database_input_definition.database_table_name #=> String
    #   resp.data.input.database_input_definition.temp_directory #=> Types::S3Location
    #   resp.data.input.database_input_definition.query_string #=> String
    #   resp.data.input.metadata #=> Types::Metadata
    #   resp.data.input.metadata.source_arn #=> String
    #   resp.data.last_modified_date #=> Time
    #   resp.data.last_modified_by #=> String
    #   resp.data.source #=> String, one of ["S3", "DATA-CATALOG", "DATABASE"]
    #   resp.data.path_options #=> Types::PathOptions
    #   resp.data.path_options.last_modified_date_condition #=> Types::FilterExpression
    #   resp.data.path_options.last_modified_date_condition.expression #=> String
    #   resp.data.path_options.last_modified_date_condition.values_map #=> Hash<String, String>
    #   resp.data.path_options.last_modified_date_condition.values_map['key'] #=> String
    #   resp.data.path_options.files_limit #=> Types::FilesLimit
    #   resp.data.path_options.files_limit.max_files #=> Integer
    #   resp.data.path_options.files_limit.ordered_by #=> String, one of ["LAST_MODIFIED_DATE"]
    #   resp.data.path_options.files_limit.order #=> String, one of ["DESCENDING", "ASCENDING"]
    #   resp.data.path_options.parameters #=> Hash<String, DatasetParameter>
    #   resp.data.path_options.parameters['key'] #=> Types::DatasetParameter
    #   resp.data.path_options.parameters['key'].name #=> String
    #   resp.data.path_options.parameters['key'].type #=> String, one of ["Datetime", "Number", "String"]
    #   resp.data.path_options.parameters['key'].datetime_options #=> Types::DatetimeOptions
    #   resp.data.path_options.parameters['key'].datetime_options.format #=> String
    #   resp.data.path_options.parameters['key'].datetime_options.timezone_offset #=> String
    #   resp.data.path_options.parameters['key'].datetime_options.locale_code #=> String
    #   resp.data.path_options.parameters['key'].create_column #=> Boolean
    #   resp.data.path_options.parameters['key'].filter #=> Types::FilterExpression
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.resource_arn #=> String
    #
    def describe_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataset
      )
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
        data_parser: Parsers::DescribeDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataset,
        stubs: @stubs,
        params_class: Params::DescribeDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the definition of a specific DataBrew job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobInput}.
    #
    # @option params [String] :name
    #   <p>The name of the job to be described.</p>
    #
    # @return [Types::DescribeJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobOutput
    #   resp.data.create_date #=> Time
    #   resp.data.created_by #=> String
    #   resp.data.dataset_name #=> String
    #   resp.data.encryption_key_arn #=> String
    #   resp.data.encryption_mode #=> String, one of ["SSE-KMS", "SSE-S3"]
    #   resp.data.name #=> String
    #   resp.data.type #=> String, one of ["PROFILE", "RECIPE"]
    #   resp.data.last_modified_by #=> String
    #   resp.data.last_modified_date #=> Time
    #   resp.data.log_subscription #=> String, one of ["ENABLE", "DISABLE"]
    #   resp.data.max_capacity #=> Integer
    #   resp.data.max_retries #=> Integer
    #   resp.data.outputs #=> Array<Output>
    #   resp.data.outputs[0] #=> Types::Output
    #   resp.data.outputs[0].compression_format #=> String, one of ["GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"]
    #   resp.data.outputs[0].format #=> String, one of ["CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML", "TABLEAUHYPER"]
    #   resp.data.outputs[0].partition_columns #=> Array<String>
    #   resp.data.outputs[0].partition_columns[0] #=> String
    #   resp.data.outputs[0].location #=> Types::S3Location
    #   resp.data.outputs[0].location.bucket #=> String
    #   resp.data.outputs[0].location.key #=> String
    #   resp.data.outputs[0].location.bucket_owner #=> String
    #   resp.data.outputs[0].overwrite #=> Boolean
    #   resp.data.outputs[0].format_options #=> Types::OutputFormatOptions
    #   resp.data.outputs[0].format_options.csv #=> Types::CsvOutputOptions
    #   resp.data.outputs[0].format_options.csv.delimiter #=> String
    #   resp.data.outputs[0].max_output_files #=> Integer
    #   resp.data.data_catalog_outputs #=> Array<DataCatalogOutput>
    #   resp.data.data_catalog_outputs[0] #=> Types::DataCatalogOutput
    #   resp.data.data_catalog_outputs[0].catalog_id #=> String
    #   resp.data.data_catalog_outputs[0].database_name #=> String
    #   resp.data.data_catalog_outputs[0].table_name #=> String
    #   resp.data.data_catalog_outputs[0].s3_options #=> Types::S3TableOutputOptions
    #   resp.data.data_catalog_outputs[0].s3_options.location #=> Types::S3Location
    #   resp.data.data_catalog_outputs[0].database_options #=> Types::DatabaseTableOutputOptions
    #   resp.data.data_catalog_outputs[0].database_options.temp_directory #=> Types::S3Location
    #   resp.data.data_catalog_outputs[0].database_options.table_name #=> String
    #   resp.data.data_catalog_outputs[0].overwrite #=> Boolean
    #   resp.data.database_outputs #=> Array<DatabaseOutput>
    #   resp.data.database_outputs[0] #=> Types::DatabaseOutput
    #   resp.data.database_outputs[0].glue_connection_name #=> String
    #   resp.data.database_outputs[0].database_options #=> Types::DatabaseTableOutputOptions
    #   resp.data.database_outputs[0].database_output_mode #=> String, one of ["NEW_TABLE"]
    #   resp.data.project_name #=> String
    #   resp.data.profile_configuration #=> Types::ProfileConfiguration
    #   resp.data.profile_configuration.dataset_statistics_configuration #=> Types::StatisticsConfiguration
    #   resp.data.profile_configuration.dataset_statistics_configuration.included_statistics #=> Array<String>
    #   resp.data.profile_configuration.dataset_statistics_configuration.included_statistics[0] #=> String
    #   resp.data.profile_configuration.dataset_statistics_configuration.overrides #=> Array<StatisticOverride>
    #   resp.data.profile_configuration.dataset_statistics_configuration.overrides[0] #=> Types::StatisticOverride
    #   resp.data.profile_configuration.dataset_statistics_configuration.overrides[0].statistic #=> String
    #   resp.data.profile_configuration.dataset_statistics_configuration.overrides[0].parameters #=> Hash<String, String>
    #   resp.data.profile_configuration.dataset_statistics_configuration.overrides[0].parameters['key'] #=> String
    #   resp.data.profile_configuration.profile_columns #=> Array<ColumnSelector>
    #   resp.data.profile_configuration.profile_columns[0] #=> Types::ColumnSelector
    #   resp.data.profile_configuration.profile_columns[0].regex #=> String
    #   resp.data.profile_configuration.profile_columns[0].name #=> String
    #   resp.data.profile_configuration.column_statistics_configurations #=> Array<ColumnStatisticsConfiguration>
    #   resp.data.profile_configuration.column_statistics_configurations[0] #=> Types::ColumnStatisticsConfiguration
    #   resp.data.profile_configuration.column_statistics_configurations[0].selectors #=> Array<ColumnSelector>
    #   resp.data.profile_configuration.column_statistics_configurations[0].statistics #=> Types::StatisticsConfiguration
    #   resp.data.profile_configuration.entity_detector_configuration #=> Types::EntityDetectorConfiguration
    #   resp.data.profile_configuration.entity_detector_configuration.entity_types #=> Array<String>
    #   resp.data.profile_configuration.entity_detector_configuration.entity_types[0] #=> String
    #   resp.data.profile_configuration.entity_detector_configuration.allowed_statistics #=> Array<AllowedStatistics>
    #   resp.data.profile_configuration.entity_detector_configuration.allowed_statistics[0] #=> Types::AllowedStatistics
    #   resp.data.profile_configuration.entity_detector_configuration.allowed_statistics[0].statistics #=> Array<String>
    #   resp.data.validation_configurations #=> Array<ValidationConfiguration>
    #   resp.data.validation_configurations[0] #=> Types::ValidationConfiguration
    #   resp.data.validation_configurations[0].ruleset_arn #=> String
    #   resp.data.validation_configurations[0].validation_mode #=> String, one of ["CHECK_ALL"]
    #   resp.data.recipe_reference #=> Types::RecipeReference
    #   resp.data.recipe_reference.name #=> String
    #   resp.data.recipe_reference.recipe_version #=> String
    #   resp.data.resource_arn #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.timeout #=> Integer
    #   resp.data.job_sample #=> Types::JobSample
    #   resp.data.job_sample.mode #=> String, one of ["FULL_DATASET", "CUSTOM_ROWS"]
    #   resp.data.job_sample.size #=> Integer
    #
    def describe_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJob
      )
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
        data_parser: Parsers::DescribeJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJob,
        stubs: @stubs,
        params_class: Params::DescribeJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Represents one run of a DataBrew job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobRunInput}.
    #
    # @option params [String] :name
    #   <p>The name of the job being processed during this run.</p>
    #
    # @option params [String] :run_id
    #   <p>The unique identifier of the job run.</p>
    #
    # @return [Types::DescribeJobRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_run(
    #     name: 'Name', # required
    #     run_id: 'RunId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobRunOutput
    #   resp.data.attempt #=> Integer
    #   resp.data.completed_on #=> Time
    #   resp.data.dataset_name #=> String
    #   resp.data.error_message #=> String
    #   resp.data.execution_time #=> Integer
    #   resp.data.job_name #=> String
    #   resp.data.profile_configuration #=> Types::ProfileConfiguration
    #   resp.data.profile_configuration.dataset_statistics_configuration #=> Types::StatisticsConfiguration
    #   resp.data.profile_configuration.dataset_statistics_configuration.included_statistics #=> Array<String>
    #   resp.data.profile_configuration.dataset_statistics_configuration.included_statistics[0] #=> String
    #   resp.data.profile_configuration.dataset_statistics_configuration.overrides #=> Array<StatisticOverride>
    #   resp.data.profile_configuration.dataset_statistics_configuration.overrides[0] #=> Types::StatisticOverride
    #   resp.data.profile_configuration.dataset_statistics_configuration.overrides[0].statistic #=> String
    #   resp.data.profile_configuration.dataset_statistics_configuration.overrides[0].parameters #=> Hash<String, String>
    #   resp.data.profile_configuration.dataset_statistics_configuration.overrides[0].parameters['key'] #=> String
    #   resp.data.profile_configuration.profile_columns #=> Array<ColumnSelector>
    #   resp.data.profile_configuration.profile_columns[0] #=> Types::ColumnSelector
    #   resp.data.profile_configuration.profile_columns[0].regex #=> String
    #   resp.data.profile_configuration.profile_columns[0].name #=> String
    #   resp.data.profile_configuration.column_statistics_configurations #=> Array<ColumnStatisticsConfiguration>
    #   resp.data.profile_configuration.column_statistics_configurations[0] #=> Types::ColumnStatisticsConfiguration
    #   resp.data.profile_configuration.column_statistics_configurations[0].selectors #=> Array<ColumnSelector>
    #   resp.data.profile_configuration.column_statistics_configurations[0].statistics #=> Types::StatisticsConfiguration
    #   resp.data.profile_configuration.entity_detector_configuration #=> Types::EntityDetectorConfiguration
    #   resp.data.profile_configuration.entity_detector_configuration.entity_types #=> Array<String>
    #   resp.data.profile_configuration.entity_detector_configuration.entity_types[0] #=> String
    #   resp.data.profile_configuration.entity_detector_configuration.allowed_statistics #=> Array<AllowedStatistics>
    #   resp.data.profile_configuration.entity_detector_configuration.allowed_statistics[0] #=> Types::AllowedStatistics
    #   resp.data.profile_configuration.entity_detector_configuration.allowed_statistics[0].statistics #=> Array<String>
    #   resp.data.validation_configurations #=> Array<ValidationConfiguration>
    #   resp.data.validation_configurations[0] #=> Types::ValidationConfiguration
    #   resp.data.validation_configurations[0].ruleset_arn #=> String
    #   resp.data.validation_configurations[0].validation_mode #=> String, one of ["CHECK_ALL"]
    #   resp.data.run_id #=> String
    #   resp.data.state #=> String, one of ["STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"]
    #   resp.data.log_subscription #=> String, one of ["ENABLE", "DISABLE"]
    #   resp.data.log_group_name #=> String
    #   resp.data.outputs #=> Array<Output>
    #   resp.data.outputs[0] #=> Types::Output
    #   resp.data.outputs[0].compression_format #=> String, one of ["GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"]
    #   resp.data.outputs[0].format #=> String, one of ["CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML", "TABLEAUHYPER"]
    #   resp.data.outputs[0].partition_columns #=> Array<String>
    #   resp.data.outputs[0].partition_columns[0] #=> String
    #   resp.data.outputs[0].location #=> Types::S3Location
    #   resp.data.outputs[0].location.bucket #=> String
    #   resp.data.outputs[0].location.key #=> String
    #   resp.data.outputs[0].location.bucket_owner #=> String
    #   resp.data.outputs[0].overwrite #=> Boolean
    #   resp.data.outputs[0].format_options #=> Types::OutputFormatOptions
    #   resp.data.outputs[0].format_options.csv #=> Types::CsvOutputOptions
    #   resp.data.outputs[0].format_options.csv.delimiter #=> String
    #   resp.data.outputs[0].max_output_files #=> Integer
    #   resp.data.data_catalog_outputs #=> Array<DataCatalogOutput>
    #   resp.data.data_catalog_outputs[0] #=> Types::DataCatalogOutput
    #   resp.data.data_catalog_outputs[0].catalog_id #=> String
    #   resp.data.data_catalog_outputs[0].database_name #=> String
    #   resp.data.data_catalog_outputs[0].table_name #=> String
    #   resp.data.data_catalog_outputs[0].s3_options #=> Types::S3TableOutputOptions
    #   resp.data.data_catalog_outputs[0].s3_options.location #=> Types::S3Location
    #   resp.data.data_catalog_outputs[0].database_options #=> Types::DatabaseTableOutputOptions
    #   resp.data.data_catalog_outputs[0].database_options.temp_directory #=> Types::S3Location
    #   resp.data.data_catalog_outputs[0].database_options.table_name #=> String
    #   resp.data.data_catalog_outputs[0].overwrite #=> Boolean
    #   resp.data.database_outputs #=> Array<DatabaseOutput>
    #   resp.data.database_outputs[0] #=> Types::DatabaseOutput
    #   resp.data.database_outputs[0].glue_connection_name #=> String
    #   resp.data.database_outputs[0].database_options #=> Types::DatabaseTableOutputOptions
    #   resp.data.database_outputs[0].database_output_mode #=> String, one of ["NEW_TABLE"]
    #   resp.data.recipe_reference #=> Types::RecipeReference
    #   resp.data.recipe_reference.name #=> String
    #   resp.data.recipe_reference.recipe_version #=> String
    #   resp.data.started_by #=> String
    #   resp.data.started_on #=> Time
    #   resp.data.job_sample #=> Types::JobSample
    #   resp.data.job_sample.mode #=> String, one of ["FULL_DATASET", "CUSTOM_ROWS"]
    #   resp.data.job_sample.size #=> Integer
    #
    def describe_job_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJobRun
      )
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
        data_parser: Parsers::DescribeJobRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJobRun,
        stubs: @stubs,
        params_class: Params::DescribeJobRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_job_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the definition of a specific DataBrew project.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProjectInput}.
    #
    # @option params [String] :name
    #   <p>The name of the project to be described.</p>
    #
    # @return [Types::DescribeProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_project(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProjectOutput
    #   resp.data.create_date #=> Time
    #   resp.data.created_by #=> String
    #   resp.data.dataset_name #=> String
    #   resp.data.last_modified_date #=> Time
    #   resp.data.last_modified_by #=> String
    #   resp.data.name #=> String
    #   resp.data.recipe_name #=> String
    #   resp.data.resource_arn #=> String
    #   resp.data.sample #=> Types::Sample
    #   resp.data.sample.size #=> Integer
    #   resp.data.sample.type #=> String, one of ["FIRST_N", "LAST_N", "RANDOM"]
    #   resp.data.role_arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.session_status #=> String, one of ["ASSIGNED", "FAILED", "INITIALIZING", "PROVISIONING", "READY", "RECYCLING", "ROTATING", "TERMINATED", "TERMINATING", "UPDATING"]
    #   resp.data.opened_by #=> String
    #   resp.data.open_date #=> Time
    #
    def describe_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProject
      )
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
        data_parser: Parsers::DescribeProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProject,
        stubs: @stubs,
        params_class: Params::DescribeProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the definition of a specific DataBrew recipe corresponding to a particular
    #             version.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRecipeInput}.
    #
    # @option params [String] :name
    #   <p>The name of the recipe to be described.</p>
    #
    # @option params [String] :recipe_version
    #   <p>The recipe version identifier. If this parameter isn't specified, then the latest
    #               published version is returned.</p>
    #
    # @return [Types::DescribeRecipeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recipe(
    #     name: 'Name', # required
    #     recipe_version: 'RecipeVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRecipeOutput
    #   resp.data.created_by #=> String
    #   resp.data.create_date #=> Time
    #   resp.data.last_modified_by #=> String
    #   resp.data.last_modified_date #=> Time
    #   resp.data.project_name #=> String
    #   resp.data.published_by #=> String
    #   resp.data.published_date #=> Time
    #   resp.data.description #=> String
    #   resp.data.name #=> String
    #   resp.data.steps #=> Array<RecipeStep>
    #   resp.data.steps[0] #=> Types::RecipeStep
    #   resp.data.steps[0].action #=> Types::RecipeAction
    #   resp.data.steps[0].action.operation #=> String
    #   resp.data.steps[0].action.parameters #=> Hash<String, String>
    #   resp.data.steps[0].action.parameters['key'] #=> String
    #   resp.data.steps[0].condition_expressions #=> Array<ConditionExpression>
    #   resp.data.steps[0].condition_expressions[0] #=> Types::ConditionExpression
    #   resp.data.steps[0].condition_expressions[0].condition #=> String
    #   resp.data.steps[0].condition_expressions[0].value #=> String
    #   resp.data.steps[0].condition_expressions[0].target_column #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.resource_arn #=> String
    #   resp.data.recipe_version #=> String
    #
    def describe_recipe(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRecipeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRecipeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRecipe
      )
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
        data_parser: Parsers::DescribeRecipe
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRecipe,
        stubs: @stubs,
        params_class: Params::DescribeRecipeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_recipe
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves detailed information about the ruleset.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRulesetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the ruleset to be described.</p>
    #
    # @return [Types::DescribeRulesetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ruleset(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRulesetOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.target_arn #=> String
    #   resp.data.rules #=> Array<Rule>
    #   resp.data.rules[0] #=> Types::Rule
    #   resp.data.rules[0].name #=> String
    #   resp.data.rules[0].disabled #=> Boolean
    #   resp.data.rules[0].check_expression #=> String
    #   resp.data.rules[0].substitution_map #=> Hash<String, String>
    #   resp.data.rules[0].substitution_map['key'] #=> String
    #   resp.data.rules[0].threshold #=> Types::Threshold
    #   resp.data.rules[0].threshold.value #=> Float
    #   resp.data.rules[0].threshold.type #=> String, one of ["GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN"]
    #   resp.data.rules[0].threshold.unit #=> String, one of ["COUNT", "PERCENTAGE"]
    #   resp.data.rules[0].column_selectors #=> Array<ColumnSelector>
    #   resp.data.rules[0].column_selectors[0] #=> Types::ColumnSelector
    #   resp.data.rules[0].column_selectors[0].regex #=> String
    #   resp.data.rules[0].column_selectors[0].name #=> String
    #   resp.data.create_date #=> Time
    #   resp.data.created_by #=> String
    #   resp.data.last_modified_by #=> String
    #   resp.data.last_modified_date #=> Time
    #   resp.data.resource_arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_ruleset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRulesetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRulesetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRuleset
      )
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
        data_parser: Parsers::DescribeRuleset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRuleset,
        stubs: @stubs,
        params_class: Params::DescribeRulesetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_ruleset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the definition of a specific DataBrew schedule.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScheduleInput}.
    #
    # @option params [String] :name
    #   <p>The name of the schedule to be described.</p>
    #
    # @return [Types::DescribeScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_schedule(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeScheduleOutput
    #   resp.data.create_date #=> Time
    #   resp.data.created_by #=> String
    #   resp.data.job_names #=> Array<String>
    #   resp.data.job_names[0] #=> String
    #   resp.data.last_modified_by #=> String
    #   resp.data.last_modified_date #=> Time
    #   resp.data.resource_arn #=> String
    #   resp.data.cron_expression #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.name #=> String
    #
    def describe_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSchedule
      )
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
        data_parser: Parsers::DescribeSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSchedule,
        stubs: @stubs,
        params_class: Params::DescribeScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the DataBrew datasets.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request. </p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    # @return [Types::ListDatasetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetsOutput
    #   resp.data.datasets #=> Array<Dataset>
    #   resp.data.datasets[0] #=> Types::Dataset
    #   resp.data.datasets[0].account_id #=> String
    #   resp.data.datasets[0].created_by #=> String
    #   resp.data.datasets[0].create_date #=> Time
    #   resp.data.datasets[0].name #=> String
    #   resp.data.datasets[0].format #=> String, one of ["CSV", "JSON", "PARQUET", "EXCEL", "ORC"]
    #   resp.data.datasets[0].format_options #=> Types::FormatOptions
    #   resp.data.datasets[0].format_options.json #=> Types::JsonOptions
    #   resp.data.datasets[0].format_options.json.multi_line #=> Boolean
    #   resp.data.datasets[0].format_options.excel #=> Types::ExcelOptions
    #   resp.data.datasets[0].format_options.excel.sheet_names #=> Array<String>
    #   resp.data.datasets[0].format_options.excel.sheet_names[0] #=> String
    #   resp.data.datasets[0].format_options.excel.sheet_indexes #=> Array<Integer>
    #   resp.data.datasets[0].format_options.excel.sheet_indexes[0] #=> Integer
    #   resp.data.datasets[0].format_options.excel.header_row #=> Boolean
    #   resp.data.datasets[0].format_options.csv #=> Types::CsvOptions
    #   resp.data.datasets[0].format_options.csv.delimiter #=> String
    #   resp.data.datasets[0].format_options.csv.header_row #=> Boolean
    #   resp.data.datasets[0].input #=> Types::Input
    #   resp.data.datasets[0].input.s3_input_definition #=> Types::S3Location
    #   resp.data.datasets[0].input.s3_input_definition.bucket #=> String
    #   resp.data.datasets[0].input.s3_input_definition.key #=> String
    #   resp.data.datasets[0].input.s3_input_definition.bucket_owner #=> String
    #   resp.data.datasets[0].input.data_catalog_input_definition #=> Types::DataCatalogInputDefinition
    #   resp.data.datasets[0].input.data_catalog_input_definition.catalog_id #=> String
    #   resp.data.datasets[0].input.data_catalog_input_definition.database_name #=> String
    #   resp.data.datasets[0].input.data_catalog_input_definition.table_name #=> String
    #   resp.data.datasets[0].input.data_catalog_input_definition.temp_directory #=> Types::S3Location
    #   resp.data.datasets[0].input.database_input_definition #=> Types::DatabaseInputDefinition
    #   resp.data.datasets[0].input.database_input_definition.glue_connection_name #=> String
    #   resp.data.datasets[0].input.database_input_definition.database_table_name #=> String
    #   resp.data.datasets[0].input.database_input_definition.temp_directory #=> Types::S3Location
    #   resp.data.datasets[0].input.database_input_definition.query_string #=> String
    #   resp.data.datasets[0].input.metadata #=> Types::Metadata
    #   resp.data.datasets[0].input.metadata.source_arn #=> String
    #   resp.data.datasets[0].last_modified_date #=> Time
    #   resp.data.datasets[0].last_modified_by #=> String
    #   resp.data.datasets[0].source #=> String, one of ["S3", "DATA-CATALOG", "DATABASE"]
    #   resp.data.datasets[0].path_options #=> Types::PathOptions
    #   resp.data.datasets[0].path_options.last_modified_date_condition #=> Types::FilterExpression
    #   resp.data.datasets[0].path_options.last_modified_date_condition.expression #=> String
    #   resp.data.datasets[0].path_options.last_modified_date_condition.values_map #=> Hash<String, String>
    #   resp.data.datasets[0].path_options.last_modified_date_condition.values_map['key'] #=> String
    #   resp.data.datasets[0].path_options.files_limit #=> Types::FilesLimit
    #   resp.data.datasets[0].path_options.files_limit.max_files #=> Integer
    #   resp.data.datasets[0].path_options.files_limit.ordered_by #=> String, one of ["LAST_MODIFIED_DATE"]
    #   resp.data.datasets[0].path_options.files_limit.order #=> String, one of ["DESCENDING", "ASCENDING"]
    #   resp.data.datasets[0].path_options.parameters #=> Hash<String, DatasetParameter>
    #   resp.data.datasets[0].path_options.parameters['key'] #=> Types::DatasetParameter
    #   resp.data.datasets[0].path_options.parameters['key'].name #=> String
    #   resp.data.datasets[0].path_options.parameters['key'].type #=> String, one of ["Datetime", "Number", "String"]
    #   resp.data.datasets[0].path_options.parameters['key'].datetime_options #=> Types::DatetimeOptions
    #   resp.data.datasets[0].path_options.parameters['key'].datetime_options.format #=> String
    #   resp.data.datasets[0].path_options.parameters['key'].datetime_options.timezone_offset #=> String
    #   resp.data.datasets[0].path_options.parameters['key'].datetime_options.locale_code #=> String
    #   resp.data.datasets[0].path_options.parameters['key'].create_column #=> Boolean
    #   resp.data.datasets[0].path_options.parameters['key'].filter #=> Types::FilterExpression
    #   resp.data.datasets[0].tags #=> Hash<String, String>
    #   resp.data.datasets[0].tags['key'] #=> String
    #   resp.data.datasets[0].resource_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_datasets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDatasetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDatasetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDatasets
      )
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
        data_parser: Parsers::ListDatasets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDatasets,
        stubs: @stubs,
        params_class: Params::ListDatasetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_datasets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the previous runs of a particular DataBrew job.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJobRunsInput}.
    #
    # @option params [String] :name
    #   <p>The name of the job.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request. </p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    # @return [Types::ListJobRunsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_runs(
    #     name: 'Name', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobRunsOutput
    #   resp.data.job_runs #=> Array<JobRun>
    #   resp.data.job_runs[0] #=> Types::JobRun
    #   resp.data.job_runs[0].attempt #=> Integer
    #   resp.data.job_runs[0].completed_on #=> Time
    #   resp.data.job_runs[0].dataset_name #=> String
    #   resp.data.job_runs[0].error_message #=> String
    #   resp.data.job_runs[0].execution_time #=> Integer
    #   resp.data.job_runs[0].job_name #=> String
    #   resp.data.job_runs[0].run_id #=> String
    #   resp.data.job_runs[0].state #=> String, one of ["STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED", "TIMEOUT"]
    #   resp.data.job_runs[0].log_subscription #=> String, one of ["ENABLE", "DISABLE"]
    #   resp.data.job_runs[0].log_group_name #=> String
    #   resp.data.job_runs[0].outputs #=> Array<Output>
    #   resp.data.job_runs[0].outputs[0] #=> Types::Output
    #   resp.data.job_runs[0].outputs[0].compression_format #=> String, one of ["GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"]
    #   resp.data.job_runs[0].outputs[0].format #=> String, one of ["CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML", "TABLEAUHYPER"]
    #   resp.data.job_runs[0].outputs[0].partition_columns #=> Array<String>
    #   resp.data.job_runs[0].outputs[0].partition_columns[0] #=> String
    #   resp.data.job_runs[0].outputs[0].location #=> Types::S3Location
    #   resp.data.job_runs[0].outputs[0].location.bucket #=> String
    #   resp.data.job_runs[0].outputs[0].location.key #=> String
    #   resp.data.job_runs[0].outputs[0].location.bucket_owner #=> String
    #   resp.data.job_runs[0].outputs[0].overwrite #=> Boolean
    #   resp.data.job_runs[0].outputs[0].format_options #=> Types::OutputFormatOptions
    #   resp.data.job_runs[0].outputs[0].format_options.csv #=> Types::CsvOutputOptions
    #   resp.data.job_runs[0].outputs[0].format_options.csv.delimiter #=> String
    #   resp.data.job_runs[0].outputs[0].max_output_files #=> Integer
    #   resp.data.job_runs[0].data_catalog_outputs #=> Array<DataCatalogOutput>
    #   resp.data.job_runs[0].data_catalog_outputs[0] #=> Types::DataCatalogOutput
    #   resp.data.job_runs[0].data_catalog_outputs[0].catalog_id #=> String
    #   resp.data.job_runs[0].data_catalog_outputs[0].database_name #=> String
    #   resp.data.job_runs[0].data_catalog_outputs[0].table_name #=> String
    #   resp.data.job_runs[0].data_catalog_outputs[0].s3_options #=> Types::S3TableOutputOptions
    #   resp.data.job_runs[0].data_catalog_outputs[0].s3_options.location #=> Types::S3Location
    #   resp.data.job_runs[0].data_catalog_outputs[0].database_options #=> Types::DatabaseTableOutputOptions
    #   resp.data.job_runs[0].data_catalog_outputs[0].database_options.temp_directory #=> Types::S3Location
    #   resp.data.job_runs[0].data_catalog_outputs[0].database_options.table_name #=> String
    #   resp.data.job_runs[0].data_catalog_outputs[0].overwrite #=> Boolean
    #   resp.data.job_runs[0].database_outputs #=> Array<DatabaseOutput>
    #   resp.data.job_runs[0].database_outputs[0] #=> Types::DatabaseOutput
    #   resp.data.job_runs[0].database_outputs[0].glue_connection_name #=> String
    #   resp.data.job_runs[0].database_outputs[0].database_options #=> Types::DatabaseTableOutputOptions
    #   resp.data.job_runs[0].database_outputs[0].database_output_mode #=> String, one of ["NEW_TABLE"]
    #   resp.data.job_runs[0].recipe_reference #=> Types::RecipeReference
    #   resp.data.job_runs[0].recipe_reference.name #=> String
    #   resp.data.job_runs[0].recipe_reference.recipe_version #=> String
    #   resp.data.job_runs[0].started_by #=> String
    #   resp.data.job_runs[0].started_on #=> Time
    #   resp.data.job_runs[0].job_sample #=> Types::JobSample
    #   resp.data.job_runs[0].job_sample.mode #=> String, one of ["FULL_DATASET", "CUSTOM_ROWS"]
    #   resp.data.job_runs[0].job_sample.size #=> Integer
    #   resp.data.job_runs[0].validation_configurations #=> Array<ValidationConfiguration>
    #   resp.data.job_runs[0].validation_configurations[0] #=> Types::ValidationConfiguration
    #   resp.data.job_runs[0].validation_configurations[0].ruleset_arn #=> String
    #   resp.data.job_runs[0].validation_configurations[0].validation_mode #=> String, one of ["CHECK_ALL"]
    #   resp.data.next_token #=> String
    #
    def list_job_runs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJobRunsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJobRunsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJobRuns
      )
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
        data_parser: Parsers::ListJobRuns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJobRuns,
        stubs: @stubs,
        params_class: Params::ListJobRunsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_job_runs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the DataBrew jobs that are defined.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJobsInput}.
    #
    # @option params [String] :dataset_name
    #   <p>The name of a dataset. Using this parameter indicates to return only those jobs that
    #               act on the specified dataset.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request. </p>
    #
    # @option params [String] :next_token
    #   <p>A token generated by DataBrew that specifies where to continue pagination if a
    #               previous request was truncated. To get the next set of pages, pass in the NextToken
    #               value from the response object of the previous page call. </p>
    #
    # @option params [String] :project_name
    #   <p>The name of a project. Using this parameter indicates to return only those jobs that
    #               are associated with the specified project.</p>
    #
    # @return [Types::ListJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs(
    #     dataset_name: 'DatasetName',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     project_name: 'ProjectName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobsOutput
    #   resp.data.jobs #=> Array<Job>
    #   resp.data.jobs[0] #=> Types::Job
    #   resp.data.jobs[0].account_id #=> String
    #   resp.data.jobs[0].created_by #=> String
    #   resp.data.jobs[0].create_date #=> Time
    #   resp.data.jobs[0].dataset_name #=> String
    #   resp.data.jobs[0].encryption_key_arn #=> String
    #   resp.data.jobs[0].encryption_mode #=> String, one of ["SSE-KMS", "SSE-S3"]
    #   resp.data.jobs[0].name #=> String
    #   resp.data.jobs[0].type #=> String, one of ["PROFILE", "RECIPE"]
    #   resp.data.jobs[0].last_modified_by #=> String
    #   resp.data.jobs[0].last_modified_date #=> Time
    #   resp.data.jobs[0].log_subscription #=> String, one of ["ENABLE", "DISABLE"]
    #   resp.data.jobs[0].max_capacity #=> Integer
    #   resp.data.jobs[0].max_retries #=> Integer
    #   resp.data.jobs[0].outputs #=> Array<Output>
    #   resp.data.jobs[0].outputs[0] #=> Types::Output
    #   resp.data.jobs[0].outputs[0].compression_format #=> String, one of ["GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"]
    #   resp.data.jobs[0].outputs[0].format #=> String, one of ["CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML", "TABLEAUHYPER"]
    #   resp.data.jobs[0].outputs[0].partition_columns #=> Array<String>
    #   resp.data.jobs[0].outputs[0].partition_columns[0] #=> String
    #   resp.data.jobs[0].outputs[0].location #=> Types::S3Location
    #   resp.data.jobs[0].outputs[0].location.bucket #=> String
    #   resp.data.jobs[0].outputs[0].location.key #=> String
    #   resp.data.jobs[0].outputs[0].location.bucket_owner #=> String
    #   resp.data.jobs[0].outputs[0].overwrite #=> Boolean
    #   resp.data.jobs[0].outputs[0].format_options #=> Types::OutputFormatOptions
    #   resp.data.jobs[0].outputs[0].format_options.csv #=> Types::CsvOutputOptions
    #   resp.data.jobs[0].outputs[0].format_options.csv.delimiter #=> String
    #   resp.data.jobs[0].outputs[0].max_output_files #=> Integer
    #   resp.data.jobs[0].data_catalog_outputs #=> Array<DataCatalogOutput>
    #   resp.data.jobs[0].data_catalog_outputs[0] #=> Types::DataCatalogOutput
    #   resp.data.jobs[0].data_catalog_outputs[0].catalog_id #=> String
    #   resp.data.jobs[0].data_catalog_outputs[0].database_name #=> String
    #   resp.data.jobs[0].data_catalog_outputs[0].table_name #=> String
    #   resp.data.jobs[0].data_catalog_outputs[0].s3_options #=> Types::S3TableOutputOptions
    #   resp.data.jobs[0].data_catalog_outputs[0].s3_options.location #=> Types::S3Location
    #   resp.data.jobs[0].data_catalog_outputs[0].database_options #=> Types::DatabaseTableOutputOptions
    #   resp.data.jobs[0].data_catalog_outputs[0].database_options.temp_directory #=> Types::S3Location
    #   resp.data.jobs[0].data_catalog_outputs[0].database_options.table_name #=> String
    #   resp.data.jobs[0].data_catalog_outputs[0].overwrite #=> Boolean
    #   resp.data.jobs[0].database_outputs #=> Array<DatabaseOutput>
    #   resp.data.jobs[0].database_outputs[0] #=> Types::DatabaseOutput
    #   resp.data.jobs[0].database_outputs[0].glue_connection_name #=> String
    #   resp.data.jobs[0].database_outputs[0].database_options #=> Types::DatabaseTableOutputOptions
    #   resp.data.jobs[0].database_outputs[0].database_output_mode #=> String, one of ["NEW_TABLE"]
    #   resp.data.jobs[0].project_name #=> String
    #   resp.data.jobs[0].recipe_reference #=> Types::RecipeReference
    #   resp.data.jobs[0].recipe_reference.name #=> String
    #   resp.data.jobs[0].recipe_reference.recipe_version #=> String
    #   resp.data.jobs[0].resource_arn #=> String
    #   resp.data.jobs[0].role_arn #=> String
    #   resp.data.jobs[0].timeout #=> Integer
    #   resp.data.jobs[0].tags #=> Hash<String, String>
    #   resp.data.jobs[0].tags['key'] #=> String
    #   resp.data.jobs[0].job_sample #=> Types::JobSample
    #   resp.data.jobs[0].job_sample.mode #=> String, one of ["FULL_DATASET", "CUSTOM_ROWS"]
    #   resp.data.jobs[0].job_sample.size #=> Integer
    #   resp.data.jobs[0].validation_configurations #=> Array<ValidationConfiguration>
    #   resp.data.jobs[0].validation_configurations[0] #=> Types::ValidationConfiguration
    #   resp.data.jobs[0].validation_configurations[0].ruleset_arn #=> String
    #   resp.data.jobs[0].validation_configurations[0].validation_mode #=> String, one of ["CHECK_ALL"]
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

    # <p>Lists all of the DataBrew projects that are defined.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProjectsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request. </p>
    #
    # @return [Types::ListProjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProjectsOutput
    #   resp.data.projects #=> Array<Project>
    #   resp.data.projects[0] #=> Types::Project
    #   resp.data.projects[0].account_id #=> String
    #   resp.data.projects[0].create_date #=> Time
    #   resp.data.projects[0].created_by #=> String
    #   resp.data.projects[0].dataset_name #=> String
    #   resp.data.projects[0].last_modified_date #=> Time
    #   resp.data.projects[0].last_modified_by #=> String
    #   resp.data.projects[0].name #=> String
    #   resp.data.projects[0].recipe_name #=> String
    #   resp.data.projects[0].resource_arn #=> String
    #   resp.data.projects[0].sample #=> Types::Sample
    #   resp.data.projects[0].sample.size #=> Integer
    #   resp.data.projects[0].sample.type #=> String, one of ["FIRST_N", "LAST_N", "RANDOM"]
    #   resp.data.projects[0].tags #=> Hash<String, String>
    #   resp.data.projects[0].tags['key'] #=> String
    #   resp.data.projects[0].role_arn #=> String
    #   resp.data.projects[0].opened_by #=> String
    #   resp.data.projects[0].open_date #=> Time
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

    # <p>Lists the versions of a particular DataBrew recipe, except for
    #                 <code>LATEST_WORKING</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRecipeVersionsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request. </p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    # @option params [String] :name
    #   <p>The name of the recipe for which to return version information.</p>
    #
    # @return [Types::ListRecipeVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recipe_versions(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRecipeVersionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.recipes #=> Array<Recipe>
    #   resp.data.recipes[0] #=> Types::Recipe
    #   resp.data.recipes[0].created_by #=> String
    #   resp.data.recipes[0].create_date #=> Time
    #   resp.data.recipes[0].last_modified_by #=> String
    #   resp.data.recipes[0].last_modified_date #=> Time
    #   resp.data.recipes[0].project_name #=> String
    #   resp.data.recipes[0].published_by #=> String
    #   resp.data.recipes[0].published_date #=> Time
    #   resp.data.recipes[0].description #=> String
    #   resp.data.recipes[0].name #=> String
    #   resp.data.recipes[0].resource_arn #=> String
    #   resp.data.recipes[0].steps #=> Array<RecipeStep>
    #   resp.data.recipes[0].steps[0] #=> Types::RecipeStep
    #   resp.data.recipes[0].steps[0].action #=> Types::RecipeAction
    #   resp.data.recipes[0].steps[0].action.operation #=> String
    #   resp.data.recipes[0].steps[0].action.parameters #=> Hash<String, String>
    #   resp.data.recipes[0].steps[0].action.parameters['key'] #=> String
    #   resp.data.recipes[0].steps[0].condition_expressions #=> Array<ConditionExpression>
    #   resp.data.recipes[0].steps[0].condition_expressions[0] #=> Types::ConditionExpression
    #   resp.data.recipes[0].steps[0].condition_expressions[0].condition #=> String
    #   resp.data.recipes[0].steps[0].condition_expressions[0].value #=> String
    #   resp.data.recipes[0].steps[0].condition_expressions[0].target_column #=> String
    #   resp.data.recipes[0].tags #=> Hash<String, String>
    #   resp.data.recipes[0].tags['key'] #=> String
    #   resp.data.recipes[0].recipe_version #=> String
    #
    def list_recipe_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRecipeVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRecipeVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRecipeVersions
      )
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
        data_parser: Parsers::ListRecipeVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRecipeVersions,
        stubs: @stubs,
        params_class: Params::ListRecipeVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_recipe_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the DataBrew recipes that are defined.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRecipesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request. </p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    # @option params [String] :recipe_version
    #   <p>Return only those recipes with a version identifier of <code>LATEST_WORKING</code> or
    #                   <code>LATEST_PUBLISHED</code>. If <code>RecipeVersion</code> is omitted,
    #                   <code>ListRecipes</code> returns all of the <code>LATEST_PUBLISHED</code> recipe
    #               versions.</p>
    #           <p>Valid values: <code>LATEST_WORKING</code> | <code>LATEST_PUBLISHED</code>
    #            </p>
    #
    # @return [Types::ListRecipesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recipes(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     recipe_version: 'RecipeVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRecipesOutput
    #   resp.data.recipes #=> Array<Recipe>
    #   resp.data.recipes[0] #=> Types::Recipe
    #   resp.data.recipes[0].created_by #=> String
    #   resp.data.recipes[0].create_date #=> Time
    #   resp.data.recipes[0].last_modified_by #=> String
    #   resp.data.recipes[0].last_modified_date #=> Time
    #   resp.data.recipes[0].project_name #=> String
    #   resp.data.recipes[0].published_by #=> String
    #   resp.data.recipes[0].published_date #=> Time
    #   resp.data.recipes[0].description #=> String
    #   resp.data.recipes[0].name #=> String
    #   resp.data.recipes[0].resource_arn #=> String
    #   resp.data.recipes[0].steps #=> Array<RecipeStep>
    #   resp.data.recipes[0].steps[0] #=> Types::RecipeStep
    #   resp.data.recipes[0].steps[0].action #=> Types::RecipeAction
    #   resp.data.recipes[0].steps[0].action.operation #=> String
    #   resp.data.recipes[0].steps[0].action.parameters #=> Hash<String, String>
    #   resp.data.recipes[0].steps[0].action.parameters['key'] #=> String
    #   resp.data.recipes[0].steps[0].condition_expressions #=> Array<ConditionExpression>
    #   resp.data.recipes[0].steps[0].condition_expressions[0] #=> Types::ConditionExpression
    #   resp.data.recipes[0].steps[0].condition_expressions[0].condition #=> String
    #   resp.data.recipes[0].steps[0].condition_expressions[0].value #=> String
    #   resp.data.recipes[0].steps[0].condition_expressions[0].target_column #=> String
    #   resp.data.recipes[0].tags #=> Hash<String, String>
    #   resp.data.recipes[0].tags['key'] #=> String
    #   resp.data.recipes[0].recipe_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_recipes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRecipesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRecipesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRecipes
      )
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
        data_parser: Parsers::ListRecipes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRecipes,
        stubs: @stubs,
        params_class: Params::ListRecipesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_recipes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all rulesets available in the current account or rulesets associated
    #             with a specific resource (dataset).</p>
    #
    # @param [Hash] params
    #   See {Types::ListRulesetsInput}.
    #
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) of a resource (dataset). Using this parameter
    #               indicates to return only those rulesets that are associated with the specified resource.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    #
    # @option params [String] :next_token
    #   <p>A token generated by DataBrew that specifies where to continue pagination
    #               if a previous request was truncated. To get the next set of pages, pass in
    #               the NextToken value from the response object of the previous page call.</p>
    #
    # @return [Types::ListRulesetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rulesets(
    #     target_arn: 'TargetArn',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRulesetsOutput
    #   resp.data.rulesets #=> Array<RulesetItem>
    #   resp.data.rulesets[0] #=> Types::RulesetItem
    #   resp.data.rulesets[0].account_id #=> String
    #   resp.data.rulesets[0].created_by #=> String
    #   resp.data.rulesets[0].create_date #=> Time
    #   resp.data.rulesets[0].description #=> String
    #   resp.data.rulesets[0].last_modified_by #=> String
    #   resp.data.rulesets[0].last_modified_date #=> Time
    #   resp.data.rulesets[0].name #=> String
    #   resp.data.rulesets[0].resource_arn #=> String
    #   resp.data.rulesets[0].rule_count #=> Integer
    #   resp.data.rulesets[0].tags #=> Hash<String, String>
    #   resp.data.rulesets[0].tags['key'] #=> String
    #   resp.data.rulesets[0].target_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_rulesets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRulesetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRulesetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRulesets
      )
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
        data_parser: Parsers::ListRulesets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRulesets,
        stubs: @stubs,
        params_class: Params::ListRulesetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_rulesets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the DataBrew schedules that are defined.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSchedulesInput}.
    #
    # @option params [String] :job_name
    #   <p>The name of the job that these schedules apply to.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request. </p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    # @return [Types::ListSchedulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schedules(
    #     job_name: 'JobName',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSchedulesOutput
    #   resp.data.schedules #=> Array<Schedule>
    #   resp.data.schedules[0] #=> Types::Schedule
    #   resp.data.schedules[0].account_id #=> String
    #   resp.data.schedules[0].created_by #=> String
    #   resp.data.schedules[0].create_date #=> Time
    #   resp.data.schedules[0].job_names #=> Array<String>
    #   resp.data.schedules[0].job_names[0] #=> String
    #   resp.data.schedules[0].last_modified_by #=> String
    #   resp.data.schedules[0].last_modified_date #=> Time
    #   resp.data.schedules[0].resource_arn #=> String
    #   resp.data.schedules[0].cron_expression #=> String
    #   resp.data.schedules[0].tags #=> Hash<String, String>
    #   resp.data.schedules[0].tags['key'] #=> String
    #   resp.data.schedules[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_schedules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSchedulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSchedulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSchedules
      )
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
        data_parser: Parsers::ListSchedules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSchedules,
        stubs: @stubs,
        params_class: Params::ListSchedulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_schedules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the tags for a DataBrew resource. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the DataBrew resource.
    #           </p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Publishes a new version of a DataBrew recipe.</p>
    #
    # @param [Hash] params
    #   See {Types::PublishRecipeInput}.
    #
    # @option params [String] :description
    #   <p>A description of the recipe to be published, for this version of the recipe.</p>
    #
    # @option params [String] :name
    #   <p>The name of the recipe to be published.</p>
    #
    # @return [Types::PublishRecipeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_recipe(
    #     description: 'Description',
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PublishRecipeOutput
    #   resp.data.name #=> String
    #
    def publish_recipe(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PublishRecipeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PublishRecipeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PublishRecipe
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::PublishRecipe
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PublishRecipe,
        stubs: @stubs,
        params_class: Params::PublishRecipeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :publish_recipe
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Performs a recipe step within an interactive DataBrew session that's currently
    #             open.</p>
    #
    # @param [Hash] params
    #   See {Types::SendProjectSessionActionInput}.
    #
    # @option params [Boolean] :preview
    #   <p>If true, the result of the recipe step will be returned, but not applied.</p>
    #
    # @option params [String] :name
    #   <p>The name of the project to apply the action to.</p>
    #
    # @option params [RecipeStep] :recipe_step
    #   <p>Represents a single step from a DataBrew recipe to be performed.</p>
    #
    # @option params [Integer] :step_index
    #   <p>The index from which to preview a step. This index is used to preview the result of
    #               steps that have already been applied, so that the resulting view frame is from earlier
    #               in the view frame stack.</p>
    #
    # @option params [String] :client_session_id
    #   <p>A unique identifier for an interactive session that's currently open and ready for
    #               work. The action will be performed on this session.</p>
    #
    # @option params [ViewFrame] :view_frame
    #   <p>Represents the data being transformed during an action.</p>
    #
    # @return [Types::SendProjectSessionActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_project_session_action(
    #     preview: false,
    #     name: 'Name', # required
    #     recipe_step: {
    #       action: {
    #         operation: 'Operation', # required
    #         parameters: {
    #           'key' => 'value'
    #         }
    #       }, # required
    #       condition_expressions: [
    #         {
    #           condition: 'Condition', # required
    #           value: 'Value',
    #           target_column: 'TargetColumn' # required
    #         }
    #       ]
    #     },
    #     step_index: 1,
    #     client_session_id: 'ClientSessionId',
    #     view_frame: {
    #       start_column_index: 1, # required
    #       column_range: 1,
    #       hidden_columns: [
    #         'member'
    #       ],
    #       start_row_index: 1,
    #       row_range: 1,
    #       analytics: 'ENABLE' # accepts ["ENABLE", "DISABLE"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendProjectSessionActionOutput
    #   resp.data.result #=> String
    #   resp.data.name #=> String
    #   resp.data.action_id #=> Integer
    #
    def send_project_session_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendProjectSessionActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendProjectSessionActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendProjectSessionAction
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::SendProjectSessionAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendProjectSessionAction,
        stubs: @stubs,
        params_class: Params::SendProjectSessionActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_project_session_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Runs a DataBrew job.</p>
    #
    # @param [Hash] params
    #   See {Types::StartJobRunInput}.
    #
    # @option params [String] :name
    #   <p>The name of the job to be run.</p>
    #
    # @return [Types::StartJobRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_job_run(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartJobRunOutput
    #   resp.data.run_id #=> String
    #
    def start_job_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartJobRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartJobRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartJobRun
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::StartJobRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartJobRun,
        stubs: @stubs,
        params_class: Params::StartJobRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_job_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an interactive session, enabling you to manipulate data in a DataBrew
    #             project.</p>
    #
    # @param [Hash] params
    #   See {Types::StartProjectSessionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the project to act upon.</p>
    #
    # @option params [Boolean] :assume_control
    #   <p>A value that, if true, enables you to take control of a session, even if a different
    #               client is currently accessing the project.</p>
    #
    # @return [Types::StartProjectSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_project_session(
    #     name: 'Name', # required
    #     assume_control: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartProjectSessionOutput
    #   resp.data.name #=> String
    #   resp.data.client_session_id #=> String
    #
    def start_project_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartProjectSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartProjectSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartProjectSession
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::StartProjectSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartProjectSession,
        stubs: @stubs,
        params_class: Params::StartProjectSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_project_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a particular run of a job.</p>
    #
    # @param [Hash] params
    #   See {Types::StopJobRunInput}.
    #
    # @option params [String] :name
    #   <p>The name of the job to be stopped.</p>
    #
    # @option params [String] :run_id
    #   <p>The ID of the job run to be stopped.</p>
    #
    # @return [Types::StopJobRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_job_run(
    #     name: 'Name', # required
    #     run_id: 'RunId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopJobRunOutput
    #   resp.data.run_id #=> String
    #
    def stop_job_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopJobRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopJobRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopJobRun
      )
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
        data_parser: Parsers::StopJobRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopJobRun,
        stubs: @stubs,
        params_class: Params::StopJobRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_job_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds metadata tags to a DataBrew resource, such as a dataset, project, recipe, job, or
    #             schedule.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The DataBrew resource to which tags should be added. The value for this parameter is
    #               an Amazon Resource Name (ARN). For DataBrew, you can tag a dataset, a job, a project, or
    #               a recipe.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags to be assigned to the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Removes metadata tags from a DataBrew resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>A DataBrew resource from which you want to remove a tag or tags. The value for this
    #               parameter is an Amazon Resource Name (ARN). </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys (names) of one or more tags to be removed.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Modifies the definition of an existing DataBrew dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDatasetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the dataset to be updated.</p>
    #
    # @option params [String] :format
    #   <p>The file format of a dataset that is created from an Amazon S3 file or folder.</p>
    #
    # @option params [FormatOptions] :format_options
    #   <p>Represents a set of options that define the structure of either comma-separated value (CSV),
    #               Excel, or JSON input.</p>
    #
    # @option params [Input] :input
    #   <p>Represents information on how DataBrew can find data, in either the Glue Data Catalog or
    #               Amazon S3.</p>
    #
    # @option params [PathOptions] :path_options
    #   <p>A set of options that defines how DataBrew interprets an Amazon S3 path of the dataset.</p>
    #
    # @return [Types::UpdateDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset(
    #     name: 'Name', # required
    #     format: 'CSV', # accepts ["CSV", "JSON", "PARQUET", "EXCEL", "ORC"]
    #     format_options: {
    #       json: {
    #         multi_line: false
    #       },
    #       excel: {
    #         sheet_names: [
    #           'member'
    #         ],
    #         sheet_indexes: [
    #           1
    #         ],
    #         header_row: false
    #       },
    #       csv: {
    #         delimiter: 'Delimiter',
    #         header_row: false
    #       }
    #     },
    #     input: {
    #       s3_input_definition: {
    #         bucket: 'Bucket', # required
    #         key: 'Key',
    #         bucket_owner: 'BucketOwner'
    #       },
    #       data_catalog_input_definition: {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         table_name: 'TableName', # required
    #       },
    #       database_input_definition: {
    #         glue_connection_name: 'GlueConnectionName', # required
    #         database_table_name: 'DatabaseTableName',
    #         query_string: 'QueryString'
    #       },
    #       metadata: {
    #         source_arn: 'SourceArn'
    #       }
    #     }, # required
    #     path_options: {
    #       last_modified_date_condition: {
    #         expression: 'Expression', # required
    #         values_map: {
    #           'key' => 'value'
    #         } # required
    #       },
    #       files_limit: {
    #         max_files: 1, # required
    #         ordered_by: 'LAST_MODIFIED_DATE', # accepts ["LAST_MODIFIED_DATE"]
    #         order: 'DESCENDING' # accepts ["DESCENDING", "ASCENDING"]
    #       },
    #       parameters: {
    #         'key' => {
    #           name: 'Name', # required
    #           type: 'Datetime', # required - accepts ["Datetime", "Number", "String"]
    #           datetime_options: {
    #             format: 'Format', # required
    #             timezone_offset: 'TimezoneOffset',
    #             locale_code: 'LocaleCode'
    #           },
    #           create_column: false,
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDatasetOutput
    #   resp.data.name #=> String
    #
    def update_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDataset
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDataset,
        stubs: @stubs,
        params_class: Params::UpdateDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the definition of an existing profile job.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProfileJobInput}.
    #
    # @option params [ProfileConfiguration] :configuration
    #   <p>Configuration for profile jobs. Used to select columns, do evaluations,
    #               and override default parameters of evaluations. When configuration is null, the
    #               profile job will run with default settings.</p>
    #
    # @option params [String] :encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
    #               job.</p>
    #
    # @option params [String] :encryption_mode
    #   <p>The encryption mode for the job, which can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon
    #                       S3.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :name
    #   <p>The name of the job to be updated.</p>
    #
    # @option params [String] :log_subscription
    #   <p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
    #               CloudWatch writes one log stream for each job run.</p>
    #
    # @option params [Integer] :max_capacity
    #   <p>The maximum number of compute nodes that DataBrew can use when the job processes
    #               data.</p>
    #
    # @option params [Integer] :max_retries
    #   <p>The maximum number of times to retry the job after a job run fails.</p>
    #
    # @option params [S3Location] :output_location
    #   <p>Represents an Amazon S3 location (bucket name, bucket owner, and object key) where DataBrew can read
    #               input data, or write output from a job.</p>
    #
    # @option params [Array<ValidationConfiguration>] :validation_configurations
    #   <p>List of validation configurations that are applied to the profile job.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
    #               be assumed when DataBrew runs the job.</p>
    #
    # @option params [Integer] :timeout
    #   <p>The job's timeout in minutes. A job that attempts to run longer than this timeout
    #               period ends with a status of <code>TIMEOUT</code>.</p>
    #
    # @option params [JobSample] :job_sample
    #   <p>Sample configuration for Profile Jobs only. Determines the number of rows on which the
    #               Profile job will be executed. If a JobSample value is not provided for profile jobs, the
    #               default value will be used. The default value is CUSTOM_ROWS for the mode parameter and
    #               20000 for the size parameter.</p>
    #
    # @return [Types::UpdateProfileJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profile_job(
    #     configuration: {
    #       dataset_statistics_configuration: {
    #         included_statistics: [
    #           'member'
    #         ],
    #         overrides: [
    #           {
    #             statistic: 'Statistic', # required
    #             parameters: {
    #               'key' => 'value'
    #             } # required
    #           }
    #         ]
    #       },
    #       profile_columns: [
    #         {
    #           regex: 'Regex',
    #           name: 'Name'
    #         }
    #       ],
    #       column_statistics_configurations: [
    #         {
    #         }
    #       ],
    #       entity_detector_configuration: {
    #         entity_types: [
    #           'member'
    #         ], # required
    #         allowed_statistics: [
    #           {
    #           }
    #         ]
    #       }
    #     },
    #     encryption_key_arn: 'EncryptionKeyArn',
    #     encryption_mode: 'SSE-KMS', # accepts ["SSE-KMS", "SSE-S3"]
    #     name: 'Name', # required
    #     log_subscription: 'ENABLE', # accepts ["ENABLE", "DISABLE"]
    #     max_capacity: 1,
    #     max_retries: 1,
    #     output_location: {
    #       bucket: 'Bucket', # required
    #       key: 'Key',
    #       bucket_owner: 'BucketOwner'
    #     }, # required
    #     validation_configurations: [
    #       {
    #         ruleset_arn: 'RulesetArn', # required
    #         validation_mode: 'CHECK_ALL' # accepts ["CHECK_ALL"]
    #       }
    #     ],
    #     role_arn: 'RoleArn', # required
    #     timeout: 1,
    #     job_sample: {
    #       mode: 'FULL_DATASET', # accepts ["FULL_DATASET", "CUSTOM_ROWS"]
    #       size: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProfileJobOutput
    #   resp.data.name #=> String
    #
    def update_profile_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProfileJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProfileJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProfileJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateProfileJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProfileJob,
        stubs: @stubs,
        params_class: Params::UpdateProfileJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_profile_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the definition of an existing DataBrew project.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProjectInput}.
    #
    # @option params [Sample] :sample
    #   <p>Represents the sample size and sampling type for DataBrew to use for interactive data
    #               analysis.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to be assumed for this request.</p>
    #
    # @option params [String] :name
    #   <p>The name of the project to be updated.</p>
    #
    # @return [Types::UpdateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project(
    #     sample: {
    #       size: 1,
    #       type: 'FIRST_N' # required - accepts ["FIRST_N", "LAST_N", "RANDOM"]
    #     },
    #     role_arn: 'RoleArn', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProjectOutput
    #   resp.data.last_modified_date #=> Time
    #   resp.data.name #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Modifies the definition of the <code>LATEST_WORKING</code> version of a DataBrew
    #             recipe.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRecipeInput}.
    #
    # @option params [String] :description
    #   <p>A description of the recipe.</p>
    #
    # @option params [String] :name
    #   <p>The name of the recipe to be updated.</p>
    #
    # @option params [Array<RecipeStep>] :steps
    #   <p>One or more steps to be performed by the recipe. Each step consists of an action, and
    #               the conditions under which the action should succeed.</p>
    #
    # @return [Types::UpdateRecipeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_recipe(
    #     description: 'Description',
    #     name: 'Name', # required
    #     steps: [
    #       {
    #         action: {
    #           operation: 'Operation', # required
    #           parameters: {
    #             'key' => 'value'
    #           }
    #         }, # required
    #         condition_expressions: [
    #           {
    #             condition: 'Condition', # required
    #             value: 'Value',
    #             target_column: 'TargetColumn' # required
    #           }
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRecipeOutput
    #   resp.data.name #=> String
    #
    def update_recipe(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRecipeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRecipeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRecipe
      )
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
        data_parser: Parsers::UpdateRecipe
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRecipe,
        stubs: @stubs,
        params_class: Params::UpdateRecipeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_recipe
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the definition of an existing DataBrew recipe job.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRecipeJobInput}.
    #
    # @option params [String] :encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of an encryption key that is used to protect the
    #               job.</p>
    #
    # @option params [String] :encryption_mode
    #   <p>The encryption mode for the job, which can be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SSE-KMS</code> - Server-side encryption with keys managed by KMS.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SSE-S3</code> - Server-side encryption with keys managed by Amazon S3.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :name
    #   <p>The name of the job to update.</p>
    #
    # @option params [String] :log_subscription
    #   <p>Enables or disables Amazon CloudWatch logging for the job. If logging is enabled,
    #               CloudWatch writes one log stream for each job run.</p>
    #
    # @option params [Integer] :max_capacity
    #   <p>The maximum number of nodes that DataBrew can consume when the job processes
    #               data.</p>
    #
    # @option params [Integer] :max_retries
    #   <p>The maximum number of times to retry the job after a job run fails.</p>
    #
    # @option params [Array<Output>] :outputs
    #   <p>One or more artifacts that represent the output from running the job. </p>
    #
    # @option params [Array<DataCatalogOutput>] :data_catalog_outputs
    #   <p>One or more artifacts that represent the Glue Data Catalog output from running the job.</p>
    #
    # @option params [Array<DatabaseOutput>] :database_outputs
    #   <p>Represents a list of JDBC database output objects which defines the output destination for a
    #               DataBrew recipe job to write into.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role to
    #               be assumed when DataBrew runs the job.</p>
    #
    # @option params [Integer] :timeout
    #   <p>The job's timeout in minutes. A job that attempts to run longer than this timeout
    #               period ends with a status of <code>TIMEOUT</code>.</p>
    #
    # @return [Types::UpdateRecipeJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_recipe_job(
    #     encryption_key_arn: 'EncryptionKeyArn',
    #     encryption_mode: 'SSE-KMS', # accepts ["SSE-KMS", "SSE-S3"]
    #     name: 'Name', # required
    #     log_subscription: 'ENABLE', # accepts ["ENABLE", "DISABLE"]
    #     max_capacity: 1,
    #     max_retries: 1,
    #     outputs: [
    #       {
    #         compression_format: 'GZIP', # accepts ["GZIP", "LZ4", "SNAPPY", "BZIP2", "DEFLATE", "LZO", "BROTLI", "ZSTD", "ZLIB"]
    #         format: 'CSV', # accepts ["CSV", "JSON", "PARQUET", "GLUEPARQUET", "AVRO", "ORC", "XML", "TABLEAUHYPER"]
    #         partition_columns: [
    #           'member'
    #         ],
    #         location: {
    #           bucket: 'Bucket', # required
    #           key: 'Key',
    #           bucket_owner: 'BucketOwner'
    #         }, # required
    #         overwrite: false,
    #         format_options: {
    #           csv: {
    #             delimiter: 'Delimiter'
    #           }
    #         },
    #         max_output_files: 1
    #       }
    #     ],
    #     data_catalog_outputs: [
    #       {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         table_name: 'TableName', # required
    #         s3_options: {
    #         },
    #         database_options: {
    #           table_name: 'TableName' # required
    #         },
    #         overwrite: false
    #       }
    #     ],
    #     database_outputs: [
    #       {
    #         glue_connection_name: 'GlueConnectionName', # required
    #         database_output_mode: 'NEW_TABLE' # accepts ["NEW_TABLE"]
    #       }
    #     ],
    #     role_arn: 'RoleArn', # required
    #     timeout: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRecipeJobOutput
    #   resp.data.name #=> String
    #
    def update_recipe_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRecipeJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRecipeJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRecipeJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateRecipeJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRecipeJob,
        stubs: @stubs,
        params_class: Params::UpdateRecipeJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_recipe_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates specified ruleset.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRulesetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the ruleset to be updated.</p>
    #
    # @option params [String] :description
    #   <p>The description of the ruleset.</p>
    #
    # @option params [Array<Rule>] :rules
    #   <p>A list of rules that are defined with the ruleset. A rule includes one or more
    #               checks to be validated on a DataBrew dataset.</p>
    #
    # @return [Types::UpdateRulesetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ruleset(
    #     name: 'Name', # required
    #     description: 'Description',
    #     rules: [
    #       {
    #         name: 'Name', # required
    #         disabled: false,
    #         check_expression: 'CheckExpression', # required
    #         substitution_map: {
    #           'key' => 'value'
    #         },
    #         threshold: {
    #           value: 1.0, # required
    #           type: 'GREATER_THAN_OR_EQUAL', # accepts ["GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN"]
    #           unit: 'COUNT' # accepts ["COUNT", "PERCENTAGE"]
    #         },
    #         column_selectors: [
    #           {
    #             regex: 'Regex',
    #             name: 'Name'
    #           }
    #         ]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRulesetOutput
    #   resp.data.name #=> String
    #
    def update_ruleset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRulesetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRulesetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRuleset
      )
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
        data_parser: Parsers::UpdateRuleset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRuleset,
        stubs: @stubs,
        params_class: Params::UpdateRulesetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_ruleset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the definition of an existing DataBrew schedule.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateScheduleInput}.
    #
    # @option params [Array<String>] :job_names
    #   <p>The name or names of one or more jobs to be run for this schedule.</p>
    #
    # @option params [String] :cron_expression
    #   <p>The date or dates and time or times when the jobs are to be run. For more information,
    #               see <a href="https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html">Cron
    #                   expressions</a> in the <i>Glue DataBrew Developer
    #               Guide</i>.</p>
    #
    # @option params [String] :name
    #   <p>The name of the schedule to update.</p>
    #
    # @return [Types::UpdateScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_schedule(
    #     job_names: [
    #       'member'
    #     ],
    #     cron_expression: 'CronExpression', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateScheduleOutput
    #   resp.data.name #=> String
    #
    def update_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSchedule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSchedule,
        stubs: @stubs,
        params_class: Params::UpdateScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_schedule
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
