# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CloudTrail
  # An API client for CloudTrail_20131101
  # See {#initialize} for a full list of supported configuration options
  # <fullname>CloudTrail</fullname>
  #          <p>This is the CloudTrail API Reference. It provides descriptions of actions, data types, common parameters, and common errors for CloudTrail.</p>
  #          <p>CloudTrail is a web service that records Amazon Web Services API calls for your Amazon Web Services account and delivers log files to an Amazon S3 bucket.
  #          The recorded information includes the identity of the user, the start time of the Amazon Web Services API call, the source IP address, the request parameters, and the response elements returned by the service.</p>
  #
  #          <note>
  #             <p>As an alternative to the API,
  #             you can use one of the Amazon Web Services SDKs, which consist of libraries and sample code for various
  #          programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs
  #          provide programmatic access to CloudTrail. For example, the SDKs
  #          handle cryptographically signing requests, managing errors, and retrying requests
  #          automatically. For more information about the Amazon Web Services SDKs, including how to download and install
  #             them, see <a href="http://aws.amazon.com/tools/">Tools to Build on Amazon Web Services</a>.</p>
  #          </note>
  #          <p>See the <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html">CloudTrail User
  #          Guide</a> for information about the data that is included with each Amazon Web Services API call listed in the log files.</p>
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
    def initialize(config = AWS::SDK::CloudTrail::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds one or more tags to a trail or event data store, up to a limit of 50. Overwrites an
    #          existing tag's value when a new value is specified for an existing tag key.
    #          Tag key names must be unique for a trail; you cannot have two keys with the same name but
    #          different values.
    #           If you specify a key without a value, the tag will be created with the specified key and a
    #           value of null.
    #           You can tag a trail or event data store that applies to all Amazon Web Services Regions
    #          only from the Region in which the trail or event data store was created (also known as its
    #          home region).</p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsInput}.
    #
    # @option params [String] :resource_id
    #   <p>Specifies the ARN of the trail or event data store to which one or more tags will be added. The format of a trail ARN is:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    # @option params [Array<Tag>] :tags_list
    #   <p>Contains a list of tags, up to a limit of 50</p>
    #
    # @return [Types::AddTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags(
    #     resource_id: 'ResourceId', # required
    #     tags_list: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddTagsOutput
    #
    def add_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::NotOrganizationMasterAccountException, Errors::InvalidTagParameterException, Errors::InvalidTrailNameException, Errors::ResourceNotFoundException, Errors::EventDataStoreNotFoundException, Errors::InactiveEventDataStoreException, Errors::OperationNotPermittedException, Errors::TagsLimitExceededException, Errors::UnsupportedOperationException, Errors::ResourceTypeNotSupportedException, Errors::CloudTrailARNInvalidException]),
        data_parser: Parsers::AddTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddTags,
        stubs: @stubs,
        params_class: Params::AddTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels a query if the query is not in a terminated state, such as <code>CANCELLED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or <code>FINISHED</code>. You must specify an ARN value for <code>EventDataStore</code>.
    #          The ID of the query that you want to cancel is also required. When you run <code>CancelQuery</code>, the query status might
    #          show as <code>CANCELLED</code> even if the operation is not yet finished.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelQueryInput}.
    #
    # @option params [String] :event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of an event data store on which the specified query is running.</p>
    #
    # @option params [String] :query_id
    #   <p>The ID of the query that you want to cancel. The <code>QueryId</code> comes from the response of a <code>StartQuery</code>
    #         operation.</p>
    #
    # @return [Types::CancelQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_query(
    #     event_data_store: 'EventDataStore', # required
    #     query_id: 'QueryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelQueryOutput
    #   resp.data.query_id #=> String
    #   resp.data.query_status #=> String, one of ["QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"]
    #
    def cancel_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelQuery
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::InactiveQueryException, Errors::EventDataStoreNotFoundException, Errors::InvalidParameterException, Errors::QueryIdNotFoundException, Errors::InactiveEventDataStoreException, Errors::OperationNotPermittedException, Errors::EventDataStoreARNInvalidException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::CancelQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelQuery,
        stubs: @stubs,
        params_class: Params::CancelQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new event data store.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEventDataStoreInput}.
    #
    # @option params [String] :name
    #   <p>The name of the event data store.</p>
    #
    # @option params [Array<AdvancedEventSelector>] :advanced_event_selectors
    #   <p>The advanced event selectors to use to select the events for the data store. For more information about how to use advanced event
    #            selectors, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced">Log events by using advanced event selectors</a> in the CloudTrail
    #            User Guide.</p>
    #
    # @option params [Boolean] :multi_region_enabled
    #   <p>Specifies whether the event data store includes events from all regions, or only from the region in which the event data store
    #            is created.</p>
    #
    # @option params [Boolean] :organization_enabled
    #   <p>Specifies whether an event data store collects events logged for an organization in Organizations.</p>
    #
    # @option params [Integer] :retention_period
    #   <p>The retention period of the event data store, in days. You can set a retention period of up to 2555 days,
    #         the equivalent of seven years.</p>
    #
    # @option params [Boolean] :termination_protection_enabled
    #   <p>Specifies whether termination protection is enabled for the event data store. If termination protection is enabled, you
    #         cannot delete the event data store until termination protection is disabled.</p>
    #
    # @option params [Array<Tag>] :tags_list
    #   <p>A list of tags.</p>
    #
    # @return [Types::CreateEventDataStoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_data_store(
    #     name: 'Name', # required
    #     advanced_event_selectors: [
    #       {
    #         name: 'Name',
    #         field_selectors: [
    #           {
    #             field: 'Field', # required
    #             equals: [
    #               'member'
    #             ],
    #           }
    #         ] # required
    #       }
    #     ],
    #     multi_region_enabled: false,
    #     organization_enabled: false,
    #     retention_period: 1,
    #     termination_protection_enabled: false,
    #     tags_list: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEventDataStoreOutput
    #   resp.data.event_data_store_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["CREATED", "ENABLED", "PENDING_DELETION"]
    #   resp.data.advanced_event_selectors #=> Array<AdvancedEventSelector>
    #   resp.data.advanced_event_selectors[0] #=> Types::AdvancedEventSelector
    #   resp.data.advanced_event_selectors[0].name #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors #=> Array<AdvancedFieldSelector>
    #   resp.data.advanced_event_selectors[0].field_selectors[0] #=> Types::AdvancedFieldSelector
    #   resp.data.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors[0].equals #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array<String>
    #   resp.data.multi_region_enabled #=> Boolean
    #   resp.data.organization_enabled #=> Boolean
    #   resp.data.retention_period #=> Integer
    #   resp.data.termination_protection_enabled #=> Boolean
    #   resp.data.tags_list #=> Array<Tag>
    #   resp.data.tags_list[0] #=> Types::Tag
    #   resp.data.tags_list[0].key #=> String
    #   resp.data.tags_list[0].value #=> String
    #   resp.data.created_timestamp #=> Time
    #   resp.data.updated_timestamp #=> Time
    #
    def create_event_data_store(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEventDataStoreInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEventDataStoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEventDataStore
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::NotOrganizationMasterAccountException, Errors::EventDataStoreAlreadyExistsException, Errors::InvalidTagParameterException, Errors::OperationNotPermittedException, Errors::OrganizationsNotInUseException, Errors::UnsupportedOperationException, Errors::CloudTrailAccessNotEnabledException, Errors::EventDataStoreMaxLimitExceededException, Errors::OrganizationNotInAllFeaturesModeException, Errors::InvalidParameterException, Errors::InsufficientDependencyServiceAccessPermissionException]),
        data_parser: Parsers::CreateEventDataStore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEventDataStore,
        stubs: @stubs,
        params_class: Params::CreateEventDataStoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_event_data_store
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket.
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateTrailInput}.
    #
    # @option params [String] :name
    #   <p>Specifies the name of the trail. The name must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
    #               and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :s3_bucket_name
    #   <p>Specifies the name of the Amazon S3 bucket designated for publishing log files. See <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html">Amazon S3 Bucket Naming Requirements</a>.</p>
    #
    # @option params [String] :s3_key_prefix
    #   <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated
    #            for log file delivery. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>. The maximum length is 200 characters.</p>
    #
    # @option params [String] :sns_topic_name
    #   <p>Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.</p>
    #
    # @option params [Boolean] :include_global_service_events
    #   <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
    #
    # @option params [Boolean] :is_multi_region_trail
    #   <p>Specifies whether the trail is created in the current region or in all regions. The default is false, which creates a trail only in the region where you are signed in. As a best practice, consider
    #         creating trails that log events in all regions.</p>
    #
    # @option params [Boolean] :enable_log_file_validation
    #   <p>Specifies whether log file integrity validation is enabled. The default is false.</p>
    #            <note>
    #               <p>When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail does
    #               not create digest files for log files that were delivered during a period in which log file integrity validation was disabled.
    #               For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable
    #               it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on
    #               January 10. The same applies whenever you stop CloudTrail logging or delete a trail.</p>
    #            </note>
    #
    # @option params [String] :cloud_watch_logs_log_group_arn
    #   <p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group
    #            to which CloudTrail logs will be delivered. Not required unless you specify <code>CloudWatchLogsRoleArn</code>.</p>
    #
    # @option params [String] :cloud_watch_logs_role_arn
    #   <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The
    #            value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully
    #            specified ARN to a key, or a globally unique identifier.</p>
    #            <p>CloudTrail also supports KMS multi-Region keys. For more information about multi-Region keys,
    #            see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Using multi-Region keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>Examples:</p>
    #            <ul>
    #               <li>
    #                  <p>alias/MyAliasName</p>
    #               </li>
    #               <li>
    #                  <p>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</p>
    #               </li>
    #               <li>
    #                  <p>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</p>
    #               </li>
    #               <li>
    #                  <p>12345678-1234-1234-1234-123456789012</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :is_organization_trail
    #   <p>Specifies whether the trail is created for all accounts in an organization in Organizations, or only for the current Amazon Web Services account.
    #            The default is false, and cannot be true unless the call is made on behalf of an Amazon Web Services account that is the management account for an organization in
    #            Organizations.</p>
    #
    # @option params [Array<Tag>] :tags_list
    #   <p>A list of tags.</p>
    #
    # @return [Types::CreateTrailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_trail(
    #     name: 'Name', # required
    #     s3_bucket_name: 'S3BucketName', # required
    #     s3_key_prefix: 'S3KeyPrefix',
    #     sns_topic_name: 'SnsTopicName',
    #     include_global_service_events: false,
    #     is_multi_region_trail: false,
    #     enable_log_file_validation: false,
    #     cloud_watch_logs_log_group_arn: 'CloudWatchLogsLogGroupArn',
    #     cloud_watch_logs_role_arn: 'CloudWatchLogsRoleArn',
    #     kms_key_id: 'KmsKeyId',
    #     is_organization_trail: false,
    #     tags_list: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTrailOutput
    #   resp.data.name #=> String
    #   resp.data.s3_bucket_name #=> String
    #   resp.data.s3_key_prefix #=> String
    #   resp.data.sns_topic_name #=> String
    #   resp.data.sns_topic_arn #=> String
    #   resp.data.include_global_service_events #=> Boolean
    #   resp.data.is_multi_region_trail #=> Boolean
    #   resp.data.trail_arn #=> String
    #   resp.data.log_file_validation_enabled #=> Boolean
    #   resp.data.cloud_watch_logs_log_group_arn #=> String
    #   resp.data.cloud_watch_logs_role_arn #=> String
    #   resp.data.kms_key_id #=> String
    #   resp.data.is_organization_trail #=> Boolean
    #
    def create_trail(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTrailInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTrailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTrail
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::TrailNotProvidedException, Errors::NotOrganizationMasterAccountException, Errors::KmsKeyDisabledException, Errors::InvalidTagParameterException, Errors::InvalidTrailNameException, Errors::OrganizationsNotInUseException, Errors::UnsupportedOperationException, Errors::InvalidS3BucketNameException, Errors::InsufficientEncryptionPolicyException, Errors::CloudTrailAccessNotEnabledException, Errors::InsufficientS3BucketPolicyException, Errors::InvalidCloudWatchLogsLogGroupArnException, Errors::InvalidParameterCombinationException, Errors::InsufficientSnsTopicPolicyException, Errors::InvalidS3PrefixException, Errors::InvalidKmsKeyIdException, Errors::OperationNotPermittedException, Errors::InvalidSnsTopicNameException, Errors::InvalidCloudWatchLogsRoleArnException, Errors::MaximumNumberOfTrailsExceededException, Errors::S3BucketDoesNotExistException, Errors::KmsException, Errors::TrailAlreadyExistsException, Errors::OrganizationNotInAllFeaturesModeException, Errors::CloudTrailInvalidClientTokenIdException, Errors::CloudWatchLogsDeliveryUnavailableException, Errors::InsufficientDependencyServiceAccessPermissionException, Errors::KmsKeyNotFoundException]),
        data_parser: Parsers::CreateTrail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTrail,
        stubs: @stubs,
        params_class: Params::CreateTrailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_trail
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the event data store specified by <code>EventDataStore</code>, which accepts an event data store ARN.
    #          After you run <code>DeleteEventDataStore</code>, the event data store enters a <code>PENDING_DELETION</code> state, and is automatically deleted after a wait period of
    #          seven days. <code>TerminationProtectionEnabled</code> must be set to <code>False</code> on the event data store; this
    #          operation cannot work if <code>TerminationProtectionEnabled</code> is <code>True</code>.</p>
    #          <p>After you run <code>DeleteEventDataStore</code> on an event data store, you cannot run <code>ListQueries</code>,
    #          <code>DescribeQuery</code>, or <code>GetQueryResults</code> on queries that are using an event data store in a
    #          <code>PENDING_DELETION</code> state. An event data store in the <code>PENDING_DELETION</code> state does not incur costs.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventDataStoreInput}.
    #
    # @option params [String] :event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of the event data store to delete.</p>
    #
    # @return [Types::DeleteEventDataStoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_data_store(
    #     event_data_store: 'EventDataStore' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEventDataStoreOutput
    #
    def delete_event_data_store(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEventDataStoreInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEventDataStoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEventDataStore
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotOrganizationMasterAccountException, Errors::EventDataStoreNotFoundException, Errors::EventDataStoreTerminationProtectedException, Errors::InvalidParameterException, Errors::OperationNotPermittedException, Errors::EventDataStoreARNInvalidException, Errors::UnsupportedOperationException, Errors::InsufficientDependencyServiceAccessPermissionException]),
        data_parser: Parsers::DeleteEventDataStore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEventDataStore,
        stubs: @stubs,
        params_class: Params::DeleteEventDataStoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_event_data_store
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a trail. This operation must be called from the region in which the trail was
    #          created. <code>DeleteTrail</code> cannot be called on the shadow trails (replicated trails
    #          in other regions) of a trail that is enabled in all regions.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTrailInput}.
    #
    # @option params [String] :name
    #   <p>Specifies the name or the CloudTrail ARN of the trail to be deleted. The following is the format of a
    #            trail ARN.
    #            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    # @return [Types::DeleteTrailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_trail(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTrailOutput
    #
    def delete_trail(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTrailInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTrailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTrail
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::NotOrganizationMasterAccountException, Errors::InvalidTrailNameException, Errors::InvalidHomeRegionException, Errors::TrailNotFoundException, Errors::OperationNotPermittedException, Errors::UnsupportedOperationException, Errors::InsufficientDependencyServiceAccessPermissionException]),
        data_parser: Parsers::DeleteTrail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTrail,
        stubs: @stubs,
        params_class: Params::DeleteTrailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_trail
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata about a query, including query run time in milliseconds, number of events scanned and matched, and query
    #          status. You must specify an ARN for <code>EventDataStore</code>, and a value for <code>QueryID</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeQueryInput}.
    #
    # @option params [String] :event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of an event data store on which the specified query was run.</p>
    #
    # @option params [String] :query_id
    #   <p>The query ID.</p>
    #
    # @return [Types::DescribeQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_query(
    #     event_data_store: 'EventDataStore', # required
    #     query_id: 'QueryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeQueryOutput
    #   resp.data.query_id #=> String
    #   resp.data.query_string #=> String
    #   resp.data.query_status #=> String, one of ["QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"]
    #   resp.data.query_statistics #=> Types::QueryStatisticsForDescribeQuery
    #   resp.data.query_statistics.events_matched #=> Integer
    #   resp.data.query_statistics.events_scanned #=> Integer
    #   resp.data.query_statistics.bytes_scanned #=> Integer
    #   resp.data.query_statistics.execution_time_in_millis #=> Integer
    #   resp.data.query_statistics.creation_time #=> Time
    #   resp.data.error_message #=> String
    #
    def describe_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeQuery
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EventDataStoreNotFoundException, Errors::InvalidParameterException, Errors::QueryIdNotFoundException, Errors::InactiveEventDataStoreException, Errors::OperationNotPermittedException, Errors::EventDataStoreARNInvalidException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::DescribeQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeQuery,
        stubs: @stubs,
        params_class: Params::DescribeQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves settings for one or more trails associated with the current region for your account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTrailsInput}.
    #
    # @option params [Array<String>] :trail_name_list
    #   <p>Specifies a list of trail names, trail ARNs, or both, of the trails to describe. The format of a trail ARN is:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    #            <p>If an empty list is specified, information for the trail in the current region is returned.</p>
    #            <ul>
    #               <li>
    #                  <p>If an empty list is specified and <code>IncludeShadowTrails</code> is false, then
    #               information for all trails in the current region is returned.</p>
    #               </li>
    #               <li>
    #                  <p>If an empty list is specified and IncludeShadowTrails is null or true, then information for all trails in the current region and any associated shadow trails in other regions is returned.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If one or more trail names are specified, information is returned only if the names match the names of trails belonging only to the current region. To return information about a trail in another region, you must specify its trail ARN.</p>
    #            </note>
    #
    # @option params [Boolean] :include_shadow_trails
    #   <p>Specifies whether to include shadow trails in the response. A shadow trail is the replication in a region of a trail that was created in a different region,
    #            or in the case of an organization trail, the replication of an organization trail in member accounts. If you do not include shadow trails, organization trails in a member account
    #            and region replication trails will not be returned. The default is true.</p>
    #
    # @return [Types::DescribeTrailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_trails(
    #     trail_name_list: [
    #       'member'
    #     ],
    #     include_shadow_trails: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTrailsOutput
    #   resp.data.trail_list #=> Array<Trail>
    #   resp.data.trail_list[0] #=> Types::Trail
    #   resp.data.trail_list[0].name #=> String
    #   resp.data.trail_list[0].s3_bucket_name #=> String
    #   resp.data.trail_list[0].s3_key_prefix #=> String
    #   resp.data.trail_list[0].sns_topic_name #=> String
    #   resp.data.trail_list[0].sns_topic_arn #=> String
    #   resp.data.trail_list[0].include_global_service_events #=> Boolean
    #   resp.data.trail_list[0].is_multi_region_trail #=> Boolean
    #   resp.data.trail_list[0].home_region #=> String
    #   resp.data.trail_list[0].trail_arn #=> String
    #   resp.data.trail_list[0].log_file_validation_enabled #=> Boolean
    #   resp.data.trail_list[0].cloud_watch_logs_log_group_arn #=> String
    #   resp.data.trail_list[0].cloud_watch_logs_role_arn #=> String
    #   resp.data.trail_list[0].kms_key_id #=> String
    #   resp.data.trail_list[0].has_custom_event_selectors #=> Boolean
    #   resp.data.trail_list[0].has_insight_selectors #=> Boolean
    #   resp.data.trail_list[0].is_organization_trail #=> Boolean
    #
    def describe_trails(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTrailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTrailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTrails
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTrailNameException, Errors::OperationNotPermittedException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::DescribeTrails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTrails,
        stubs: @stubs,
        params_class: Params::DescribeTrailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_trails
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about an event data store specified as either an ARN or the ID portion of the ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEventDataStoreInput}.
    #
    # @option params [String] :event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the event data store about which you want information.</p>
    #
    # @return [Types::GetEventDataStoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_data_store(
    #     event_data_store: 'EventDataStore' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEventDataStoreOutput
    #   resp.data.event_data_store_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["CREATED", "ENABLED", "PENDING_DELETION"]
    #   resp.data.advanced_event_selectors #=> Array<AdvancedEventSelector>
    #   resp.data.advanced_event_selectors[0] #=> Types::AdvancedEventSelector
    #   resp.data.advanced_event_selectors[0].name #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors #=> Array<AdvancedFieldSelector>
    #   resp.data.advanced_event_selectors[0].field_selectors[0] #=> Types::AdvancedFieldSelector
    #   resp.data.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors[0].equals #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array<String>
    #   resp.data.multi_region_enabled #=> Boolean
    #   resp.data.organization_enabled #=> Boolean
    #   resp.data.retention_period #=> Integer
    #   resp.data.termination_protection_enabled #=> Boolean
    #   resp.data.created_timestamp #=> Time
    #   resp.data.updated_timestamp #=> Time
    #
    def get_event_data_store(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEventDataStoreInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEventDataStoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEventDataStore
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EventDataStoreNotFoundException, Errors::InvalidParameterException, Errors::OperationNotPermittedException, Errors::EventDataStoreARNInvalidException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::GetEventDataStore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEventDataStore,
        stubs: @stubs,
        params_class: Params::GetEventDataStoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_event_data_store
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the settings for the event selectors that you configured for your trail.
    #          The information returned for your event selectors includes the following:</p>
    #          <ul>
    #             <li>
    #                <p>If your event selector includes read-only events, write-only events, or
    #             all events. This applies to both management events and data events.</p>
    #             </li>
    #             <li>
    #                <p>If your event selector includes management events.</p>
    #             </li>
    #             <li>
    #                <p>If your event selector includes data events, the resources on which you are logging data
    #                events.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html">Logging Data and Management Events for Trails
    #       </a> in the <i>CloudTrail User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEventSelectorsInput}.
    #
    # @option params [String] :trail_name
    #   <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the
    #            string must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
    #                     and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If you specify a trail ARN, it must be in the format:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    # @return [Types::GetEventSelectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_selectors(
    #     trail_name: 'TrailName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEventSelectorsOutput
    #   resp.data.trail_arn #=> String
    #   resp.data.event_selectors #=> Array<EventSelector>
    #   resp.data.event_selectors[0] #=> Types::EventSelector
    #   resp.data.event_selectors[0].read_write_type #=> String, one of ["ReadOnly", "WriteOnly", "All"]
    #   resp.data.event_selectors[0].include_management_events #=> Boolean
    #   resp.data.event_selectors[0].data_resources #=> Array<DataResource>
    #   resp.data.event_selectors[0].data_resources[0] #=> Types::DataResource
    #   resp.data.event_selectors[0].data_resources[0].type #=> String
    #   resp.data.event_selectors[0].data_resources[0].values #=> Array<String>
    #   resp.data.event_selectors[0].data_resources[0].values[0] #=> String
    #   resp.data.event_selectors[0].exclude_management_event_sources #=> Array<String>
    #   resp.data.event_selectors[0].exclude_management_event_sources[0] #=> String
    #   resp.data.advanced_event_selectors #=> Array<AdvancedEventSelector>
    #   resp.data.advanced_event_selectors[0] #=> Types::AdvancedEventSelector
    #   resp.data.advanced_event_selectors[0].name #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors #=> Array<AdvancedFieldSelector>
    #   resp.data.advanced_event_selectors[0].field_selectors[0] #=> Types::AdvancedFieldSelector
    #   resp.data.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors[0].equals #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array<String>
    #
    def get_event_selectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEventSelectorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEventSelectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEventSelectors
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTrailNameException, Errors::TrailNotFoundException, Errors::OperationNotPermittedException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::GetEventSelectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEventSelectors,
        stubs: @stubs,
        params_class: Params::GetEventSelectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_event_selectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the settings for the Insights event selectors that you configured for your trail. <code>GetInsightSelectors</code> shows
    #          if CloudTrail Insights event logging is enabled on the trail, and if it is, which insight types are enabled.
    #          If you run <code>GetInsightSelectors</code> on a trail that does not have Insights events enabled, the operation throws the exception
    #          <code>InsightNotEnabledException</code>
    #          </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html">Logging CloudTrail Insights Events for Trails
    #       </a> in the <i>CloudTrail User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInsightSelectorsInput}.
    #
    # @option params [String] :trail_name
    #   <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the
    #            string must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
    #                  and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If you specify a trail ARN, it must be in the format:</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    # @return [Types::GetInsightSelectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insight_selectors(
    #     trail_name: 'TrailName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInsightSelectorsOutput
    #   resp.data.trail_arn #=> String
    #   resp.data.insight_selectors #=> Array<InsightSelector>
    #   resp.data.insight_selectors[0] #=> Types::InsightSelector
    #   resp.data.insight_selectors[0].insight_type #=> String, one of ["ApiCallRateInsight", "ApiErrorRateInsight"]
    #
    def get_insight_selectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInsightSelectorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInsightSelectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInsightSelectors
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsightNotEnabledException, Errors::InvalidTrailNameException, Errors::TrailNotFoundException, Errors::OperationNotPermittedException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::GetInsightSelectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInsightSelectors,
        stubs: @stubs,
        params_class: Params::GetInsightSelectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_insight_selectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets event data results of a query. You must specify the <code>QueryID</code> value returned by the <code>StartQuery</code>
    #          operation, and an ARN for <code>EventDataStore</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetQueryResultsInput}.
    #
    # @option params [String] :event_data_store
    #   <p>The ARN (or ID suffix of the ARN) of the event data store against which the query was run.</p>
    #
    # @option params [String] :query_id
    #   <p>The ID of the query for which you want to get results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token you can use to get the next page of query results.</p>
    #
    # @option params [Integer] :max_query_results
    #   <p>The maximum number of query results to display on a single page.</p>
    #
    # @return [Types::GetQueryResultsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_results(
    #     event_data_store: 'EventDataStore', # required
    #     query_id: 'QueryId', # required
    #     next_token: 'NextToken',
    #     max_query_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetQueryResultsOutput
    #   resp.data.query_status #=> String, one of ["QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"]
    #   resp.data.query_statistics #=> Types::QueryStatistics
    #   resp.data.query_statistics.results_count #=> Integer
    #   resp.data.query_statistics.total_results_count #=> Integer
    #   resp.data.query_statistics.bytes_scanned #=> Integer
    #   resp.data.query_result_rows #=> Array<Array<Hash<String, String>>>
    #   resp.data.query_result_rows[0] #=> Array<Hash<String, String>>
    #   resp.data.query_result_rows[0][0] #=> Hash<String, String>
    #   resp.data.query_result_rows[0][0]['key'] #=> String
    #   resp.data.next_token #=> String
    #   resp.data.error_message #=> String
    #
    def get_query_results(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetQueryResultsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetQueryResultsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetQueryResults
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidMaxResultsException, Errors::EventDataStoreNotFoundException, Errors::InvalidNextTokenException, Errors::InvalidParameterException, Errors::QueryIdNotFoundException, Errors::InactiveEventDataStoreException, Errors::OperationNotPermittedException, Errors::EventDataStoreARNInvalidException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::GetQueryResults
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetQueryResults,
        stubs: @stubs,
        params_class: Params::GetQueryResultsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_query_results
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns settings information for a specified trail.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTrailInput}.
    #
    # @option params [String] :name
    #   <p>The name or the Amazon Resource Name (ARN) of the trail for which you want to retrieve settings information.</p>
    #
    # @return [Types::GetTrailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trail(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTrailOutput
    #   resp.data.trail #=> Types::Trail
    #   resp.data.trail.name #=> String
    #   resp.data.trail.s3_bucket_name #=> String
    #   resp.data.trail.s3_key_prefix #=> String
    #   resp.data.trail.sns_topic_name #=> String
    #   resp.data.trail.sns_topic_arn #=> String
    #   resp.data.trail.include_global_service_events #=> Boolean
    #   resp.data.trail.is_multi_region_trail #=> Boolean
    #   resp.data.trail.home_region #=> String
    #   resp.data.trail.trail_arn #=> String
    #   resp.data.trail.log_file_validation_enabled #=> Boolean
    #   resp.data.trail.cloud_watch_logs_log_group_arn #=> String
    #   resp.data.trail.cloud_watch_logs_role_arn #=> String
    #   resp.data.trail.kms_key_id #=> String
    #   resp.data.trail.has_custom_event_selectors #=> Boolean
    #   resp.data.trail.has_insight_selectors #=> Boolean
    #   resp.data.trail.is_organization_trail #=> Boolean
    #
    def get_trail(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTrailInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTrailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTrail
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTrailNameException, Errors::TrailNotFoundException, Errors::OperationNotPermittedException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::GetTrail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTrail,
        stubs: @stubs,
        params_class: Params::GetTrailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_trail
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a JSON-formatted list of information about the specified trail. Fields include information on delivery errors, Amazon SNS and Amazon S3 errors, and start and stop logging times for each trail. This operation returns trail status from a single region. To return trail status from all regions, you must call the operation on each region.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTrailStatusInput}.
    #
    # @option params [String] :name
    #   <p>Specifies the name or the CloudTrail ARN of the trail for which you are requesting status. To get the status of a
    #            shadow trail (a replication of the trail in another region), you must specify its ARN. The following is the format of a trail ARN.</p>
    #             <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    # @return [Types::GetTrailStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trail_status(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTrailStatusOutput
    #   resp.data.is_logging #=> Boolean
    #   resp.data.latest_delivery_error #=> String
    #   resp.data.latest_notification_error #=> String
    #   resp.data.latest_delivery_time #=> Time
    #   resp.data.latest_notification_time #=> Time
    #   resp.data.start_logging_time #=> Time
    #   resp.data.stop_logging_time #=> Time
    #   resp.data.latest_cloud_watch_logs_delivery_error #=> String
    #   resp.data.latest_cloud_watch_logs_delivery_time #=> Time
    #   resp.data.latest_digest_delivery_time #=> Time
    #   resp.data.latest_digest_delivery_error #=> String
    #   resp.data.latest_delivery_attempt_time #=> String
    #   resp.data.latest_notification_attempt_time #=> String
    #   resp.data.latest_notification_attempt_succeeded #=> String
    #   resp.data.latest_delivery_attempt_succeeded #=> String
    #   resp.data.time_logging_started #=> String
    #   resp.data.time_logging_stopped #=> String
    #
    def get_trail_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTrailStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTrailStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTrailStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTrailNameException, Errors::TrailNotFoundException, Errors::OperationNotPermittedException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::GetTrailStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTrailStatus,
        stubs: @stubs,
        params_class: Params::GetTrailStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_trail_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about all event data stores in the account, in the current region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEventDataStoresInput}.
    #
    # @option params [String] :next_token
    #   <p>A token you can use to get the next page of event data store results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of event data stores to display on a single page.</p>
    #
    # @return [Types::ListEventDataStoresOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_data_stores(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEventDataStoresOutput
    #   resp.data.event_data_stores #=> Array<EventDataStore>
    #   resp.data.event_data_stores[0] #=> Types::EventDataStore
    #   resp.data.event_data_stores[0].event_data_store_arn #=> String
    #   resp.data.event_data_stores[0].name #=> String
    #   resp.data.event_data_stores[0].termination_protection_enabled #=> Boolean
    #   resp.data.event_data_stores[0].status #=> String, one of ["CREATED", "ENABLED", "PENDING_DELETION"]
    #   resp.data.event_data_stores[0].advanced_event_selectors #=> Array<AdvancedEventSelector>
    #   resp.data.event_data_stores[0].advanced_event_selectors[0] #=> Types::AdvancedEventSelector
    #   resp.data.event_data_stores[0].advanced_event_selectors[0].name #=> String
    #   resp.data.event_data_stores[0].advanced_event_selectors[0].field_selectors #=> Array<AdvancedFieldSelector>
    #   resp.data.event_data_stores[0].advanced_event_selectors[0].field_selectors[0] #=> Types::AdvancedFieldSelector
    #   resp.data.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.data.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].equals #=> Array<String>
    #   resp.data.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.data.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].starts_with #=> Array<String>
    #   resp.data.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].ends_with #=> Array<String>
    #   resp.data.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].not_equals #=> Array<String>
    #   resp.data.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array<String>
    #   resp.data.event_data_stores[0].advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array<String>
    #   resp.data.event_data_stores[0].multi_region_enabled #=> Boolean
    #   resp.data.event_data_stores[0].organization_enabled #=> Boolean
    #   resp.data.event_data_stores[0].retention_period #=> Integer
    #   resp.data.event_data_stores[0].created_timestamp #=> Time
    #   resp.data.event_data_stores[0].updated_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_event_data_stores(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEventDataStoresInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEventDataStoresInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEventDataStores
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidMaxResultsException, Errors::InvalidNextTokenException, Errors::OperationNotPermittedException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::ListEventDataStores
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEventDataStores,
        stubs: @stubs,
        params_class: Params::ListEventDataStoresOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_event_data_stores
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.</p>
    #          <note>
    #             <p>CloudTrail uses different private and public key pairs per region. Each digest file is signed with a private key
    #             unique to its region. When you validate a digest file from a specific region, you must look in the same region for its
    #             corresponding public key.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListPublicKeysInput}.
    #
    # @option params [Time] :start_time
    #   <p>Optionally specifies, in UTC, the start of the time range to look up public keys for CloudTrail digest files.
    #            If not specified, the current time is used, and the current public key is returned.</p>
    #
    # @option params [Time] :end_time
    #   <p>Optionally specifies, in UTC, the end of the time range to look up public keys for CloudTrail digest files. If not
    #            specified, the current time is used.</p>
    #
    # @option params [String] :next_token
    #   <p>Reserved for future use.</p>
    #
    # @return [Types::ListPublicKeysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_public_keys(
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPublicKeysOutput
    #   resp.data.public_key_list #=> Array<PublicKey>
    #   resp.data.public_key_list[0] #=> Types::PublicKey
    #   resp.data.public_key_list[0].value #=> String
    #   resp.data.public_key_list[0].validity_start_time #=> Time
    #   resp.data.public_key_list[0].validity_end_time #=> Time
    #   resp.data.public_key_list[0].fingerprint #=> String
    #   resp.data.next_token #=> String
    #
    def list_public_keys(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPublicKeysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPublicKeysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPublicKeys
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTimeRangeException, Errors::InvalidTokenException, Errors::OperationNotPermittedException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::ListPublicKeys
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPublicKeys,
        stubs: @stubs,
        params_class: Params::ListPublicKeysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_public_keys
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of queries and query statuses for the past seven days. You must specify an ARN value for
    #          <code>EventDataStore</code>. Optionally, to shorten the list of results, you can specify a time range,
    #          formatted as timestamps, by adding <code>StartTime</code> and <code>EndTime</code> parameters, and a
    #          <code>QueryStatus</code> value. Valid values for <code>QueryStatus</code> include <code>QUEUED</code>, <code>RUNNING</code>,
    #          <code>FINISHED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or <code>CANCELLED</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListQueriesInput}.
    #
    # @option params [String] :event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of an event data store on which queries were run.</p>
    #
    # @option params [String] :next_token
    #   <p>A token you can use to get the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of queries to show on a page.</p>
    #
    # @option params [Time] :start_time
    #   <p>Use with <code>EndTime</code> to bound a <code>ListQueries</code> request, and limit its results to only those queries run
    #            within a specified time period.</p>
    #
    # @option params [Time] :end_time
    #   <p>Use with <code>StartTime</code> to bound a <code>ListQueries</code> request, and limit its results to only those queries run
    #         within a specified time period.</p>
    #
    # @option params [String] :query_status
    #   <p>The status of queries that you want to return in results. Valid values for <code>QueryStatus</code> include <code>QUEUED</code>, <code>RUNNING</code>,
    #            <code>FINISHED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or <code>CANCELLED</code>.</p>
    #
    # @return [Types::ListQueriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queries(
    #     event_data_store: 'EventDataStore', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     query_status: 'QUEUED' # accepts ["QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListQueriesOutput
    #   resp.data.queries #=> Array<Query>
    #   resp.data.queries[0] #=> Types::Query
    #   resp.data.queries[0].query_id #=> String
    #   resp.data.queries[0].query_status #=> String, one of ["QUEUED", "RUNNING", "FINISHED", "FAILED", "CANCELLED", "TIMED_OUT"]
    #   resp.data.queries[0].creation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_queries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListQueriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListQueriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListQueries
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDateRangeException, Errors::InvalidQueryStatusException, Errors::InvalidMaxResultsException, Errors::EventDataStoreNotFoundException, Errors::InvalidNextTokenException, Errors::InvalidParameterException, Errors::InactiveEventDataStoreException, Errors::OperationNotPermittedException, Errors::EventDataStoreARNInvalidException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::ListQueries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListQueries,
        stubs: @stubs,
        params_class: Params::ListQueriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_queries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for the trail or event data store in the current region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsInput}.
    #
    # @option params [Array<String>] :resource_id_list
    #   <p>Specifies a list of trail and event data store ARNs whose tags will be listed. The list
    #            has a limit of 20 ARNs.</p>
    #
    # @option params [String] :next_token
    #   <p>Reserved for future use.</p>
    #
    # @return [Types::ListTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags(
    #     resource_id_list: [
    #       'member'
    #     ], # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsOutput
    #   resp.data.resource_tag_list #=> Array<ResourceTag>
    #   resp.data.resource_tag_list[0] #=> Types::ResourceTag
    #   resp.data.resource_tag_list[0].resource_id #=> String
    #   resp.data.resource_tag_list[0].tags_list #=> Array<Tag>
    #   resp.data.resource_tag_list[0].tags_list[0] #=> Types::Tag
    #   resp.data.resource_tag_list[0].tags_list[0].key #=> String
    #   resp.data.resource_tag_list[0].tags_list[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTokenException, Errors::InvalidTrailNameException, Errors::ResourceNotFoundException, Errors::ResourceTypeNotSupportedException, Errors::EventDataStoreNotFoundException, Errors::InactiveEventDataStoreException, Errors::OperationNotPermittedException, Errors::UnsupportedOperationException, Errors::CloudTrailARNInvalidException]),
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

    # <p>Lists trails that are in the current account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTrailsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to use to get the next page of results after a previous API call. This token must be passed
    #            in with the same parameters that were specified in the the original call. For example, if the original
    #            call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should
    #            include those same parameters.</p>
    #
    # @return [Types::ListTrailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trails(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTrailsOutput
    #   resp.data.trails #=> Array<TrailInfo>
    #   resp.data.trails[0] #=> Types::TrailInfo
    #   resp.data.trails[0].trail_arn #=> String
    #   resp.data.trails[0].name #=> String
    #   resp.data.trails[0].home_region #=> String
    #   resp.data.next_token #=> String
    #
    def list_trails(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTrailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTrailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTrails
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::ListTrails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTrails,
        stubs: @stubs,
        params_class: Params::ListTrailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_trails
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Looks up <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-management-events">management events</a> or
    #          <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-insights-events">CloudTrail Insights events</a> that are captured by CloudTrail.
    #          You can look up events that occurred in a region within the last 90 days. Lookup supports the following attributes for management events:</p>
    #          <ul>
    #             <li>
    #                <p>Amazon Web Services access key</p>
    #             </li>
    #             <li>
    #                <p>Event ID</p>
    #             </li>
    #             <li>
    #                <p>Event name</p>
    #             </li>
    #             <li>
    #                <p>Event source</p>
    #             </li>
    #             <li>
    #                <p>Read only</p>
    #             </li>
    #             <li>
    #                <p>Resource name</p>
    #             </li>
    #             <li>
    #                <p>Resource type</p>
    #             </li>
    #             <li>
    #                <p>User name</p>
    #             </li>
    #          </ul>
    #          <p>Lookup supports the following attributes for Insights events:</p>
    #          <ul>
    #             <li>
    #                <p>Event ID</p>
    #             </li>
    #             <li>
    #                <p>Event name</p>
    #             </li>
    #             <li>
    #                <p>Event source</p>
    #             </li>
    #          </ul>
    #          <p>All attributes are optional. The default number of results returned is 50, with a
    #          maximum of 50 possible. The response includes a token that you can use to get the next page
    #          of results.</p>
    #          <important>
    #             <p>The rate of lookup requests is limited to two per second, per account, per region. If this
    #             limit is exceeded, a throttling error occurs.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::LookupEventsInput}.
    #
    # @option params [Array<LookupAttribute>] :lookup_attributes
    #   <p>Contains a list of lookup attributes. Currently the list can contain only one item.</p>
    #
    # @option params [Time] :start_time
    #   <p>Specifies that only events that occur after or at the specified time are returned. If the specified start time is after the specified end time, an error is returned.</p>
    #
    # @option params [Time] :end_time
    #   <p>Specifies that only events that occur before or at the specified time are returned. If the specified end time is before the specified start time, an error is returned.</p>
    #
    # @option params [String] :event_category
    #   <p>Specifies the event category. If you do not specify an event category, events of the category are not returned in the response. For example,
    #            if you do not specify <code>insight</code> as the value of <code>EventCategory</code>, no Insights events are returned.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of events to return. Possible values are 1 through 50. The default is 50.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to get the next page of results after a previous API call. This token must be passed in with the same parameters that were specified in the the original call.
    #            For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.</p>
    #
    # @return [Types::LookupEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.lookup_events(
    #     lookup_attributes: [
    #       {
    #         attribute_key: 'EventId', # required - accepts ["EventId", "EventName", "ReadOnly", "Username", "ResourceType", "ResourceName", "EventSource", "AccessKeyId"]
    #         attribute_value: 'AttributeValue' # required
    #       }
    #     ],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     event_category: 'insight', # accepts ["insight"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::LookupEventsOutput
    #   resp.data.events #=> Array<Event>
    #   resp.data.events[0] #=> Types::Event
    #   resp.data.events[0].event_id #=> String
    #   resp.data.events[0].event_name #=> String
    #   resp.data.events[0].read_only #=> String
    #   resp.data.events[0].access_key_id #=> String
    #   resp.data.events[0].event_time #=> Time
    #   resp.data.events[0].event_source #=> String
    #   resp.data.events[0].username #=> String
    #   resp.data.events[0].resources #=> Array<Resource>
    #   resp.data.events[0].resources[0] #=> Types::Resource
    #   resp.data.events[0].resources[0].resource_type #=> String
    #   resp.data.events[0].resources[0].resource_name #=> String
    #   resp.data.events[0].cloud_trail_event #=> String
    #   resp.data.next_token #=> String
    #
    def lookup_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::LookupEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::LookupEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::LookupEvents
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTimeRangeException, Errors::InvalidMaxResultsException, Errors::InvalidLookupAttributesException, Errors::InvalidNextTokenException, Errors::InvalidEventCategoryException, Errors::OperationNotPermittedException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::LookupEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::LookupEvents,
        stubs: @stubs,
        params_class: Params::LookupEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :lookup_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures an event selector or advanced event selectors for your trail.
    #          Use event selectors or advanced event selectors to specify management and data event settings for your trail. By
    #          default, trails created without specific event selectors are configured to log all read and
    #          write management events, and no data events.</p>
    #          <p>When an event occurs in your account, CloudTrail
    #          evaluates the event selectors or advanced event selectors in all trails. For each trail, if the event matches
    #          any event selector, the trail processes and logs the event. If the event doesn't match any event
    #          selector, the trail doesn't log the event.</p>
    #          <p>Example</p>
    #          <ol>
    #             <li>
    #                <p>You create an event selector for a trail and specify that you want
    #                write-only events.</p>
    #             </li>
    #             <li>
    #                <p>The EC2 <code>GetConsoleOutput</code> and <code>RunInstances</code> API
    #                operations occur in your account.</p>
    #             </li>
    #             <li>
    #                <p>CloudTrail evaluates whether the events match your event
    #                selectors.</p>
    #             </li>
    #             <li>
    #                <p>The <code>RunInstances</code> is a write-only event and it matches your
    #                event selector. The trail logs the event.</p>
    #             </li>
    #             <li>
    #                <p>The <code>GetConsoleOutput</code> is a read-only event that doesn't
    #                match your event selector. The trail doesn't log the event.
    #          </p>
    #             </li>
    #          </ol>
    #          <p>The <code>PutEventSelectors</code> operation must be called from the region in which
    #          the trail was created; otherwise, an <code>InvalidHomeRegionException</code> exception is
    #          thrown.</p>
    #          <p>You can configure up to five event selectors for each trail. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html">Logging data and management events for trails
    #       </a> and <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html">Quotas in CloudTrail</a>
    #          in the <i>CloudTrail User Guide</i>.</p>
    #          <p>You can add advanced event selectors, and conditions for your advanced
    #          event selectors, up to a maximum of 500 values for all conditions and selectors on a trail.
    #          You can use either <code>AdvancedEventSelectors</code> or <code>EventSelectors</code>, but not both. If you apply <code>AdvancedEventSelectors</code>
    #          to a trail, any existing <code>EventSelectors</code> are overwritten. For more information about
    #          advanced event selectors, see
    #          <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html">Logging
    #             data events for trails</a> in the <i>CloudTrail User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutEventSelectorsInput}.
    #
    # @option params [String] :trail_name
    #   <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the
    #            string must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
    #                  and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If you specify a trail ARN, it must be in the following format.</p>
    #            <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    # @option params [Array<EventSelector>] :event_selectors
    #   <p>Specifies the settings for your event selectors. You can configure up to five event selectors for a trail.
    #            You can use either <code>EventSelectors</code> or <code>AdvancedEventSelectors</code> in a <code>PutEventSelectors</code> request, but not both.
    #            If you apply <code>EventSelectors</code> to a trail, any existing <code>AdvancedEventSelectors</code> are overwritten.</p>
    #
    # @option params [Array<AdvancedEventSelector>] :advanced_event_selectors
    #   <p>
    #            Specifies the settings for advanced event selectors. You can add advanced event selectors, and conditions for your advanced
    #            event selectors, up to a maximum of 500 values for all conditions and selectors on a trail.
    #            You can use either <code>AdvancedEventSelectors</code> or <code>EventSelectors</code>, but not both. If you apply <code>AdvancedEventSelectors</code>
    #            to a trail, any existing <code>EventSelectors</code> are overwritten. For more information about
    #            advanced event selectors, see
    #            <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html">Logging
    #               data events for trails</a> in the <i>CloudTrail User Guide</i>.
    #         </p>
    #
    # @return [Types::PutEventSelectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_event_selectors(
    #     trail_name: 'TrailName', # required
    #     event_selectors: [
    #       {
    #         read_write_type: 'ReadOnly', # accepts ["ReadOnly", "WriteOnly", "All"]
    #         include_management_events: false,
    #         data_resources: [
    #           {
    #             type: 'Type',
    #             values: [
    #               'member'
    #             ]
    #           }
    #         ],
    #         exclude_management_event_sources: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     advanced_event_selectors: [
    #       {
    #         name: 'Name',
    #         field_selectors: [
    #           {
    #             field: 'Field', # required
    #             equals: [
    #               'member'
    #             ],
    #           }
    #         ] # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutEventSelectorsOutput
    #   resp.data.trail_arn #=> String
    #   resp.data.event_selectors #=> Array<EventSelector>
    #   resp.data.event_selectors[0] #=> Types::EventSelector
    #   resp.data.event_selectors[0].read_write_type #=> String, one of ["ReadOnly", "WriteOnly", "All"]
    #   resp.data.event_selectors[0].include_management_events #=> Boolean
    #   resp.data.event_selectors[0].data_resources #=> Array<DataResource>
    #   resp.data.event_selectors[0].data_resources[0] #=> Types::DataResource
    #   resp.data.event_selectors[0].data_resources[0].type #=> String
    #   resp.data.event_selectors[0].data_resources[0].values #=> Array<String>
    #   resp.data.event_selectors[0].data_resources[0].values[0] #=> String
    #   resp.data.event_selectors[0].exclude_management_event_sources #=> Array<String>
    #   resp.data.event_selectors[0].exclude_management_event_sources[0] #=> String
    #   resp.data.advanced_event_selectors #=> Array<AdvancedEventSelector>
    #   resp.data.advanced_event_selectors[0] #=> Types::AdvancedEventSelector
    #   resp.data.advanced_event_selectors[0].name #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors #=> Array<AdvancedFieldSelector>
    #   resp.data.advanced_event_selectors[0].field_selectors[0] #=> Types::AdvancedFieldSelector
    #   resp.data.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors[0].equals #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array<String>
    #
    def put_event_selectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutEventSelectorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutEventSelectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutEventSelectors
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotOrganizationMasterAccountException, Errors::InvalidTrailNameException, Errors::InvalidHomeRegionException, Errors::TrailNotFoundException, Errors::OperationNotPermittedException, Errors::InvalidEventSelectorsException, Errors::UnsupportedOperationException, Errors::InsufficientDependencyServiceAccessPermissionException]),
        data_parser: Parsers::PutEventSelectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutEventSelectors,
        stubs: @stubs,
        params_class: Params::PutEventSelectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_event_selectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lets you enable Insights event logging by specifying the Insights
    #          selectors that you want to enable on an existing trail. You also use
    #          <code>PutInsightSelectors</code> to turn off Insights event logging, by passing an empty list of insight types.
    #          The valid Insights event types in this release are <code>ApiErrorRateInsight</code> and <code>ApiCallRateInsight</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutInsightSelectorsInput}.
    #
    # @option params [String] :trail_name
    #   <p>The name of the CloudTrail trail for which you want to change or add Insights selectors.</p>
    #
    # @option params [Array<InsightSelector>] :insight_selectors
    #   <p>A JSON string that contains the insight types you want to log on a trail. <code>ApiCallRateInsight</code> and <code>ApiErrorRateInsight</code> are valid insight types.</p>
    #
    # @return [Types::PutInsightSelectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_insight_selectors(
    #     trail_name: 'TrailName', # required
    #     insight_selectors: [
    #       {
    #         insight_type: 'ApiCallRateInsight' # accepts ["ApiCallRateInsight", "ApiErrorRateInsight"]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutInsightSelectorsOutput
    #   resp.data.trail_arn #=> String
    #   resp.data.insight_selectors #=> Array<InsightSelector>
    #   resp.data.insight_selectors[0] #=> Types::InsightSelector
    #   resp.data.insight_selectors[0].insight_type #=> String, one of ["ApiCallRateInsight", "ApiErrorRateInsight"]
    #
    def put_insight_selectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutInsightSelectorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutInsightSelectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutInsightSelectors
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientEncryptionPolicyException, Errors::NotOrganizationMasterAccountException, Errors::S3BucketDoesNotExistException, Errors::InsufficientS3BucketPolicyException, Errors::KmsException, Errors::InvalidTrailNameException, Errors::InvalidHomeRegionException, Errors::InvalidInsightSelectorsException, Errors::TrailNotFoundException, Errors::OperationNotPermittedException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::PutInsightSelectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutInsightSelectors,
        stubs: @stubs,
        params_class: Params::PutInsightSelectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_insight_selectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified tags from a trail or event data store.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsInput}.
    #
    # @option params [String] :resource_id
    #   <p>Specifies the ARN of the trail or event data store from which tags should be removed.</p>
    #            <p>
    #            Example trail ARN format: <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #            <p>Example event data store ARN format: <code>arn:aws:cloudtrail:us-east-2:12345678910:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #            </p>
    #
    # @option params [Array<Tag>] :tags_list
    #   <p>Specifies a list of tags to be removed.</p>
    #
    # @return [Types::RemoveTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags(
    #     resource_id: 'ResourceId', # required
    #     tags_list: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveTagsOutput
    #
    def remove_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotOrganizationMasterAccountException, Errors::InvalidTagParameterException, Errors::InvalidTrailNameException, Errors::ResourceNotFoundException, Errors::ResourceTypeNotSupportedException, Errors::EventDataStoreNotFoundException, Errors::InactiveEventDataStoreException, Errors::OperationNotPermittedException, Errors::UnsupportedOperationException, Errors::CloudTrailARNInvalidException]),
        data_parser: Parsers::RemoveTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveTags,
        stubs: @stubs,
        params_class: Params::RemoveTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Restores a deleted event data store specified by <code>EventDataStore</code>, which accepts an event data store ARN.
    #          You can only restore a deleted event data store within the seven-day wait period after deletion. Restoring an event data store
    #          can take several minutes, depending on the size of the event data store.</p>
    #
    # @param [Hash] params
    #   See {Types::RestoreEventDataStoreInput}.
    #
    # @option params [String] :event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of the event data store that you want to restore.</p>
    #
    # @return [Types::RestoreEventDataStoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_event_data_store(
    #     event_data_store: 'EventDataStore' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreEventDataStoreOutput
    #   resp.data.event_data_store_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["CREATED", "ENABLED", "PENDING_DELETION"]
    #   resp.data.advanced_event_selectors #=> Array<AdvancedEventSelector>
    #   resp.data.advanced_event_selectors[0] #=> Types::AdvancedEventSelector
    #   resp.data.advanced_event_selectors[0].name #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors #=> Array<AdvancedFieldSelector>
    #   resp.data.advanced_event_selectors[0].field_selectors[0] #=> Types::AdvancedFieldSelector
    #   resp.data.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors[0].equals #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array<String>
    #   resp.data.multi_region_enabled #=> Boolean
    #   resp.data.organization_enabled #=> Boolean
    #   resp.data.retention_period #=> Integer
    #   resp.data.termination_protection_enabled #=> Boolean
    #   resp.data.created_timestamp #=> Time
    #   resp.data.updated_timestamp #=> Time
    #
    def restore_event_data_store(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreEventDataStoreInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreEventDataStoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreEventDataStore
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotOrganizationMasterAccountException, Errors::EventDataStoreNotFoundException, Errors::OperationNotPermittedException, Errors::OrganizationsNotInUseException, Errors::EventDataStoreARNInvalidException, Errors::UnsupportedOperationException, Errors::CloudTrailAccessNotEnabledException, Errors::EventDataStoreMaxLimitExceededException, Errors::InvalidEventDataStoreStatusException, Errors::OrganizationNotInAllFeaturesModeException, Errors::InvalidParameterException, Errors::InsufficientDependencyServiceAccessPermissionException]),
        data_parser: Parsers::RestoreEventDataStore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreEventDataStore,
        stubs: @stubs,
        params_class: Params::RestoreEventDataStoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_event_data_store
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the recording of Amazon Web Services API calls and log file delivery for a trail. For a trail that is enabled in all regions, this operation must be called from the region in which the trail was created. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.</p>
    #
    # @param [Hash] params
    #   See {Types::StartLoggingInput}.
    #
    # @option params [String] :name
    #   <p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail logs Amazon Web Services API calls.
    #            The following is the format of a trail ARN.</p>
    #               <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    # @return [Types::StartLoggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_logging(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartLoggingOutput
    #
    def start_logging(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartLoggingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartLoggingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartLogging
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotOrganizationMasterAccountException, Errors::InvalidTrailNameException, Errors::InvalidHomeRegionException, Errors::TrailNotFoundException, Errors::OperationNotPermittedException, Errors::UnsupportedOperationException, Errors::InsufficientDependencyServiceAccessPermissionException]),
        data_parser: Parsers::StartLogging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartLogging,
        stubs: @stubs,
        params_class: Params::StartLoggingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_logging
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a CloudTrail Lake query. The required <code>QueryStatement</code>
    #          parameter provides your SQL query, enclosed in single quotation marks.</p>
    #
    # @param [Hash] params
    #   See {Types::StartQueryInput}.
    #
    # @option params [String] :query_statement
    #   <p>The SQL code of your query.</p>
    #
    # @return [Types::StartQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_query(
    #     query_statement: 'QueryStatement' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartQueryOutput
    #   resp.data.query_id #=> String
    #
    def start_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartQueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartQuery
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EventDataStoreNotFoundException, Errors::InvalidParameterException, Errors::InactiveEventDataStoreException, Errors::InvalidQueryStatementException, Errors::OperationNotPermittedException, Errors::EventDataStoreARNInvalidException, Errors::UnsupportedOperationException, Errors::MaxConcurrentQueriesException]),
        data_parser: Parsers::StartQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartQuery,
        stubs: @stubs,
        params_class: Params::StartQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Suspends the recording of Amazon Web Services API calls and log file delivery for the specified trail.
    #          Under most circumstances, there is no need to use this action. You can update a trail
    #          without stopping it first. This action is the only way to stop recording. For a trail
    #          enabled in all regions, this operation must be called from the region in which the trail
    #          was created, or an <code>InvalidHomeRegionException</code> will occur. This operation
    #          cannot be called on the shadow trails (replicated trails in other regions) of a trail
    #          enabled in all regions.</p>
    #
    # @param [Hash] params
    #   See {Types::StopLoggingInput}.
    #
    # @option params [String] :name
    #   <p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail will stop logging Amazon Web Services
    #            API calls. The following is the format of a trail ARN.</p>
    #               <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    # @return [Types::StopLoggingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_logging(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopLoggingOutput
    #
    def stop_logging(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopLoggingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopLoggingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopLogging
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotOrganizationMasterAccountException, Errors::InvalidTrailNameException, Errors::InvalidHomeRegionException, Errors::TrailNotFoundException, Errors::OperationNotPermittedException, Errors::UnsupportedOperationException, Errors::InsufficientDependencyServiceAccessPermissionException]),
        data_parser: Parsers::StopLogging
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopLogging,
        stubs: @stubs,
        params_class: Params::StopLoggingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_logging
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an event data store. The required <code>EventDataStore</code> value is an ARN or the ID portion of the ARN.
    #          Other parameters are optional, but at least one optional parameter must be specified, or CloudTrail throws an error.
    #          <code>RetentionPeriod</code> is in days, and valid values are integers between 90 and 2555.
    #          By default, <code>TerminationProtection</code> is enabled. <code>AdvancedEventSelectors</code> includes or excludes management
    #          and data events in your event data store; for more information about <code>AdvancedEventSelectors</code>, see
    #          <a>PutEventSelectorsRequest$AdvancedEventSelectors</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEventDataStoreInput}.
    #
    # @option params [String] :event_data_store
    #   <p>The ARN (or the ID suffix of the ARN) of the event data store that you want to update.</p>
    #
    # @option params [String] :name
    #   <p>The event data store name.</p>
    #
    # @option params [Array<AdvancedEventSelector>] :advanced_event_selectors
    #   <p>The advanced event selectors used to select events for the event data store.</p>
    #
    # @option params [Boolean] :multi_region_enabled
    #   <p>Specifies whether an event data store collects events from all regions, or only from the region in which it was created.</p>
    #
    # @option params [Boolean] :organization_enabled
    #   <p>Specifies whether an event data store collects events logged for an organization in Organizations.</p>
    #
    # @option params [Integer] :retention_period
    #   <p>The retention period, in days.</p>
    #
    # @option params [Boolean] :termination_protection_enabled
    #   <p>Indicates that termination protection is enabled and the event data store cannot be automatically deleted.</p>
    #
    # @return [Types::UpdateEventDataStoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_data_store(
    #     event_data_store: 'EventDataStore', # required
    #     name: 'Name',
    #     advanced_event_selectors: [
    #       {
    #         name: 'Name',
    #         field_selectors: [
    #           {
    #             field: 'Field', # required
    #             equals: [
    #               'member'
    #             ],
    #           }
    #         ] # required
    #       }
    #     ],
    #     multi_region_enabled: false,
    #     organization_enabled: false,
    #     retention_period: 1,
    #     termination_protection_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEventDataStoreOutput
    #   resp.data.event_data_store_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["CREATED", "ENABLED", "PENDING_DELETION"]
    #   resp.data.advanced_event_selectors #=> Array<AdvancedEventSelector>
    #   resp.data.advanced_event_selectors[0] #=> Types::AdvancedEventSelector
    #   resp.data.advanced_event_selectors[0].name #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors #=> Array<AdvancedFieldSelector>
    #   resp.data.advanced_event_selectors[0].field_selectors[0] #=> Types::AdvancedFieldSelector
    #   resp.data.advanced_event_selectors[0].field_selectors[0].field #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors[0].equals #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].equals[0] #=> String
    #   resp.data.advanced_event_selectors[0].field_selectors[0].starts_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].ends_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_equals #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_starts_with #=> Array<String>
    #   resp.data.advanced_event_selectors[0].field_selectors[0].not_ends_with #=> Array<String>
    #   resp.data.multi_region_enabled #=> Boolean
    #   resp.data.organization_enabled #=> Boolean
    #   resp.data.retention_period #=> Integer
    #   resp.data.termination_protection_enabled #=> Boolean
    #   resp.data.created_timestamp #=> Time
    #   resp.data.updated_timestamp #=> Time
    #
    def update_event_data_store(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEventDataStoreInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEventDataStoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEventDataStore
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudTrailAccessNotEnabledException, Errors::NotOrganizationMasterAccountException, Errors::EventDataStoreNotFoundException, Errors::OrganizationNotInAllFeaturesModeException, Errors::InvalidParameterException, Errors::InactiveEventDataStoreException, Errors::OperationNotPermittedException, Errors::OrganizationsNotInUseException, Errors::EventDataStoreARNInvalidException, Errors::UnsupportedOperationException, Errors::InsufficientDependencyServiceAccessPermissionException]),
        data_parser: Parsers::UpdateEventDataStore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEventDataStore,
        stubs: @stubs,
        params_class: Params::UpdateEventDataStoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_event_data_store
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates trail settings that control what events you are logging, and how to handle log files. Changes to a trail do not require
    #          stopping the CloudTrail service. Use this action to designate an existing bucket for log
    #          delivery. If the existing bucket has previously been a target for CloudTrail log files,
    #          an IAM policy exists for the bucket. <code>UpdateTrail</code> must be called from the
    #          region in which the trail was created; otherwise, an
    #             <code>InvalidHomeRegionException</code> is thrown.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTrailInput}.
    #
    # @option params [String] :name
    #   <p>Specifies the name of the trail or trail ARN. If <code>Name</code> is a trail name, the
    #            string must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
    #               </li>
    #               <li>
    #                  <p>Start with a letter or number, and end with a letter or number</p>
    #               </li>
    #               <li>
    #                  <p>Be between 3 and 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
    #               and <code>my--namespace</code> are not valid.</p>
    #               </li>
    #               <li>
    #                  <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #               </li>
    #            </ul>
    #            <p>If <code>Name</code> is a trail ARN, it must be in the following format.</p>
    #               <p>
    #               <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #            </p>
    #
    # @option params [String] :s3_bucket_name
    #   <p>Specifies the name of the Amazon S3 bucket designated for publishing log files. See <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html">Amazon S3 Bucket Naming Requirements</a>.</p>
    #
    # @option params [String] :s3_key_prefix
    #   <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated
    #            for log file delivery. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>. The maximum length is 200 characters.</p>
    #
    # @option params [String] :sns_topic_name
    #   <p>Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.</p>
    #
    # @option params [Boolean] :include_global_service_events
    #   <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
    #
    # @option params [Boolean] :is_multi_region_trail
    #   <p>Specifies whether the trail applies only to the current region or to all regions. The default is false. If the trail exists only in the current region and this value is set to true,
    #            shadow trails (replications of the trail) will be created in the other regions. If the trail exists in all regions and this value is set to false, the trail will remain in the region
    #            where it was created, and its shadow trails in other regions will be deleted. As a best practice, consider
    #            using trails that log events in all regions.</p>
    #
    # @option params [Boolean] :enable_log_file_validation
    #   <p>Specifies whether log file validation is enabled. The default is false.</p>
    #            <note>
    #               <p>When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail
    #               does not create digest files for log files that were delivered during a period in which log file integrity validation
    #               was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on
    #               January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon
    #               on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail.</p>
    #            </note>
    #
    # @option params [String] :cloud_watch_logs_log_group_arn
    #   <p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs are delivered. Not required unless you specify <code>CloudWatchLogsRoleArn</code>.</p>
    #
    # @option params [String] :cloud_watch_logs_role_arn
    #   <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The
    #            value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully
    #            specified ARN to a key, or a globally unique identifier.</p>
    #            <p>CloudTrail also supports KMS multi-Region keys. For more information about multi-Region keys,
    #            see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html">Using multi-Region keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
    #            <p>Examples:</p>
    #            <ul>
    #               <li>
    #                  <p>alias/MyAliasName</p>
    #               </li>
    #               <li>
    #                  <p>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</p>
    #               </li>
    #               <li>
    #                  <p>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</p>
    #               </li>
    #               <li>
    #                  <p>12345678-1234-1234-1234-123456789012</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :is_organization_trail
    #   <p>Specifies whether the trail is applied to all accounts in an organization in Organizations, or only for the current Amazon Web Services account.
    #            The default is false, and cannot be true unless the call is made on behalf of an Amazon Web Services account that is the management account for an organization in
    #            Organizations. If the trail is not an organization trail and this is set to <code>true</code>, the trail will be created in all Amazon Web Services accounts that belong
    #            to the organization. If the trail is an organization trail and this is set to <code>false</code>, the trail will remain in the current Amazon Web Services account but be
    #            deleted from all member accounts in the organization.</p>
    #
    # @return [Types::UpdateTrailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_trail(
    #     name: 'Name', # required
    #     s3_bucket_name: 'S3BucketName',
    #     s3_key_prefix: 'S3KeyPrefix',
    #     sns_topic_name: 'SnsTopicName',
    #     include_global_service_events: false,
    #     is_multi_region_trail: false,
    #     enable_log_file_validation: false,
    #     cloud_watch_logs_log_group_arn: 'CloudWatchLogsLogGroupArn',
    #     cloud_watch_logs_role_arn: 'CloudWatchLogsRoleArn',
    #     kms_key_id: 'KmsKeyId',
    #     is_organization_trail: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTrailOutput
    #   resp.data.name #=> String
    #   resp.data.s3_bucket_name #=> String
    #   resp.data.s3_key_prefix #=> String
    #   resp.data.sns_topic_name #=> String
    #   resp.data.sns_topic_arn #=> String
    #   resp.data.include_global_service_events #=> Boolean
    #   resp.data.is_multi_region_trail #=> Boolean
    #   resp.data.trail_arn #=> String
    #   resp.data.log_file_validation_enabled #=> Boolean
    #   resp.data.cloud_watch_logs_log_group_arn #=> String
    #   resp.data.cloud_watch_logs_role_arn #=> String
    #   resp.data.kms_key_id #=> String
    #   resp.data.is_organization_trail #=> Boolean
    #
    def update_trail(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTrailInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTrailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTrail
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TrailNotProvidedException, Errors::NotOrganizationMasterAccountException, Errors::KmsKeyDisabledException, Errors::InvalidTrailNameException, Errors::OrganizationsNotInUseException, Errors::InvalidEventSelectorsException, Errors::UnsupportedOperationException, Errors::InvalidS3BucketNameException, Errors::InsufficientEncryptionPolicyException, Errors::CloudTrailAccessNotEnabledException, Errors::InsufficientS3BucketPolicyException, Errors::InvalidCloudWatchLogsLogGroupArnException, Errors::InvalidParameterCombinationException, Errors::InvalidHomeRegionException, Errors::InsufficientSnsTopicPolicyException, Errors::InvalidS3PrefixException, Errors::TrailNotFoundException, Errors::InvalidKmsKeyIdException, Errors::OperationNotPermittedException, Errors::InvalidSnsTopicNameException, Errors::InvalidCloudWatchLogsRoleArnException, Errors::S3BucketDoesNotExistException, Errors::KmsException, Errors::OrganizationNotInAllFeaturesModeException, Errors::CloudTrailInvalidClientTokenIdException, Errors::CloudWatchLogsDeliveryUnavailableException, Errors::InsufficientDependencyServiceAccessPermissionException, Errors::KmsKeyNotFoundException]),
        data_parser: Parsers::UpdateTrail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTrail,
        stubs: @stubs,
        params_class: Params::UpdateTrailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_trail
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
