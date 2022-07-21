# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CustomerProfiles
  # An API client for CustomerProfiles_20200815
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Connect Customer Profiles</fullname>
  #          <p>Welcome to the Amazon Connect Customer Profiles API Reference. This guide provides information
  #          about the Amazon Connect Customer Profiles API, including supported operations, data types,
  #          parameters, and schemas.</p>
  #          <p>Amazon Connect Customer Profiles is a unified customer profile for your contact center that has
  #          pre-built connectors powered by AppFlow that make it easy to combine customer information
  #          from third party applications, such as Salesforce (CRM), ServiceNow (ITSM), and your
  #          enterprise resource planning (ERP), with contact history from your Amazon Connect contact
  #          center.</p>
  #          <p>If you're new to Amazon Connect , you might find it helpful to also review the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/what-is-amazon-connect.html">Amazon Connect Administrator Guide</a>.</p>
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
    def initialize(config = AWS::SDK::CustomerProfiles::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates a new key value with a specific profile, such as a Contact Trace Record (CTR)
    #          ContactId.</p>
    #          <p>A profile object can have a single unique key and any number of additional keys that can
    #          be used to identify the profile that it belongs to.</p>
    #
    # @param [Hash] params
    #   See {Types::AddProfileKeyInput}.
    #
    # @option params [String] :profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #
    # @option params [String] :key_name
    #   <p>A searchable identifier of a customer profile.</p>
    #
    # @option params [Array<String>] :values
    #   <p>A list of key values.</p>
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @return [Types::AddProfileKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_profile_key(
    #     profile_id: 'ProfileId', # required
    #     key_name: 'KeyName', # required
    #     values: [
    #       'member'
    #     ], # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddProfileKeyOutput
    #   resp.data.key_name #=> String
    #   resp.data.values #=> Array<String>
    #   resp.data.values[0] #=> String
    #
    def add_profile_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddProfileKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddProfileKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddProfileKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::AddProfileKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddProfileKey,
        stubs: @stubs,
        params_class: Params::AddProfileKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_profile_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a domain, which is a container for all customer data, such as customer profile
    #          attributes, object types, profile keys, and encryption keys. You can create multiple
    #          domains, and each domain can have multiple third-party integrations.</p>
    #          <p>Each Amazon Connect instance can be associated with only one domain. Multiple Amazon Connect instances can
    #          be associated with one domain.</p>
    #          <p>Use this API or <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html">UpdateDomain</a> to
    #          enable <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">identity
    #             resolution</a>: set <code>Matching</code> to true. </p>
    #          <p>To prevent cross-service impersonation when you call this API, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html">Cross-service confused deputy prevention</a> for sample policies that you should
    #          apply. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [Integer] :default_expiration_days
    #   <p>The default number of days until the data within the domain expires.</p>
    #
    # @option params [String] :default_encryption_key
    #   <p>The default encryption key, which is an AWS managed key, is used when no specific type
    #            of encryption key is specified. It is used to encrypt all data before it is placed in
    #            permanent or semi-permanent storage.</p>
    #
    # @option params [String] :dead_letter_queue_url
    #   <p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
    #            ingesting data from third party applications. You must set up a policy on the
    #            DeadLetterQueue for the SendMessage operation to enable Amazon Connect Customer Profiles to send
    #            messages to the DeadLetterQueue.</p>
    #
    # @option params [MatchingRequest] :matching
    #   <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    #   batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #            <p>After the Identity Resolution Job completes, use the
    #   <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    #   API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    #   S3.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::CreateDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain(
    #     domain_name: 'DomainName', # required
    #     default_expiration_days: 1, # required
    #     default_encryption_key: 'DefaultEncryptionKey',
    #     dead_letter_queue_url: 'DeadLetterQueueUrl',
    #     matching: {
    #       enabled: false, # required
    #       job_schedule: {
    #         day_of_the_week: 'SUNDAY', # required - accepts ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]
    #         time: 'Time' # required
    #       },
    #       auto_merging: {
    #         enabled: false, # required
    #         consolidation: {
    #           matching_attributes_list: [
    #             [
    #               'member'
    #             ]
    #           ] # required
    #         },
    #         conflict_resolution: {
    #           conflict_resolving_model: 'RECENCY', # required - accepts ["RECENCY", "SOURCE"]
    #           source_name: 'SourceName'
    #         }
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: 'S3BucketName', # required
    #           s3_key_name: 'S3KeyName'
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
    #   resp.data #=> Types::CreateDomainOutput
    #   resp.data.domain_name #=> String
    #   resp.data.default_expiration_days #=> Integer
    #   resp.data.default_encryption_key #=> String
    #   resp.data.dead_letter_queue_url #=> String
    #   resp.data.matching #=> Types::MatchingResponse
    #   resp.data.matching.enabled #=> Boolean
    #   resp.data.matching.job_schedule #=> Types::JobSchedule
    #   resp.data.matching.job_schedule.day_of_the_week #=> String, one of ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]
    #   resp.data.matching.job_schedule.time #=> String
    #   resp.data.matching.auto_merging #=> Types::AutoMerging
    #   resp.data.matching.auto_merging.enabled #=> Boolean
    #   resp.data.matching.auto_merging.consolidation #=> Types::Consolidation
    #   resp.data.matching.auto_merging.consolidation.matching_attributes_list #=> Array<Array<String>>
    #   resp.data.matching.auto_merging.consolidation.matching_attributes_list[0] #=> Array<String>
    #   resp.data.matching.auto_merging.consolidation.matching_attributes_list[0][0] #=> String
    #   resp.data.matching.auto_merging.conflict_resolution #=> Types::ConflictResolution
    #   resp.data.matching.auto_merging.conflict_resolution.conflict_resolving_model #=> String, one of ["RECENCY", "SOURCE"]
    #   resp.data.matching.auto_merging.conflict_resolution.source_name #=> String
    #   resp.data.matching.exporting_config #=> Types::ExportingConfig
    #   resp.data.matching.exporting_config.s3_exporting #=> Types::S3ExportingConfig
    #   resp.data.matching.exporting_config.s3_exporting.s3_bucket_name #=> String
    #   resp.data.matching.exporting_config.s3_exporting.s3_key_name #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDomain,
        stubs: @stubs,
        params_class: Params::CreateDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # 	Creates an integration workflow. An integration workflow is an async process which ingests historic data and sets up an integration for ongoing updates. The supported Amazon AppFlow sources are Salesforce, ServiceNow, and Marketo.
    # 	</p>
    #
    # @param [Hash] params
    #   See {Types::CreateIntegrationWorkflowInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :workflow_type
    #   <p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>
    #
    # @option params [IntegrationConfig] :integration_config
    #   <p>Configuration data for integration workflow.</p>
    #
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Customer Profiles assumes this role to create resources on your behalf as part of workflow execution.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::CreateIntegrationWorkflowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_integration_workflow(
    #     domain_name: 'DomainName', # required
    #     workflow_type: 'APPFLOW_INTEGRATION', # required - accepts ["APPFLOW_INTEGRATION"]
    #     integration_config: {
    #       appflow_integration: {
    #         flow_definition: {
    #           description: 'Description',
    #           flow_name: 'FlowName', # required
    #           kms_arn: 'KmsArn', # required
    #           source_flow_config: {
    #             connector_profile_name: 'ConnectorProfileName',
    #             connector_type: 'Salesforce', # required - accepts ["Salesforce", "Marketo", "Zendesk", "Servicenow", "S3"]
    #             incremental_pull_config: {
    #               datetime_type_field_name: 'DatetimeTypeFieldName'
    #             },
    #             source_connector_properties: {
    #               marketo: {
    #                 object: 'Object' # required
    #               },
    #               s3: {
    #                 bucket_name: 'BucketName', # required
    #                 bucket_prefix: 'BucketPrefix'
    #               },
    #               salesforce: {
    #                 object: 'Object', # required
    #                 enable_dynamic_field_update: false,
    #                 include_deleted_records: false
    #               },
    #               service_now: {
    #                 object: 'Object' # required
    #               },
    #               zendesk: {
    #                 object: 'Object' # required
    #               }
    #             } # required
    #           }, # required
    #           tasks: [
    #             {
    #               connector_operator: {
    #                 marketo: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #                 s3: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #                 salesforce: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #                 service_now: 'PROJECTION', # accepts ["PROJECTION", "CONTAINS", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #                 zendesk: 'PROJECTION' # accepts ["PROJECTION", "GREATER_THAN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #               },
    #               destination_field: 'DestinationField',
    #               source_fields: [
    #                 'member'
    #               ], # required
    #               task_properties: {
    #                 'key' => 'value'
    #               },
    #               task_type: 'Arithmetic' # required - accepts ["Arithmetic", "Filter", "Map", "Mask", "Merge", "Truncate", "Validate"]
    #             }
    #           ], # required
    #           trigger_config: {
    #             trigger_type: 'Scheduled', # required - accepts ["Scheduled", "Event", "OnDemand"]
    #             trigger_properties: {
    #               scheduled: {
    #                 schedule_expression: 'ScheduleExpression', # required
    #                 data_pull_mode: 'Incremental', # accepts ["Incremental", "Complete"]
    #                 schedule_start_time: Time.now,
    #                 schedule_end_time: Time.now,
    #                 timezone: 'Timezone',
    #                 schedule_offset: 1,
    #                 first_execution_from: Time.now
    #               }
    #             }
    #           } # required
    #         }, # required
    #         batches: [
    #           {
    #             start_time: Time.now, # required
    #             end_time: Time.now # required
    #           }
    #         ]
    #       }
    #     }, # required
    #     object_type_name: 'ObjectTypeName', # required
    #     role_arn: 'RoleArn', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIntegrationWorkflowOutput
    #   resp.data.workflow_id #=> String
    #   resp.data.message #=> String
    #
    def create_integration_workflow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIntegrationWorkflowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIntegrationWorkflowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIntegrationWorkflow
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateIntegrationWorkflow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIntegrationWorkflow,
        stubs: @stubs,
        params_class: Params::CreateIntegrationWorkflowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_integration_workflow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a standard profile.</p>
    #          <p>A standard profile represents the following attributes for a customer profile in a
    #          domain.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProfileInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :account_number
    #   <p>A unique account number that you have given to the customer.</p>
    #
    # @option params [String] :additional_information
    #   <p>Any additional information relevant to the customer’s profile.</p>
    #
    # @option params [String] :party_type
    #   <p>The type of profile used to describe the customer.</p>
    #
    # @option params [String] :business_name
    #   <p>The name of the customer’s business.</p>
    #
    # @option params [String] :first_name
    #   <p>The customer’s first name.</p>
    #
    # @option params [String] :middle_name
    #   <p>The customer’s middle name.</p>
    #
    # @option params [String] :last_name
    #   <p>The customer’s last name.</p>
    #
    # @option params [String] :birth_date
    #   <p>The customer’s birth date. </p>
    #
    # @option params [String] :gender
    #   <p>The gender with which the customer identifies. </p>
    #
    # @option params [String] :phone_number
    #   <p>The customer’s phone number, which has not been specified as a mobile, home, or business
    #            number. </p>
    #
    # @option params [String] :mobile_phone_number
    #   <p>The customer’s mobile phone number.</p>
    #
    # @option params [String] :home_phone_number
    #   <p>The customer’s home phone number.</p>
    #
    # @option params [String] :business_phone_number
    #   <p>The customer’s business phone number.</p>
    #
    # @option params [String] :email_address
    #   <p>The customer’s email address, which has not been specified as a personal or business
    #            address. </p>
    #
    # @option params [String] :personal_email_address
    #   <p>The customer’s personal email address.</p>
    #
    # @option params [String] :business_email_address
    #   <p>The customer’s business email address.</p>
    #
    # @option params [Address] :address
    #   <p>A generic address associated with the customer that is not mailing, shipping, or
    #            billing.</p>
    #
    # @option params [Address] :shipping_address
    #   <p>The customer’s shipping address.</p>
    #
    # @option params [Address] :mailing_address
    #   <p>The customer’s mailing address.</p>
    #
    # @option params [Address] :billing_address
    #   <p>The customer’s billing address.</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>A key value pair of attributes of a customer profile.</p>
    #
    # @return [Types::CreateProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_profile(
    #     domain_name: 'DomainName', # required
    #     account_number: 'AccountNumber',
    #     additional_information: 'AdditionalInformation',
    #     party_type: 'INDIVIDUAL', # accepts ["INDIVIDUAL", "BUSINESS", "OTHER"]
    #     business_name: 'BusinessName',
    #     first_name: 'FirstName',
    #     middle_name: 'MiddleName',
    #     last_name: 'LastName',
    #     birth_date: 'BirthDate',
    #     gender: 'MALE', # accepts ["MALE", "FEMALE", "UNSPECIFIED"]
    #     phone_number: 'PhoneNumber',
    #     mobile_phone_number: 'MobilePhoneNumber',
    #     home_phone_number: 'HomePhoneNumber',
    #     business_phone_number: 'BusinessPhoneNumber',
    #     email_address: 'EmailAddress',
    #     personal_email_address: 'PersonalEmailAddress',
    #     business_email_address: 'BusinessEmailAddress',
    #     address: {
    #       address1: 'Address1',
    #       address2: 'Address2',
    #       address3: 'Address3',
    #       address4: 'Address4',
    #       city: 'City',
    #       county: 'County',
    #       state: 'State',
    #       province: 'Province',
    #       country: 'Country',
    #       postal_code: 'PostalCode'
    #     },
    #     attributes: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProfileOutput
    #   resp.data.profile_id #=> String
    #
    def create_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProfile,
        stubs: @stubs,
        params_class: Params::CreateProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specific domain and all of its customer data, such as customer profile
    #          attributes and their related objects.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @return [Types::DeleteDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDomainOutput
    #   resp.data.message #=> String
    #
    def delete_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDomain,
        stubs: @stubs,
        params_class: Params::DeleteDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an integration from a specific domain.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIntegrationInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #
    # @return [Types::DeleteIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration(
    #     domain_name: 'DomainName', # required
    #     uri: 'Uri' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIntegrationOutput
    #   resp.data.message #=> String
    #
    def delete_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIntegrationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIntegration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIntegration,
        stubs: @stubs,
        params_class: Params::DeleteIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the standard customer profile and all data pertaining to the profile.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProfileInput}.
    #
    # @option params [String] :profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @return [Types::DeleteProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile(
    #     profile_id: 'ProfileId', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProfileOutput
    #   resp.data.message #=> String
    #
    def delete_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProfile,
        stubs: @stubs,
        params_class: Params::DeleteProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a searchable key from a customer profile.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProfileKeyInput}.
    #
    # @option params [String] :profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #
    # @option params [String] :key_name
    #   <p>A searchable identifier of a customer profile.</p>
    #
    # @option params [Array<String>] :values
    #   <p>A list of key values.</p>
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @return [Types::DeleteProfileKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile_key(
    #     profile_id: 'ProfileId', # required
    #     key_name: 'KeyName', # required
    #     values: [
    #       'member'
    #     ], # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProfileKeyOutput
    #   resp.data.message #=> String
    #
    def delete_profile_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProfileKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProfileKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProfileKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteProfileKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProfileKey,
        stubs: @stubs,
        params_class: Params::DeleteProfileKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_profile_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an object associated with a profile of a given ProfileObjectType.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProfileObjectInput}.
    #
    # @option params [String] :profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #
    # @option params [String] :profile_object_unique_key
    #   <p>The unique identifier of the profile object generated by the service.</p>
    #
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @return [Types::DeleteProfileObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile_object(
    #     profile_id: 'ProfileId', # required
    #     profile_object_unique_key: 'ProfileObjectUniqueKey', # required
    #     object_type_name: 'ObjectTypeName', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProfileObjectOutput
    #   resp.data.message #=> String
    #
    def delete_profile_object(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProfileObjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProfileObjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProfileObject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteProfileObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProfileObject,
        stubs: @stubs,
        params_class: Params::DeleteProfileObjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_profile_object
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a ProfileObjectType from a specific domain as well as removes all the
    #          ProfileObjects of that type. It also disables integrations from this specific
    #          ProfileObjectType. In addition, it scrubs all of the fields of the standard profile that
    #          were populated from this ProfileObjectType.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProfileObjectTypeInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    #
    # @return [Types::DeleteProfileObjectTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile_object_type(
    #     domain_name: 'DomainName', # required
    #     object_type_name: 'ObjectTypeName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProfileObjectTypeOutput
    #   resp.data.message #=> String
    #
    def delete_profile_object_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProfileObjectTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProfileObjectTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProfileObjectType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteProfileObjectType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProfileObjectType,
        stubs: @stubs,
        params_class: Params::DeleteProfileObjectTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_profile_object_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified workflow and all its corresponding resources. This is an async process.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWorkflowInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #
    # @return [Types::DeleteWorkflowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow(
    #     domain_name: 'DomainName', # required
    #     workflow_id: 'WorkflowId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWorkflowOutput
    #
    def delete_workflow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWorkflowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWorkflowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWorkflow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteWorkflow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWorkflow,
        stubs: @stubs,
        params_class: Params::DeleteWorkflowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_workflow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Tests the auto-merging settings of your Identity Resolution Job without merging your data. It randomly
    #          selects a sample of matching groups from the existing matching results, and applies the
    #          automerging settings that you provided. You can then view the number of profiles in the
    #          sample, the number of matches, and the number of profiles identified to be merged. This
    #          enables you to evaluate the accuracy of the attributes in your matching list. </p>
    #          <p>You can't view which profiles are matched and would be merged.</p>
    #          <important>
    #
    #             <p>We strongly recommend you use this API to do a dry run of the automerging process
    #             before running the Identity Resolution Job. Include <b>at least</b> two matching
    #             attributes. If your matching list includes too few attributes (such as only
    #                <code>FirstName</code> or only <code>LastName</code>), there may be a large number of
    #             matches. This increases the chances of erroneous merges.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::GetAutoMergingPreviewInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [Consolidation] :consolidation
    #   <p>A list of matching attributes that represent matching criteria.</p>
    #
    # @option params [ConflictResolution] :conflict_resolution
    #   <p>How the auto-merging process should resolve conflicts between different profiles.</p>
    #
    # @return [Types::GetAutoMergingPreviewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_auto_merging_preview(
    #     domain_name: 'DomainName', # required
    #     consolidation: {
    #       matching_attributes_list: [
    #         [
    #           'member'
    #         ]
    #       ] # required
    #     }, # required
    #     conflict_resolution: {
    #       conflict_resolving_model: 'RECENCY', # required - accepts ["RECENCY", "SOURCE"]
    #       source_name: 'SourceName'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAutoMergingPreviewOutput
    #   resp.data.domain_name #=> String
    #   resp.data.number_of_matches_in_sample #=> Integer
    #   resp.data.number_of_profiles_in_sample #=> Integer
    #   resp.data.number_of_profiles_will_be_merged #=> Integer
    #
    def get_auto_merging_preview(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAutoMergingPreviewInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAutoMergingPreviewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAutoMergingPreview
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetAutoMergingPreview
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAutoMergingPreview,
        stubs: @stubs,
        params_class: Params::GetAutoMergingPreviewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_auto_merging_preview
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a specific domain.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @return [Types::GetDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDomainOutput
    #   resp.data.domain_name #=> String
    #   resp.data.default_expiration_days #=> Integer
    #   resp.data.default_encryption_key #=> String
    #   resp.data.dead_letter_queue_url #=> String
    #   resp.data.stats #=> Types::DomainStats
    #   resp.data.stats.profile_count #=> Integer
    #   resp.data.stats.metering_profile_count #=> Integer
    #   resp.data.stats.object_count #=> Integer
    #   resp.data.stats.total_size #=> Integer
    #   resp.data.matching #=> Types::MatchingResponse
    #   resp.data.matching.enabled #=> Boolean
    #   resp.data.matching.job_schedule #=> Types::JobSchedule
    #   resp.data.matching.job_schedule.day_of_the_week #=> String, one of ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]
    #   resp.data.matching.job_schedule.time #=> String
    #   resp.data.matching.auto_merging #=> Types::AutoMerging
    #   resp.data.matching.auto_merging.enabled #=> Boolean
    #   resp.data.matching.auto_merging.consolidation #=> Types::Consolidation
    #   resp.data.matching.auto_merging.consolidation.matching_attributes_list #=> Array<Array<String>>
    #   resp.data.matching.auto_merging.consolidation.matching_attributes_list[0] #=> Array<String>
    #   resp.data.matching.auto_merging.consolidation.matching_attributes_list[0][0] #=> String
    #   resp.data.matching.auto_merging.conflict_resolution #=> Types::ConflictResolution
    #   resp.data.matching.auto_merging.conflict_resolution.conflict_resolving_model #=> String, one of ["RECENCY", "SOURCE"]
    #   resp.data.matching.auto_merging.conflict_resolution.source_name #=> String
    #   resp.data.matching.exporting_config #=> Types::ExportingConfig
    #   resp.data.matching.exporting_config.s3_exporting #=> Types::S3ExportingConfig
    #   resp.data.matching.exporting_config.s3_exporting.s3_bucket_name #=> String
    #   resp.data.matching.exporting_config.s3_exporting.s3_key_name #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDomain,
        stubs: @stubs,
        params_class: Params::GetDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about an Identity Resolution Job in a specific domain. </p>
    #          <p>Identity Resolution Jobs are set up using the Amazon Connect admin console. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/use-identity-resolution.html">Use
    #             Identity Resolution to consolidate similar profiles</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIdentityResolutionJobInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :job_id
    #   <p>The unique identifier of the Identity Resolution Job.</p>
    #
    # @return [Types::GetIdentityResolutionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_resolution_job(
    #     domain_name: 'DomainName', # required
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIdentityResolutionJobOutput
    #   resp.data.domain_name #=> String
    #   resp.data.job_id #=> String
    #   resp.data.status #=> String, one of ["PENDING", "PREPROCESSING", "FIND_MATCHING", "MERGING", "COMPLETED", "PARTIAL_SUCCESS", "FAILED"]
    #   resp.data.message #=> String
    #   resp.data.job_start_time #=> Time
    #   resp.data.job_end_time #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.job_expiration_time #=> Time
    #   resp.data.auto_merging #=> Types::AutoMerging
    #   resp.data.auto_merging.enabled #=> Boolean
    #   resp.data.auto_merging.consolidation #=> Types::Consolidation
    #   resp.data.auto_merging.consolidation.matching_attributes_list #=> Array<Array<String>>
    #   resp.data.auto_merging.consolidation.matching_attributes_list[0] #=> Array<String>
    #   resp.data.auto_merging.consolidation.matching_attributes_list[0][0] #=> String
    #   resp.data.auto_merging.conflict_resolution #=> Types::ConflictResolution
    #   resp.data.auto_merging.conflict_resolution.conflict_resolving_model #=> String, one of ["RECENCY", "SOURCE"]
    #   resp.data.auto_merging.conflict_resolution.source_name #=> String
    #   resp.data.exporting_location #=> Types::ExportingLocation
    #   resp.data.exporting_location.s3_exporting #=> Types::S3ExportingLocation
    #   resp.data.exporting_location.s3_exporting.s3_bucket_name #=> String
    #   resp.data.exporting_location.s3_exporting.s3_key_name #=> String
    #   resp.data.job_stats #=> Types::JobStats
    #   resp.data.job_stats.number_of_profiles_reviewed #=> Integer
    #   resp.data.job_stats.number_of_matches_found #=> Integer
    #   resp.data.job_stats.number_of_merges_done #=> Integer
    #
    def get_identity_resolution_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIdentityResolutionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIdentityResolutionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIdentityResolutionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetIdentityResolutionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIdentityResolutionJob,
        stubs: @stubs,
        params_class: Params::GetIdentityResolutionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_identity_resolution_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an integration for a domain.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIntegrationInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #
    # @return [Types::GetIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration(
    #     domain_name: 'DomainName', # required
    #     uri: 'Uri' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIntegrationOutput
    #   resp.data.domain_name #=> String
    #   resp.data.uri #=> String
    #   resp.data.object_type_name #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.object_type_names #=> Hash<String, String>
    #   resp.data.object_type_names['key'] #=> String
    #   resp.data.workflow_id #=> String
    #
    def get_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIntegrationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIntegration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIntegration,
        stubs: @stubs,
        params_class: Params::GetIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Before calling this API, use <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html">CreateDomain</a> or
    #             <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html">UpdateDomain</a> to
    #          enable identity resolution: set <code>Matching</code> to true.</p>
    #          <p>GetMatches returns potentially matching profiles, based on the results of the latest run
    #          of a machine learning process. </p>
    #          <important>
    #             <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    # batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every
    # Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #             <p>After the Identity Resolution Job completes, use the
    # <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    # API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    # S3.</p>
    #          </important>
    #
    #          <p>Amazon Connect uses the following profile attributes to identify matches:</p>
    #          <ul>
    #             <li>
    #                <p>PhoneNumber</p>
    #             </li>
    #             <li>
    #                <p>HomePhoneNumber</p>
    #             </li>
    #             <li>
    #                <p>BusinessPhoneNumber</p>
    #             </li>
    #             <li>
    #                <p>MobilePhoneNumber</p>
    #             </li>
    #             <li>
    #                <p>EmailAddress</p>
    #             </li>
    #             <li>
    #                <p>PersonalEmailAddress</p>
    #             </li>
    #             <li>
    #                <p>BusinessEmailAddress</p>
    #             </li>
    #             <li>
    #                <p>FullName</p>
    #             </li>
    #          </ul>
    #          <p>For example, two or more profiles—with spelling mistakes such as <b>John Doe</b> and <b>Jhn Doe</b>, or different casing
    #          email addresses such as <b>JOHN_DOE@ANYCOMPANY.COM</b> and
    #             <b>johndoe@anycompany.com</b>, or different phone number
    #          formats such as <b>555-010-0000</b> and <b>+1-555-010-0000</b>—can be detected as belonging to the same customer <b>John Doe</b> and merged into a unified profile.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMatchesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @return [Types::GetMatchesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_matches(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMatchesOutput
    #   resp.data.next_token #=> String
    #   resp.data.match_generation_date #=> Time
    #   resp.data.potential_matches #=> Integer
    #   resp.data.matches #=> Array<MatchItem>
    #   resp.data.matches[0] #=> Types::MatchItem
    #   resp.data.matches[0].match_id #=> String
    #   resp.data.matches[0].profile_ids #=> Array<String>
    #   resp.data.matches[0].profile_ids[0] #=> String
    #   resp.data.matches[0].confidence_score #=> Float
    #
    def get_matches(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMatchesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMatchesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMatches
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetMatches
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMatches,
        stubs: @stubs,
        params_class: Params::GetMatchesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_matches
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the object types for a specific domain.</p>
    #
    # @param [Hash] params
    #   See {Types::GetProfileObjectTypeInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    #
    # @return [Types::GetProfileObjectTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile_object_type(
    #     domain_name: 'DomainName', # required
    #     object_type_name: 'ObjectTypeName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetProfileObjectTypeOutput
    #   resp.data.object_type_name #=> String
    #   resp.data.description #=> String
    #   resp.data.template_id #=> String
    #   resp.data.expiration_days #=> Integer
    #   resp.data.encryption_key #=> String
    #   resp.data.allow_profile_creation #=> Boolean
    #   resp.data.source_last_updated_timestamp_format #=> String
    #   resp.data.fields #=> Hash<String, ObjectTypeField>
    #   resp.data.fields['key'] #=> Types::ObjectTypeField
    #   resp.data.fields['key'].source #=> String
    #   resp.data.fields['key'].target #=> String
    #   resp.data.fields['key'].content_type #=> String, one of ["STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"]
    #   resp.data.keys #=> Hash<String, Array<ObjectTypeKey>>
    #   resp.data.keys['key'] #=> Array<ObjectTypeKey>
    #   resp.data.keys['key'][0] #=> Types::ObjectTypeKey
    #   resp.data.keys['key'][0].standard_identifiers #=> Array<String>
    #   resp.data.keys['key'][0].standard_identifiers[0] #=> String, one of ["PROFILE", "ASSET", "CASE", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY", "ORDER"]
    #   resp.data.keys['key'][0].field_names #=> Array<String>
    #   resp.data.keys['key'][0].field_names[0] #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_profile_object_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetProfileObjectTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetProfileObjectTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetProfileObjectType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetProfileObjectType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetProfileObjectType,
        stubs: @stubs,
        params_class: Params::GetProfileObjectTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_profile_object_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the template information for a specific object type.</p>
    #          <p>A template is a predefined ProfileObjectType, such as “Salesforce-Account” or
    #          “Salesforce-Contact.” When a user sends a ProfileObject, using the PutProfileObject API,
    #          with an ObjectTypeName that matches one of the TemplateIds, it uses the mappings from the
    #          template.</p>
    #
    # @param [Hash] params
    #   See {Types::GetProfileObjectTypeTemplateInput}.
    #
    # @option params [String] :template_id
    #   <p>A unique identifier for the object template.</p>
    #
    # @return [Types::GetProfileObjectTypeTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile_object_type_template(
    #     template_id: 'TemplateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetProfileObjectTypeTemplateOutput
    #   resp.data.template_id #=> String
    #   resp.data.source_name #=> String
    #   resp.data.source_object #=> String
    #   resp.data.allow_profile_creation #=> Boolean
    #   resp.data.source_last_updated_timestamp_format #=> String
    #   resp.data.fields #=> Hash<String, ObjectTypeField>
    #   resp.data.fields['key'] #=> Types::ObjectTypeField
    #   resp.data.fields['key'].source #=> String
    #   resp.data.fields['key'].target #=> String
    #   resp.data.fields['key'].content_type #=> String, one of ["STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"]
    #   resp.data.keys #=> Hash<String, Array<ObjectTypeKey>>
    #   resp.data.keys['key'] #=> Array<ObjectTypeKey>
    #   resp.data.keys['key'][0] #=> Types::ObjectTypeKey
    #   resp.data.keys['key'][0].standard_identifiers #=> Array<String>
    #   resp.data.keys['key'][0].standard_identifiers[0] #=> String, one of ["PROFILE", "ASSET", "CASE", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY", "ORDER"]
    #   resp.data.keys['key'][0].field_names #=> Array<String>
    #   resp.data.keys['key'][0].field_names[0] #=> String
    #
    def get_profile_object_type_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetProfileObjectTypeTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetProfileObjectTypeTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetProfileObjectTypeTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetProfileObjectTypeTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetProfileObjectTypeTemplate,
        stubs: @stubs,
        params_class: Params::GetProfileObjectTypeTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_profile_object_type_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get details of specified workflow.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWorkflowInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #
    # @return [Types::GetWorkflowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow(
    #     domain_name: 'DomainName', # required
    #     workflow_id: 'WorkflowId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWorkflowOutput
    #   resp.data.workflow_id #=> String
    #   resp.data.workflow_type #=> String, one of ["APPFLOW_INTEGRATION"]
    #   resp.data.status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"]
    #   resp.data.error_description #=> String
    #   resp.data.start_date #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.attributes #=> Types::WorkflowAttributes
    #   resp.data.attributes.appflow_integration #=> Types::AppflowIntegrationWorkflowAttributes
    #   resp.data.attributes.appflow_integration.source_connector_type #=> String, one of ["Salesforce", "Marketo", "Zendesk", "Servicenow", "S3"]
    #   resp.data.attributes.appflow_integration.connector_profile_name #=> String
    #   resp.data.attributes.appflow_integration.role_arn #=> String
    #   resp.data.metrics #=> Types::WorkflowMetrics
    #   resp.data.metrics.appflow_integration #=> Types::AppflowIntegrationWorkflowMetrics
    #   resp.data.metrics.appflow_integration.records_processed #=> Integer
    #   resp.data.metrics.appflow_integration.steps_completed #=> Integer
    #   resp.data.metrics.appflow_integration.total_steps #=> Integer
    #
    def get_workflow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWorkflowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWorkflowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWorkflow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetWorkflow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWorkflow,
        stubs: @stubs,
        params_class: Params::GetWorkflowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_workflow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get granular list of steps in workflow.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWorkflowStepsInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::GetWorkflowStepsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_steps(
    #     domain_name: 'DomainName', # required
    #     workflow_id: 'WorkflowId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWorkflowStepsOutput
    #   resp.data.workflow_id #=> String
    #   resp.data.workflow_type #=> String, one of ["APPFLOW_INTEGRATION"]
    #   resp.data.items #=> Array<WorkflowStepItem>
    #   resp.data.items[0] #=> Types::WorkflowStepItem
    #   resp.data.items[0].appflow_integration #=> Types::AppflowIntegrationWorkflowStep
    #   resp.data.items[0].appflow_integration.flow_name #=> String
    #   resp.data.items[0].appflow_integration.status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"]
    #   resp.data.items[0].appflow_integration.execution_message #=> String
    #   resp.data.items[0].appflow_integration.records_processed #=> Integer
    #   resp.data.items[0].appflow_integration.batch_records_start_time #=> String
    #   resp.data.items[0].appflow_integration.batch_records_end_time #=> String
    #   resp.data.items[0].appflow_integration.created_at #=> Time
    #   resp.data.items[0].appflow_integration.last_updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def get_workflow_steps(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWorkflowStepsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWorkflowStepsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWorkflowSteps
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetWorkflowSteps
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWorkflowSteps,
        stubs: @stubs,
        params_class: Params::GetWorkflowStepsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_workflow_steps
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the integrations associated to a specific URI in the AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccountIntegrationsInput}.
    #
    # @option params [String] :uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token from the previous ListAccountIntegrations API call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    #
    # @option params [Boolean] :include_hidden
    #   <p>Boolean to indicate if hidden integration should be returned. Defaults to <code>False</code>.</p>
    #
    # @return [Types::ListAccountIntegrationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_integrations(
    #     uri: 'Uri', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     include_hidden: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccountIntegrationsOutput
    #   resp.data.items #=> Array<ListIntegrationItem>
    #   resp.data.items[0] #=> Types::ListIntegrationItem
    #   resp.data.items[0].domain_name #=> String
    #   resp.data.items[0].uri #=> String
    #   resp.data.items[0].object_type_name #=> String
    #   resp.data.items[0].created_at #=> Time
    #   resp.data.items[0].last_updated_at #=> Time
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.items[0].object_type_names #=> Hash<String, String>
    #   resp.data.items[0].object_type_names['key'] #=> String
    #   resp.data.items[0].workflow_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_account_integrations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccountIntegrationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccountIntegrationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccountIntegrations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListAccountIntegrations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccountIntegrations,
        stubs: @stubs,
        params_class: Params::ListAccountIntegrationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_account_integrations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all the domains for an AWS account that have been created.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDomainsInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token from the previous ListDomain API call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    #
    # @return [Types::ListDomainsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDomainsOutput
    #   resp.data.items #=> Array<ListDomainItem>
    #   resp.data.items[0] #=> Types::ListDomainItem
    #   resp.data.items[0].domain_name #=> String
    #   resp.data.items[0].created_at #=> Time
    #   resp.data.items[0].last_updated_at #=> Time
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_domains(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDomainsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDomainsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDomains
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListDomains
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDomains,
        stubs: @stubs,
        params_class: Params::ListDomainsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_domains
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the Identity Resolution Jobs in your domain. The response sorts the list by
    #             <code>JobStartTime</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIdentityResolutionJobsInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListIdentityResolutionJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_resolution_jobs(
    #     domain_name: 'DomainName', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIdentityResolutionJobsOutput
    #   resp.data.identity_resolution_jobs_list #=> Array<IdentityResolutionJob>
    #   resp.data.identity_resolution_jobs_list[0] #=> Types::IdentityResolutionJob
    #   resp.data.identity_resolution_jobs_list[0].domain_name #=> String
    #   resp.data.identity_resolution_jobs_list[0].job_id #=> String
    #   resp.data.identity_resolution_jobs_list[0].status #=> String, one of ["PENDING", "PREPROCESSING", "FIND_MATCHING", "MERGING", "COMPLETED", "PARTIAL_SUCCESS", "FAILED"]
    #   resp.data.identity_resolution_jobs_list[0].job_start_time #=> Time
    #   resp.data.identity_resolution_jobs_list[0].job_end_time #=> Time
    #   resp.data.identity_resolution_jobs_list[0].job_stats #=> Types::JobStats
    #   resp.data.identity_resolution_jobs_list[0].job_stats.number_of_profiles_reviewed #=> Integer
    #   resp.data.identity_resolution_jobs_list[0].job_stats.number_of_matches_found #=> Integer
    #   resp.data.identity_resolution_jobs_list[0].job_stats.number_of_merges_done #=> Integer
    #   resp.data.identity_resolution_jobs_list[0].exporting_location #=> Types::ExportingLocation
    #   resp.data.identity_resolution_jobs_list[0].exporting_location.s3_exporting #=> Types::S3ExportingLocation
    #   resp.data.identity_resolution_jobs_list[0].exporting_location.s3_exporting.s3_bucket_name #=> String
    #   resp.data.identity_resolution_jobs_list[0].exporting_location.s3_exporting.s3_key_name #=> String
    #   resp.data.identity_resolution_jobs_list[0].message #=> String
    #   resp.data.next_token #=> String
    #
    def list_identity_resolution_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIdentityResolutionJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIdentityResolutionJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIdentityResolutionJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListIdentityResolutionJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIdentityResolutionJobs,
        stubs: @stubs,
        params_class: Params::ListIdentityResolutionJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_identity_resolution_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the integrations in your domain.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIntegrationsInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token from the previous ListIntegrations API call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    #
    # @option params [Boolean] :include_hidden
    #   <p>Boolean to indicate if hidden integration should be returned. Defaults to <code>False</code>.</p>
    #
    # @return [Types::ListIntegrationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_integrations(
    #     domain_name: 'DomainName', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     include_hidden: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIntegrationsOutput
    #   resp.data.items #=> Array<ListIntegrationItem>
    #   resp.data.items[0] #=> Types::ListIntegrationItem
    #   resp.data.items[0].domain_name #=> String
    #   resp.data.items[0].uri #=> String
    #   resp.data.items[0].object_type_name #=> String
    #   resp.data.items[0].created_at #=> Time
    #   resp.data.items[0].last_updated_at #=> Time
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.items[0].object_type_names #=> Hash<String, String>
    #   resp.data.items[0].object_type_names['key'] #=> String
    #   resp.data.items[0].workflow_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_integrations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIntegrationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIntegrationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIntegrations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListIntegrations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIntegrations,
        stubs: @stubs,
        params_class: Params::ListIntegrationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_integrations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the template information for object types.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProfileObjectTypeTemplatesInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token from the previous ListObjectTypeTemplates API call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    #
    # @return [Types::ListProfileObjectTypeTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_object_type_templates(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProfileObjectTypeTemplatesOutput
    #   resp.data.items #=> Array<ListProfileObjectTypeTemplateItem>
    #   resp.data.items[0] #=> Types::ListProfileObjectTypeTemplateItem
    #   resp.data.items[0].template_id #=> String
    #   resp.data.items[0].source_name #=> String
    #   resp.data.items[0].source_object #=> String
    #   resp.data.next_token #=> String
    #
    def list_profile_object_type_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProfileObjectTypeTemplatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProfileObjectTypeTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProfileObjectTypeTemplates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListProfileObjectTypeTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProfileObjectTypeTemplates,
        stubs: @stubs,
        params_class: Params::ListProfileObjectTypeTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_profile_object_type_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the templates available within the service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProfileObjectTypesInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    #
    # @return [Types::ListProfileObjectTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_object_types(
    #     domain_name: 'DomainName', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProfileObjectTypesOutput
    #   resp.data.items #=> Array<ListProfileObjectTypeItem>
    #   resp.data.items[0] #=> Types::ListProfileObjectTypeItem
    #   resp.data.items[0].object_type_name #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].created_at #=> Time
    #   resp.data.items[0].last_updated_at #=> Time
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_profile_object_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProfileObjectTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProfileObjectTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProfileObjectTypes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListProfileObjectTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProfileObjectTypes,
        stubs: @stubs,
        params_class: Params::ListProfileObjectTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_profile_object_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of objects associated with a profile of a given ProfileObjectType.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProfileObjectsInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token from the previous call to ListProfileObjects.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    #
    # @option params [String] :profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #
    # @option params [ObjectFilter] :object_filter
    #   <p>Applies a filter to the response to include profile objects with the specified index
    #            values. This filter is only supported for ObjectTypeName _asset, _case and _order.</p>
    #
    # @return [Types::ListProfileObjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_objects(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     domain_name: 'DomainName', # required
    #     object_type_name: 'ObjectTypeName', # required
    #     profile_id: 'ProfileId', # required
    #     object_filter: {
    #       key_name: 'KeyName', # required
    #       values: [
    #         'member'
    #       ] # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProfileObjectsOutput
    #   resp.data.items #=> Array<ListProfileObjectsItem>
    #   resp.data.items[0] #=> Types::ListProfileObjectsItem
    #   resp.data.items[0].object_type_name #=> String
    #   resp.data.items[0].profile_object_unique_key #=> String
    #   resp.data.items[0].object #=> String
    #   resp.data.next_token #=> String
    #
    def list_profile_objects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProfileObjectsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProfileObjectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProfileObjects
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListProfileObjects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProfileObjects,
        stubs: @stubs,
        params_class: Params::ListProfileObjectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_profile_objects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays the tags associated with an Amazon Connect Customer Profiles resource. In Connect
    #          Customer Profiles, domains, profile object types, and integrations can be tagged.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource for which you want to view tags.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Query to list all workflows.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWorkflowsInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :workflow_type
    #   <p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>
    #
    # @option params [String] :status
    #   <p>Status of workflow execution.</p>
    #
    # @option params [Time] :query_start_date
    #   <p>Retrieve workflows started after timestamp.</p>
    #
    # @option params [Time] :query_end_date
    #   <p>Retrieve workflows ended after timestamp.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListWorkflowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflows(
    #     domain_name: 'DomainName', # required
    #     workflow_type: 'APPFLOW_INTEGRATION', # accepts ["APPFLOW_INTEGRATION"]
    #     status: 'NOT_STARTED', # accepts ["NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"]
    #     query_start_date: Time.now,
    #     query_end_date: Time.now,
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorkflowsOutput
    #   resp.data.items #=> Array<ListWorkflowsItem>
    #   resp.data.items[0] #=> Types::ListWorkflowsItem
    #   resp.data.items[0].workflow_type #=> String, one of ["APPFLOW_INTEGRATION"]
    #   resp.data.items[0].workflow_id #=> String
    #   resp.data.items[0].status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "COMPLETE", "FAILED", "SPLIT", "RETRY", "CANCELLED"]
    #   resp.data.items[0].status_description #=> String
    #   resp.data.items[0].created_at #=> Time
    #   resp.data.items[0].last_updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_workflows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorkflowsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorkflowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorkflows
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListWorkflows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorkflows,
        stubs: @stubs,
        params_class: Params::ListWorkflowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_workflows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Runs an AWS Lambda job that does the following:</p>
    #          <ol>
    #             <li>
    #                <p>All the profileKeys in the <code>ProfileToBeMerged</code> will be moved to the
    #                main profile.</p>
    #             </li>
    #             <li>
    #                <p>All the objects in the <code>ProfileToBeMerged</code> will be moved to the main
    #                profile.</p>
    #             </li>
    #             <li>
    #                <p>All the <code>ProfileToBeMerged</code> will be deleted at the end.</p>
    #             </li>
    #             <li>
    #                <p>All the profileKeys in the <code>ProfileIdsToBeMerged</code> will be moved to the
    #                main profile.</p>
    #             </li>
    #             <li>
    #                <p>Standard fields are merged as follows:</p>
    #                <ol>
    #                   <li>
    #                      <p>Fields are always "union"-ed if there are no conflicts in standard fields or
    #                      attributeKeys.</p>
    #                   </li>
    #                   <li>
    #                      <p>When there are conflicting fields:</p>
    #
    #                      <ol>
    #                         <li>
    #                            <p>If no <code>SourceProfileIds</code> entry is specified, the main
    #                            Profile value is always taken. </p>
    #                         </li>
    #                         <li>
    #                            <p>If a <code>SourceProfileIds</code> entry is specified, the specified
    #                            profileId is always taken, even if it is a NULL value.</p>
    #                         </li>
    #                      </ol>
    #                   </li>
    #                </ol>
    #             </li>
    #          </ol>
    #          <p>You can use MergeProfiles together with <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>, which
    #          returns potentially matching profiles, or use it with the results of another matching
    #          system. After profiles have been merged, they cannot be separated (unmerged).</p>
    #
    # @param [Hash] params
    #   See {Types::MergeProfilesInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :main_profile_id
    #   <p>The identifier of the profile to be taken.</p>
    #
    # @option params [Array<String>] :profile_ids_to_be_merged
    #   <p>The identifier of the profile to be merged into MainProfileId.</p>
    #
    # @option params [FieldSourceProfileIds] :field_source_profile_ids
    #   <p>The identifiers of the fields in the profile that has the information you want to apply
    #            to the merge. For example, say you want to merge EmailAddress from Profile1 into
    #            MainProfile. This would be the identifier of the EmailAddress field in Profile1. </p>
    #
    # @return [Types::MergeProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_profiles(
    #     domain_name: 'DomainName', # required
    #     main_profile_id: 'MainProfileId', # required
    #     profile_ids_to_be_merged: [
    #       'member'
    #     ], # required
    #     field_source_profile_ids: {
    #       account_number: 'AccountNumber',
    #       additional_information: 'AdditionalInformation',
    #       party_type: 'PartyType',
    #       business_name: 'BusinessName',
    #       first_name: 'FirstName',
    #       middle_name: 'MiddleName',
    #       last_name: 'LastName',
    #       birth_date: 'BirthDate',
    #       gender: 'Gender',
    #       phone_number: 'PhoneNumber',
    #       mobile_phone_number: 'MobilePhoneNumber',
    #       home_phone_number: 'HomePhoneNumber',
    #       business_phone_number: 'BusinessPhoneNumber',
    #       email_address: 'EmailAddress',
    #       personal_email_address: 'PersonalEmailAddress',
    #       business_email_address: 'BusinessEmailAddress',
    #       address: 'Address',
    #       shipping_address: 'ShippingAddress',
    #       mailing_address: 'MailingAddress',
    #       billing_address: 'BillingAddress',
    #       attributes: {
    #         'key' => 'value'
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::MergeProfilesOutput
    #   resp.data.message #=> String
    #
    def merge_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::MergeProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::MergeProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::MergeProfiles
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::MergeProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::MergeProfiles,
        stubs: @stubs,
        params_class: Params::MergeProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :merge_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds an integration between the service and a third-party service, which includes
    #          Amazon AppFlow and Amazon Connect.</p>
    #          <p>An integration can belong to only one domain.</p>
    #
    # @param [Hash] params
    #   See {Types::PutIntegrationInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @option params [FlowDefinition] :flow_definition
    #   <p>The configuration that controls how Customer Profiles retrieves data from the
    #            source.</p>
    #
    # @option params [Hash<String, String>] :object_type_names
    #   <p>A map in which each key is an event type from an external application such as Segment or Shopify, and each value is an <code>ObjectTypeName</code> (template) used to ingest the event.
    #   It supports the following event types: <code>SegmentIdentify</code>, <code>ShopifyCreateCustomers</code>, <code>ShopifyUpdateCustomers</code>, <code>ShopifyCreateDraftOrders</code>,
    #   <code>ShopifyUpdateDraftOrders</code>, <code>ShopifyCreateOrders</code>, and <code>ShopifyUpdatedOrders</code>.</p>
    #
    # @return [Types::PutIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_integration(
    #     domain_name: 'DomainName', # required
    #     uri: 'Uri',
    #     object_type_name: 'ObjectTypeName',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     flow_definition: {
    #       description: 'Description',
    #       flow_name: 'FlowName', # required
    #       kms_arn: 'KmsArn', # required
    #       source_flow_config: {
    #         connector_profile_name: 'ConnectorProfileName',
    #         connector_type: 'Salesforce', # required - accepts ["Salesforce", "Marketo", "Zendesk", "Servicenow", "S3"]
    #         incremental_pull_config: {
    #           datetime_type_field_name: 'DatetimeTypeFieldName'
    #         },
    #         source_connector_properties: {
    #           marketo: {
    #             object: 'Object' # required
    #           },
    #           s3: {
    #             bucket_name: 'BucketName', # required
    #             bucket_prefix: 'BucketPrefix'
    #           },
    #           salesforce: {
    #             object: 'Object', # required
    #             enable_dynamic_field_update: false,
    #             include_deleted_records: false
    #           },
    #           service_now: {
    #             object: 'Object' # required
    #           },
    #           zendesk: {
    #             object: 'Object' # required
    #           }
    #         } # required
    #       }, # required
    #       tasks: [
    #         {
    #           connector_operator: {
    #             marketo: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #             s3: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #             salesforce: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #             service_now: 'PROJECTION', # accepts ["PROJECTION", "CONTAINS", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #             zendesk: 'PROJECTION' # accepts ["PROJECTION", "GREATER_THAN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           },
    #           destination_field: 'DestinationField',
    #           source_fields: [
    #             'member'
    #           ], # required
    #           task_properties: {
    #             'key' => 'value'
    #           },
    #           task_type: 'Arithmetic' # required - accepts ["Arithmetic", "Filter", "Map", "Mask", "Merge", "Truncate", "Validate"]
    #         }
    #       ], # required
    #       trigger_config: {
    #         trigger_type: 'Scheduled', # required - accepts ["Scheduled", "Event", "OnDemand"]
    #         trigger_properties: {
    #           scheduled: {
    #             schedule_expression: 'ScheduleExpression', # required
    #             data_pull_mode: 'Incremental', # accepts ["Incremental", "Complete"]
    #             schedule_start_time: Time.now,
    #             schedule_end_time: Time.now,
    #             timezone: 'Timezone',
    #             schedule_offset: 1,
    #             first_execution_from: Time.now
    #           }
    #         }
    #       } # required
    #     },
    #     object_type_names: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutIntegrationOutput
    #   resp.data.domain_name #=> String
    #   resp.data.uri #=> String
    #   resp.data.object_type_name #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.object_type_names #=> Hash<String, String>
    #   resp.data.object_type_names['key'] #=> String
    #   resp.data.workflow_id #=> String
    #
    def put_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutIntegrationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutIntegration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::PutIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutIntegration,
        stubs: @stubs,
        params_class: Params::PutIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds additional objects to customer profiles of a given ObjectType.</p>
    #          <p>When adding a specific profile object, like a Contact Trace Record (CTR), an inferred
    #          profile can get created if it is not mapped to an existing profile. The resulting profile
    #          will only have a phone number populated in the standard ProfileObject. Any additional CTRs
    #          with the same phone number will be mapped to the same inferred profile.</p>
    #          <p>When a ProfileObject is created and if a ProfileObjectType already exists for the
    #          ProfileObject, it will provide data to a standard profile depending on the
    #          ProfileObjectType definition.</p>
    #          <p>PutProfileObject needs an ObjectType, which can be created using
    #          PutProfileObjectType.</p>
    #
    # @param [Hash] params
    #   See {Types::PutProfileObjectInput}.
    #
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    #
    # @option params [String] :object
    #   <p>A string that is serialized from a JSON object.</p>
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @return [Types::PutProfileObjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_profile_object(
    #     object_type_name: 'ObjectTypeName', # required
    #     object: 'Object', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutProfileObjectOutput
    #   resp.data.profile_object_unique_key #=> String
    #
    def put_profile_object(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutProfileObjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutProfileObjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutProfileObject
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::PutProfileObject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutProfileObject,
        stubs: @stubs,
        params_class: Params::PutProfileObjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_profile_object
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Defines a ProfileObjectType.</p>
    #
    # @param [Hash] params
    #   See {Types::PutProfileObjectTypeInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :object_type_name
    #   <p>The name of the profile object type.</p>
    #
    # @option params [String] :description
    #   <p>Description of the profile object type.</p>
    #
    # @option params [String] :template_id
    #   <p>A unique identifier for the object template.</p>
    #
    # @option params [Integer] :expiration_days
    #   <p>The number of days until the data in the object expires.</p>
    #
    # @option params [String] :encryption_key
    #   <p>The customer-provided key to encrypt the profile object that will be created in this
    #            profile object type.</p>
    #
    # @option params [Boolean] :allow_profile_creation
    #   <p>Indicates whether a profile should be created when data is received if one doesn’t exist
    #            for an object of this type. The default is <code>FALSE</code>. If the AllowProfileCreation
    #            flag is set to <code>FALSE</code>, then the service tries to fetch a standard profile and
    #            associate this object with the profile. If it is set to <code>TRUE</code>, and if no match
    #            is found, then the service creates a new standard profile.</p>
    #
    # @option params [String] :source_last_updated_timestamp_format
    #   <p>The format of your <code>sourceLastUpdatedTimestamp</code> that was previously set up.
    #         </p>
    #
    # @option params [Hash<String, ObjectTypeField>] :fields
    #   <p>A map of the name and ObjectType field.</p>
    #
    # @option params [Hash<String, Array<ObjectTypeKey>>] :keys
    #   <p>A list of unique keys that can be used to map data to the profile.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::PutProfileObjectTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_profile_object_type(
    #     domain_name: 'DomainName', # required
    #     object_type_name: 'ObjectTypeName', # required
    #     description: 'Description', # required
    #     template_id: 'TemplateId',
    #     expiration_days: 1,
    #     encryption_key: 'EncryptionKey',
    #     allow_profile_creation: false,
    #     source_last_updated_timestamp_format: 'SourceLastUpdatedTimestampFormat',
    #     fields: {
    #       'key' => {
    #         source: 'Source',
    #         target: 'Target',
    #         content_type: 'STRING' # accepts ["STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"]
    #       }
    #     },
    #     keys: {
    #       'key' => [
    #         {
    #           standard_identifiers: [
    #             'PROFILE' # accepts ["PROFILE", "ASSET", "CASE", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY", "ORDER"]
    #           ],
    #           field_names: [
    #             'member'
    #           ]
    #         }
    #       ]
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutProfileObjectTypeOutput
    #   resp.data.object_type_name #=> String
    #   resp.data.description #=> String
    #   resp.data.template_id #=> String
    #   resp.data.expiration_days #=> Integer
    #   resp.data.encryption_key #=> String
    #   resp.data.allow_profile_creation #=> Boolean
    #   resp.data.source_last_updated_timestamp_format #=> String
    #   resp.data.fields #=> Hash<String, ObjectTypeField>
    #   resp.data.fields['key'] #=> Types::ObjectTypeField
    #   resp.data.fields['key'].source #=> String
    #   resp.data.fields['key'].target #=> String
    #   resp.data.fields['key'].content_type #=> String, one of ["STRING", "NUMBER", "PHONE_NUMBER", "EMAIL_ADDRESS", "NAME"]
    #   resp.data.keys #=> Hash<String, Array<ObjectTypeKey>>
    #   resp.data.keys['key'] #=> Array<ObjectTypeKey>
    #   resp.data.keys['key'][0] #=> Types::ObjectTypeKey
    #   resp.data.keys['key'][0].standard_identifiers #=> Array<String>
    #   resp.data.keys['key'][0].standard_identifiers[0] #=> String, one of ["PROFILE", "ASSET", "CASE", "UNIQUE", "SECONDARY", "LOOKUP_ONLY", "NEW_ONLY", "ORDER"]
    #   resp.data.keys['key'][0].field_names #=> Array<String>
    #   resp.data.keys['key'][0].field_names[0] #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def put_profile_object_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutProfileObjectTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutProfileObjectTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutProfileObjectType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::PutProfileObjectType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutProfileObjectType,
        stubs: @stubs,
        params_class: Params::PutProfileObjectTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_profile_object_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches for profiles within a specific domain name using name, phone number, email
    #          address, account number, or a custom defined index.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchProfilesInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token from the previous SearchProfiles API call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :key_name
    #   <p>A searchable identifier of a customer profile. The predefined keys you can use
    #            to search include: _account, _profileId, _assetId, _caseId, _orderId, _fullName, _phone,
    #            _email, _ctrContactId, _marketoLeadId, _salesforceAccountId, _salesforceContactId,
    #            _salesforceAssetId, _zendeskUserId, _zendeskExternalId, _zendeskTicketId,
    #            _serviceNowSystemId, _serviceNowIncidentId, _segmentUserId, _shopifyCustomerId,
    #            _shopifyOrderId.</p>
    #
    # @option params [Array<String>] :values
    #   <p>A list of key values.</p>
    #
    # @return [Types::SearchProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_profiles(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     domain_name: 'DomainName', # required
    #     key_name: 'KeyName', # required
    #     values: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchProfilesOutput
    #   resp.data.items #=> Array<Profile>
    #   resp.data.items[0] #=> Types::Profile
    #   resp.data.items[0].profile_id #=> String
    #   resp.data.items[0].account_number #=> String
    #   resp.data.items[0].additional_information #=> String
    #   resp.data.items[0].party_type #=> String, one of ["INDIVIDUAL", "BUSINESS", "OTHER"]
    #   resp.data.items[0].business_name #=> String
    #   resp.data.items[0].first_name #=> String
    #   resp.data.items[0].middle_name #=> String
    #   resp.data.items[0].last_name #=> String
    #   resp.data.items[0].birth_date #=> String
    #   resp.data.items[0].gender #=> String, one of ["MALE", "FEMALE", "UNSPECIFIED"]
    #   resp.data.items[0].phone_number #=> String
    #   resp.data.items[0].mobile_phone_number #=> String
    #   resp.data.items[0].home_phone_number #=> String
    #   resp.data.items[0].business_phone_number #=> String
    #   resp.data.items[0].email_address #=> String
    #   resp.data.items[0].personal_email_address #=> String
    #   resp.data.items[0].business_email_address #=> String
    #   resp.data.items[0].address #=> Types::Address
    #   resp.data.items[0].address.address1 #=> String
    #   resp.data.items[0].address.address2 #=> String
    #   resp.data.items[0].address.address3 #=> String
    #   resp.data.items[0].address.address4 #=> String
    #   resp.data.items[0].address.city #=> String
    #   resp.data.items[0].address.county #=> String
    #   resp.data.items[0].address.state #=> String
    #   resp.data.items[0].address.province #=> String
    #   resp.data.items[0].address.country #=> String
    #   resp.data.items[0].address.postal_code #=> String
    #   resp.data.items[0].shipping_address #=> Types::Address
    #   resp.data.items[0].mailing_address #=> Types::Address
    #   resp.data.items[0].billing_address #=> Types::Address
    #   resp.data.items[0].attributes #=> Hash<String, String>
    #   resp.data.items[0].attributes['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def search_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchProfiles
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::SearchProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchProfiles,
        stubs: @stubs,
        params_class: Params::SearchProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified Amazon Connect Customer Profiles
    #          resource. Tags can help you organize and categorize your resources. You can also use them
    #          to scope user permissions by granting a user permission to access or change only resources
    #          with certain tag values. In Connect Customer Profiles, domains, profile object types, and
    #          integrations can be tagged.</p>
    #          <p>Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of
    #          characters.</p>
    #          <p>You can use the TagResource action with a resource that already has tags. If you specify
    #          a new tag key, this tag is appended to the list of tags associated with the resource. If
    #          you specify a tag key that is already associated with the resource, the new tag value that
    #          you specify replaces the previous value for that tag.</p>
    #          <p>You can associate as many as 50 tags with a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that you're adding tags to.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Removes one or more tags from the specified Amazon Connect Customer Profiles resource. In Connect
    #          Customer Profiles, domains, profile object types, and integrations can be tagged.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource from which you are removing tags.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Updates the properties of a domain, including creating or selecting a dead letter queue
    #          or an encryption key.</p>
    #          <p>After a domain is created, the name can’t be changed.</p>
    #          <p>Use this API or <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html">CreateDomain</a> to
    #          enable <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">identity
    #             resolution</a>: set <code>Matching</code> to true. </p>
    #          <p>To prevent cross-service impersonation when you call this API, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html">Cross-service confused deputy prevention</a> for sample policies that you should
    #          apply. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [Integer] :default_expiration_days
    #   <p>The default number of days until the data within the domain expires.</p>
    #
    # @option params [String] :default_encryption_key
    #   <p>The default encryption key, which is an AWS managed key, is used when no specific type
    #            of encryption key is specified. It is used to encrypt all data before it is placed in
    #            permanent or semi-permanent storage. If specified as an empty string, it will clear any
    #            existing value.</p>
    #
    # @option params [String] :dead_letter_queue_url
    #   <p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
    #            ingesting data from third party applications. If specified as an empty string, it will
    #            clear any existing value. You must set up a policy on the DeadLetterQueue for the
    #            SendMessage operation to enable Amazon Connect Customer Profiles to send messages to the
    #            DeadLetterQueue.</p>
    #
    # @option params [MatchingRequest] :matching
    #   <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    #   batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #            <p>After the Identity Resolution Job completes, use the
    #   <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    #   API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    #   S3.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::UpdateDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain(
    #     domain_name: 'DomainName', # required
    #     default_expiration_days: 1,
    #     default_encryption_key: 'DefaultEncryptionKey',
    #     dead_letter_queue_url: 'DeadLetterQueueUrl',
    #     matching: {
    #       enabled: false, # required
    #       job_schedule: {
    #         day_of_the_week: 'SUNDAY', # required - accepts ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]
    #         time: 'Time' # required
    #       },
    #       auto_merging: {
    #         enabled: false, # required
    #         consolidation: {
    #           matching_attributes_list: [
    #             [
    #               'member'
    #             ]
    #           ] # required
    #         },
    #         conflict_resolution: {
    #           conflict_resolving_model: 'RECENCY', # required - accepts ["RECENCY", "SOURCE"]
    #           source_name: 'SourceName'
    #         }
    #       },
    #       exporting_config: {
    #         s3_exporting: {
    #           s3_bucket_name: 'S3BucketName', # required
    #           s3_key_name: 'S3KeyName'
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
    #   resp.data #=> Types::UpdateDomainOutput
    #   resp.data.domain_name #=> String
    #   resp.data.default_expiration_days #=> Integer
    #   resp.data.default_encryption_key #=> String
    #   resp.data.dead_letter_queue_url #=> String
    #   resp.data.matching #=> Types::MatchingResponse
    #   resp.data.matching.enabled #=> Boolean
    #   resp.data.matching.job_schedule #=> Types::JobSchedule
    #   resp.data.matching.job_schedule.day_of_the_week #=> String, one of ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]
    #   resp.data.matching.job_schedule.time #=> String
    #   resp.data.matching.auto_merging #=> Types::AutoMerging
    #   resp.data.matching.auto_merging.enabled #=> Boolean
    #   resp.data.matching.auto_merging.consolidation #=> Types::Consolidation
    #   resp.data.matching.auto_merging.consolidation.matching_attributes_list #=> Array<Array<String>>
    #   resp.data.matching.auto_merging.consolidation.matching_attributes_list[0] #=> Array<String>
    #   resp.data.matching.auto_merging.consolidation.matching_attributes_list[0][0] #=> String
    #   resp.data.matching.auto_merging.conflict_resolution #=> Types::ConflictResolution
    #   resp.data.matching.auto_merging.conflict_resolution.conflict_resolving_model #=> String, one of ["RECENCY", "SOURCE"]
    #   resp.data.matching.auto_merging.conflict_resolution.source_name #=> String
    #   resp.data.matching.exporting_config #=> Types::ExportingConfig
    #   resp.data.matching.exporting_config.s3_exporting #=> Types::S3ExportingConfig
    #   resp.data.matching.exporting_config.s3_exporting.s3_bucket_name #=> String
    #   resp.data.matching.exporting_config.s3_exporting.s3_key_name #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDomain,
        stubs: @stubs,
        params_class: Params::UpdateDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the properties of a profile. The ProfileId is required for updating a customer
    #          profile.</p>
    #          <p>When calling the UpdateProfile API, specifying an empty string value means that any
    #          existing value will be removed. Not specifying a string value means that any value already
    #          there will be kept.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProfileInput}.
    #
    # @option params [String] :domain_name
    #   <p>The unique name of the domain.</p>
    #
    # @option params [String] :profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #
    # @option params [String] :additional_information
    #   <p>Any additional information relevant to the customer’s profile.</p>
    #
    # @option params [String] :account_number
    #   <p>A unique account number that you have given to the customer.</p>
    #
    # @option params [String] :party_type
    #   <p>The type of profile used to describe the customer.</p>
    #
    # @option params [String] :business_name
    #   <p>The name of the customer’s business.</p>
    #
    # @option params [String] :first_name
    #   <p>The customer’s first name.</p>
    #
    # @option params [String] :middle_name
    #   <p>The customer’s middle name.</p>
    #
    # @option params [String] :last_name
    #   <p>The customer’s last name.</p>
    #
    # @option params [String] :birth_date
    #   <p>The customer’s birth date. </p>
    #
    # @option params [String] :gender
    #   <p>The gender with which the customer identifies. </p>
    #
    # @option params [String] :phone_number
    #   <p>The customer’s phone number, which has not been specified as a mobile, home, or business
    #            number. </p>
    #
    # @option params [String] :mobile_phone_number
    #   <p>The customer’s mobile phone number.</p>
    #
    # @option params [String] :home_phone_number
    #   <p>The customer’s home phone number.</p>
    #
    # @option params [String] :business_phone_number
    #   <p>The customer’s business phone number.</p>
    #
    # @option params [String] :email_address
    #   <p>The customer’s email address, which has not been specified as a personal or business
    #            address. </p>
    #
    # @option params [String] :personal_email_address
    #   <p>The customer’s personal email address.</p>
    #
    # @option params [String] :business_email_address
    #   <p>The customer’s business email address.</p>
    #
    # @option params [UpdateAddress] :address
    #   <p>A generic address associated with the customer that is not mailing, shipping, or
    #            billing.</p>
    #
    # @option params [UpdateAddress] :shipping_address
    #   <p>The customer’s shipping address.</p>
    #
    # @option params [UpdateAddress] :mailing_address
    #   <p>The customer’s mailing address.</p>
    #
    # @option params [UpdateAddress] :billing_address
    #   <p>The customer’s billing address.</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>A key value pair of attributes of a customer profile.</p>
    #
    # @return [Types::UpdateProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profile(
    #     domain_name: 'DomainName', # required
    #     profile_id: 'ProfileId', # required
    #     additional_information: 'AdditionalInformation',
    #     account_number: 'AccountNumber',
    #     party_type: 'INDIVIDUAL', # accepts ["INDIVIDUAL", "BUSINESS", "OTHER"]
    #     business_name: 'BusinessName',
    #     first_name: 'FirstName',
    #     middle_name: 'MiddleName',
    #     last_name: 'LastName',
    #     birth_date: 'BirthDate',
    #     gender: 'MALE', # accepts ["MALE", "FEMALE", "UNSPECIFIED"]
    #     phone_number: 'PhoneNumber',
    #     mobile_phone_number: 'MobilePhoneNumber',
    #     home_phone_number: 'HomePhoneNumber',
    #     business_phone_number: 'BusinessPhoneNumber',
    #     email_address: 'EmailAddress',
    #     personal_email_address: 'PersonalEmailAddress',
    #     business_email_address: 'BusinessEmailAddress',
    #     address: {
    #       address1: 'Address1',
    #       address2: 'Address2',
    #       address3: 'Address3',
    #       address4: 'Address4',
    #       city: 'City',
    #       county: 'County',
    #       state: 'State',
    #       province: 'Province',
    #       country: 'Country',
    #       postal_code: 'PostalCode'
    #     },
    #     attributes: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProfileOutput
    #   resp.data.profile_id #=> String
    #
    def update_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::InternalServerException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProfile,
        stubs: @stubs,
        params_class: Params::UpdateProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_profile
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
