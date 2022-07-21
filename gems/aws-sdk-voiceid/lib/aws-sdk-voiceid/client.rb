# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::VoiceID
  # An API client for VoiceID
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Connect Voice ID provides real-time caller authentication and fraud screening. This guide
  #             describes the APIs used for this service.
  #         </p>
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
    def initialize(config = AWS::SDK::VoiceID::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a domain that contains all Amazon Connect Voice ID data, such as speakers, fraudsters, customer
    #             audio, and voiceprints.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::CreateDomainInput}.
    #
    # @option params [String] :name
    #   <p>The name of the domain.</p>
    #
    # @option params [String] :description
    #   <p>A brief description of this domain.</p>
    #
    # @option params [ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   <p>The configuration, containing the KMS key identifier, to be used by Voice ID for
    #               the server-side encryption of your data. Refer to <a href="https://docs.aws.amazon.com/connect/latest/adminguide/encryption-at-rest.html#encryption-at-rest-voiceid">
    #                   Amazon Connect Voice ID encryption at rest</a> for more details on how the KMS key is used.
    #           </p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token for creating a new domain. If not provided, Amazon Web Services SDK populates
    #               this field.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags you want added to the domain.</p>
    #
    # @return [Types::CreateDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain(
    #     name: 'Name', # required
    #     description: 'Description',
    #     server_side_encryption_configuration: {
    #       kms_key_id: 'KmsKeyId' # required
    #     }, # required
    #     client_token: 'ClientToken',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDomainOutput
    #   resp.data.domain #=> Types::Domain
    #   resp.data.domain.domain_id #=> String
    #   resp.data.domain.arn #=> String
    #   resp.data.domain.name #=> String
    #   resp.data.domain.description #=> String
    #   resp.data.domain.domain_status #=> String, one of ["ACTIVE", "PENDING", "SUSPENDED"]
    #   resp.data.domain.server_side_encryption_configuration #=> Types::ServerSideEncryptionConfiguration
    #   resp.data.domain.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.data.domain.created_at #=> Time
    #   resp.data.domain.updated_at #=> Time
    #   resp.data.domain.server_side_encryption_update_details #=> Types::ServerSideEncryptionUpdateDetails
    #   resp.data.domain.server_side_encryption_update_details.old_kms_key_id #=> String
    #   resp.data.domain.server_side_encryption_update_details.update_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.domain.server_side_encryption_update_details.message #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
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

    # <p>Deletes the specified domain from Voice ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDomainInput}.
    #
    # @option params [String] :domain_id
    #   <p>The identifier of the domain you want to delete.</p>
    #
    # @return [Types::DeleteDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain(
    #     domain_id: 'DomainId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDomainOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException]),
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

    # <p>Deletes the specified fraudster from Voice ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFraudsterInput}.
    #
    # @option params [String] :domain_id
    #   <p>The identifier of the domain containing the fraudster.</p>
    #
    # @option params [String] :fraudster_id
    #   <p>The identifier of the fraudster you want to delete.</p>
    #
    # @return [Types::DeleteFraudsterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fraudster(
    #     domain_id: 'DomainId', # required
    #     fraudster_id: 'FraudsterId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFraudsterOutput
    #
    def delete_fraudster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFraudsterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFraudsterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFraudster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteFraudster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFraudster,
        stubs: @stubs,
        params_class: Params::DeleteFraudsterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_fraudster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified speaker from Voice ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSpeakerInput}.
    #
    # @option params [String] :domain_id
    #   <p>The identifier of the domain containing the speaker.</p>
    #
    # @option params [String] :speaker_id
    #   <p>The identifier of the speaker you want to delete.</p>
    #
    # @return [Types::DeleteSpeakerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_speaker(
    #     domain_id: 'DomainId', # required
    #     speaker_id: 'SpeakerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSpeakerOutput
    #
    def delete_speaker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSpeakerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSpeakerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSpeaker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteSpeaker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSpeaker,
        stubs: @stubs,
        params_class: Params::DeleteSpeakerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_speaker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified domain.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDomainInput}.
    #
    # @option params [String] :domain_id
    #   <p>The identifier of the domain you are describing.</p>
    #
    # @return [Types::DescribeDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain(
    #     domain_id: 'DomainId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDomainOutput
    #   resp.data.domain #=> Types::Domain
    #   resp.data.domain.domain_id #=> String
    #   resp.data.domain.arn #=> String
    #   resp.data.domain.name #=> String
    #   resp.data.domain.description #=> String
    #   resp.data.domain.domain_status #=> String, one of ["ACTIVE", "PENDING", "SUSPENDED"]
    #   resp.data.domain.server_side_encryption_configuration #=> Types::ServerSideEncryptionConfiguration
    #   resp.data.domain.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.data.domain.created_at #=> Time
    #   resp.data.domain.updated_at #=> Time
    #   resp.data.domain.server_side_encryption_update_details #=> Types::ServerSideEncryptionUpdateDetails
    #   resp.data.domain.server_side_encryption_update_details.old_kms_key_id #=> String
    #   resp.data.domain.server_side_encryption_update_details.update_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.domain.server_side_encryption_update_details.message #=> String
    #
    def describe_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DescribeDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDomain,
        stubs: @stubs,
        params_class: Params::DescribeDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified fraudster.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFraudsterInput}.
    #
    # @option params [String] :domain_id
    #   <p>The identifier of the domain containing the fraudster.</p>
    #
    # @option params [String] :fraudster_id
    #   <p>The identifier of the fraudster you are describing.</p>
    #
    # @return [Types::DescribeFraudsterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fraudster(
    #     domain_id: 'DomainId', # required
    #     fraudster_id: 'FraudsterId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFraudsterOutput
    #   resp.data.fraudster #=> Types::Fraudster
    #   resp.data.fraudster.domain_id #=> String
    #   resp.data.fraudster.generated_fraudster_id #=> String
    #   resp.data.fraudster.created_at #=> Time
    #
    def describe_fraudster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFraudsterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFraudsterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFraudster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DescribeFraudster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFraudster,
        stubs: @stubs,
        params_class: Params::DescribeFraudsterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fraudster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified fraudster registration job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFraudsterRegistrationJobInput}.
    #
    # @option params [String] :domain_id
    #   <p>The identifier for the domain containing the fraudster registration job.</p>
    #
    # @option params [String] :job_id
    #   <p>The identifier for the fraudster registration job you are describing.</p>
    #
    # @return [Types::DescribeFraudsterRegistrationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fraudster_registration_job(
    #     domain_id: 'DomainId', # required
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFraudsterRegistrationJobOutput
    #   resp.data.job #=> Types::FraudsterRegistrationJob
    #   resp.data.job.job_name #=> String
    #   resp.data.job.job_id #=> String
    #   resp.data.job.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"]
    #   resp.data.job.domain_id #=> String
    #   resp.data.job.data_access_role_arn #=> String
    #   resp.data.job.registration_config #=> Types::RegistrationConfig
    #   resp.data.job.registration_config.duplicate_registration_action #=> String, one of ["SKIP", "REGISTER_AS_NEW"]
    #   resp.data.job.registration_config.fraudster_similarity_threshold #=> Integer
    #   resp.data.job.input_data_config #=> Types::InputDataConfig
    #   resp.data.job.input_data_config.s3_uri #=> String
    #   resp.data.job.output_data_config #=> Types::OutputDataConfig
    #   resp.data.job.output_data_config.s3_uri #=> String
    #   resp.data.job.output_data_config.kms_key_id #=> String
    #   resp.data.job.created_at #=> Time
    #   resp.data.job.ended_at #=> Time
    #   resp.data.job.failure_details #=> Types::FailureDetails
    #   resp.data.job.failure_details.status_code #=> Integer
    #   resp.data.job.failure_details.message #=> String
    #   resp.data.job.job_progress #=> Types::JobProgress
    #   resp.data.job.job_progress.percent_complete #=> Integer
    #
    def describe_fraudster_registration_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFraudsterRegistrationJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFraudsterRegistrationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFraudsterRegistrationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DescribeFraudsterRegistrationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFraudsterRegistrationJob,
        stubs: @stubs,
        params_class: Params::DescribeFraudsterRegistrationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fraudster_registration_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified speaker.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSpeakerInput}.
    #
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the speaker.</p>
    #
    # @option params [String] :speaker_id
    #   <p>The identifier of the speaker you are describing.</p>
    #
    # @return [Types::DescribeSpeakerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_speaker(
    #     domain_id: 'DomainId', # required
    #     speaker_id: 'SpeakerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSpeakerOutput
    #   resp.data.speaker #=> Types::Speaker
    #   resp.data.speaker.domain_id #=> String
    #   resp.data.speaker.customer_speaker_id #=> String
    #   resp.data.speaker.generated_speaker_id #=> String
    #   resp.data.speaker.status #=> String, one of ["ENROLLED", "EXPIRED", "OPTED_OUT", "PENDING"]
    #   resp.data.speaker.created_at #=> Time
    #   resp.data.speaker.updated_at #=> Time
    #   resp.data.speaker.last_accessed_at #=> Time
    #
    def describe_speaker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSpeakerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSpeakerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSpeaker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DescribeSpeaker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSpeaker,
        stubs: @stubs,
        params_class: Params::DescribeSpeakerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_speaker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified speaker enrollment job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSpeakerEnrollmentJobInput}.
    #
    # @option params [String] :domain_id
    #   <p>The identifier of the domain containing the speaker enrollment job.</p>
    #
    # @option params [String] :job_id
    #   <p>The identifier of the speaker enrollment job you are describing.</p>
    #
    # @return [Types::DescribeSpeakerEnrollmentJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_speaker_enrollment_job(
    #     domain_id: 'DomainId', # required
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSpeakerEnrollmentJobOutput
    #   resp.data.job #=> Types::SpeakerEnrollmentJob
    #   resp.data.job.job_name #=> String
    #   resp.data.job.job_id #=> String
    #   resp.data.job.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"]
    #   resp.data.job.domain_id #=> String
    #   resp.data.job.data_access_role_arn #=> String
    #   resp.data.job.enrollment_config #=> Types::EnrollmentConfig
    #   resp.data.job.enrollment_config.existing_enrollment_action #=> String, one of ["SKIP", "OVERWRITE"]
    #   resp.data.job.enrollment_config.fraud_detection_config #=> Types::EnrollmentJobFraudDetectionConfig
    #   resp.data.job.enrollment_config.fraud_detection_config.fraud_detection_action #=> String, one of ["IGNORE", "FAIL"]
    #   resp.data.job.enrollment_config.fraud_detection_config.risk_threshold #=> Integer
    #   resp.data.job.input_data_config #=> Types::InputDataConfig
    #   resp.data.job.input_data_config.s3_uri #=> String
    #   resp.data.job.output_data_config #=> Types::OutputDataConfig
    #   resp.data.job.output_data_config.s3_uri #=> String
    #   resp.data.job.output_data_config.kms_key_id #=> String
    #   resp.data.job.created_at #=> Time
    #   resp.data.job.ended_at #=> Time
    #   resp.data.job.failure_details #=> Types::FailureDetails
    #   resp.data.job.failure_details.status_code #=> Integer
    #   resp.data.job.failure_details.message #=> String
    #   resp.data.job.job_progress #=> Types::JobProgress
    #   resp.data.job.job_progress.percent_complete #=> Integer
    #
    def describe_speaker_enrollment_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSpeakerEnrollmentJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSpeakerEnrollmentJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSpeakerEnrollmentJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DescribeSpeakerEnrollmentJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSpeakerEnrollmentJob,
        stubs: @stubs,
        params_class: Params::DescribeSpeakerEnrollmentJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_speaker_enrollment_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Evaluates a specified session based on audio data accumulated during a streaming Amazon Connect Voice
    #             ID call.</p>
    #
    # @param [Hash] params
    #   See {Types::EvaluateSessionInput}.
    #
    # @option params [String] :domain_id
    #   <p>The identifier of the domain where the session started.</p>
    #
    # @option params [String] :session_name_or_id
    #   <p>The session identifier, or name of the session, that you want to evaluate. In Voice ID
    #               integration, this is the Contact-Id.</p>
    #
    # @return [Types::EvaluateSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.evaluate_session(
    #     domain_id: 'DomainId', # required
    #     session_name_or_id: 'SessionNameOrId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EvaluateSessionOutput
    #   resp.data.domain_id #=> String
    #   resp.data.session_id #=> String
    #   resp.data.session_name #=> String
    #   resp.data.streaming_status #=> String, one of ["PENDING_CONFIGURATION", "ONGOING", "ENDED"]
    #   resp.data.authentication_result #=> Types::AuthenticationResult
    #   resp.data.authentication_result.authentication_result_id #=> String
    #   resp.data.authentication_result.audio_aggregation_started_at #=> Time
    #   resp.data.authentication_result.audio_aggregation_ended_at #=> Time
    #   resp.data.authentication_result.customer_speaker_id #=> String
    #   resp.data.authentication_result.generated_speaker_id #=> String
    #   resp.data.authentication_result.decision #=> String, one of ["ACCEPT", "REJECT", "NOT_ENOUGH_SPEECH", "SPEAKER_NOT_ENROLLED", "SPEAKER_OPTED_OUT", "SPEAKER_ID_NOT_PROVIDED", "SPEAKER_EXPIRED"]
    #   resp.data.authentication_result.score #=> Integer
    #   resp.data.authentication_result.configuration #=> Types::AuthenticationConfiguration
    #   resp.data.authentication_result.configuration.acceptance_threshold #=> Integer
    #   resp.data.fraud_detection_result #=> Types::FraudDetectionResult
    #   resp.data.fraud_detection_result.fraud_detection_result_id #=> String
    #   resp.data.fraud_detection_result.audio_aggregation_started_at #=> Time
    #   resp.data.fraud_detection_result.audio_aggregation_ended_at #=> Time
    #   resp.data.fraud_detection_result.configuration #=> Types::FraudDetectionConfiguration
    #   resp.data.fraud_detection_result.configuration.risk_threshold #=> Integer
    #   resp.data.fraud_detection_result.decision #=> String, one of ["HIGH_RISK", "LOW_RISK", "NOT_ENOUGH_SPEECH"]
    #   resp.data.fraud_detection_result.reasons #=> Array<String>
    #   resp.data.fraud_detection_result.reasons[0] #=> String, one of ["KNOWN_FRAUDSTER"]
    #   resp.data.fraud_detection_result.risk_details #=> Types::FraudRiskDetails
    #   resp.data.fraud_detection_result.risk_details.known_fraudster_risk #=> Types::KnownFraudsterRisk
    #   resp.data.fraud_detection_result.risk_details.known_fraudster_risk.risk_score #=> Integer
    #   resp.data.fraud_detection_result.risk_details.known_fraudster_risk.generated_fraudster_id #=> String
    #
    def evaluate_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EvaluateSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EvaluateSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EvaluateSession
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::EvaluateSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EvaluateSession,
        stubs: @stubs,
        params_class: Params::EvaluateSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :evaluate_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the domains in the Amazon Web Services account.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListDomainsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>NextToken</code> to obtain
    #               further pages of results. The default is 100; the maximum allowed page size is also 100.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
    #               is a unique pagination token for each page. Make the call again using the returned token to retrieve the
    #               next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #
    # @return [Types::ListDomainsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDomainsOutput
    #   resp.data.domain_summaries #=> Array<DomainSummary>
    #   resp.data.domain_summaries[0] #=> Types::DomainSummary
    #   resp.data.domain_summaries[0].domain_id #=> String
    #   resp.data.domain_summaries[0].arn #=> String
    #   resp.data.domain_summaries[0].name #=> String
    #   resp.data.domain_summaries[0].description #=> String
    #   resp.data.domain_summaries[0].domain_status #=> String, one of ["ACTIVE", "PENDING", "SUSPENDED"]
    #   resp.data.domain_summaries[0].server_side_encryption_configuration #=> Types::ServerSideEncryptionConfiguration
    #   resp.data.domain_summaries[0].server_side_encryption_configuration.kms_key_id #=> String
    #   resp.data.domain_summaries[0].created_at #=> Time
    #   resp.data.domain_summaries[0].updated_at #=> Time
    #   resp.data.domain_summaries[0].server_side_encryption_update_details #=> Types::ServerSideEncryptionUpdateDetails
    #   resp.data.domain_summaries[0].server_side_encryption_update_details.old_kms_key_id #=> String
    #   resp.data.domain_summaries[0].server_side_encryption_update_details.update_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.domain_summaries[0].server_side_encryption_update_details.message #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
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

    # <p>Lists all the fraudster registration jobs in the domain with the given <code>JobStatus</code>.
    #             If <code>JobStatus</code> is not provided, this lists all fraudster registration jobs in the given
    #             domain.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListFraudsterRegistrationJobsInput}.
    #
    # @option params [String] :domain_id
    #   <p>The identifier of the domain containing the fraudster registration Jobs.</p>
    #
    # @option params [String] :job_status
    #   <p>Provides the status of your fraudster registration job.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>NextToken</code> to obtain
    #               further pages of results. The default is 100; the maximum allowed page size is also 100.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
    #               is a unique pagination token for each page. Make the call again using the returned token to retrieve the
    #               next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #
    # @return [Types::ListFraudsterRegistrationJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fraudster_registration_jobs(
    #     domain_id: 'DomainId', # required
    #     job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFraudsterRegistrationJobsOutput
    #   resp.data.job_summaries #=> Array<FraudsterRegistrationJobSummary>
    #   resp.data.job_summaries[0] #=> Types::FraudsterRegistrationJobSummary
    #   resp.data.job_summaries[0].job_name #=> String
    #   resp.data.job_summaries[0].job_id #=> String
    #   resp.data.job_summaries[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"]
    #   resp.data.job_summaries[0].domain_id #=> String
    #   resp.data.job_summaries[0].created_at #=> Time
    #   resp.data.job_summaries[0].ended_at #=> Time
    #   resp.data.job_summaries[0].failure_details #=> Types::FailureDetails
    #   resp.data.job_summaries[0].failure_details.status_code #=> Integer
    #   resp.data.job_summaries[0].failure_details.message #=> String
    #   resp.data.job_summaries[0].job_progress #=> Types::JobProgress
    #   resp.data.job_summaries[0].job_progress.percent_complete #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_fraudster_registration_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFraudsterRegistrationJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFraudsterRegistrationJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFraudsterRegistrationJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListFraudsterRegistrationJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFraudsterRegistrationJobs,
        stubs: @stubs,
        params_class: Params::ListFraudsterRegistrationJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_fraudster_registration_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the speaker enrollment jobs in the domain with the specified <code>JobStatus</code>. If
    #             <code>JobStatus</code> is not provided, this lists all jobs with all possible speaker enrollment job
    #             statuses.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSpeakerEnrollmentJobsInput}.
    #
    # @option params [String] :domain_id
    #   <p>The identifier of the domain containing the speaker enrollment jobs.</p>
    #
    # @option params [String] :job_status
    #   <p>Provides the status of your speaker enrollment Job.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>NextToken</code> to obtain
    #               further pages of results. The default is 100; the maximum allowed page size is also 100.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
    #               is a unique pagination token for each page. Make the call again using the returned token to retrieve the
    #               next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #
    # @return [Types::ListSpeakerEnrollmentJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_speaker_enrollment_jobs(
    #     domain_id: 'DomainId', # required
    #     job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSpeakerEnrollmentJobsOutput
    #   resp.data.job_summaries #=> Array<SpeakerEnrollmentJobSummary>
    #   resp.data.job_summaries[0] #=> Types::SpeakerEnrollmentJobSummary
    #   resp.data.job_summaries[0].job_name #=> String
    #   resp.data.job_summaries[0].job_id #=> String
    #   resp.data.job_summaries[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"]
    #   resp.data.job_summaries[0].domain_id #=> String
    #   resp.data.job_summaries[0].created_at #=> Time
    #   resp.data.job_summaries[0].ended_at #=> Time
    #   resp.data.job_summaries[0].failure_details #=> Types::FailureDetails
    #   resp.data.job_summaries[0].failure_details.status_code #=> Integer
    #   resp.data.job_summaries[0].failure_details.message #=> String
    #   resp.data.job_summaries[0].job_progress #=> Types::JobProgress
    #   resp.data.job_summaries[0].job_progress.percent_complete #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_speaker_enrollment_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSpeakerEnrollmentJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSpeakerEnrollmentJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSpeakerEnrollmentJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListSpeakerEnrollmentJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSpeakerEnrollmentJobs,
        stubs: @stubs,
        params_class: Params::ListSpeakerEnrollmentJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_speaker_enrollment_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all speakers in a specified domain.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSpeakersInput}.
    #
    # @option params [String] :domain_id
    #   <p>The identifier of the domain.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>NextToken</code> to obtain
    #               further pages of results. The default is 100; the maximum allowed page size is also 100.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
    #               is a unique pagination token for each page. Make the call again using the returned token to retrieve the
    #               next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #           </p>
    #
    # @return [Types::ListSpeakersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_speakers(
    #     domain_id: 'DomainId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSpeakersOutput
    #   resp.data.speaker_summaries #=> Array<SpeakerSummary>
    #   resp.data.speaker_summaries[0] #=> Types::SpeakerSummary
    #   resp.data.speaker_summaries[0].domain_id #=> String
    #   resp.data.speaker_summaries[0].customer_speaker_id #=> String
    #   resp.data.speaker_summaries[0].generated_speaker_id #=> String
    #   resp.data.speaker_summaries[0].status #=> String, one of ["ENROLLED", "EXPIRED", "OPTED_OUT", "PENDING"]
    #   resp.data.speaker_summaries[0].created_at #=> Time
    #   resp.data.speaker_summaries[0].updated_at #=> Time
    #   resp.data.speaker_summaries[0].last_accessed_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_speakers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSpeakersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSpeakersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSpeakers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListSpeakers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSpeakers,
        stubs: @stubs,
        params_class: Params::ListSpeakersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_speakers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all tags associated with a specified Voice ID resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Voice ID resource for which you want to list the tags.</p>
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
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException]),
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

    # <p>Opts out a speaker from Voice ID. A speaker can be opted out regardless of whether or not they
    #             already exist in Voice ID. If they don't yet exist, a new speaker is created in an opted out state.
    #             If they already exist, their existing status is overridden and they are opted out. Enrollment and
    #             evaluation authentication requests are rejected for opted out speakers, and opted out speakers have
    #             no voice embeddings stored in Voice ID.</p>
    #
    # @param [Hash] params
    #   See {Types::OptOutSpeakerInput}.
    #
    # @option params [String] :domain_id
    #   <p>The identifier of the domain containing the speaker.</p>
    #
    # @option params [String] :speaker_id
    #   <p>The identifier of the speaker you want opted-out.</p>
    #
    # @return [Types::OptOutSpeakerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.opt_out_speaker(
    #     domain_id: 'DomainId', # required
    #     speaker_id: 'SpeakerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::OptOutSpeakerOutput
    #   resp.data.speaker #=> Types::Speaker
    #   resp.data.speaker.domain_id #=> String
    #   resp.data.speaker.customer_speaker_id #=> String
    #   resp.data.speaker.generated_speaker_id #=> String
    #   resp.data.speaker.status #=> String, one of ["ENROLLED", "EXPIRED", "OPTED_OUT", "PENDING"]
    #   resp.data.speaker.created_at #=> Time
    #   resp.data.speaker.updated_at #=> Time
    #   resp.data.speaker.last_accessed_at #=> Time
    #
    def opt_out_speaker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::OptOutSpeakerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::OptOutSpeakerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::OptOutSpeaker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::OptOutSpeaker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::OptOutSpeaker,
        stubs: @stubs,
        params_class: Params::OptOutSpeakerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :opt_out_speaker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a new batch fraudster registration job using provided details.</p>
    #
    # @param [Hash] params
    #   See {Types::StartFraudsterRegistrationJobInput}.
    #
    # @option params [String] :client_token
    #   <p>The idempotency token for starting a new fraudster registration job. If not provided, Amazon Web Services
    #               SDK populates this field.</p>
    #
    # @option params [String] :job_name
    #   <p>The name of the new fraudster registration job.</p>
    #
    # @option params [String] :domain_id
    #   <p>The identifier of the domain containing the fraudster registration job and in which the fraudsters are
    #               registered.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access customer's buckets
    #               to read the input manifest file and write the Job output file. Refer to the
    #               <a href="https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-fraudster-watchlist.html">Create and
    #                   edit a fraudster watchlist</a> documentation for the permissions needed in this role.</p>
    #
    # @option params [RegistrationConfig] :registration_config
    #   <p>The registration config containing details such as the action to take when a duplicate fraudster is
    #               detected, and the similarity threshold to use for detecting a duplicate fraudster.</p>
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>The input data config containing an S3 URI for the input manifest file that contains the list
    #               of fraudster registration requests.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>The output data config containing the S3 location where Voice ID writes the job output file; you must
    #               also include a KMS key ID to encrypt the file.</p>
    #
    # @return [Types::StartFraudsterRegistrationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fraudster_registration_job(
    #     client_token: 'ClientToken',
    #     job_name: 'JobName',
    #     domain_id: 'DomainId', # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     registration_config: {
    #       duplicate_registration_action: 'SKIP', # accepts ["SKIP", "REGISTER_AS_NEW"]
    #       fraudster_similarity_threshold: 1
    #     },
    #     input_data_config: {
    #       s3_uri: 'S3Uri' # required
    #     }, # required
    #     output_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       kms_key_id: 'KmsKeyId'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartFraudsterRegistrationJobOutput
    #   resp.data.job #=> Types::FraudsterRegistrationJob
    #   resp.data.job.job_name #=> String
    #   resp.data.job.job_id #=> String
    #   resp.data.job.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"]
    #   resp.data.job.domain_id #=> String
    #   resp.data.job.data_access_role_arn #=> String
    #   resp.data.job.registration_config #=> Types::RegistrationConfig
    #   resp.data.job.registration_config.duplicate_registration_action #=> String, one of ["SKIP", "REGISTER_AS_NEW"]
    #   resp.data.job.registration_config.fraudster_similarity_threshold #=> Integer
    #   resp.data.job.input_data_config #=> Types::InputDataConfig
    #   resp.data.job.input_data_config.s3_uri #=> String
    #   resp.data.job.output_data_config #=> Types::OutputDataConfig
    #   resp.data.job.output_data_config.s3_uri #=> String
    #   resp.data.job.output_data_config.kms_key_id #=> String
    #   resp.data.job.created_at #=> Time
    #   resp.data.job.ended_at #=> Time
    #   resp.data.job.failure_details #=> Types::FailureDetails
    #   resp.data.job.failure_details.status_code #=> Integer
    #   resp.data.job.failure_details.message #=> String
    #   resp.data.job.job_progress #=> Types::JobProgress
    #   resp.data.job.job_progress.percent_complete #=> Integer
    #
    def start_fraudster_registration_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartFraudsterRegistrationJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartFraudsterRegistrationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartFraudsterRegistrationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::StartFraudsterRegistrationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartFraudsterRegistrationJob,
        stubs: @stubs,
        params_class: Params::StartFraudsterRegistrationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_fraudster_registration_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a new batch speaker enrollment job using specified details.</p>
    #
    # @param [Hash] params
    #   See {Types::StartSpeakerEnrollmentJobInput}.
    #
    # @option params [String] :client_token
    #   <p>The idempotency token for starting a new speaker enrollment Job. If not provided, Amazon Web Services
    #               SDK populates this field.</p>
    #
    # @option params [String] :job_name
    #   <p>A name for your speaker enrollment job.</p>
    #
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the speaker enrollment job and in which the speakers are
    #               enrolled.
    #           </p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access customer's buckets
    #               to read the input manifest file and write the job output file. Refer to <a href="https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-batch-enrollment.html">Batch enrollment using audio data from prior
    #                   calls</a> documentation for the permissions needed in this role.</p>
    #
    # @option params [EnrollmentConfig] :enrollment_config
    #   <p>The enrollment config that contains details such as the action to take when a speaker is already
    #               enrolled in Voice ID or when a speaker is identified as a fraudster.</p>
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>The input data config containing the S3 location for the input manifest file that contains the list of
    #               speaker enrollment requests.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>The output data config containing the S3 location where Voice ID writes the job output file; you must
    #               also include a KMS key ID to encrypt the file.</p>
    #
    # @return [Types::StartSpeakerEnrollmentJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_speaker_enrollment_job(
    #     client_token: 'ClientToken',
    #     job_name: 'JobName',
    #     domain_id: 'DomainId', # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     enrollment_config: {
    #       existing_enrollment_action: 'SKIP', # accepts ["SKIP", "OVERWRITE"]
    #       fraud_detection_config: {
    #         fraud_detection_action: 'IGNORE', # accepts ["IGNORE", "FAIL"]
    #         risk_threshold: 1
    #       }
    #     },
    #     input_data_config: {
    #       s3_uri: 'S3Uri' # required
    #     }, # required
    #     output_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       kms_key_id: 'KmsKeyId'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartSpeakerEnrollmentJobOutput
    #   resp.data.job #=> Types::SpeakerEnrollmentJob
    #   resp.data.job.job_name #=> String
    #   resp.data.job.job_id #=> String
    #   resp.data.job.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"]
    #   resp.data.job.domain_id #=> String
    #   resp.data.job.data_access_role_arn #=> String
    #   resp.data.job.enrollment_config #=> Types::EnrollmentConfig
    #   resp.data.job.enrollment_config.existing_enrollment_action #=> String, one of ["SKIP", "OVERWRITE"]
    #   resp.data.job.enrollment_config.fraud_detection_config #=> Types::EnrollmentJobFraudDetectionConfig
    #   resp.data.job.enrollment_config.fraud_detection_config.fraud_detection_action #=> String, one of ["IGNORE", "FAIL"]
    #   resp.data.job.enrollment_config.fraud_detection_config.risk_threshold #=> Integer
    #   resp.data.job.input_data_config #=> Types::InputDataConfig
    #   resp.data.job.input_data_config.s3_uri #=> String
    #   resp.data.job.output_data_config #=> Types::OutputDataConfig
    #   resp.data.job.output_data_config.s3_uri #=> String
    #   resp.data.job.output_data_config.kms_key_id #=> String
    #   resp.data.job.created_at #=> Time
    #   resp.data.job.ended_at #=> Time
    #   resp.data.job.failure_details #=> Types::FailureDetails
    #   resp.data.job.failure_details.status_code #=> Integer
    #   resp.data.job.failure_details.message #=> String
    #   resp.data.job.job_progress #=> Types::JobProgress
    #   resp.data.job.job_progress.percent_complete #=> Integer
    #
    def start_speaker_enrollment_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartSpeakerEnrollmentJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartSpeakerEnrollmentJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartSpeakerEnrollmentJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::StartSpeakerEnrollmentJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartSpeakerEnrollmentJob,
        stubs: @stubs,
        params_class: Params::StartSpeakerEnrollmentJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_speaker_enrollment_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Tags a Voice ID resource with the provided list of tags.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Voice ID resource you want to tag.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of tags to assign to the specified resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException]),
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

    # <p>Removes specified tags from a specified Amazon Connect Voice ID resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Voice ID resource you want to remove tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys you want to remove from the specified resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException]),
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

    # <p>Updates the specified domain. This API has clobber behavior, and clears and replaces all attributes.
    #             If an optional field, such as 'Description' is not provided, it is removed from the domain.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDomainInput}.
    #
    # @option params [String] :domain_id
    #   <p>The identifier of the domain to be updated.</p>
    #
    # @option params [String] :name
    #   <p>The name of the domain.</p>
    #
    # @option params [String] :description
    #   <p>A brief description about this domain.</p>
    #
    # @option params [ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   <p>The configuration, containing the KMS key identifier, to be used by Voice ID for the server-side
    #               encryption of your data. Note that all the existing data in the domain are still encrypted using the
    #               existing key, only the data added to domain after updating the key is encrypted using the new key. </p>
    #
    # @return [Types::UpdateDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain(
    #     domain_id: 'DomainId', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     server_side_encryption_configuration: {
    #       kms_key_id: 'KmsKeyId' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDomainOutput
    #   resp.data.domain #=> Types::Domain
    #   resp.data.domain.domain_id #=> String
    #   resp.data.domain.arn #=> String
    #   resp.data.domain.name #=> String
    #   resp.data.domain.description #=> String
    #   resp.data.domain.domain_status #=> String, one of ["ACTIVE", "PENDING", "SUSPENDED"]
    #   resp.data.domain.server_side_encryption_configuration #=> Types::ServerSideEncryptionConfiguration
    #   resp.data.domain.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.data.domain.created_at #=> Time
    #   resp.data.domain.updated_at #=> Time
    #   resp.data.domain.server_side_encryption_update_details #=> Types::ServerSideEncryptionUpdateDetails
    #   resp.data.domain.server_side_encryption_update_details.old_kms_key_id #=> String
    #   resp.data.domain.server_side_encryption_update_details.update_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.domain.server_side_encryption_update_details.message #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
