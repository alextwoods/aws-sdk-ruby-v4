# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::DataExchange
  # An API client for DataExchange
  # See {#initialize} for a full list of supported configuration options
  # <p>AWS Data Exchange is a service that makes it easy for AWS customers to exchange data in the cloud. You can use the AWS Data Exchange APIs to create, update, manage, and access file-based data set in the AWS Cloud.</p><p>As a subscriber, you can view and access the data sets that you have an entitlement to through a subscription. You can use the APIS to download or copy your entitled data sets to Amazon S3 for use across a variety of AWS analytics and machine learning services.</p><p>As a provider, you can create and manage your data sets that you would like to publish to a product. Being able to package and provide your data sets into products requires a few steps to determine eligibility. For more information, visit the AWS Data Exchange User Guide.</p><p>A data set is a collection of data that can be changed or updated over time. Data sets can be updated using revisions, which represent a new version or incremental change to a data set.  A revision contains one or more assets. An asset in AWS Data Exchange is a piece of data that can be stored as an Amazon S3 object. The asset can be a structured data file, an image file, or some other data file. Jobs are asynchronous import or export operations used to create or copy assets.</p>
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
    def initialize(config = AWS::SDK::DataExchange::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>This operation cancels a job. Jobs can be cancelled only when they are in the WAITING state.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique identifier for a job.</p>
    #
    # @return [Types::CancelJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelJobOutput
    #
    def cancel_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::CancelJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelJob,
        stubs: @stubs,
        params_class: Params::CancelJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation creates a data set.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDataSetInput}.
    #
    # @option params [String] :asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #
    # @option params [String] :description
    #   <p>A description for the data set. This value can be up to 16,348 characters long.</p>
    #
    # @option params [String] :name
    #   <p>The name of the data set.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A data set tag is an optional label that you can assign to a data set when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to these data sets and revisions.</p>
    #
    # @return [Types::CreateDataSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_set(
    #     asset_type: 'S3_SNAPSHOT', # required - accepts ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #     description: 'Description', # required
    #     name: 'Name', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDataSetOutput
    #   resp.data.arn #=> String
    #   resp.data.asset_type #=> String, one of ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #   resp.data.created_at #=> Time
    #   resp.data.description #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.origin #=> String, one of ["OWNED", "ENTITLED"]
    #   resp.data.origin_details #=> Types::OriginDetails
    #   resp.data.origin_details.product_id #=> String
    #   resp.data.source_id #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.updated_at #=> Time
    #
    def create_data_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceLimitExceededException]),
        data_parser: Parsers::CreateDataSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataSet,
        stubs: @stubs,
        params_class: Params::CreateDataSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_data_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation creates an event action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEventActionInput}.
    #
    # @option params [Action] :action
    #   <p>What occurs after a certain event.</p>
    #
    # @option params [Event] :event
    #   <p>What occurs to start an action.</p>
    #
    # @return [Types::CreateEventActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_action(
    #     action: {
    #       export_revision_to_s3: {
    #         encryption: {
    #           kms_key_arn: 'KmsKeyArn',
    #           type: 'aws:kms' # required - accepts ["aws:kms", "AES256"]
    #         },
    #         revision_destination: {
    #           bucket: 'Bucket', # required
    #           key_pattern: 'KeyPattern'
    #         } # required
    #       }
    #     }, # required
    #     event: {
    #       revision_published: {
    #         data_set_id: 'DataSetId' # required
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEventActionOutput
    #   resp.data.action #=> Types::Action
    #   resp.data.action.export_revision_to_s3 #=> Types::AutoExportRevisionToS3RequestDetails
    #   resp.data.action.export_revision_to_s3.encryption #=> Types::ExportServerSideEncryption
    #   resp.data.action.export_revision_to_s3.encryption.kms_key_arn #=> String
    #   resp.data.action.export_revision_to_s3.encryption.type #=> String, one of ["aws:kms", "AES256"]
    #   resp.data.action.export_revision_to_s3.revision_destination #=> Types::AutoExportRevisionDestinationEntry
    #   resp.data.action.export_revision_to_s3.revision_destination.bucket #=> String
    #   resp.data.action.export_revision_to_s3.revision_destination.key_pattern #=> String
    #   resp.data.arn #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.event #=> Types::Event
    #   resp.data.event.revision_published #=> Types::RevisionPublished
    #   resp.data.event.revision_published.data_set_id #=> String
    #   resp.data.id #=> String
    #   resp.data.updated_at #=> Time
    #
    def create_event_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEventActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEventActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEventAction
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceLimitExceededException]),
        data_parser: Parsers::CreateEventAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEventAction,
        stubs: @stubs,
        params_class: Params::CreateEventActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_event_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation creates a job.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateJobInput}.
    #
    # @option params [RequestDetails] :details
    #   <p>The details for the CreateJob request.</p>
    #
    # @option params [String] :type
    #   <p>The type of job to be created.</p>
    #
    # @return [Types::CreateJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job(
    #     details: {
    #       export_asset_to_signed_url: {
    #         asset_id: 'AssetId', # required
    #         data_set_id: 'DataSetId', # required
    #         revision_id: 'RevisionId' # required
    #       },
    #       export_assets_to_s3: {
    #         asset_destinations: [
    #           {
    #             asset_id: 'AssetId', # required
    #             bucket: 'Bucket', # required
    #             key: 'Key'
    #           }
    #         ], # required
    #         data_set_id: 'DataSetId', # required
    #         encryption: {
    #           kms_key_arn: 'KmsKeyArn',
    #           type: 'aws:kms' # required - accepts ["aws:kms", "AES256"]
    #         },
    #         revision_id: 'RevisionId' # required
    #       },
    #       export_revisions_to_s3: {
    #         data_set_id: 'DataSetId', # required
    #         revision_destinations: [
    #           {
    #             bucket: 'Bucket', # required
    #             key_pattern: 'KeyPattern',
    #             revision_id: 'RevisionId' # required
    #           }
    #         ] # required
    #       },
    #       import_asset_from_signed_url: {
    #         asset_name: 'AssetName', # required
    #         data_set_id: 'DataSetId', # required
    #         md5_hash: 'Md5Hash', # required
    #         revision_id: 'RevisionId' # required
    #       },
    #       import_assets_from_s3: {
    #         asset_sources: [
    #           {
    #             bucket: 'Bucket', # required
    #             key: 'Key' # required
    #           }
    #         ], # required
    #         data_set_id: 'DataSetId', # required
    #         revision_id: 'RevisionId' # required
    #       },
    #       import_assets_from_redshift_data_shares: {
    #         asset_sources: [
    #           {
    #             data_share_arn: 'DataShareArn' # required
    #           }
    #         ], # required
    #         data_set_id: 'DataSetId', # required
    #         revision_id: 'RevisionId' # required
    #       },
    #       import_asset_from_api_gateway_api: {
    #         api_description: 'ApiDescription',
    #         api_id: 'ApiId', # required
    #         api_key: 'ApiKey',
    #         api_name: 'ApiName', # required
    #         api_specification_md5_hash: 'ApiSpecificationMd5Hash', # required
    #         data_set_id: 'DataSetId', # required
    #         protocol_type: 'REST', # required - accepts ["REST"]
    #         revision_id: 'RevisionId', # required
    #         stage: 'Stage' # required
    #       }
    #     }, # required
    #     type: 'IMPORT_ASSETS_FROM_S3' # required - accepts ["IMPORT_ASSETS_FROM_S3", "IMPORT_ASSET_FROM_SIGNED_URL", "EXPORT_ASSETS_TO_S3", "EXPORT_ASSET_TO_SIGNED_URL", "EXPORT_REVISIONS_TO_S3", "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES", "IMPORT_ASSET_FROM_API_GATEWAY_API"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateJobOutput
    #   resp.data.arn #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.details #=> Types::ResponseDetails
    #   resp.data.details.export_asset_to_signed_url #=> Types::ExportAssetToSignedUrlResponseDetails
    #   resp.data.details.export_asset_to_signed_url.asset_id #=> String
    #   resp.data.details.export_asset_to_signed_url.data_set_id #=> String
    #   resp.data.details.export_asset_to_signed_url.revision_id #=> String
    #   resp.data.details.export_asset_to_signed_url.signed_url #=> String
    #   resp.data.details.export_asset_to_signed_url.signed_url_expires_at #=> Time
    #   resp.data.details.export_assets_to_s3 #=> Types::ExportAssetsToS3ResponseDetails
    #   resp.data.details.export_assets_to_s3.asset_destinations #=> Array<AssetDestinationEntry>
    #   resp.data.details.export_assets_to_s3.asset_destinations[0] #=> Types::AssetDestinationEntry
    #   resp.data.details.export_assets_to_s3.asset_destinations[0].asset_id #=> String
    #   resp.data.details.export_assets_to_s3.asset_destinations[0].bucket #=> String
    #   resp.data.details.export_assets_to_s3.asset_destinations[0].key #=> String
    #   resp.data.details.export_assets_to_s3.data_set_id #=> String
    #   resp.data.details.export_assets_to_s3.encryption #=> Types::ExportServerSideEncryption
    #   resp.data.details.export_assets_to_s3.encryption.kms_key_arn #=> String
    #   resp.data.details.export_assets_to_s3.encryption.type #=> String, one of ["aws:kms", "AES256"]
    #   resp.data.details.export_assets_to_s3.revision_id #=> String
    #   resp.data.details.export_revisions_to_s3 #=> Types::ExportRevisionsToS3ResponseDetails
    #   resp.data.details.export_revisions_to_s3.data_set_id #=> String
    #   resp.data.details.export_revisions_to_s3.encryption #=> Types::ExportServerSideEncryption
    #   resp.data.details.export_revisions_to_s3.revision_destinations #=> Array<RevisionDestinationEntry>
    #   resp.data.details.export_revisions_to_s3.revision_destinations[0] #=> Types::RevisionDestinationEntry
    #   resp.data.details.export_revisions_to_s3.revision_destinations[0].bucket #=> String
    #   resp.data.details.export_revisions_to_s3.revision_destinations[0].key_pattern #=> String
    #   resp.data.details.export_revisions_to_s3.revision_destinations[0].revision_id #=> String
    #   resp.data.details.export_revisions_to_s3.event_action_arn #=> String
    #   resp.data.details.import_asset_from_signed_url #=> Types::ImportAssetFromSignedUrlResponseDetails
    #   resp.data.details.import_asset_from_signed_url.asset_name #=> String
    #   resp.data.details.import_asset_from_signed_url.data_set_id #=> String
    #   resp.data.details.import_asset_from_signed_url.md5_hash #=> String
    #   resp.data.details.import_asset_from_signed_url.revision_id #=> String
    #   resp.data.details.import_asset_from_signed_url.signed_url #=> String
    #   resp.data.details.import_asset_from_signed_url.signed_url_expires_at #=> Time
    #   resp.data.details.import_assets_from_s3 #=> Types::ImportAssetsFromS3ResponseDetails
    #   resp.data.details.import_assets_from_s3.asset_sources #=> Array<AssetSourceEntry>
    #   resp.data.details.import_assets_from_s3.asset_sources[0] #=> Types::AssetSourceEntry
    #   resp.data.details.import_assets_from_s3.asset_sources[0].bucket #=> String
    #   resp.data.details.import_assets_from_s3.asset_sources[0].key #=> String
    #   resp.data.details.import_assets_from_s3.data_set_id #=> String
    #   resp.data.details.import_assets_from_s3.revision_id #=> String
    #   resp.data.details.import_assets_from_redshift_data_shares #=> Types::ImportAssetsFromRedshiftDataSharesResponseDetails
    #   resp.data.details.import_assets_from_redshift_data_shares.asset_sources #=> Array<RedshiftDataShareAssetSourceEntry>
    #   resp.data.details.import_assets_from_redshift_data_shares.asset_sources[0] #=> Types::RedshiftDataShareAssetSourceEntry
    #   resp.data.details.import_assets_from_redshift_data_shares.asset_sources[0].data_share_arn #=> String
    #   resp.data.details.import_assets_from_redshift_data_shares.data_set_id #=> String
    #   resp.data.details.import_assets_from_redshift_data_shares.revision_id #=> String
    #   resp.data.details.import_asset_from_api_gateway_api #=> Types::ImportAssetFromApiGatewayApiResponseDetails
    #   resp.data.details.import_asset_from_api_gateway_api.api_description #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.api_id #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.api_key #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.api_name #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.api_specification_md5_hash #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.api_specification_upload_url #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.api_specification_upload_url_expires_at #=> Time
    #   resp.data.details.import_asset_from_api_gateway_api.data_set_id #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.protocol_type #=> String, one of ["REST"]
    #   resp.data.details.import_asset_from_api_gateway_api.revision_id #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.stage #=> String
    #   resp.data.errors #=> Array<JobError>
    #   resp.data.errors[0] #=> Types::JobError
    #   resp.data.errors[0].code #=> String, one of ["ACCESS_DENIED_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "MALWARE_DETECTED", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "VALIDATION_EXCEPTION", "MALWARE_SCAN_ENCRYPTED_FILE"]
    #   resp.data.errors[0].details #=> Types::Details
    #   resp.data.errors[0].details.import_asset_from_signed_url_job_error_details #=> Types::ImportAssetFromSignedUrlJobErrorDetails
    #   resp.data.errors[0].details.import_asset_from_signed_url_job_error_details.asset_name #=> String
    #   resp.data.errors[0].details.import_assets_from_s3_job_error_details #=> Array<AssetSourceEntry>
    #   resp.data.errors[0].limit_name #=> String, one of ["Assets per revision", "Asset size in GB", "Amazon Redshift datashare assets per revision"]
    #   resp.data.errors[0].limit_value #=> Float
    #   resp.data.errors[0].message #=> String
    #   resp.data.errors[0].resource_id #=> String
    #   resp.data.errors[0].resource_type #=> String, one of ["REVISION", "ASSET", "DATA_SET"]
    #   resp.data.id #=> String
    #   resp.data.state #=> String, one of ["WAITING", "IN_PROGRESS", "ERROR", "COMPLETED", "CANCELLED", "TIMED_OUT"]
    #   resp.data.type #=> String, one of ["IMPORT_ASSETS_FROM_S3", "IMPORT_ASSET_FROM_SIGNED_URL", "EXPORT_ASSETS_TO_S3", "EXPORT_ASSET_TO_SIGNED_URL", "EXPORT_REVISIONS_TO_S3", "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES", "IMPORT_ASSET_FROM_API_GATEWAY_API"]
    #   resp.data.updated_at #=> Time
    #
    def create_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::CreateJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateJob,
        stubs: @stubs,
        params_class: Params::CreateJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation creates a revision for a data set.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRevisionInput}.
    #
    # @option params [String] :comment
    #   <p>An optional comment about the revision.</p>
    #
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A revision tag is an optional label that you can assign to a revision when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to these data sets and revisions.</p>
    #
    # @return [Types::CreateRevisionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_revision(
    #     comment: 'Comment',
    #     data_set_id: 'DataSetId', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRevisionOutput
    #   resp.data.arn #=> String
    #   resp.data.comment #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.data_set_id #=> String
    #   resp.data.finalized #=> Boolean
    #   resp.data.id #=> String
    #   resp.data.source_id #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.updated_at #=> Time
    #   resp.data.revocation_comment #=> String
    #   resp.data.revoked #=> Boolean
    #   resp.data.revoked_at #=> Time
    #
    def create_revision(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRevisionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRevisionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRevision
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::CreateRevision
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRevision,
        stubs: @stubs,
        params_class: Params::CreateRevisionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_revision
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation deletes an asset.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAssetInput}.
    #
    # @option params [String] :asset_id
    #   <p>The unique identifier for an asset.</p>
    #
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    # @return [Types::DeleteAssetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset(
    #     asset_id: 'AssetId', # required
    #     data_set_id: 'DataSetId', # required
    #     revision_id: 'RevisionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAssetOutput
    #
    def delete_asset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAssetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAssetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAsset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::DeleteAsset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAsset,
        stubs: @stubs,
        params_class: Params::DeleteAssetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_asset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation deletes a data set.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDataSetInput}.
    #
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    # @return [Types::DeleteDataSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_set(
    #     data_set_id: 'DataSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDataSetOutput
    #
    def delete_data_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDataSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDataSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::DeleteDataSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataSet,
        stubs: @stubs,
        params_class: Params::DeleteDataSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_data_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation deletes the event action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventActionInput}.
    #
    # @option params [String] :event_action_id
    #   <p>The unique identifier for the event action.</p>
    #
    # @return [Types::DeleteEventActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_action(
    #     event_action_id: 'EventActionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEventActionOutput
    #
    def delete_event_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEventActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEventActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEventAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteEventAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEventAction,
        stubs: @stubs,
        params_class: Params::DeleteEventActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_event_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation deletes a revision.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRevisionInput}.
    #
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    # @return [Types::DeleteRevisionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_revision(
    #     data_set_id: 'DataSetId', # required
    #     revision_id: 'RevisionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRevisionOutput
    #
    def delete_revision(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRevisionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRevisionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRevision
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::DeleteRevision
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRevision,
        stubs: @stubs,
        params_class: Params::DeleteRevisionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_revision
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation returns information about an asset.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAssetInput}.
    #
    # @option params [String] :asset_id
    #   <p>The unique identifier for an asset.</p>
    #
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    # @return [Types::GetAssetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset(
    #     asset_id: 'AssetId', # required
    #     data_set_id: 'DataSetId', # required
    #     revision_id: 'RevisionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAssetOutput
    #   resp.data.arn #=> String
    #   resp.data.asset_details #=> Types::AssetDetails
    #   resp.data.asset_details.s3_snapshot_asset #=> Types::S3SnapshotAsset
    #   resp.data.asset_details.s3_snapshot_asset.size #=> Float
    #   resp.data.asset_details.redshift_data_share_asset #=> Types::RedshiftDataShareAsset
    #   resp.data.asset_details.redshift_data_share_asset.arn #=> String
    #   resp.data.asset_details.api_gateway_api_asset #=> Types::ApiGatewayApiAsset
    #   resp.data.asset_details.api_gateway_api_asset.api_description #=> String
    #   resp.data.asset_details.api_gateway_api_asset.api_endpoint #=> String
    #   resp.data.asset_details.api_gateway_api_asset.api_id #=> String
    #   resp.data.asset_details.api_gateway_api_asset.api_key #=> String
    #   resp.data.asset_details.api_gateway_api_asset.api_name #=> String
    #   resp.data.asset_details.api_gateway_api_asset.api_specification_download_url #=> String
    #   resp.data.asset_details.api_gateway_api_asset.api_specification_download_url_expires_at #=> Time
    #   resp.data.asset_details.api_gateway_api_asset.protocol_type #=> String, one of ["REST"]
    #   resp.data.asset_details.api_gateway_api_asset.stage #=> String
    #   resp.data.asset_type #=> String, one of ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #   resp.data.created_at #=> Time
    #   resp.data.data_set_id #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.revision_id #=> String
    #   resp.data.source_id #=> String
    #   resp.data.updated_at #=> Time
    #
    def get_asset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAssetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAssetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAsset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::GetAsset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAsset,
        stubs: @stubs,
        params_class: Params::GetAssetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_asset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation returns information about a data set.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDataSetInput}.
    #
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    # @return [Types::GetDataSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_set(
    #     data_set_id: 'DataSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDataSetOutput
    #   resp.data.arn #=> String
    #   resp.data.asset_type #=> String, one of ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #   resp.data.created_at #=> Time
    #   resp.data.description #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.origin #=> String, one of ["OWNED", "ENTITLED"]
    #   resp.data.origin_details #=> Types::OriginDetails
    #   resp.data.origin_details.product_id #=> String
    #   resp.data.source_id #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.updated_at #=> Time
    #
    def get_data_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDataSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDataSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDataSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::GetDataSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDataSet,
        stubs: @stubs,
        params_class: Params::GetDataSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_data_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation retrieves information about an event action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEventActionInput}.
    #
    # @option params [String] :event_action_id
    #   <p>The unique identifier for the event action.</p>
    #
    # @return [Types::GetEventActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_action(
    #     event_action_id: 'EventActionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEventActionOutput
    #   resp.data.action #=> Types::Action
    #   resp.data.action.export_revision_to_s3 #=> Types::AutoExportRevisionToS3RequestDetails
    #   resp.data.action.export_revision_to_s3.encryption #=> Types::ExportServerSideEncryption
    #   resp.data.action.export_revision_to_s3.encryption.kms_key_arn #=> String
    #   resp.data.action.export_revision_to_s3.encryption.type #=> String, one of ["aws:kms", "AES256"]
    #   resp.data.action.export_revision_to_s3.revision_destination #=> Types::AutoExportRevisionDestinationEntry
    #   resp.data.action.export_revision_to_s3.revision_destination.bucket #=> String
    #   resp.data.action.export_revision_to_s3.revision_destination.key_pattern #=> String
    #   resp.data.arn #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.event #=> Types::Event
    #   resp.data.event.revision_published #=> Types::RevisionPublished
    #   resp.data.event.revision_published.data_set_id #=> String
    #   resp.data.id #=> String
    #   resp.data.updated_at #=> Time
    #
    def get_event_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEventActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEventActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEventAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::GetEventAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEventAction,
        stubs: @stubs,
        params_class: Params::GetEventActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_event_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation returns information about a job.</p>
    #
    # @param [Hash] params
    #   See {Types::GetJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique identifier for a job.</p>
    #
    # @return [Types::GetJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetJobOutput
    #   resp.data.arn #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.details #=> Types::ResponseDetails
    #   resp.data.details.export_asset_to_signed_url #=> Types::ExportAssetToSignedUrlResponseDetails
    #   resp.data.details.export_asset_to_signed_url.asset_id #=> String
    #   resp.data.details.export_asset_to_signed_url.data_set_id #=> String
    #   resp.data.details.export_asset_to_signed_url.revision_id #=> String
    #   resp.data.details.export_asset_to_signed_url.signed_url #=> String
    #   resp.data.details.export_asset_to_signed_url.signed_url_expires_at #=> Time
    #   resp.data.details.export_assets_to_s3 #=> Types::ExportAssetsToS3ResponseDetails
    #   resp.data.details.export_assets_to_s3.asset_destinations #=> Array<AssetDestinationEntry>
    #   resp.data.details.export_assets_to_s3.asset_destinations[0] #=> Types::AssetDestinationEntry
    #   resp.data.details.export_assets_to_s3.asset_destinations[0].asset_id #=> String
    #   resp.data.details.export_assets_to_s3.asset_destinations[0].bucket #=> String
    #   resp.data.details.export_assets_to_s3.asset_destinations[0].key #=> String
    #   resp.data.details.export_assets_to_s3.data_set_id #=> String
    #   resp.data.details.export_assets_to_s3.encryption #=> Types::ExportServerSideEncryption
    #   resp.data.details.export_assets_to_s3.encryption.kms_key_arn #=> String
    #   resp.data.details.export_assets_to_s3.encryption.type #=> String, one of ["aws:kms", "AES256"]
    #   resp.data.details.export_assets_to_s3.revision_id #=> String
    #   resp.data.details.export_revisions_to_s3 #=> Types::ExportRevisionsToS3ResponseDetails
    #   resp.data.details.export_revisions_to_s3.data_set_id #=> String
    #   resp.data.details.export_revisions_to_s3.encryption #=> Types::ExportServerSideEncryption
    #   resp.data.details.export_revisions_to_s3.revision_destinations #=> Array<RevisionDestinationEntry>
    #   resp.data.details.export_revisions_to_s3.revision_destinations[0] #=> Types::RevisionDestinationEntry
    #   resp.data.details.export_revisions_to_s3.revision_destinations[0].bucket #=> String
    #   resp.data.details.export_revisions_to_s3.revision_destinations[0].key_pattern #=> String
    #   resp.data.details.export_revisions_to_s3.revision_destinations[0].revision_id #=> String
    #   resp.data.details.export_revisions_to_s3.event_action_arn #=> String
    #   resp.data.details.import_asset_from_signed_url #=> Types::ImportAssetFromSignedUrlResponseDetails
    #   resp.data.details.import_asset_from_signed_url.asset_name #=> String
    #   resp.data.details.import_asset_from_signed_url.data_set_id #=> String
    #   resp.data.details.import_asset_from_signed_url.md5_hash #=> String
    #   resp.data.details.import_asset_from_signed_url.revision_id #=> String
    #   resp.data.details.import_asset_from_signed_url.signed_url #=> String
    #   resp.data.details.import_asset_from_signed_url.signed_url_expires_at #=> Time
    #   resp.data.details.import_assets_from_s3 #=> Types::ImportAssetsFromS3ResponseDetails
    #   resp.data.details.import_assets_from_s3.asset_sources #=> Array<AssetSourceEntry>
    #   resp.data.details.import_assets_from_s3.asset_sources[0] #=> Types::AssetSourceEntry
    #   resp.data.details.import_assets_from_s3.asset_sources[0].bucket #=> String
    #   resp.data.details.import_assets_from_s3.asset_sources[0].key #=> String
    #   resp.data.details.import_assets_from_s3.data_set_id #=> String
    #   resp.data.details.import_assets_from_s3.revision_id #=> String
    #   resp.data.details.import_assets_from_redshift_data_shares #=> Types::ImportAssetsFromRedshiftDataSharesResponseDetails
    #   resp.data.details.import_assets_from_redshift_data_shares.asset_sources #=> Array<RedshiftDataShareAssetSourceEntry>
    #   resp.data.details.import_assets_from_redshift_data_shares.asset_sources[0] #=> Types::RedshiftDataShareAssetSourceEntry
    #   resp.data.details.import_assets_from_redshift_data_shares.asset_sources[0].data_share_arn #=> String
    #   resp.data.details.import_assets_from_redshift_data_shares.data_set_id #=> String
    #   resp.data.details.import_assets_from_redshift_data_shares.revision_id #=> String
    #   resp.data.details.import_asset_from_api_gateway_api #=> Types::ImportAssetFromApiGatewayApiResponseDetails
    #   resp.data.details.import_asset_from_api_gateway_api.api_description #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.api_id #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.api_key #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.api_name #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.api_specification_md5_hash #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.api_specification_upload_url #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.api_specification_upload_url_expires_at #=> Time
    #   resp.data.details.import_asset_from_api_gateway_api.data_set_id #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.protocol_type #=> String, one of ["REST"]
    #   resp.data.details.import_asset_from_api_gateway_api.revision_id #=> String
    #   resp.data.details.import_asset_from_api_gateway_api.stage #=> String
    #   resp.data.errors #=> Array<JobError>
    #   resp.data.errors[0] #=> Types::JobError
    #   resp.data.errors[0].code #=> String, one of ["ACCESS_DENIED_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "MALWARE_DETECTED", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "VALIDATION_EXCEPTION", "MALWARE_SCAN_ENCRYPTED_FILE"]
    #   resp.data.errors[0].details #=> Types::Details
    #   resp.data.errors[0].details.import_asset_from_signed_url_job_error_details #=> Types::ImportAssetFromSignedUrlJobErrorDetails
    #   resp.data.errors[0].details.import_asset_from_signed_url_job_error_details.asset_name #=> String
    #   resp.data.errors[0].details.import_assets_from_s3_job_error_details #=> Array<AssetSourceEntry>
    #   resp.data.errors[0].limit_name #=> String, one of ["Assets per revision", "Asset size in GB", "Amazon Redshift datashare assets per revision"]
    #   resp.data.errors[0].limit_value #=> Float
    #   resp.data.errors[0].message #=> String
    #   resp.data.errors[0].resource_id #=> String
    #   resp.data.errors[0].resource_type #=> String, one of ["REVISION", "ASSET", "DATA_SET"]
    #   resp.data.id #=> String
    #   resp.data.state #=> String, one of ["WAITING", "IN_PROGRESS", "ERROR", "COMPLETED", "CANCELLED", "TIMED_OUT"]
    #   resp.data.type #=> String, one of ["IMPORT_ASSETS_FROM_S3", "IMPORT_ASSET_FROM_SIGNED_URL", "EXPORT_ASSETS_TO_S3", "EXPORT_ASSET_TO_SIGNED_URL", "EXPORT_REVISIONS_TO_S3", "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES", "IMPORT_ASSET_FROM_API_GATEWAY_API"]
    #   resp.data.updated_at #=> Time
    #
    def get_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::GetJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetJob,
        stubs: @stubs,
        params_class: Params::GetJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation returns information about a revision.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRevisionInput}.
    #
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    # @return [Types::GetRevisionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_revision(
    #     data_set_id: 'DataSetId', # required
    #     revision_id: 'RevisionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRevisionOutput
    #   resp.data.arn #=> String
    #   resp.data.comment #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.data_set_id #=> String
    #   resp.data.finalized #=> Boolean
    #   resp.data.id #=> String
    #   resp.data.source_id #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.updated_at #=> Time
    #   resp.data.revocation_comment #=> String
    #   resp.data.revoked #=> Boolean
    #   resp.data.revoked_at #=> Time
    #
    def get_revision(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRevisionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRevisionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRevision
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::GetRevision
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRevision,
        stubs: @stubs,
        params_class: Params::GetRevisionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_revision
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation lists a data set's revisions sorted by CreatedAt in descending order.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDataSetRevisionsInput}.
    #
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #
    # @return [Types::ListDataSetRevisionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_set_revisions(
    #     data_set_id: 'DataSetId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataSetRevisionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.revisions #=> Array<RevisionEntry>
    #   resp.data.revisions[0] #=> Types::RevisionEntry
    #   resp.data.revisions[0].arn #=> String
    #   resp.data.revisions[0].comment #=> String
    #   resp.data.revisions[0].created_at #=> Time
    #   resp.data.revisions[0].data_set_id #=> String
    #   resp.data.revisions[0].finalized #=> Boolean
    #   resp.data.revisions[0].id #=> String
    #   resp.data.revisions[0].source_id #=> String
    #   resp.data.revisions[0].updated_at #=> Time
    #   resp.data.revisions[0].revocation_comment #=> String
    #   resp.data.revisions[0].revoked #=> Boolean
    #   resp.data.revisions[0].revoked_at #=> Time
    #
    def list_data_set_revisions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataSetRevisionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataSetRevisionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataSetRevisions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListDataSetRevisions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataSetRevisions,
        stubs: @stubs,
        params_class: Params::ListDataSetRevisionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_data_set_revisions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDataSetsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #
    # @option params [String] :origin
    #   <p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>
    #
    # @return [Types::ListDataSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sets(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     origin: 'Origin'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataSetsOutput
    #   resp.data.data_sets #=> Array<DataSetEntry>
    #   resp.data.data_sets[0] #=> Types::DataSetEntry
    #   resp.data.data_sets[0].arn #=> String
    #   resp.data.data_sets[0].asset_type #=> String, one of ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #   resp.data.data_sets[0].created_at #=> Time
    #   resp.data.data_sets[0].description #=> String
    #   resp.data.data_sets[0].id #=> String
    #   resp.data.data_sets[0].name #=> String
    #   resp.data.data_sets[0].origin #=> String, one of ["OWNED", "ENTITLED"]
    #   resp.data.data_sets[0].origin_details #=> Types::OriginDetails
    #   resp.data.data_sets[0].origin_details.product_id #=> String
    #   resp.data.data_sets[0].source_id #=> String
    #   resp.data.data_sets[0].updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_data_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListDataSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataSets,
        stubs: @stubs,
        params_class: Params::ListDataSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_data_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation lists your event actions.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEventActionsInput}.
    #
    # @option params [String] :event_source_id
    #   <p>The unique identifier for the event source.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #
    # @return [Types::ListEventActionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_actions(
    #     event_source_id: 'EventSourceId',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEventActionsOutput
    #   resp.data.event_actions #=> Array<EventActionEntry>
    #   resp.data.event_actions[0] #=> Types::EventActionEntry
    #   resp.data.event_actions[0].action #=> Types::Action
    #   resp.data.event_actions[0].action.export_revision_to_s3 #=> Types::AutoExportRevisionToS3RequestDetails
    #   resp.data.event_actions[0].action.export_revision_to_s3.encryption #=> Types::ExportServerSideEncryption
    #   resp.data.event_actions[0].action.export_revision_to_s3.encryption.kms_key_arn #=> String
    #   resp.data.event_actions[0].action.export_revision_to_s3.encryption.type #=> String, one of ["aws:kms", "AES256"]
    #   resp.data.event_actions[0].action.export_revision_to_s3.revision_destination #=> Types::AutoExportRevisionDestinationEntry
    #   resp.data.event_actions[0].action.export_revision_to_s3.revision_destination.bucket #=> String
    #   resp.data.event_actions[0].action.export_revision_to_s3.revision_destination.key_pattern #=> String
    #   resp.data.event_actions[0].arn #=> String
    #   resp.data.event_actions[0].created_at #=> Time
    #   resp.data.event_actions[0].event #=> Types::Event
    #   resp.data.event_actions[0].event.revision_published #=> Types::RevisionPublished
    #   resp.data.event_actions[0].event.revision_published.data_set_id #=> String
    #   resp.data.event_actions[0].id #=> String
    #   resp.data.event_actions[0].updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_event_actions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEventActionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEventActionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEventActions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListEventActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEventActions,
        stubs: @stubs,
        params_class: Params::ListEventActionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_event_actions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation lists your jobs sorted by CreatedAt in descending order.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJobsInput}.
    #
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    # @return [Types::ListJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs(
    #     data_set_id: 'DataSetId',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     revision_id: 'RevisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobsOutput
    #   resp.data.jobs #=> Array<JobEntry>
    #   resp.data.jobs[0] #=> Types::JobEntry
    #   resp.data.jobs[0].arn #=> String
    #   resp.data.jobs[0].created_at #=> Time
    #   resp.data.jobs[0].details #=> Types::ResponseDetails
    #   resp.data.jobs[0].details.export_asset_to_signed_url #=> Types::ExportAssetToSignedUrlResponseDetails
    #   resp.data.jobs[0].details.export_asset_to_signed_url.asset_id #=> String
    #   resp.data.jobs[0].details.export_asset_to_signed_url.data_set_id #=> String
    #   resp.data.jobs[0].details.export_asset_to_signed_url.revision_id #=> String
    #   resp.data.jobs[0].details.export_asset_to_signed_url.signed_url #=> String
    #   resp.data.jobs[0].details.export_asset_to_signed_url.signed_url_expires_at #=> Time
    #   resp.data.jobs[0].details.export_assets_to_s3 #=> Types::ExportAssetsToS3ResponseDetails
    #   resp.data.jobs[0].details.export_assets_to_s3.asset_destinations #=> Array<AssetDestinationEntry>
    #   resp.data.jobs[0].details.export_assets_to_s3.asset_destinations[0] #=> Types::AssetDestinationEntry
    #   resp.data.jobs[0].details.export_assets_to_s3.asset_destinations[0].asset_id #=> String
    #   resp.data.jobs[0].details.export_assets_to_s3.asset_destinations[0].bucket #=> String
    #   resp.data.jobs[0].details.export_assets_to_s3.asset_destinations[0].key #=> String
    #   resp.data.jobs[0].details.export_assets_to_s3.data_set_id #=> String
    #   resp.data.jobs[0].details.export_assets_to_s3.encryption #=> Types::ExportServerSideEncryption
    #   resp.data.jobs[0].details.export_assets_to_s3.encryption.kms_key_arn #=> String
    #   resp.data.jobs[0].details.export_assets_to_s3.encryption.type #=> String, one of ["aws:kms", "AES256"]
    #   resp.data.jobs[0].details.export_assets_to_s3.revision_id #=> String
    #   resp.data.jobs[0].details.export_revisions_to_s3 #=> Types::ExportRevisionsToS3ResponseDetails
    #   resp.data.jobs[0].details.export_revisions_to_s3.data_set_id #=> String
    #   resp.data.jobs[0].details.export_revisions_to_s3.encryption #=> Types::ExportServerSideEncryption
    #   resp.data.jobs[0].details.export_revisions_to_s3.revision_destinations #=> Array<RevisionDestinationEntry>
    #   resp.data.jobs[0].details.export_revisions_to_s3.revision_destinations[0] #=> Types::RevisionDestinationEntry
    #   resp.data.jobs[0].details.export_revisions_to_s3.revision_destinations[0].bucket #=> String
    #   resp.data.jobs[0].details.export_revisions_to_s3.revision_destinations[0].key_pattern #=> String
    #   resp.data.jobs[0].details.export_revisions_to_s3.revision_destinations[0].revision_id #=> String
    #   resp.data.jobs[0].details.export_revisions_to_s3.event_action_arn #=> String
    #   resp.data.jobs[0].details.import_asset_from_signed_url #=> Types::ImportAssetFromSignedUrlResponseDetails
    #   resp.data.jobs[0].details.import_asset_from_signed_url.asset_name #=> String
    #   resp.data.jobs[0].details.import_asset_from_signed_url.data_set_id #=> String
    #   resp.data.jobs[0].details.import_asset_from_signed_url.md5_hash #=> String
    #   resp.data.jobs[0].details.import_asset_from_signed_url.revision_id #=> String
    #   resp.data.jobs[0].details.import_asset_from_signed_url.signed_url #=> String
    #   resp.data.jobs[0].details.import_asset_from_signed_url.signed_url_expires_at #=> Time
    #   resp.data.jobs[0].details.import_assets_from_s3 #=> Types::ImportAssetsFromS3ResponseDetails
    #   resp.data.jobs[0].details.import_assets_from_s3.asset_sources #=> Array<AssetSourceEntry>
    #   resp.data.jobs[0].details.import_assets_from_s3.asset_sources[0] #=> Types::AssetSourceEntry
    #   resp.data.jobs[0].details.import_assets_from_s3.asset_sources[0].bucket #=> String
    #   resp.data.jobs[0].details.import_assets_from_s3.asset_sources[0].key #=> String
    #   resp.data.jobs[0].details.import_assets_from_s3.data_set_id #=> String
    #   resp.data.jobs[0].details.import_assets_from_s3.revision_id #=> String
    #   resp.data.jobs[0].details.import_assets_from_redshift_data_shares #=> Types::ImportAssetsFromRedshiftDataSharesResponseDetails
    #   resp.data.jobs[0].details.import_assets_from_redshift_data_shares.asset_sources #=> Array<RedshiftDataShareAssetSourceEntry>
    #   resp.data.jobs[0].details.import_assets_from_redshift_data_shares.asset_sources[0] #=> Types::RedshiftDataShareAssetSourceEntry
    #   resp.data.jobs[0].details.import_assets_from_redshift_data_shares.asset_sources[0].data_share_arn #=> String
    #   resp.data.jobs[0].details.import_assets_from_redshift_data_shares.data_set_id #=> String
    #   resp.data.jobs[0].details.import_assets_from_redshift_data_shares.revision_id #=> String
    #   resp.data.jobs[0].details.import_asset_from_api_gateway_api #=> Types::ImportAssetFromApiGatewayApiResponseDetails
    #   resp.data.jobs[0].details.import_asset_from_api_gateway_api.api_description #=> String
    #   resp.data.jobs[0].details.import_asset_from_api_gateway_api.api_id #=> String
    #   resp.data.jobs[0].details.import_asset_from_api_gateway_api.api_key #=> String
    #   resp.data.jobs[0].details.import_asset_from_api_gateway_api.api_name #=> String
    #   resp.data.jobs[0].details.import_asset_from_api_gateway_api.api_specification_md5_hash #=> String
    #   resp.data.jobs[0].details.import_asset_from_api_gateway_api.api_specification_upload_url #=> String
    #   resp.data.jobs[0].details.import_asset_from_api_gateway_api.api_specification_upload_url_expires_at #=> Time
    #   resp.data.jobs[0].details.import_asset_from_api_gateway_api.data_set_id #=> String
    #   resp.data.jobs[0].details.import_asset_from_api_gateway_api.protocol_type #=> String, one of ["REST"]
    #   resp.data.jobs[0].details.import_asset_from_api_gateway_api.revision_id #=> String
    #   resp.data.jobs[0].details.import_asset_from_api_gateway_api.stage #=> String
    #   resp.data.jobs[0].errors #=> Array<JobError>
    #   resp.data.jobs[0].errors[0] #=> Types::JobError
    #   resp.data.jobs[0].errors[0].code #=> String, one of ["ACCESS_DENIED_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "MALWARE_DETECTED", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "VALIDATION_EXCEPTION", "MALWARE_SCAN_ENCRYPTED_FILE"]
    #   resp.data.jobs[0].errors[0].details #=> Types::Details
    #   resp.data.jobs[0].errors[0].details.import_asset_from_signed_url_job_error_details #=> Types::ImportAssetFromSignedUrlJobErrorDetails
    #   resp.data.jobs[0].errors[0].details.import_asset_from_signed_url_job_error_details.asset_name #=> String
    #   resp.data.jobs[0].errors[0].details.import_assets_from_s3_job_error_details #=> Array<AssetSourceEntry>
    #   resp.data.jobs[0].errors[0].limit_name #=> String, one of ["Assets per revision", "Asset size in GB", "Amazon Redshift datashare assets per revision"]
    #   resp.data.jobs[0].errors[0].limit_value #=> Float
    #   resp.data.jobs[0].errors[0].message #=> String
    #   resp.data.jobs[0].errors[0].resource_id #=> String
    #   resp.data.jobs[0].errors[0].resource_type #=> String, one of ["REVISION", "ASSET", "DATA_SET"]
    #   resp.data.jobs[0].id #=> String
    #   resp.data.jobs[0].state #=> String, one of ["WAITING", "IN_PROGRESS", "ERROR", "COMPLETED", "CANCELLED", "TIMED_OUT"]
    #   resp.data.jobs[0].type #=> String, one of ["IMPORT_ASSETS_FROM_S3", "IMPORT_ASSET_FROM_SIGNED_URL", "EXPORT_ASSETS_TO_S3", "EXPORT_ASSET_TO_SIGNED_URL", "EXPORT_REVISIONS_TO_S3", "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES", "IMPORT_ASSET_FROM_API_GATEWAY_API"]
    #   resp.data.jobs[0].updated_at #=> Time
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>This operation lists a revision's assets sorted alphabetically in descending order.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRevisionAssetsInput}.
    #
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    #
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    # @return [Types::ListRevisionAssetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_revision_assets(
    #     data_set_id: 'DataSetId', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     revision_id: 'RevisionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRevisionAssetsOutput
    #   resp.data.assets #=> Array<AssetEntry>
    #   resp.data.assets[0] #=> Types::AssetEntry
    #   resp.data.assets[0].arn #=> String
    #   resp.data.assets[0].asset_details #=> Types::AssetDetails
    #   resp.data.assets[0].asset_details.s3_snapshot_asset #=> Types::S3SnapshotAsset
    #   resp.data.assets[0].asset_details.s3_snapshot_asset.size #=> Float
    #   resp.data.assets[0].asset_details.redshift_data_share_asset #=> Types::RedshiftDataShareAsset
    #   resp.data.assets[0].asset_details.redshift_data_share_asset.arn #=> String
    #   resp.data.assets[0].asset_details.api_gateway_api_asset #=> Types::ApiGatewayApiAsset
    #   resp.data.assets[0].asset_details.api_gateway_api_asset.api_description #=> String
    #   resp.data.assets[0].asset_details.api_gateway_api_asset.api_endpoint #=> String
    #   resp.data.assets[0].asset_details.api_gateway_api_asset.api_id #=> String
    #   resp.data.assets[0].asset_details.api_gateway_api_asset.api_key #=> String
    #   resp.data.assets[0].asset_details.api_gateway_api_asset.api_name #=> String
    #   resp.data.assets[0].asset_details.api_gateway_api_asset.api_specification_download_url #=> String
    #   resp.data.assets[0].asset_details.api_gateway_api_asset.api_specification_download_url_expires_at #=> Time
    #   resp.data.assets[0].asset_details.api_gateway_api_asset.protocol_type #=> String, one of ["REST"]
    #   resp.data.assets[0].asset_details.api_gateway_api_asset.stage #=> String
    #   resp.data.assets[0].asset_type #=> String, one of ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #   resp.data.assets[0].created_at #=> Time
    #   resp.data.assets[0].data_set_id #=> String
    #   resp.data.assets[0].id #=> String
    #   resp.data.assets[0].name #=> String
    #   resp.data.assets[0].revision_id #=> String
    #   resp.data.assets[0].source_id #=> String
    #   resp.data.assets[0].updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_revision_assets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRevisionAssetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRevisionAssetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRevisionAssets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListRevisionAssets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRevisionAssets,
        stubs: @stubs,
        params_class: Params::ListRevisionAssetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_revision_assets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation lists the tags on the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>
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

    # <p>This operation revokes subscribers' access to a revision.</p>
    #
    # @param [Hash] params
    #   See {Types::RevokeRevisionInput}.
    #
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    # @option params [String] :revocation_comment
    #   <p>A required comment to inform subscribers of the reason their access to the revision was revoked.</p>
    #
    # @return [Types::RevokeRevisionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_revision(
    #     data_set_id: 'DataSetId', # required
    #     revision_id: 'RevisionId', # required
    #     revocation_comment: 'RevocationComment' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RevokeRevisionOutput
    #   resp.data.arn #=> String
    #   resp.data.comment #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.data_set_id #=> String
    #   resp.data.finalized #=> Boolean
    #   resp.data.id #=> String
    #   resp.data.source_id #=> String
    #   resp.data.updated_at #=> Time
    #   resp.data.revocation_comment #=> String
    #   resp.data.revoked #=> Boolean
    #   resp.data.revoked_at #=> Time
    #
    def revoke_revision(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RevokeRevisionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RevokeRevisionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RevokeRevision
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::RevokeRevision
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RevokeRevision,
        stubs: @stubs,
        params_class: Params::RevokeRevisionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :revoke_revision
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation invokes an API Gateway API asset. The request is proxied to the provider’s API Gateway API.</p>
    #
    # @param [Hash] params
    #   See {Types::SendApiAssetInput}.
    #
    # @option params [String] :body
    #   <p>The request body.</p>
    #
    # @option params [Hash<String, String>] :query_string_parameters
    #   <p>Attach query string parameters to the end of the URI (for example, /v1/examplePath?exampleParam=exampleValue).</p>
    #
    # @option params [String] :asset_id
    #   <p>Asset ID value for the API request.</p>
    #
    # @option params [String] :data_set_id
    #   <p>Data set ID value for the API request.</p>
    #
    # @option params [Hash<String, String>] :request_headers
    #   <p>Any header value prefixed with x-amzn-dataexchange-header- will have that stripped before sending the Asset API request. Use this when you want to override a header that AWS Data Exchange uses. Alternatively, you can use the header without a prefix to the HTTP request.</p>
    #
    # @option params [String] :member_method
    #   <p>HTTP method value for the API request. Alternatively, you can use the appropriate verb in your request.</p>
    #
    # @option params [String] :path
    #   <p>URI path value for the API request. Alternatively, you can set the URI path directly by invoking /v1/{pathValue}</p>
    #
    # @option params [String] :revision_id
    #   <p>Revision ID value for the API request.</p>
    #
    # @return [Types::SendApiAssetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_api_asset(
    #     body: 'Body',
    #     query_string_parameters: {
    #       'key' => 'value'
    #     },
    #     asset_id: 'AssetId', # required
    #     data_set_id: 'DataSetId', # required
    #     member_method: 'Method',
    #     path: 'Path',
    #     revision_id: 'RevisionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendApiAssetOutput
    #   resp.data.body #=> String
    #   resp.data.response_headers #=> Hash<String, String>
    #   resp.data.response_headers['key'] #=> String
    #
    def send_api_asset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendApiAssetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendApiAssetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api-fulfill.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendApiAsset
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::SendApiAsset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendApiAsset,
        stubs: @stubs,
        params_class: Params::SendApiAssetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_api_asset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation starts a job.</p>
    #
    # @param [Hash] params
    #   See {Types::StartJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique identifier for a job.</p>
    #
    # @return [Types::StartJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartJobOutput
    #
    def start_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::StartJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartJob,
        stubs: @stubs,
        params_class: Params::StartJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation tags a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   A label that consists of a customer-defined key and an optional value.
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

    # <p>This operation removes one or more tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   The key tags.
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

    # <p>This operation updates an asset.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAssetInput}.
    #
    # @option params [String] :asset_id
    #   <p>The unique identifier for an asset.</p>
    #
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    # @option params [String] :name
    #   <p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name. When exporting to Amazon S3, the asset name is used as default target S3 object key. When importing from Amazon API Gateway API, the API name is used as the asset name. When importing from Amazon Redshift, the datashare name is used as the asset name.</p>
    #
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    # @return [Types::UpdateAssetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_asset(
    #     asset_id: 'AssetId', # required
    #     data_set_id: 'DataSetId', # required
    #     name: 'Name', # required
    #     revision_id: 'RevisionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAssetOutput
    #   resp.data.arn #=> String
    #   resp.data.asset_details #=> Types::AssetDetails
    #   resp.data.asset_details.s3_snapshot_asset #=> Types::S3SnapshotAsset
    #   resp.data.asset_details.s3_snapshot_asset.size #=> Float
    #   resp.data.asset_details.redshift_data_share_asset #=> Types::RedshiftDataShareAsset
    #   resp.data.asset_details.redshift_data_share_asset.arn #=> String
    #   resp.data.asset_details.api_gateway_api_asset #=> Types::ApiGatewayApiAsset
    #   resp.data.asset_details.api_gateway_api_asset.api_description #=> String
    #   resp.data.asset_details.api_gateway_api_asset.api_endpoint #=> String
    #   resp.data.asset_details.api_gateway_api_asset.api_id #=> String
    #   resp.data.asset_details.api_gateway_api_asset.api_key #=> String
    #   resp.data.asset_details.api_gateway_api_asset.api_name #=> String
    #   resp.data.asset_details.api_gateway_api_asset.api_specification_download_url #=> String
    #   resp.data.asset_details.api_gateway_api_asset.api_specification_download_url_expires_at #=> Time
    #   resp.data.asset_details.api_gateway_api_asset.protocol_type #=> String, one of ["REST"]
    #   resp.data.asset_details.api_gateway_api_asset.stage #=> String
    #   resp.data.asset_type #=> String, one of ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #   resp.data.created_at #=> Time
    #   resp.data.data_set_id #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.revision_id #=> String
    #   resp.data.source_id #=> String
    #   resp.data.updated_at #=> Time
    #
    def update_asset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAssetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAssetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAsset
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::UpdateAsset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAsset,
        stubs: @stubs,
        params_class: Params::UpdateAssetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_asset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation updates a data set.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDataSetInput}.
    #
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    # @option params [String] :description
    #   <p>The description for the data set.</p>
    #
    # @option params [String] :name
    #   <p>The name of the data set.</p>
    #
    # @return [Types::UpdateDataSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_set(
    #     data_set_id: 'DataSetId', # required
    #     description: 'Description',
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDataSetOutput
    #   resp.data.arn #=> String
    #   resp.data.asset_type #=> String, one of ["S3_SNAPSHOT", "REDSHIFT_DATA_SHARE", "API_GATEWAY_API"]
    #   resp.data.created_at #=> Time
    #   resp.data.description #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.origin #=> String, one of ["OWNED", "ENTITLED"]
    #   resp.data.origin_details #=> Types::OriginDetails
    #   resp.data.origin_details.product_id #=> String
    #   resp.data.source_id #=> String
    #   resp.data.updated_at #=> Time
    #
    def update_data_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDataSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDataSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDataSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateDataSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDataSet,
        stubs: @stubs,
        params_class: Params::UpdateDataSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_data_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation updates the event action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEventActionInput}.
    #
    # @option params [Action] :action
    #   <p>What occurs after a certain event.</p>
    #
    # @option params [String] :event_action_id
    #   <p>The unique identifier for the event action.</p>
    #
    # @return [Types::UpdateEventActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_action(
    #     action: {
    #       export_revision_to_s3: {
    #         encryption: {
    #           kms_key_arn: 'KmsKeyArn',
    #           type: 'aws:kms' # required - accepts ["aws:kms", "AES256"]
    #         },
    #         revision_destination: {
    #           bucket: 'Bucket', # required
    #           key_pattern: 'KeyPattern'
    #         } # required
    #       }
    #     },
    #     event_action_id: 'EventActionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEventActionOutput
    #   resp.data.action #=> Types::Action
    #   resp.data.action.export_revision_to_s3 #=> Types::AutoExportRevisionToS3RequestDetails
    #   resp.data.action.export_revision_to_s3.encryption #=> Types::ExportServerSideEncryption
    #   resp.data.action.export_revision_to_s3.encryption.kms_key_arn #=> String
    #   resp.data.action.export_revision_to_s3.encryption.type #=> String, one of ["aws:kms", "AES256"]
    #   resp.data.action.export_revision_to_s3.revision_destination #=> Types::AutoExportRevisionDestinationEntry
    #   resp.data.action.export_revision_to_s3.revision_destination.bucket #=> String
    #   resp.data.action.export_revision_to_s3.revision_destination.key_pattern #=> String
    #   resp.data.arn #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.event #=> Types::Event
    #   resp.data.event.revision_published #=> Types::RevisionPublished
    #   resp.data.event.revision_published.data_set_id #=> String
    #   resp.data.id #=> String
    #   resp.data.updated_at #=> Time
    #
    def update_event_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEventActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEventActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEventAction
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateEventAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEventAction,
        stubs: @stubs,
        params_class: Params::UpdateEventActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_event_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation updates a revision.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRevisionInput}.
    #
    # @option params [String] :comment
    #   <p>An optional comment about the revision.</p>
    #
    # @option params [String] :data_set_id
    #   <p>The unique identifier for a data set.</p>
    #
    # @option params [Boolean] :finalized
    #   <p>Finalizing a revision tells AWS Data Exchange that your changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p>
    #
    # @option params [String] :revision_id
    #   <p>The unique identifier for a revision.</p>
    #
    # @return [Types::UpdateRevisionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_revision(
    #     comment: 'Comment',
    #     data_set_id: 'DataSetId', # required
    #     finalized: false,
    #     revision_id: 'RevisionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRevisionOutput
    #   resp.data.arn #=> String
    #   resp.data.comment #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.data_set_id #=> String
    #   resp.data.finalized #=> Boolean
    #   resp.data.id #=> String
    #   resp.data.source_id #=> String
    #   resp.data.updated_at #=> Time
    #   resp.data.revocation_comment #=> String
    #   resp.data.revoked #=> Boolean
    #   resp.data.revoked_at #=> Time
    #
    def update_revision(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRevisionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRevisionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRevision
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::UpdateRevision
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRevision,
        stubs: @stubs,
        params_class: Params::UpdateRevisionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_revision
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
