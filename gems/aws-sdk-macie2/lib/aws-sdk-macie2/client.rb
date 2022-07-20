# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Macie2
  # An API client for Macie2
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Macie is a fully managed data security and data privacy service that uses machine learning and pattern matching to discover and protect your sensitive data in AWS. Macie automates the discovery of sensitive data, such as PII and intellectual property, to provide you with insight into the data that your organization stores in AWS. Macie also provides an inventory of your Amazon S3 buckets, which it continually monitors for you. If Macie detects sensitive data or potential data access issues, it generates detailed findings for you to review and act upon as necessary.</p>
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
    def initialize(config = AWS::SDK::Macie2::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Accepts an Amazon Macie membership invitation that was received from a specific account.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptInvitationInput}.
    #
    # @option params [String] :administrator_account_id
    #   <p>The Amazon Web Services account ID for the account that sent the invitation.</p>
    #
    # @option params [String] :invitation_id
    #   <p>The unique identifier for the invitation to accept.</p>
    #
    # @option params [String] :master_account
    #   <p>(Deprecated) The Amazon Web Services account ID for the account that sent the invitation. This property has been replaced by the administratorAccountId property and is retained only for backward compatibility.</p>
    #
    # @return [Types::AcceptInvitationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_invitation(
    #     administrator_account_id: 'administratorAccountId',
    #     invitation_id: 'invitationId', # required
    #     master_account: 'masterAccount'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptInvitationOutput
    #
    def accept_invitation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptInvitationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptInvitationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptInvitation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::AcceptInvitation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptInvitation,
        stubs: @stubs,
        params_class: Params::AcceptInvitationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_invitation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about one or more custom data identifiers.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetCustomDataIdentifiersInput}.
    #
    # @option params [Array<String>] :ids
    #   <p>An array of custom data identifier IDs, one for each custom data identifier to retrieve information about.</p>
    #
    # @return [Types::BatchGetCustomDataIdentifiersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_custom_data_identifiers(
    #     ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetCustomDataIdentifiersOutput
    #   resp.data.custom_data_identifiers #=> Array<BatchGetCustomDataIdentifierSummary>
    #   resp.data.custom_data_identifiers[0] #=> Types::BatchGetCustomDataIdentifierSummary
    #   resp.data.custom_data_identifiers[0].arn #=> String
    #   resp.data.custom_data_identifiers[0].created_at #=> Time
    #   resp.data.custom_data_identifiers[0].deleted #=> Boolean
    #   resp.data.custom_data_identifiers[0].description #=> String
    #   resp.data.custom_data_identifiers[0].id #=> String
    #   resp.data.custom_data_identifiers[0].name #=> String
    #   resp.data.not_found_identifier_ids #=> Array<String>
    #   resp.data.not_found_identifier_ids[0] #=> String
    #
    def batch_get_custom_data_identifiers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetCustomDataIdentifiersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetCustomDataIdentifiersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetCustomDataIdentifiers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::BatchGetCustomDataIdentifiers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetCustomDataIdentifiers,
        stubs: @stubs,
        params_class: Params::BatchGetCustomDataIdentifiersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_custom_data_identifiers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates and defines the settings for a classification job.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateClassificationJobInput}.
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #
    # @option params [Array<String>] :custom_data_identifier_ids
    #   <p>An array of unique identifiers, one for each custom data identifier for the job to use when it analyzes data. To use only managed data identifiers, don't specify a value for this property and specify a value other than NONE for the managedDataIdentifierSelector property.</p>
    #
    # @option params [String] :description
    #   <p>A custom description of the job. The description can contain as many as 200 characters.</p>
    #
    # @option params [Boolean] :initial_run
    #   <p>For a recurring job, specifies whether to analyze all existing, eligible objects immediately after the job is created (true). To analyze only those objects that are created or changed after you create the job and before the job's first scheduled run, set this value to false.</p><p>If you configure the job to run only once, don't specify a value for this property.</p>
    #
    # @option params [String] :job_type
    #   <p>The schedule for running the job. Valid values are:</p> <ul><li><p>ONE_TIME - Run the job only once. If you specify this value, don't specify a value for the scheduleFrequency property.</p></li> <li><p>SCHEDULED - Run the job on a daily, weekly, or monthly basis. If you specify this value, use the scheduleFrequency property to define the recurrence pattern for the job.</p></li></ul>
    #
    # @option params [Array<String>] :managed_data_identifier_ids
    #   <p>An array of unique identifiers, one for each managed data identifier for the job to include (use) or exclude (not use) when it analyzes data. Inclusion or exclusion depends on the managed data identifier selection type that you specify for the job (managedDataIdentifierSelector).</p><p>To retrieve a list of valid values for this property, use the ListManagedDataIdentifiers operation.</p>
    #
    # @option params [String] :managed_data_identifier_selector
    #   <p>The selection type to apply when determining which managed data identifiers the job uses to analyze data. Valid values are:</p> <ul><li><p>ALL - Use all the managed data identifiers that Amazon Macie provides. If you specify this value, don't specify any values for the managedDataIdentifierIds property.</p></li> <li><p>EXCLUDE - Use all the managed data identifiers that Macie provides except the managed data identifiers specified by the managedDataIdentifierIds property.</p></li> <li><p>INCLUDE - Use only the managed data identifiers specified by the managedDataIdentifierIds property.</p></li> <li><p>NONE - Don't use any managed data identifiers. If you specify this value, specify at least one custom data identifier for the job (customDataIdentifierIds) and don't specify any values for the managedDataIdentifierIds property.</p></li></ul> <p>If you don't specify a value for this property, the job uses all managed data identifiers. If you don't specify a value for this property or you specify ALL or EXCLUDE for a recurring job, the job also uses new managed data identifiers as they are released.</p>
    #
    # @option params [String] :name
    #   <p>A custom name for the job. The name can contain as many as 500 characters.</p>
    #
    # @option params [S3JobDefinition] :s3_job_definition
    #   <p>The S3 buckets that contain the objects to analyze, and the scope of that analysis.</p>
    #
    # @option params [Integer] :sampling_percentage
    #   <p>The sampling depth, as a percentage, for the job to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.</p>
    #
    # @option params [JobScheduleFrequency] :schedule_frequency
    #   <p>The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value for the jobType property to ONE_TIME.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the job.</p> <p>A job can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    #
    # @return [Types::CreateClassificationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_classification_job(
    #     client_token: 'clientToken', # required
    #     custom_data_identifier_ids: [
    #       'member'
    #     ],
    #     description: 'description',
    #     initial_run: false,
    #     job_type: 'ONE_TIME', # required - accepts ["ONE_TIME", "SCHEDULED"]
    #     managed_data_identifier_selector: 'ALL', # accepts ["ALL", "EXCLUDE", "INCLUDE", "NONE"]
    #     name: 'name', # required
    #     s3_job_definition: {
    #       bucket_definitions: [
    #         {
    #           account_id: 'accountId', # required
    #         }
    #       ],
    #       scoping: {
    #         excludes: {
    #           and: [
    #             {
    #               simple_scope_term: {
    #                 comparator: 'EQ', # accepts ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #                 key: 'OBJECT_EXTENSION', # accepts ["OBJECT_EXTENSION", "OBJECT_LAST_MODIFIED_DATE", "OBJECT_SIZE", "OBJECT_KEY"]
    #               },
    #               tag_scope_term: {
    #                 comparator: 'EQ', # accepts ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #                 key: 'key',
    #                 tag_values: [
    #                   {
    #                     key: 'key',
    #                     value: 'value'
    #                   }
    #                 ],
    #                 target: 'S3_OBJECT' # accepts ["S3_OBJECT"]
    #               }
    #             }
    #           ]
    #         },
    #       },
    #       bucket_criteria: {
    #         excludes: {
    #           and: [
    #             {
    #               simple_criterion: {
    #                 comparator: 'EQ', # accepts ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #                 key: 'ACCOUNT_ID', # accepts ["ACCOUNT_ID", "S3_BUCKET_NAME", "S3_BUCKET_EFFECTIVE_PERMISSION", "S3_BUCKET_SHARED_ACCESS"]
    #               },
    #               tag_criterion: {
    #                 comparator: 'EQ', # accepts ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #                 tag_values: [
    #                   {
    #                     key: 'key',
    #                     value: 'value'
    #                   }
    #                 ]
    #               }
    #             }
    #           ]
    #         },
    #       }
    #     }, # required
    #     sampling_percentage: 1,
    #     schedule_frequency: {
    #       daily_schedule: { },
    #       monthly_schedule: {
    #         day_of_month: 1
    #       },
    #       weekly_schedule: {
    #         day_of_week: 'SUNDAY' # accepts ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]
    #       }
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateClassificationJobOutput
    #   resp.data.job_arn #=> String
    #   resp.data.job_id #=> String
    #
    def create_classification_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateClassificationJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateClassificationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateClassificationJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateClassificationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateClassificationJob,
        stubs: @stubs,
        params_class: Params::CreateClassificationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_classification_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates and defines the criteria and other settings for a custom data identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCustomDataIdentifierInput}.
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #
    # @option params [String] :description
    #   <p>A custom description of the custom data identifier. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a custom data identifier. Other users of your account might be able to see this description, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    #
    # @option params [Array<String>] :ignore_words
    #   <p>An array that lists specific character sequences (<i>ignore words</i>) to exclude from the results. If the text matched by the regular expression contains any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4-90 UTF-8 characters. Ignore words are case sensitive.</p>
    #
    # @option params [Array<String>] :keywords
    #   <p>An array that lists specific character sequences (<i>keywords</i>), one of which must be within proximity (maximumMatchDistance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3-90 UTF-8 characters. Keywords aren't case sensitive.</p>
    #
    # @option params [Integer] :maximum_match_distance
    #   <p>The maximum number of characters that can exist between text that matches the regular expression and the character sequences specified by the keywords array. Amazon Macie includes or excludes a result based on the proximity of a keyword to text that matches the regular expression. The distance can be 1-300 characters. The default value is 50.</p>
    #
    # @option params [String] :name
    #   <p>A custom name for the custom data identifier. The name can contain as many as 128 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a custom data identifier. Other users of your account might be able to see this name, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    #
    # @option params [String] :regex
    #   <p>The regular expression (<i>regex</i>) that defines the pattern to match. The expression can contain as many as 512 characters.</p>
    #
    # @option params [Array<SeverityLevel>] :severity_levels
    #   <p>The severity to assign to findings that the custom data identifier produces, based on the number of occurrences of text that matches the custom data identifier's detection criteria. You can specify as many as three SeverityLevel objects in this array, one for each severity: LOW, MEDIUM, or HIGH. If you specify more than one, the occurrences thresholds must be in ascending order by severity, moving from LOW to HIGH. For example, 1 for LOW, 50 for MEDIUM, and 100 for HIGH. If an S3 object contains fewer occurrences than the lowest specified threshold, Amazon Macie doesn't create a finding.</p> <p>If you don't specify any values for this array, Macie creates findings for S3 objects that contain at least one occurrence of text that matches the detection criteria, and Macie assigns the MEDIUM severity to those findings.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the custom data identifier.</p> <p>A custom data identifier can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    #
    # @return [Types::CreateCustomDataIdentifierOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_data_identifier(
    #     client_token: 'clientToken',
    #     description: 'description',
    #     ignore_words: [
    #       'member'
    #     ],
    #     maximum_match_distance: 1,
    #     name: 'name', # required
    #     regex: 'regex', # required
    #     severity_levels: [
    #       {
    #         occurrences_threshold: 1, # required
    #         severity: 'LOW' # required - accepts ["LOW", "MEDIUM", "HIGH"]
    #       }
    #     ],
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCustomDataIdentifierOutput
    #   resp.data.custom_data_identifier_id #=> String
    #
    def create_custom_data_identifier(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCustomDataIdentifierInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCustomDataIdentifierInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCustomDataIdentifier
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateCustomDataIdentifier
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCustomDataIdentifier,
        stubs: @stubs,
        params_class: Params::CreateCustomDataIdentifierOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_custom_data_identifier
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates and defines the criteria and other settings for a findings filter.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFindingsFilterInput}.
    #
    # @option params [String] :action
    #   <p>The action to perform on findings that meet the filter criteria (findingCriteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #
    # @option params [String] :description
    #   <p>A custom description of the filter. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a filter. Other users of your account might be able to see this description, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    #
    # @option params [FindingCriteria] :finding_criteria
    #   <p>The criteria to use to filter findings.</p>
    #
    # @option params [String] :name
    #   <p>A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a filter. Other users of your account might be able to see this name, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    #
    # @option params [Integer] :position
    #   <p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the filter.</p> <p>A findings filter can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    #
    # @return [Types::CreateFindingsFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_findings_filter(
    #     action: 'ARCHIVE', # required - accepts ["ARCHIVE", "NOOP"]
    #     client_token: 'clientToken',
    #     description: 'description',
    #     finding_criteria: {
    #       criterion: {
    #         'key' => {
    #           eq: [
    #             'member'
    #           ],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #         }
    #       }
    #     }, # required
    #     name: 'name', # required
    #     position: 1,
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFindingsFilterOutput
    #   resp.data.arn #=> String
    #   resp.data.id #=> String
    #
    def create_findings_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFindingsFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFindingsFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFindingsFilter
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateFindingsFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFindingsFilter,
        stubs: @stubs,
        params_class: Params::CreateFindingsFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_findings_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends an Amazon Macie membership invitation to one or more accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateInvitationsInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>An array that lists Amazon Web Services account IDs, one for each account to send the invitation to.</p>
    #
    # @option params [Boolean] :disable_email_notification
    #   <p>Specifies whether to send the invitation as an email message. If this value is false, Amazon Macie sends the invitation (as an email message) to the email address that you specified for the recipient's account when you associated the account with your account. The default value is false.</p>
    #
    # @option params [String] :message
    #   <p>Custom text to include in the email message that contains the invitation. The text can contain as many as 80 alphanumeric characters.</p>
    #
    # @return [Types::CreateInvitationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_invitations(
    #     account_ids: [
    #       'member'
    #     ], # required
    #     disable_email_notification: false,
    #     message: 'message'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateInvitationsOutput
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].error_code #=> String, one of ["ClientError", "InternalError"]
    #   resp.data.unprocessed_accounts[0].error_message #=> String
    #
    def create_invitations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateInvitationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateInvitationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateInvitations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateInvitations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateInvitations,
        stubs: @stubs,
        params_class: Params::CreateInvitationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_invitations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates an account with an Amazon Macie administrator account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMemberInput}.
    #
    # @option params [AccountDetail] :account
    #   <p>The details of the account to associate with the administrator account.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the account in Amazon Macie.</p> <p>An account can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
    #
    # @return [Types::CreateMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_member(
    #     account: {
    #       account_id: 'accountId', # required
    #       email: 'email' # required
    #     }, # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMemberOutput
    #   resp.data.arn #=> String
    #
    def create_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMember
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMember,
        stubs: @stubs,
        params_class: Params::CreateMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates sample findings.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSampleFindingsInput}.
    #
    # @option params [Array<String>] :finding_types
    #   <p>An array of finding types, one for each type of sample finding to create. To create a sample of every type of finding that Amazon Macie supports, don't include this array in your request.</p>
    #
    # @return [Types::CreateSampleFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sample_findings(
    #     finding_types: [
    #       'SensitiveData:S3Object/Multiple' # accepts ["SensitiveData:S3Object/Multiple", "SensitiveData:S3Object/Financial", "SensitiveData:S3Object/Personal", "SensitiveData:S3Object/Credentials", "SensitiveData:S3Object/CustomIdentifier", "Policy:IAMUser/S3BucketPublic", "Policy:IAMUser/S3BucketSharedExternally", "Policy:IAMUser/S3BucketReplicatedExternally", "Policy:IAMUser/S3BucketEncryptionDisabled", "Policy:IAMUser/S3BlockPublicAccessDisabled"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSampleFindingsOutput
    #
    def create_sample_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSampleFindingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSampleFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSampleFindings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateSampleFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSampleFindings,
        stubs: @stubs,
        params_class: Params::CreateSampleFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_sample_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Declines Amazon Macie membership invitations that were received from specific accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::DeclineInvitationsInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>An array that lists Amazon Web Services account IDs, one for each account that sent an invitation to decline.</p>
    #
    # @return [Types::DeclineInvitationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decline_invitations(
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeclineInvitationsOutput
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].error_code #=> String, one of ["ClientError", "InternalError"]
    #   resp.data.unprocessed_accounts[0].error_message #=> String
    #
    def decline_invitations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeclineInvitationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeclineInvitationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeclineInvitations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeclineInvitations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeclineInvitations,
        stubs: @stubs,
        params_class: Params::DeclineInvitationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :decline_invitations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Soft deletes a custom data identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCustomDataIdentifierInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    # @return [Types::DeleteCustomDataIdentifierOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_data_identifier(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCustomDataIdentifierOutput
    #
    def delete_custom_data_identifier(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCustomDataIdentifierInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCustomDataIdentifierInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCustomDataIdentifier
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteCustomDataIdentifier
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCustomDataIdentifier,
        stubs: @stubs,
        params_class: Params::DeleteCustomDataIdentifierOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_custom_data_identifier
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a findings filter.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFindingsFilterInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    # @return [Types::DeleteFindingsFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_findings_filter(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFindingsFilterOutput
    #
    def delete_findings_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFindingsFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFindingsFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFindingsFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteFindingsFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFindingsFilter,
        stubs: @stubs,
        params_class: Params::DeleteFindingsFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_findings_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes Amazon Macie membership invitations that were received from specific accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInvitationsInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>An array that lists Amazon Web Services account IDs, one for each account that sent an invitation to delete.</p>
    #
    # @return [Types::DeleteInvitationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_invitations(
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInvitationsOutput
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].error_code #=> String, one of ["ClientError", "InternalError"]
    #   resp.data.unprocessed_accounts[0].error_message #=> String
    #
    def delete_invitations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInvitationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInvitationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInvitations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteInvitations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInvitations,
        stubs: @stubs,
        params_class: Params::DeleteInvitationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_invitations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the association between an Amazon Macie administrator account and an account.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMemberInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    # @return [Types::DeleteMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_member(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMemberOutput
    #
    def delete_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMember
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMember,
        stubs: @stubs,
        params_class: Params::DeleteMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves (queries) statistical data and other information about one or more S3 buckets that Amazon Macie monitors and analyzes.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBucketsInput}.
    #
    # @option params [Hash<String, BucketCriteriaAdditionalProperties>] :criteria
    #   <p>The criteria to use to filter the query results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of the response. The default value is 50.</p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @option params [BucketSortCriteria] :sort_criteria
    #   <p>The criteria to use to sort the query results.</p>
    #
    # @return [Types::DescribeBucketsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_buckets(
    #     criteria: {
    #       'key' => {
    #         eq: [
    #           'member'
    #         ],
    #         gt: 1,
    #         gte: 1,
    #         lt: 1,
    #         lte: 1,
    #         prefix: 'prefix'
    #       }
    #     },
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     sort_criteria: {
    #       attribute_name: 'attributeName',
    #       order_by: 'ASC' # accepts ["ASC", "DESC"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBucketsOutput
    #   resp.data.buckets #=> Array<BucketMetadata>
    #   resp.data.buckets[0] #=> Types::BucketMetadata
    #   resp.data.buckets[0].account_id #=> String
    #   resp.data.buckets[0].allows_unencrypted_object_uploads #=> String, one of ["TRUE", "FALSE", "UNKNOWN"]
    #   resp.data.buckets[0].bucket_arn #=> String
    #   resp.data.buckets[0].bucket_created_at #=> Time
    #   resp.data.buckets[0].bucket_name #=> String
    #   resp.data.buckets[0].classifiable_object_count #=> Integer
    #   resp.data.buckets[0].classifiable_size_in_bytes #=> Integer
    #   resp.data.buckets[0].error_code #=> String, one of ["ACCESS_DENIED"]
    #   resp.data.buckets[0].error_message #=> String
    #   resp.data.buckets[0].job_details #=> Types::JobDetails
    #   resp.data.buckets[0].job_details.is_defined_in_job #=> String, one of ["TRUE", "FALSE", "UNKNOWN"]
    #   resp.data.buckets[0].job_details.is_monitored_by_job #=> String, one of ["TRUE", "FALSE", "UNKNOWN"]
    #   resp.data.buckets[0].job_details.last_job_id #=> String
    #   resp.data.buckets[0].job_details.last_job_run_time #=> Time
    #   resp.data.buckets[0].last_updated #=> Time
    #   resp.data.buckets[0].object_count #=> Integer
    #   resp.data.buckets[0].object_count_by_encryption_type #=> Types::ObjectCountByEncryptionType
    #   resp.data.buckets[0].object_count_by_encryption_type.customer_managed #=> Integer
    #   resp.data.buckets[0].object_count_by_encryption_type.kms_managed #=> Integer
    #   resp.data.buckets[0].object_count_by_encryption_type.s3_managed #=> Integer
    #   resp.data.buckets[0].object_count_by_encryption_type.unencrypted #=> Integer
    #   resp.data.buckets[0].object_count_by_encryption_type.unknown #=> Integer
    #   resp.data.buckets[0].public_access #=> Types::BucketPublicAccess
    #   resp.data.buckets[0].public_access.effective_permission #=> String, one of ["PUBLIC", "NOT_PUBLIC", "UNKNOWN"]
    #   resp.data.buckets[0].public_access.permission_configuration #=> Types::BucketPermissionConfiguration
    #   resp.data.buckets[0].public_access.permission_configuration.account_level_permissions #=> Types::AccountLevelPermissions
    #   resp.data.buckets[0].public_access.permission_configuration.account_level_permissions.block_public_access #=> Types::BlockPublicAccess
    #   resp.data.buckets[0].public_access.permission_configuration.account_level_permissions.block_public_access.block_public_acls #=> Boolean
    #   resp.data.buckets[0].public_access.permission_configuration.account_level_permissions.block_public_access.block_public_policy #=> Boolean
    #   resp.data.buckets[0].public_access.permission_configuration.account_level_permissions.block_public_access.ignore_public_acls #=> Boolean
    #   resp.data.buckets[0].public_access.permission_configuration.account_level_permissions.block_public_access.restrict_public_buckets #=> Boolean
    #   resp.data.buckets[0].public_access.permission_configuration.bucket_level_permissions #=> Types::BucketLevelPermissions
    #   resp.data.buckets[0].public_access.permission_configuration.bucket_level_permissions.access_control_list #=> Types::AccessControlList
    #   resp.data.buckets[0].public_access.permission_configuration.bucket_level_permissions.access_control_list.allows_public_read_access #=> Boolean
    #   resp.data.buckets[0].public_access.permission_configuration.bucket_level_permissions.access_control_list.allows_public_write_access #=> Boolean
    #   resp.data.buckets[0].public_access.permission_configuration.bucket_level_permissions.block_public_access #=> Types::BlockPublicAccess
    #   resp.data.buckets[0].public_access.permission_configuration.bucket_level_permissions.bucket_policy #=> Types::BucketPolicy
    #   resp.data.buckets[0].public_access.permission_configuration.bucket_level_permissions.bucket_policy.allows_public_read_access #=> Boolean
    #   resp.data.buckets[0].public_access.permission_configuration.bucket_level_permissions.bucket_policy.allows_public_write_access #=> Boolean
    #   resp.data.buckets[0].region #=> String
    #   resp.data.buckets[0].replication_details #=> Types::ReplicationDetails
    #   resp.data.buckets[0].replication_details.replicated #=> Boolean
    #   resp.data.buckets[0].replication_details.replicated_externally #=> Boolean
    #   resp.data.buckets[0].replication_details.replication_accounts #=> Array<String>
    #   resp.data.buckets[0].replication_details.replication_accounts[0] #=> String
    #   resp.data.buckets[0].server_side_encryption #=> Types::BucketServerSideEncryption
    #   resp.data.buckets[0].server_side_encryption.kms_master_key_id #=> String
    #   resp.data.buckets[0].server_side_encryption.type #=> String, one of ["NONE", "AES256", "aws:kms"]
    #   resp.data.buckets[0].shared_access #=> String, one of ["EXTERNAL", "INTERNAL", "NOT_SHARED", "UNKNOWN"]
    #   resp.data.buckets[0].size_in_bytes #=> Integer
    #   resp.data.buckets[0].size_in_bytes_compressed #=> Integer
    #   resp.data.buckets[0].tags #=> Array<KeyValuePair>
    #   resp.data.buckets[0].tags[0] #=> Types::KeyValuePair
    #   resp.data.buckets[0].tags[0].key #=> String
    #   resp.data.buckets[0].tags[0].value #=> String
    #   resp.data.buckets[0].unclassifiable_object_count #=> Types::ObjectLevelStatistics
    #   resp.data.buckets[0].unclassifiable_object_count.file_type #=> Integer
    #   resp.data.buckets[0].unclassifiable_object_count.storage_class #=> Integer
    #   resp.data.buckets[0].unclassifiable_object_count.total #=> Integer
    #   resp.data.buckets[0].unclassifiable_object_size_in_bytes #=> Types::ObjectLevelStatistics
    #   resp.data.buckets[0].versioning #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_buckets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBucketsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBucketsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBuckets
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DescribeBuckets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBuckets,
        stubs: @stubs,
        params_class: Params::DescribeBucketsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_buckets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the status and settings for a classification job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClassificationJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique identifier for the classification job.</p>
    #
    # @return [Types::DescribeClassificationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_classification_job(
    #     job_id: 'jobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClassificationJobOutput
    #   resp.data.client_token #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.custom_data_identifier_ids #=> Array<String>
    #   resp.data.custom_data_identifier_ids[0] #=> String
    #   resp.data.description #=> String
    #   resp.data.initial_run #=> Boolean
    #   resp.data.job_arn #=> String
    #   resp.data.job_id #=> String
    #   resp.data.job_status #=> String, one of ["RUNNING", "PAUSED", "CANCELLED", "COMPLETE", "IDLE", "USER_PAUSED"]
    #   resp.data.job_type #=> String, one of ["ONE_TIME", "SCHEDULED"]
    #   resp.data.last_run_error_status #=> Types::LastRunErrorStatus
    #   resp.data.last_run_error_status.code #=> String, one of ["NONE", "ERROR"]
    #   resp.data.last_run_time #=> Time
    #   resp.data.managed_data_identifier_ids #=> Array<String>
    #   resp.data.managed_data_identifier_selector #=> String, one of ["ALL", "EXCLUDE", "INCLUDE", "NONE"]
    #   resp.data.name #=> String
    #   resp.data.s3_job_definition #=> Types::S3JobDefinition
    #   resp.data.s3_job_definition.bucket_definitions #=> Array<S3BucketDefinitionForJob>
    #   resp.data.s3_job_definition.bucket_definitions[0] #=> Types::S3BucketDefinitionForJob
    #   resp.data.s3_job_definition.bucket_definitions[0].account_id #=> String
    #   resp.data.s3_job_definition.bucket_definitions[0].buckets #=> Array<String>
    #   resp.data.s3_job_definition.scoping #=> Types::Scoping
    #   resp.data.s3_job_definition.scoping.excludes #=> Types::JobScopingBlock
    #   resp.data.s3_job_definition.scoping.excludes.and #=> Array<JobScopeTerm>
    #   resp.data.s3_job_definition.scoping.excludes.and[0] #=> Types::JobScopeTerm
    #   resp.data.s3_job_definition.scoping.excludes.and[0].simple_scope_term #=> Types::SimpleScopeTerm
    #   resp.data.s3_job_definition.scoping.excludes.and[0].simple_scope_term.comparator #=> String, one of ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #   resp.data.s3_job_definition.scoping.excludes.and[0].simple_scope_term.key #=> String, one of ["OBJECT_EXTENSION", "OBJECT_LAST_MODIFIED_DATE", "OBJECT_SIZE", "OBJECT_KEY"]
    #   resp.data.s3_job_definition.scoping.excludes.and[0].simple_scope_term.values #=> Array<String>
    #   resp.data.s3_job_definition.scoping.excludes.and[0].tag_scope_term #=> Types::TagScopeTerm
    #   resp.data.s3_job_definition.scoping.excludes.and[0].tag_scope_term.comparator #=> String, one of ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #   resp.data.s3_job_definition.scoping.excludes.and[0].tag_scope_term.key #=> String
    #   resp.data.s3_job_definition.scoping.excludes.and[0].tag_scope_term.tag_values #=> Array<TagValuePair>
    #   resp.data.s3_job_definition.scoping.excludes.and[0].tag_scope_term.tag_values[0] #=> Types::TagValuePair
    #   resp.data.s3_job_definition.scoping.excludes.and[0].tag_scope_term.tag_values[0].key #=> String
    #   resp.data.s3_job_definition.scoping.excludes.and[0].tag_scope_term.tag_values[0].value #=> String
    #   resp.data.s3_job_definition.scoping.excludes.and[0].tag_scope_term.target #=> String, one of ["S3_OBJECT"]
    #   resp.data.s3_job_definition.scoping.includes #=> Types::JobScopingBlock
    #   resp.data.s3_job_definition.bucket_criteria #=> Types::S3BucketCriteriaForJob
    #   resp.data.s3_job_definition.bucket_criteria.excludes #=> Types::CriteriaBlockForJob
    #   resp.data.s3_job_definition.bucket_criteria.excludes.and #=> Array<CriteriaForJob>
    #   resp.data.s3_job_definition.bucket_criteria.excludes.and[0] #=> Types::CriteriaForJob
    #   resp.data.s3_job_definition.bucket_criteria.excludes.and[0].simple_criterion #=> Types::SimpleCriterionForJob
    #   resp.data.s3_job_definition.bucket_criteria.excludes.and[0].simple_criterion.comparator #=> String, one of ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #   resp.data.s3_job_definition.bucket_criteria.excludes.and[0].simple_criterion.key #=> String, one of ["ACCOUNT_ID", "S3_BUCKET_NAME", "S3_BUCKET_EFFECTIVE_PERMISSION", "S3_BUCKET_SHARED_ACCESS"]
    #   resp.data.s3_job_definition.bucket_criteria.excludes.and[0].simple_criterion.values #=> Array<String>
    #   resp.data.s3_job_definition.bucket_criteria.excludes.and[0].tag_criterion #=> Types::TagCriterionForJob
    #   resp.data.s3_job_definition.bucket_criteria.excludes.and[0].tag_criterion.comparator #=> String, one of ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #   resp.data.s3_job_definition.bucket_criteria.excludes.and[0].tag_criterion.tag_values #=> Array<TagCriterionPairForJob>
    #   resp.data.s3_job_definition.bucket_criteria.excludes.and[0].tag_criterion.tag_values[0] #=> Types::TagCriterionPairForJob
    #   resp.data.s3_job_definition.bucket_criteria.excludes.and[0].tag_criterion.tag_values[0].key #=> String
    #   resp.data.s3_job_definition.bucket_criteria.excludes.and[0].tag_criterion.tag_values[0].value #=> String
    #   resp.data.s3_job_definition.bucket_criteria.includes #=> Types::CriteriaBlockForJob
    #   resp.data.sampling_percentage #=> Integer
    #   resp.data.schedule_frequency #=> Types::JobScheduleFrequency
    #   resp.data.schedule_frequency.daily_schedule #=> Types::DailySchedule
    #   resp.data.schedule_frequency.monthly_schedule #=> Types::MonthlySchedule
    #   resp.data.schedule_frequency.monthly_schedule.day_of_month #=> Integer
    #   resp.data.schedule_frequency.weekly_schedule #=> Types::WeeklySchedule
    #   resp.data.schedule_frequency.weekly_schedule.day_of_week #=> String, one of ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]
    #   resp.data.statistics #=> Types::Statistics
    #   resp.data.statistics.approximate_number_of_objects_to_process #=> Float
    #   resp.data.statistics.number_of_runs #=> Float
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.user_paused_details #=> Types::UserPausedDetails
    #   resp.data.user_paused_details.job_expires_at #=> Time
    #   resp.data.user_paused_details.job_imminent_expiration_health_event_arn #=> String
    #   resp.data.user_paused_details.job_paused_at #=> Time
    #
    def describe_classification_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClassificationJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClassificationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClassificationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DescribeClassificationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClassificationJob,
        stubs: @stubs,
        params_class: Params::DescribeClassificationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_classification_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the Amazon Macie configuration settings for an organization in Organizations.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrganizationConfigurationInput}.
    #
    # @return [Types::DescribeOrganizationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_configuration()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrganizationConfigurationOutput
    #   resp.data.auto_enable #=> Boolean
    #   resp.data.max_account_limit_reached #=> Boolean
    #
    def describe_organization_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrganizationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOrganizationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOrganizationConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DescribeOrganizationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOrganizationConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeOrganizationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_organization_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables Amazon Macie and deletes all settings and resources for a Macie account.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableMacieInput}.
    #
    # @return [Types::DisableMacieOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_macie()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableMacieOutput
    #
    def disable_macie(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableMacieInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableMacieInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableMacie
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DisableMacie
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableMacie,
        stubs: @stubs,
        params_class: Params::DisableMacieOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_macie
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables an account as the delegated Amazon Macie administrator account for an organization in Organizations.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableOrganizationAdminAccountInput}.
    #
    # @option params [String] :admin_account_id
    #   <p>The Amazon Web Services account ID of the delegated Amazon Macie administrator account.</p>
    #
    # @return [Types::DisableOrganizationAdminAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_organization_admin_account(
    #     admin_account_id: 'adminAccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableOrganizationAdminAccountOutput
    #
    def disable_organization_admin_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableOrganizationAdminAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableOrganizationAdminAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableOrganizationAdminAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DisableOrganizationAdminAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableOrganizationAdminAccount,
        stubs: @stubs,
        params_class: Params::DisableOrganizationAdminAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_organization_admin_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a member account from its Amazon Macie administrator account.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateFromAdministratorAccountInput}.
    #
    # @return [Types::DisassociateFromAdministratorAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_from_administrator_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateFromAdministratorAccountOutput
    #
    def disassociate_from_administrator_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateFromAdministratorAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateFromAdministratorAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateFromAdministratorAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DisassociateFromAdministratorAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateFromAdministratorAccount,
        stubs: @stubs,
        params_class: Params::DisassociateFromAdministratorAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_from_administrator_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>(Deprecated) Disassociates a member account from its Amazon Macie administrator account. This operation has been replaced by the <link  linkend="DisassociateFromAdministratorAccount">DisassociateFromAdministratorAccount</link> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateFromMasterAccountInput}.
    #
    # @return [Types::DisassociateFromMasterAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_from_master_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateFromMasterAccountOutput
    #
    def disassociate_from_master_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateFromMasterAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateFromMasterAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateFromMasterAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DisassociateFromMasterAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateFromMasterAccount,
        stubs: @stubs,
        params_class: Params::DisassociateFromMasterAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_from_master_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates an Amazon Macie administrator account from a member account.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateMemberInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    # @return [Types::DisassociateMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_member(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateMemberOutput
    #
    def disassociate_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateMember
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DisassociateMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateMember,
        stubs: @stubs,
        params_class: Params::DisassociateMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables Amazon Macie and specifies the configuration settings for a Macie account.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableMacieInput}.
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #
    # @option params [String] :finding_publishing_frequency
    #   <p>Specifies how often to publish updates to policy findings for the account. This includes publishing updates to Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events).</p>
    #
    # @option params [String] :status
    #   <p>Specifies the new status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to ENABLED.</p>
    #
    # @return [Types::EnableMacieOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_macie(
    #     client_token: 'clientToken',
    #     finding_publishing_frequency: 'FIFTEEN_MINUTES', # accepts ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"]
    #     status: 'PAUSED' # accepts ["PAUSED", "ENABLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableMacieOutput
    #
    def enable_macie(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableMacieInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableMacieInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableMacie
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::EnableMacie
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableMacie,
        stubs: @stubs,
        params_class: Params::EnableMacieOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_macie
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Designates an account as the delegated Amazon Macie administrator account for an organization in Organizations.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableOrganizationAdminAccountInput}.
    #
    # @option params [String] :admin_account_id
    #   <p>The Amazon Web Services account ID for the account to designate as the delegated Amazon Macie administrator account for the organization.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #
    # @return [Types::EnableOrganizationAdminAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_organization_admin_account(
    #     admin_account_id: 'adminAccountId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableOrganizationAdminAccountOutput
    #
    def enable_organization_admin_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableOrganizationAdminAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableOrganizationAdminAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableOrganizationAdminAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::EnableOrganizationAdminAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableOrganizationAdminAccount,
        stubs: @stubs,
        params_class: Params::EnableOrganizationAdminAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_organization_admin_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the Amazon Macie administrator account for an account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAdministratorAccountInput}.
    #
    # @return [Types::GetAdministratorAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_administrator_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAdministratorAccountOutput
    #   resp.data.administrator #=> Types::Invitation
    #   resp.data.administrator.account_id #=> String
    #   resp.data.administrator.invitation_id #=> String
    #   resp.data.administrator.invited_at #=> Time
    #   resp.data.administrator.relationship_status #=> String, one of ["Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"]
    #
    def get_administrator_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAdministratorAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAdministratorAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAdministratorAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetAdministratorAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAdministratorAccount,
        stubs: @stubs,
        params_class: Params::GetAdministratorAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_administrator_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves (queries) aggregated statistical data about S3 buckets that Amazon Macie monitors and analyzes.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBucketStatisticsInput}.
    #
    # @option params [String] :account_id
    #   <p>The unique identifier for the Amazon Web Services account.</p>
    #
    # @return [Types::GetBucketStatisticsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_statistics(
    #     account_id: 'accountId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBucketStatisticsOutput
    #   resp.data.bucket_count #=> Integer
    #   resp.data.bucket_count_by_effective_permission #=> Types::BucketCountByEffectivePermission
    #   resp.data.bucket_count_by_effective_permission.publicly_accessible #=> Integer
    #   resp.data.bucket_count_by_effective_permission.publicly_readable #=> Integer
    #   resp.data.bucket_count_by_effective_permission.publicly_writable #=> Integer
    #   resp.data.bucket_count_by_effective_permission.unknown #=> Integer
    #   resp.data.bucket_count_by_encryption_type #=> Types::BucketCountByEncryptionType
    #   resp.data.bucket_count_by_encryption_type.kms_managed #=> Integer
    #   resp.data.bucket_count_by_encryption_type.s3_managed #=> Integer
    #   resp.data.bucket_count_by_encryption_type.unencrypted #=> Integer
    #   resp.data.bucket_count_by_encryption_type.unknown #=> Integer
    #   resp.data.bucket_count_by_object_encryption_requirement #=> Types::BucketCountPolicyAllowsUnencryptedObjectUploads
    #   resp.data.bucket_count_by_object_encryption_requirement.allows_unencrypted_object_uploads #=> Integer
    #   resp.data.bucket_count_by_object_encryption_requirement.denies_unencrypted_object_uploads #=> Integer
    #   resp.data.bucket_count_by_object_encryption_requirement.unknown #=> Integer
    #   resp.data.bucket_count_by_shared_access_type #=> Types::BucketCountBySharedAccessType
    #   resp.data.bucket_count_by_shared_access_type.external #=> Integer
    #   resp.data.bucket_count_by_shared_access_type.internal #=> Integer
    #   resp.data.bucket_count_by_shared_access_type.not_shared #=> Integer
    #   resp.data.bucket_count_by_shared_access_type.unknown #=> Integer
    #   resp.data.classifiable_object_count #=> Integer
    #   resp.data.classifiable_size_in_bytes #=> Integer
    #   resp.data.last_updated #=> Time
    #   resp.data.object_count #=> Integer
    #   resp.data.size_in_bytes #=> Integer
    #   resp.data.size_in_bytes_compressed #=> Integer
    #   resp.data.unclassifiable_object_count #=> Types::ObjectLevelStatistics
    #   resp.data.unclassifiable_object_count.file_type #=> Integer
    #   resp.data.unclassifiable_object_count.storage_class #=> Integer
    #   resp.data.unclassifiable_object_count.total #=> Integer
    #   resp.data.unclassifiable_object_size_in_bytes #=> Types::ObjectLevelStatistics
    #
    def get_bucket_statistics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBucketStatisticsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBucketStatisticsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBucketStatistics
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetBucketStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBucketStatistics,
        stubs: @stubs,
        params_class: Params::GetBucketStatisticsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bucket_statistics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the configuration settings for storing data classification results.</p>
    #
    # @param [Hash] params
    #   See {Types::GetClassificationExportConfigurationInput}.
    #
    # @return [Types::GetClassificationExportConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_classification_export_configuration()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetClassificationExportConfigurationOutput
    #   resp.data.configuration #=> Types::ClassificationExportConfiguration
    #   resp.data.configuration.s3_destination #=> Types::S3Destination
    #   resp.data.configuration.s3_destination.bucket_name #=> String
    #   resp.data.configuration.s3_destination.key_prefix #=> String
    #   resp.data.configuration.s3_destination.kms_key_arn #=> String
    #
    def get_classification_export_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetClassificationExportConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetClassificationExportConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetClassificationExportConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetClassificationExportConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetClassificationExportConfiguration,
        stubs: @stubs,
        params_class: Params::GetClassificationExportConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_classification_export_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the criteria and other settings for a custom data identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCustomDataIdentifierInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    # @return [Types::GetCustomDataIdentifierOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_custom_data_identifier(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCustomDataIdentifierOutput
    #   resp.data.arn #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.deleted #=> Boolean
    #   resp.data.description #=> String
    #   resp.data.id #=> String
    #   resp.data.ignore_words #=> Array<String>
    #   resp.data.ignore_words[0] #=> String
    #   resp.data.keywords #=> Array<String>
    #   resp.data.maximum_match_distance #=> Integer
    #   resp.data.name #=> String
    #   resp.data.regex #=> String
    #   resp.data.severity_levels #=> Array<SeverityLevel>
    #   resp.data.severity_levels[0] #=> Types::SeverityLevel
    #   resp.data.severity_levels[0].occurrences_threshold #=> Integer
    #   resp.data.severity_levels[0].severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_custom_data_identifier(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCustomDataIdentifierInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCustomDataIdentifierInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCustomDataIdentifier
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetCustomDataIdentifier
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCustomDataIdentifier,
        stubs: @stubs,
        params_class: Params::GetCustomDataIdentifierOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_custom_data_identifier
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves (queries) aggregated statistical data about findings.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFindingStatisticsInput}.
    #
    # @option params [FindingCriteria] :finding_criteria
    #   <p>The criteria to use to filter the query results.</p>
    #
    # @option params [String] :group_by
    #   <p>The finding property to use to group the query results. Valid values are:</p> <ul><li><p>classificationDetails.jobId - The unique identifier for the classification job that produced the finding.</p></li> <li><p>resourcesAffected.s3Bucket.name - The name of the S3 bucket that the finding applies to.</p></li> <li><p>severity.description - The severity level of the finding, such as High or Medium.</p></li> <li><p>type - The type of finding, such as Policy:IAMUser/S3BucketPublic and SensitiveData:S3Object/Personal.</p></li></ul>
    #
    # @option params [Integer] :size
    #   <p>The maximum number of items to include in each page of the response.</p>
    #
    # @option params [FindingStatisticsSortCriteria] :sort_criteria
    #   <p>The criteria to use to sort the query results.</p>
    #
    # @return [Types::GetFindingStatisticsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_finding_statistics(
    #     finding_criteria: {
    #       criterion: {
    #         'key' => {
    #           eq: [
    #             'member'
    #           ],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #         }
    #       }
    #     },
    #     group_by: 'resourcesAffected.s3Bucket.name', # required - accepts ["resourcesAffected.s3Bucket.name", "type", "classificationDetails.jobId", "severity.description"]
    #     size: 1,
    #     sort_criteria: {
    #       attribute_name: 'groupKey', # accepts ["groupKey", "count"]
    #       order_by: 'ASC' # accepts ["ASC", "DESC"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFindingStatisticsOutput
    #   resp.data.counts_by_group #=> Array<GroupCount>
    #   resp.data.counts_by_group[0] #=> Types::GroupCount
    #   resp.data.counts_by_group[0].count #=> Integer
    #   resp.data.counts_by_group[0].group_key #=> String
    #
    def get_finding_statistics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFindingStatisticsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFindingStatisticsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFindingStatistics
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetFindingStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFindingStatistics,
        stubs: @stubs,
        params_class: Params::GetFindingStatisticsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_finding_statistics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the details of one or more findings.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFindingsInput}.
    #
    # @option params [Array<String>] :finding_ids
    #   <p>An array of strings that lists the unique identifiers for the findings to retrieve. You can specify as many as 50 unique identifiers in this array.</p>
    #
    # @option params [SortCriteria] :sort_criteria
    #   <p>The criteria for sorting the results of the request.</p>
    #
    # @return [Types::GetFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings(
    #     finding_ids: [
    #       'member'
    #     ], # required
    #     sort_criteria: {
    #       attribute_name: 'attributeName',
    #       order_by: 'ASC' # accepts ["ASC", "DESC"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFindingsOutput
    #   resp.data.findings #=> Array<Finding>
    #   resp.data.findings[0] #=> Types::Finding
    #   resp.data.findings[0].account_id #=> String
    #   resp.data.findings[0].archived #=> Boolean
    #   resp.data.findings[0].category #=> String, one of ["CLASSIFICATION", "POLICY"]
    #   resp.data.findings[0].classification_details #=> Types::ClassificationDetails
    #   resp.data.findings[0].classification_details.detailed_results_location #=> String
    #   resp.data.findings[0].classification_details.job_arn #=> String
    #   resp.data.findings[0].classification_details.job_id #=> String
    #   resp.data.findings[0].classification_details.origin_type #=> String, one of ["SENSITIVE_DATA_DISCOVERY_JOB"]
    #   resp.data.findings[0].classification_details.result #=> Types::ClassificationResult
    #   resp.data.findings[0].classification_details.result.additional_occurrences #=> Boolean
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers #=> Types::CustomDataIdentifiers
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections #=> Array<CustomDetection>
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0] #=> Types::CustomDetection
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].arn #=> String
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].count #=> Integer
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].name #=> String
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences #=> Types::Occurrences
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.cells #=> Array<Cell>
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.cells[0] #=> Types::Cell
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.cells[0].cell_reference #=> String
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.cells[0].column #=> Integer
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.cells[0].column_name #=> String
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.cells[0].row #=> Integer
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.line_ranges #=> Array<Range>
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.line_ranges[0] #=> Types::Range
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.line_ranges[0].end #=> Integer
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.line_ranges[0].start #=> Integer
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.line_ranges[0].start_column #=> Integer
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.offset_ranges #=> Array<Range>
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.pages #=> Array<Page>
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.pages[0] #=> Types::Page
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.pages[0].line_range #=> Types::Range
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.pages[0].offset_range #=> Types::Range
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.pages[0].page_number #=> Integer
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.records #=> Array<Record>
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.records[0] #=> Types::Record
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.records[0].json_path #=> String
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.detections[0].occurrences.records[0].record_index #=> Integer
    #   resp.data.findings[0].classification_details.result.custom_data_identifiers.total_count #=> Integer
    #   resp.data.findings[0].classification_details.result.mime_type #=> String
    #   resp.data.findings[0].classification_details.result.sensitive_data #=> Array<SensitiveDataItem>
    #   resp.data.findings[0].classification_details.result.sensitive_data[0] #=> Types::SensitiveDataItem
    #   resp.data.findings[0].classification_details.result.sensitive_data[0].category #=> String, one of ["FINANCIAL_INFORMATION", "PERSONAL_INFORMATION", "CREDENTIALS", "CUSTOM_IDENTIFIER"]
    #   resp.data.findings[0].classification_details.result.sensitive_data[0].detections #=> Array<DefaultDetection>
    #   resp.data.findings[0].classification_details.result.sensitive_data[0].detections[0] #=> Types::DefaultDetection
    #   resp.data.findings[0].classification_details.result.sensitive_data[0].detections[0].count #=> Integer
    #   resp.data.findings[0].classification_details.result.sensitive_data[0].detections[0].occurrences #=> Types::Occurrences
    #   resp.data.findings[0].classification_details.result.sensitive_data[0].detections[0].type #=> String
    #   resp.data.findings[0].classification_details.result.sensitive_data[0].total_count #=> Integer
    #   resp.data.findings[0].classification_details.result.size_classified #=> Integer
    #   resp.data.findings[0].classification_details.result.status #=> Types::ClassificationResultStatus
    #   resp.data.findings[0].classification_details.result.status.code #=> String
    #   resp.data.findings[0].classification_details.result.status.reason #=> String
    #   resp.data.findings[0].count #=> Integer
    #   resp.data.findings[0].created_at #=> Time
    #   resp.data.findings[0].description #=> String
    #   resp.data.findings[0].id #=> String
    #   resp.data.findings[0].partition #=> String
    #   resp.data.findings[0].policy_details #=> Types::PolicyDetails
    #   resp.data.findings[0].policy_details.action #=> Types::FindingAction
    #   resp.data.findings[0].policy_details.action.action_type #=> String, one of ["AWS_API_CALL"]
    #   resp.data.findings[0].policy_details.action.api_call_details #=> Types::ApiCallDetails
    #   resp.data.findings[0].policy_details.action.api_call_details.api #=> String
    #   resp.data.findings[0].policy_details.action.api_call_details.api_service_name #=> String
    #   resp.data.findings[0].policy_details.action.api_call_details.first_seen #=> Time
    #   resp.data.findings[0].policy_details.action.api_call_details.last_seen #=> Time
    #   resp.data.findings[0].policy_details.actor #=> Types::FindingActor
    #   resp.data.findings[0].policy_details.actor.domain_details #=> Types::DomainDetails
    #   resp.data.findings[0].policy_details.actor.domain_details.domain_name #=> String
    #   resp.data.findings[0].policy_details.actor.ip_address_details #=> Types::IpAddressDetails
    #   resp.data.findings[0].policy_details.actor.ip_address_details.ip_address_v4 #=> String
    #   resp.data.findings[0].policy_details.actor.ip_address_details.ip_city #=> Types::IpCity
    #   resp.data.findings[0].policy_details.actor.ip_address_details.ip_city.name #=> String
    #   resp.data.findings[0].policy_details.actor.ip_address_details.ip_country #=> Types::IpCountry
    #   resp.data.findings[0].policy_details.actor.ip_address_details.ip_country.code #=> String
    #   resp.data.findings[0].policy_details.actor.ip_address_details.ip_country.name #=> String
    #   resp.data.findings[0].policy_details.actor.ip_address_details.ip_geo_location #=> Types::IpGeoLocation
    #   resp.data.findings[0].policy_details.actor.ip_address_details.ip_geo_location.lat #=> Float
    #   resp.data.findings[0].policy_details.actor.ip_address_details.ip_geo_location.lon #=> Float
    #   resp.data.findings[0].policy_details.actor.ip_address_details.ip_owner #=> Types::IpOwner
    #   resp.data.findings[0].policy_details.actor.ip_address_details.ip_owner.asn #=> String
    #   resp.data.findings[0].policy_details.actor.ip_address_details.ip_owner.asn_org #=> String
    #   resp.data.findings[0].policy_details.actor.ip_address_details.ip_owner.isp #=> String
    #   resp.data.findings[0].policy_details.actor.ip_address_details.ip_owner.org #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity #=> Types::UserIdentity
    #   resp.data.findings[0].policy_details.actor.user_identity.assumed_role #=> Types::AssumedRole
    #   resp.data.findings[0].policy_details.actor.user_identity.assumed_role.access_key_id #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.assumed_role.account_id #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.assumed_role.arn #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.assumed_role.principal_id #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.assumed_role.session_context #=> Types::SessionContext
    #   resp.data.findings[0].policy_details.actor.user_identity.assumed_role.session_context.attributes #=> Types::SessionContextAttributes
    #   resp.data.findings[0].policy_details.actor.user_identity.assumed_role.session_context.attributes.creation_date #=> Time
    #   resp.data.findings[0].policy_details.actor.user_identity.assumed_role.session_context.attributes.mfa_authenticated #=> Boolean
    #   resp.data.findings[0].policy_details.actor.user_identity.assumed_role.session_context.session_issuer #=> Types::SessionIssuer
    #   resp.data.findings[0].policy_details.actor.user_identity.assumed_role.session_context.session_issuer.account_id #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.assumed_role.session_context.session_issuer.arn #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.assumed_role.session_context.session_issuer.principal_id #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.assumed_role.session_context.session_issuer.type #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.assumed_role.session_context.session_issuer.user_name #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.aws_account #=> Types::AwsAccount
    #   resp.data.findings[0].policy_details.actor.user_identity.aws_account.account_id #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.aws_account.principal_id #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.aws_service #=> Types::AwsService
    #   resp.data.findings[0].policy_details.actor.user_identity.aws_service.invoked_by #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.federated_user #=> Types::FederatedUser
    #   resp.data.findings[0].policy_details.actor.user_identity.federated_user.access_key_id #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.federated_user.account_id #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.federated_user.arn #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.federated_user.principal_id #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.federated_user.session_context #=> Types::SessionContext
    #   resp.data.findings[0].policy_details.actor.user_identity.iam_user #=> Types::IamUser
    #   resp.data.findings[0].policy_details.actor.user_identity.iam_user.account_id #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.iam_user.arn #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.iam_user.principal_id #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.iam_user.user_name #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.root #=> Types::UserIdentityRoot
    #   resp.data.findings[0].policy_details.actor.user_identity.root.account_id #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.root.arn #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.root.principal_id #=> String
    #   resp.data.findings[0].policy_details.actor.user_identity.type #=> String, one of ["AssumedRole", "IAMUser", "FederatedUser", "Root", "AWSAccount", "AWSService"]
    #   resp.data.findings[0].region #=> String
    #   resp.data.findings[0].resources_affected #=> Types::ResourcesAffected
    #   resp.data.findings[0].resources_affected.s3_bucket #=> Types::S3Bucket
    #   resp.data.findings[0].resources_affected.s3_bucket.allows_unencrypted_object_uploads #=> String, one of ["TRUE", "FALSE", "UNKNOWN"]
    #   resp.data.findings[0].resources_affected.s3_bucket.arn #=> String
    #   resp.data.findings[0].resources_affected.s3_bucket.created_at #=> Time
    #   resp.data.findings[0].resources_affected.s3_bucket.default_server_side_encryption #=> Types::ServerSideEncryption
    #   resp.data.findings[0].resources_affected.s3_bucket.default_server_side_encryption.encryption_type #=> String, one of ["NONE", "AES256", "aws:kms", "UNKNOWN"]
    #   resp.data.findings[0].resources_affected.s3_bucket.default_server_side_encryption.kms_master_key_id #=> String
    #   resp.data.findings[0].resources_affected.s3_bucket.name #=> String
    #   resp.data.findings[0].resources_affected.s3_bucket.owner #=> Types::S3BucketOwner
    #   resp.data.findings[0].resources_affected.s3_bucket.owner.display_name #=> String
    #   resp.data.findings[0].resources_affected.s3_bucket.owner.id #=> String
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access #=> Types::BucketPublicAccess
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.effective_permission #=> String, one of ["PUBLIC", "NOT_PUBLIC", "UNKNOWN"]
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.permission_configuration #=> Types::BucketPermissionConfiguration
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.account_level_permissions #=> Types::AccountLevelPermissions
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.account_level_permissions.block_public_access #=> Types::BlockPublicAccess
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.account_level_permissions.block_public_access.block_public_acls #=> Boolean
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.account_level_permissions.block_public_access.block_public_policy #=> Boolean
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.account_level_permissions.block_public_access.ignore_public_acls #=> Boolean
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.account_level_permissions.block_public_access.restrict_public_buckets #=> Boolean
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions #=> Types::BucketLevelPermissions
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions.access_control_list #=> Types::AccessControlList
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions.access_control_list.allows_public_read_access #=> Boolean
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions.access_control_list.allows_public_write_access #=> Boolean
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions.block_public_access #=> Types::BlockPublicAccess
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions.bucket_policy #=> Types::BucketPolicy
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions.bucket_policy.allows_public_read_access #=> Boolean
    #   resp.data.findings[0].resources_affected.s3_bucket.public_access.permission_configuration.bucket_level_permissions.bucket_policy.allows_public_write_access #=> Boolean
    #   resp.data.findings[0].resources_affected.s3_bucket.tags #=> Array<KeyValuePair>
    #   resp.data.findings[0].resources_affected.s3_bucket.tags[0] #=> Types::KeyValuePair
    #   resp.data.findings[0].resources_affected.s3_bucket.tags[0].key #=> String
    #   resp.data.findings[0].resources_affected.s3_bucket.tags[0].value #=> String
    #   resp.data.findings[0].resources_affected.s3_object #=> Types::S3Object
    #   resp.data.findings[0].resources_affected.s3_object.bucket_arn #=> String
    #   resp.data.findings[0].resources_affected.s3_object.e_tag #=> String
    #   resp.data.findings[0].resources_affected.s3_object.extension #=> String
    #   resp.data.findings[0].resources_affected.s3_object.key #=> String
    #   resp.data.findings[0].resources_affected.s3_object.last_modified #=> Time
    #   resp.data.findings[0].resources_affected.s3_object.path #=> String
    #   resp.data.findings[0].resources_affected.s3_object.public_access #=> Boolean
    #   resp.data.findings[0].resources_affected.s3_object.server_side_encryption #=> Types::ServerSideEncryption
    #   resp.data.findings[0].resources_affected.s3_object.size #=> Integer
    #   resp.data.findings[0].resources_affected.s3_object.storage_class #=> String, one of ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "ONEZONE_IA", "GLACIER"]
    #   resp.data.findings[0].resources_affected.s3_object.tags #=> Array<KeyValuePair>
    #   resp.data.findings[0].resources_affected.s3_object.version_id #=> String
    #   resp.data.findings[0].sample #=> Boolean
    #   resp.data.findings[0].schema_version #=> String
    #   resp.data.findings[0].severity #=> Types::Severity
    #   resp.data.findings[0].severity.description #=> String, one of ["Low", "Medium", "High"]
    #   resp.data.findings[0].severity.score #=> Integer
    #   resp.data.findings[0].title #=> String
    #   resp.data.findings[0].type #=> String, one of ["SensitiveData:S3Object/Multiple", "SensitiveData:S3Object/Financial", "SensitiveData:S3Object/Personal", "SensitiveData:S3Object/Credentials", "SensitiveData:S3Object/CustomIdentifier", "Policy:IAMUser/S3BucketPublic", "Policy:IAMUser/S3BucketSharedExternally", "Policy:IAMUser/S3BucketReplicatedExternally", "Policy:IAMUser/S3BucketEncryptionDisabled", "Policy:IAMUser/S3BlockPublicAccessDisabled"]
    #   resp.data.findings[0].updated_at #=> Time
    #
    def get_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFindingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFindings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFindings,
        stubs: @stubs,
        params_class: Params::GetFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the criteria and other settings for a findings filter.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFindingsFilterInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    # @return [Types::GetFindingsFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings_filter(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFindingsFilterOutput
    #   resp.data.action #=> String, one of ["ARCHIVE", "NOOP"]
    #   resp.data.arn #=> String
    #   resp.data.description #=> String
    #   resp.data.finding_criteria #=> Types::FindingCriteria
    #   resp.data.finding_criteria.criterion #=> Hash<String, CriterionAdditionalProperties>
    #   resp.data.finding_criteria.criterion['key'] #=> Types::CriterionAdditionalProperties
    #   resp.data.finding_criteria.criterion['key'].eq #=> Array<String>
    #   resp.data.finding_criteria.criterion['key'].eq[0] #=> String
    #   resp.data.finding_criteria.criterion['key'].eq_exact_match #=> Array<String>
    #   resp.data.finding_criteria.criterion['key'].gt #=> Integer
    #   resp.data.finding_criteria.criterion['key'].gte #=> Integer
    #   resp.data.finding_criteria.criterion['key'].lt #=> Integer
    #   resp.data.finding_criteria.criterion['key'].lte #=> Integer
    #   resp.data.finding_criteria.criterion['key'].neq #=> Array<String>
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.position #=> Integer
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_findings_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFindingsFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFindingsFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFindingsFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetFindingsFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFindingsFilter,
        stubs: @stubs,
        params_class: Params::GetFindingsFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_findings_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the configuration settings for publishing findings to Security Hub.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFindingsPublicationConfigurationInput}.
    #
    # @return [Types::GetFindingsPublicationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings_publication_configuration()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFindingsPublicationConfigurationOutput
    #   resp.data.security_hub_configuration #=> Types::SecurityHubConfiguration
    #   resp.data.security_hub_configuration.publish_classification_findings #=> Boolean
    #   resp.data.security_hub_configuration.publish_policy_findings #=> Boolean
    #
    def get_findings_publication_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFindingsPublicationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFindingsPublicationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFindingsPublicationConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetFindingsPublicationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFindingsPublicationConfiguration,
        stubs: @stubs,
        params_class: Params::GetFindingsPublicationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_findings_publication_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the count of Amazon Macie membership invitations that were received by an account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInvitationsCountInput}.
    #
    # @return [Types::GetInvitationsCountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_invitations_count()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInvitationsCountOutput
    #   resp.data.invitations_count #=> Integer
    #
    def get_invitations_count(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInvitationsCountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInvitationsCountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInvitationsCount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetInvitationsCount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInvitationsCount,
        stubs: @stubs,
        params_class: Params::GetInvitationsCountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_invitations_count
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the current status and configuration settings for an Amazon Macie account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMacieSessionInput}.
    #
    # @return [Types::GetMacieSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_macie_session()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMacieSessionOutput
    #   resp.data.created_at #=> Time
    #   resp.data.finding_publishing_frequency #=> String, one of ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"]
    #   resp.data.service_role #=> String
    #   resp.data.status #=> String, one of ["PAUSED", "ENABLED"]
    #   resp.data.updated_at #=> Time
    #
    def get_macie_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMacieSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMacieSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMacieSession
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetMacieSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMacieSession,
        stubs: @stubs,
        params_class: Params::GetMacieSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_macie_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>(Deprecated) Retrieves information about the Amazon Macie administrator account for an account. This operation has been replaced by the <link  linkend="GetAdministratorAccount">GetAdministratorAccount</link> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMasterAccountInput}.
    #
    # @return [Types::GetMasterAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_master_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMasterAccountOutput
    #   resp.data.master #=> Types::Invitation
    #   resp.data.master.account_id #=> String
    #   resp.data.master.invitation_id #=> String
    #   resp.data.master.invited_at #=> Time
    #   resp.data.master.relationship_status #=> String, one of ["Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"]
    #
    def get_master_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMasterAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMasterAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMasterAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetMasterAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMasterAccount,
        stubs: @stubs,
        params_class: Params::GetMasterAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_master_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an account that's associated with an Amazon Macie administrator account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMemberInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    # @return [Types::GetMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_member(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMemberOutput
    #   resp.data.account_id #=> String
    #   resp.data.administrator_account_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.email #=> String
    #   resp.data.invited_at #=> Time
    #   resp.data.master_account_id #=> String
    #   resp.data.relationship_status #=> String, one of ["Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.updated_at #=> Time
    #
    def get_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMember
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMember,
        stubs: @stubs,
        params_class: Params::GetMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves (queries) quotas and aggregated usage data for one or more accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUsageStatisticsInput}.
    #
    # @option params [Array<UsageStatisticsFilter>] :filter_by
    #   <p>An array of objects, one for each condition to use to filter the query results. If you specify more than one condition, Amazon Macie uses an AND operator to join the conditions.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @option params [UsageStatisticsSortBy] :sort_by
    #   <p>The criteria to use to sort the query results.</p>
    #
    # @option params [String] :time_range
    #   <p>The inclusive time period to query usage data for. Valid values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days. If you don't specify a value, Amazon Macie provides usage data for the preceding 30 days.</p>
    #
    # @return [Types::GetUsageStatisticsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_statistics(
    #     filter_by: [
    #       {
    #         comparator: 'GT', # accepts ["GT", "GTE", "LT", "LTE", "EQ", "NE", "CONTAINS"]
    #         key: 'accountId', # accepts ["accountId", "serviceLimit", "freeTrialStartDate", "total"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     sort_by: {
    #       key: 'accountId', # accepts ["accountId", "total", "serviceLimitValue", "freeTrialStartDate"]
    #       order_by: 'ASC' # accepts ["ASC", "DESC"]
    #     },
    #     time_range: 'MONTH_TO_DATE' # accepts ["MONTH_TO_DATE", "PAST_30_DAYS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUsageStatisticsOutput
    #   resp.data.next_token #=> String
    #   resp.data.records #=> Array<UsageRecord>
    #   resp.data.records[0] #=> Types::UsageRecord
    #   resp.data.records[0].account_id #=> String
    #   resp.data.records[0].free_trial_start_date #=> Time
    #   resp.data.records[0].usage #=> Array<UsageByAccount>
    #   resp.data.records[0].usage[0] #=> Types::UsageByAccount
    #   resp.data.records[0].usage[0].currency #=> String, one of ["USD"]
    #   resp.data.records[0].usage[0].estimated_cost #=> String
    #   resp.data.records[0].usage[0].service_limit #=> Types::ServiceLimit
    #   resp.data.records[0].usage[0].service_limit.is_service_limited #=> Boolean
    #   resp.data.records[0].usage[0].service_limit.unit #=> String, one of ["TERABYTES"]
    #   resp.data.records[0].usage[0].service_limit.value #=> Integer
    #   resp.data.records[0].usage[0].type #=> String, one of ["DATA_INVENTORY_EVALUATION", "SENSITIVE_DATA_DISCOVERY"]
    #   resp.data.time_range #=> String, one of ["MONTH_TO_DATE", "PAST_30_DAYS"]
    #
    def get_usage_statistics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUsageStatisticsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUsageStatisticsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUsageStatistics
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetUsageStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUsageStatistics,
        stubs: @stubs,
        params_class: Params::GetUsageStatisticsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_usage_statistics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves (queries) aggregated usage data for an account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUsageTotalsInput}.
    #
    # @option params [String] :time_range
    #   <p>The inclusive time period to retrieve the data for. Valid values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days. If you don't specify a value for this parameter, Amazon Macie provides aggregated usage data for the preceding 30 days.</p>
    #
    # @return [Types::GetUsageTotalsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_totals(
    #     time_range: 'timeRange'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUsageTotalsOutput
    #   resp.data.time_range #=> String, one of ["MONTH_TO_DATE", "PAST_30_DAYS"]
    #   resp.data.usage_totals #=> Array<UsageTotal>
    #   resp.data.usage_totals[0] #=> Types::UsageTotal
    #   resp.data.usage_totals[0].currency #=> String, one of ["USD"]
    #   resp.data.usage_totals[0].estimated_cost #=> String
    #   resp.data.usage_totals[0].type #=> String, one of ["DATA_INVENTORY_EVALUATION", "SENSITIVE_DATA_DISCOVERY"]
    #
    def get_usage_totals(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUsageTotalsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUsageTotalsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUsageTotals
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetUsageTotals
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUsageTotals,
        stubs: @stubs,
        params_class: Params::GetUsageTotalsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_usage_totals
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a subset of information about one or more classification jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListClassificationJobsInput}.
    #
    # @option params [ListJobsFilterCriteria] :filter_criteria
    #   <p>The criteria to use to filter the results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @option params [ListJobsSortCriteria] :sort_criteria
    #   <p>The criteria to use to sort the results.</p>
    #
    # @return [Types::ListClassificationJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_classification_jobs(
    #     filter_criteria: {
    #       excludes: [
    #         {
    #           comparator: 'EQ', # accepts ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #           key: 'jobType', # accepts ["jobType", "jobStatus", "createdAt", "name"]
    #           values: [
    #             'member'
    #           ]
    #         }
    #       ],
    #     },
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     sort_criteria: {
    #       attribute_name: 'createdAt', # accepts ["createdAt", "jobStatus", "name", "jobType"]
    #       order_by: 'ASC' # accepts ["ASC", "DESC"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListClassificationJobsOutput
    #   resp.data.items #=> Array<JobSummary>
    #   resp.data.items[0] #=> Types::JobSummary
    #   resp.data.items[0].bucket_definitions #=> Array<S3BucketDefinitionForJob>
    #   resp.data.items[0].bucket_definitions[0] #=> Types::S3BucketDefinitionForJob
    #   resp.data.items[0].bucket_definitions[0].account_id #=> String
    #   resp.data.items[0].bucket_definitions[0].buckets #=> Array<String>
    #   resp.data.items[0].bucket_definitions[0].buckets[0] #=> String
    #   resp.data.items[0].created_at #=> Time
    #   resp.data.items[0].job_id #=> String
    #   resp.data.items[0].job_status #=> String, one of ["RUNNING", "PAUSED", "CANCELLED", "COMPLETE", "IDLE", "USER_PAUSED"]
    #   resp.data.items[0].job_type #=> String, one of ["ONE_TIME", "SCHEDULED"]
    #   resp.data.items[0].last_run_error_status #=> Types::LastRunErrorStatus
    #   resp.data.items[0].last_run_error_status.code #=> String, one of ["NONE", "ERROR"]
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].user_paused_details #=> Types::UserPausedDetails
    #   resp.data.items[0].user_paused_details.job_expires_at #=> Time
    #   resp.data.items[0].user_paused_details.job_imminent_expiration_health_event_arn #=> String
    #   resp.data.items[0].user_paused_details.job_paused_at #=> Time
    #   resp.data.items[0].bucket_criteria #=> Types::S3BucketCriteriaForJob
    #   resp.data.items[0].bucket_criteria.excludes #=> Types::CriteriaBlockForJob
    #   resp.data.items[0].bucket_criteria.excludes.and #=> Array<CriteriaForJob>
    #   resp.data.items[0].bucket_criteria.excludes.and[0] #=> Types::CriteriaForJob
    #   resp.data.items[0].bucket_criteria.excludes.and[0].simple_criterion #=> Types::SimpleCriterionForJob
    #   resp.data.items[0].bucket_criteria.excludes.and[0].simple_criterion.comparator #=> String, one of ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #   resp.data.items[0].bucket_criteria.excludes.and[0].simple_criterion.key #=> String, one of ["ACCOUNT_ID", "S3_BUCKET_NAME", "S3_BUCKET_EFFECTIVE_PERMISSION", "S3_BUCKET_SHARED_ACCESS"]
    #   resp.data.items[0].bucket_criteria.excludes.and[0].simple_criterion.values #=> Array<String>
    #   resp.data.items[0].bucket_criteria.excludes.and[0].tag_criterion #=> Types::TagCriterionForJob
    #   resp.data.items[0].bucket_criteria.excludes.and[0].tag_criterion.comparator #=> String, one of ["EQ", "GT", "GTE", "LT", "LTE", "NE", "CONTAINS", "STARTS_WITH"]
    #   resp.data.items[0].bucket_criteria.excludes.and[0].tag_criterion.tag_values #=> Array<TagCriterionPairForJob>
    #   resp.data.items[0].bucket_criteria.excludes.and[0].tag_criterion.tag_values[0] #=> Types::TagCriterionPairForJob
    #   resp.data.items[0].bucket_criteria.excludes.and[0].tag_criterion.tag_values[0].key #=> String
    #   resp.data.items[0].bucket_criteria.excludes.and[0].tag_criterion.tag_values[0].value #=> String
    #   resp.data.items[0].bucket_criteria.includes #=> Types::CriteriaBlockForJob
    #   resp.data.next_token #=> String
    #
    def list_classification_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListClassificationJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListClassificationJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListClassificationJobs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListClassificationJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListClassificationJobs,
        stubs: @stubs,
        params_class: Params::ListClassificationJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_classification_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a subset of information about all the custom data identifiers for an account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCustomDataIdentifiersInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::ListCustomDataIdentifiersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_data_identifiers(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCustomDataIdentifiersOutput
    #   resp.data.items #=> Array<CustomDataIdentifierSummary>
    #   resp.data.items[0] #=> Types::CustomDataIdentifierSummary
    #   resp.data.items[0].arn #=> String
    #   resp.data.items[0].created_at #=> Time
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_custom_data_identifiers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCustomDataIdentifiersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCustomDataIdentifiersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCustomDataIdentifiers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListCustomDataIdentifiers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCustomDataIdentifiers,
        stubs: @stubs,
        params_class: Params::ListCustomDataIdentifiersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_custom_data_identifiers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a subset of information about one or more findings.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFindingsInput}.
    #
    # @option params [FindingCriteria] :finding_criteria
    #   <p>The criteria to use to filter the results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @option params [SortCriteria] :sort_criteria
    #   <p>The criteria to use to sort the results.</p>
    #
    # @return [Types::ListFindingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings(
    #     finding_criteria: {
    #       criterion: {
    #         'key' => {
    #           eq: [
    #             'member'
    #           ],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #         }
    #       }
    #     },
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     sort_criteria: {
    #       attribute_name: 'attributeName',
    #       order_by: 'ASC' # accepts ["ASC", "DESC"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFindingsOutput
    #   resp.data.finding_ids #=> Array<String>
    #   resp.data.finding_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_findings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFindingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFindingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFindings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListFindings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFindings,
        stubs: @stubs,
        params_class: Params::ListFindingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_findings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a subset of information about all the findings filters for an account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFindingsFiltersInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::ListFindingsFiltersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings_filters(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFindingsFiltersOutput
    #   resp.data.findings_filter_list_items #=> Array<FindingsFilterListItem>
    #   resp.data.findings_filter_list_items[0] #=> Types::FindingsFilterListItem
    #   resp.data.findings_filter_list_items[0].action #=> String, one of ["ARCHIVE", "NOOP"]
    #   resp.data.findings_filter_list_items[0].arn #=> String
    #   resp.data.findings_filter_list_items[0].id #=> String
    #   resp.data.findings_filter_list_items[0].name #=> String
    #   resp.data.findings_filter_list_items[0].tags #=> Hash<String, String>
    #   resp.data.findings_filter_list_items[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_findings_filters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFindingsFiltersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFindingsFiltersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFindingsFilters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListFindingsFilters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFindingsFilters,
        stubs: @stubs,
        params_class: Params::ListFindingsFiltersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_findings_filters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the Amazon Macie membership invitations that were received by an account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInvitationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::ListInvitationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invitations(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInvitationsOutput
    #   resp.data.invitations #=> Array<Invitation>
    #   resp.data.invitations[0] #=> Types::Invitation
    #   resp.data.invitations[0].account_id #=> String
    #   resp.data.invitations[0].invitation_id #=> String
    #   resp.data.invitations[0].invited_at #=> Time
    #   resp.data.invitations[0].relationship_status #=> String, one of ["Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"]
    #   resp.data.next_token #=> String
    #
    def list_invitations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInvitationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInvitationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInvitations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListInvitations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInvitations,
        stubs: @stubs,
        params_class: Params::ListInvitationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_invitations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about all the managed data identifiers that Amazon Macie currently provides.</p>
    #
    # @param [Hash] params
    #   See {Types::ListManagedDataIdentifiersInput}.
    #
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::ListManagedDataIdentifiersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_data_identifiers(
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListManagedDataIdentifiersOutput
    #   resp.data.items #=> Array<ManagedDataIdentifierSummary>
    #   resp.data.items[0] #=> Types::ManagedDataIdentifierSummary
    #   resp.data.items[0].category #=> String, one of ["FINANCIAL_INFORMATION", "PERSONAL_INFORMATION", "CREDENTIALS", "CUSTOM_IDENTIFIER"]
    #   resp.data.items[0].id #=> String
    #   resp.data.next_token #=> String
    #
    def list_managed_data_identifiers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListManagedDataIdentifiersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListManagedDataIdentifiersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListManagedDataIdentifiers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListManagedDataIdentifiers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListManagedDataIdentifiers,
        stubs: @stubs,
        params_class: Params::ListManagedDataIdentifiersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_managed_data_identifiers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the accounts that are associated with an Amazon Macie administrator account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMembersInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @option params [String] :only_associated
    #   <p>Specifies which accounts to include in the response, based on the status of an account's relationship with the administrator account. By default, the response includes only current member accounts. To include all accounts, set this value to false.</p>
    #
    # @return [Types::ListMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members(
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     only_associated: 'onlyAssociated'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMembersOutput
    #   resp.data.members #=> Array<Member>
    #   resp.data.members[0] #=> Types::Member
    #   resp.data.members[0].account_id #=> String
    #   resp.data.members[0].administrator_account_id #=> String
    #   resp.data.members[0].arn #=> String
    #   resp.data.members[0].email #=> String
    #   resp.data.members[0].invited_at #=> Time
    #   resp.data.members[0].master_account_id #=> String
    #   resp.data.members[0].relationship_status #=> String, one of ["Enabled", "Paused", "Invited", "Created", "Removed", "Resigned", "EmailVerificationInProgress", "EmailVerificationFailed", "RegionDisabled", "AccountSuspended"]
    #   resp.data.members[0].tags #=> Hash<String, String>
    #   resp.data.members[0].tags['key'] #=> String
    #   resp.data.members[0].updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMembersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMembers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMembers,
        stubs: @stubs,
        params_class: Params::ListMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the delegated Amazon Macie administrator account for an organization in Organizations.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOrganizationAdminAccountsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of a paginated response.</p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @return [Types::ListOrganizationAdminAccountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_admin_accounts(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOrganizationAdminAccountsOutput
    #   resp.data.admin_accounts #=> Array<AdminAccount>
    #   resp.data.admin_accounts[0] #=> Types::AdminAccount
    #   resp.data.admin_accounts[0].account_id #=> String
    #   resp.data.admin_accounts[0].status #=> String, one of ["ENABLED", "DISABLING_IN_PROGRESS"]
    #   resp.data.next_token #=> String
    #
    def list_organization_admin_accounts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOrganizationAdminAccountsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOrganizationAdminAccountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOrganizationAdminAccounts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListOrganizationAdminAccounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOrganizationAdminAccounts,
        stubs: @stubs,
        params_class: Params::ListOrganizationAdminAccountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_organization_admin_accounts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the tags (keys and values) that are associated with a classification job, custom data identifier, findings filter, or member account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the classification job, custom data identifier, findings filter, or member account.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Creates or updates the configuration settings for storing data classification results.</p>
    #
    # @param [Hash] params
    #   See {Types::PutClassificationExportConfigurationInput}.
    #
    # @option params [ClassificationExportConfiguration] :configuration
    #   <p>The location to store data classification results in, and the encryption settings to use when storing results in that location.</p>
    #
    # @return [Types::PutClassificationExportConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_classification_export_configuration(
    #     configuration: {
    #       s3_destination: {
    #         bucket_name: 'bucketName', # required
    #         key_prefix: 'keyPrefix',
    #         kms_key_arn: 'kmsKeyArn' # required
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutClassificationExportConfigurationOutput
    #   resp.data.configuration #=> Types::ClassificationExportConfiguration
    #   resp.data.configuration.s3_destination #=> Types::S3Destination
    #   resp.data.configuration.s3_destination.bucket_name #=> String
    #   resp.data.configuration.s3_destination.key_prefix #=> String
    #   resp.data.configuration.s3_destination.kms_key_arn #=> String
    #
    def put_classification_export_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutClassificationExportConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutClassificationExportConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutClassificationExportConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::PutClassificationExportConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutClassificationExportConfiguration,
        stubs: @stubs,
        params_class: Params::PutClassificationExportConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_classification_export_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the configuration settings for publishing findings to Security Hub.</p>
    #
    # @param [Hash] params
    #   See {Types::PutFindingsPublicationConfigurationInput}.
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #
    # @option params [SecurityHubConfiguration] :security_hub_configuration
    #   <p>The configuration settings that determine which findings to publish to Security Hub.</p>
    #
    # @return [Types::PutFindingsPublicationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_findings_publication_configuration(
    #     client_token: 'clientToken',
    #     security_hub_configuration: {
    #       publish_classification_findings: false, # required
    #       publish_policy_findings: false # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutFindingsPublicationConfigurationOutput
    #
    def put_findings_publication_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutFindingsPublicationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutFindingsPublicationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutFindingsPublicationConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::PutFindingsPublicationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutFindingsPublicationConfiguration,
        stubs: @stubs,
        params_class: Params::PutFindingsPublicationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_findings_publication_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves (queries) statistical data and other information about Amazon Web Services resources that Amazon Macie monitors and analyzes.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchResourcesInput}.
    #
    # @option params [SearchResourcesBucketCriteria] :bucket_criteria
    #   <p>The filter conditions that determine which S3 buckets to include or exclude from the query results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to include in each page of the response. The default value is 50.</p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    #
    # @option params [SearchResourcesSortCriteria] :sort_criteria
    #   <p>The criteria to use to sort the results.</p>
    #
    # @return [Types::SearchResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_resources(
    #     bucket_criteria: {
    #       excludes: {
    #         and: [
    #           {
    #             simple_criterion: {
    #               comparator: 'EQ', # accepts ["EQ", "NE"]
    #               key: 'ACCOUNT_ID', # accepts ["ACCOUNT_ID", "S3_BUCKET_NAME", "S3_BUCKET_EFFECTIVE_PERMISSION", "S3_BUCKET_SHARED_ACCESS"]
    #               values: [
    #                 'member'
    #               ]
    #             },
    #             tag_criterion: {
    #               comparator: 'EQ', # accepts ["EQ", "NE"]
    #               tag_values: [
    #                 {
    #                   key: 'key',
    #                   value: 'value'
    #                 }
    #               ]
    #             }
    #           }
    #         ]
    #       },
    #     },
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     sort_criteria: {
    #       attribute_name: 'ACCOUNT_ID', # accepts ["ACCOUNT_ID", "RESOURCE_NAME", "S3_CLASSIFIABLE_OBJECT_COUNT", "S3_CLASSIFIABLE_SIZE_IN_BYTES"]
    #       order_by: 'ASC' # accepts ["ASC", "DESC"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchResourcesOutput
    #   resp.data.matching_resources #=> Array<MatchingResource>
    #   resp.data.matching_resources[0] #=> Types::MatchingResource
    #   resp.data.matching_resources[0].matching_bucket #=> Types::MatchingBucket
    #   resp.data.matching_resources[0].matching_bucket.account_id #=> String
    #   resp.data.matching_resources[0].matching_bucket.bucket_name #=> String
    #   resp.data.matching_resources[0].matching_bucket.classifiable_object_count #=> Integer
    #   resp.data.matching_resources[0].matching_bucket.classifiable_size_in_bytes #=> Integer
    #   resp.data.matching_resources[0].matching_bucket.error_code #=> String, one of ["ACCESS_DENIED"]
    #   resp.data.matching_resources[0].matching_bucket.error_message #=> String
    #   resp.data.matching_resources[0].matching_bucket.job_details #=> Types::JobDetails
    #   resp.data.matching_resources[0].matching_bucket.job_details.is_defined_in_job #=> String, one of ["TRUE", "FALSE", "UNKNOWN"]
    #   resp.data.matching_resources[0].matching_bucket.job_details.is_monitored_by_job #=> String, one of ["TRUE", "FALSE", "UNKNOWN"]
    #   resp.data.matching_resources[0].matching_bucket.job_details.last_job_id #=> String
    #   resp.data.matching_resources[0].matching_bucket.job_details.last_job_run_time #=> Time
    #   resp.data.matching_resources[0].matching_bucket.object_count #=> Integer
    #   resp.data.matching_resources[0].matching_bucket.object_count_by_encryption_type #=> Types::ObjectCountByEncryptionType
    #   resp.data.matching_resources[0].matching_bucket.object_count_by_encryption_type.customer_managed #=> Integer
    #   resp.data.matching_resources[0].matching_bucket.object_count_by_encryption_type.kms_managed #=> Integer
    #   resp.data.matching_resources[0].matching_bucket.object_count_by_encryption_type.s3_managed #=> Integer
    #   resp.data.matching_resources[0].matching_bucket.object_count_by_encryption_type.unencrypted #=> Integer
    #   resp.data.matching_resources[0].matching_bucket.object_count_by_encryption_type.unknown #=> Integer
    #   resp.data.matching_resources[0].matching_bucket.size_in_bytes #=> Integer
    #   resp.data.matching_resources[0].matching_bucket.size_in_bytes_compressed #=> Integer
    #   resp.data.matching_resources[0].matching_bucket.unclassifiable_object_count #=> Types::ObjectLevelStatistics
    #   resp.data.matching_resources[0].matching_bucket.unclassifiable_object_count.file_type #=> Integer
    #   resp.data.matching_resources[0].matching_bucket.unclassifiable_object_count.storage_class #=> Integer
    #   resp.data.matching_resources[0].matching_bucket.unclassifiable_object_count.total #=> Integer
    #   resp.data.matching_resources[0].matching_bucket.unclassifiable_object_size_in_bytes #=> Types::ObjectLevelStatistics
    #   resp.data.next_token #=> String
    #
    def search_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchResources
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::SearchResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchResources,
        stubs: @stubs,
        params_class: Params::SearchResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates one or more tags (keys and values) that are associated with a classification job, custom data identifier, findings filter, or member account.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the classification job, custom data identifier, findings filter, or member account.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key-value pairs that specifies the tags to associate with the resource.</p> <p>A resource can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
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

    # <p>Tests a custom data identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::TestCustomDataIdentifierInput}.
    #
    # @option params [Array<String>] :ignore_words
    #   <p>An array that lists specific character sequences (<i>ignore words</i>) to exclude from the results. If the text matched by the regular expression contains any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4-90 UTF-8 characters. Ignore words are case sensitive.</p>
    #
    # @option params [Array<String>] :keywords
    #   <p>An array that lists specific character sequences (<i>keywords</i>), one of which must be within proximity (maximumMatchDistance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3-90 UTF-8 characters. Keywords aren't case sensitive.</p>
    #
    # @option params [Integer] :maximum_match_distance
    #   <p>The maximum number of characters that can exist between text that matches the regular expression and the character sequences specified by the keywords array. Amazon Macie includes or excludes a result based on the proximity of a keyword to text that matches the regular expression. The distance can be 1-300 characters. The default value is 50.</p>
    #
    # @option params [String] :regex
    #   <p>The regular expression (<i>regex</i>) that defines the pattern to match. The expression can contain as many as 512 characters.</p>
    #
    # @option params [String] :sample_text
    #   <p>The sample text to inspect by using the custom data identifier. The text can contain as many as 1,000 characters.</p>
    #
    # @return [Types::TestCustomDataIdentifierOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_custom_data_identifier(
    #     ignore_words: [
    #       'member'
    #     ],
    #     maximum_match_distance: 1,
    #     regex: 'regex', # required
    #     sample_text: 'sampleText' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestCustomDataIdentifierOutput
    #   resp.data.match_count #=> Integer
    #
    def test_custom_data_identifier(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestCustomDataIdentifierInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestCustomDataIdentifierInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestCustomDataIdentifier
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::TestCustomDataIdentifier
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestCustomDataIdentifier,
        stubs: @stubs,
        params_class: Params::TestCustomDataIdentifierOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_custom_data_identifier
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes one or more tags (keys and values) from a classification job, custom data identifier, findings filter, or member account.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the classification job, custom data identifier, findings filter, or member account.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>One or more tags (keys) to remove from the resource. In an HTTP request to remove multiple tags, append the tagKeys parameter and argument for each tag to remove, and separate them with an ampersand (&amp;).</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
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

    # <p>Changes the status of a classification job.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateClassificationJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique identifier for the classification job.</p>
    #
    # @option params [String] :job_status
    #   <p>The new status for the job. Valid values are:</p> <ul><li><p>CANCELLED - Stops the job permanently and cancels it. This value is valid only if the job's current status is IDLE, PAUSED, RUNNING, or USER_PAUSED.</p> <p>If you specify this value and the job's current status is RUNNING, Amazon Macie immediately begins to stop all processing tasks for the job. You can't resume or restart a job after you cancel it.</p></li> <li><p>RUNNING - Resumes the job. This value is valid only if the job's current status is USER_PAUSED.</p> <p>If you paused the job while it was actively running and you specify this value less than 30 days after you paused the job, Macie immediately resumes processing from the point where you paused the job. Otherwise, Macie resumes the job according to the schedule and other settings for the job.</p></li> <li><p>USER_PAUSED - Pauses the job temporarily. This value is valid only if the job's current status is IDLE, PAUSED, or RUNNING. If you specify this value and the job's current status is RUNNING, Macie immediately begins to pause all processing tasks for the job.</p> <p>If you pause a one-time job and you don't resume it within 30 days, the job expires and Macie cancels the job. If you pause a recurring job when its status is RUNNING and you don't resume it within 30 days, the job run expires and Macie cancels the run. To check the expiration date, refer to the UserPausedDetails.jobExpiresAt property.</p></li></ul>
    #
    # @return [Types::UpdateClassificationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_classification_job(
    #     job_id: 'jobId', # required
    #     job_status: 'RUNNING' # required - accepts ["RUNNING", "PAUSED", "CANCELLED", "COMPLETE", "IDLE", "USER_PAUSED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateClassificationJobOutput
    #
    def update_classification_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateClassificationJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateClassificationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateClassificationJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateClassificationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateClassificationJob,
        stubs: @stubs,
        params_class: Params::UpdateClassificationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_classification_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the criteria and other settings for a findings filter.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFindingsFilterInput}.
    #
    # @option params [String] :action
    #   <p>The action to perform on findings that meet the filter criteria (findingCriteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>
    #
    # @option params [String] :description
    #   <p>A custom description of the filter. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a filter. Other users might be able to see this description, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    #
    # @option params [FindingCriteria] :finding_criteria
    #   <p>The criteria to use to filter findings.</p>
    #
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    # @option params [String] :name
    #   <p>A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a filter. Other users might be able to see this name, depending on the actions that they're allowed to perform in Amazon Macie.</p>
    #
    # @option params [Integer] :position
    #   <p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>
    #
    # @return [Types::UpdateFindingsFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_findings_filter(
    #     action: 'ARCHIVE', # accepts ["ARCHIVE", "NOOP"]
    #     description: 'description',
    #     finding_criteria: {
    #       criterion: {
    #         'key' => {
    #           eq: [
    #             'member'
    #           ],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #         }
    #       }
    #     },
    #     id: 'id', # required
    #     name: 'name',
    #     position: 1,
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFindingsFilterOutput
    #   resp.data.arn #=> String
    #   resp.data.id #=> String
    #
    def update_findings_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFindingsFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFindingsFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFindingsFilter
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateFindingsFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFindingsFilter,
        stubs: @stubs,
        params_class: Params::UpdateFindingsFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_findings_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Suspends or re-enables Amazon Macie, or updates the configuration settings for a Macie account.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMacieSessionInput}.
    #
    # @option params [String] :finding_publishing_frequency
    #   <p>Specifies how often to publish updates to policy findings for the account. This includes publishing updates to Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events).</p>
    #
    # @option params [String] :status
    #   <p>Specifies a new status for the account. Valid values are: ENABLED, resume all Amazon Macie activities for the account; and, PAUSED, suspend all Macie activities for the account.</p>
    #
    # @return [Types::UpdateMacieSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_macie_session(
    #     finding_publishing_frequency: 'FIFTEEN_MINUTES', # accepts ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"]
    #     status: 'PAUSED' # accepts ["PAUSED", "ENABLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMacieSessionOutput
    #
    def update_macie_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMacieSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMacieSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMacieSession
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateMacieSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMacieSession,
        stubs: @stubs,
        params_class: Params::UpdateMacieSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_macie_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables an Amazon Macie administrator to suspend or re-enable Macie for a member account.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMemberSessionInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>
    #
    # @option params [String] :status
    #   <p>Specifies the new status for the account. Valid values are: ENABLED, resume all Amazon Macie activities for the account; and, PAUSED, suspend all Macie activities for the account.</p>
    #
    # @return [Types::UpdateMemberSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_member_session(
    #     id: 'id', # required
    #     status: 'PAUSED' # required - accepts ["PAUSED", "ENABLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMemberSessionOutput
    #
    def update_member_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMemberSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMemberSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMemberSession
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateMemberSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMemberSession,
        stubs: @stubs,
        params_class: Params::UpdateMemberSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_member_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the Amazon Macie configuration settings for an organization in Organizations.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateOrganizationConfigurationInput}.
    #
    # @option params [Boolean] :auto_enable
    #   <p>Specifies whether to enable Amazon Macie automatically for an account when the account is added to the organization in Organizations.</p>
    #
    # @return [Types::UpdateOrganizationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organization_configuration(
    #     auto_enable: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateOrganizationConfigurationOutput
    #
    def update_organization_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateOrganizationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateOrganizationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateOrganizationConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateOrganizationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateOrganizationConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateOrganizationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_organization_configuration
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
