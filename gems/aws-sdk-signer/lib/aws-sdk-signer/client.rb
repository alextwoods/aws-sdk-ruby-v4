# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Signer
  # An API client for WallabyService
  # See {#initialize} for a full list of supported configuration options
  # <p>AWS Signer is a fully managed code signing service to help you ensure the trust and
  # 			integrity of your code. </p>
  # 		       <p>AWS Signer supports the following applications:</p>
  #
  # 		       <p>With <i>code signing for AWS Lambda</i>, you can sign AWS Lambda
  # 			deployment packages. Integrated support is provided for Amazon S3, Amazon CloudWatch,
  # 			and AWS CloudTrail. In order to sign code, you create a signing profile and then use
  # 			Signer to sign Lambda zip files in S3. </p>
  # 		
  # 		       <p>With <i>code signing for IoT</i>, you can sign code for any IoT device that is
  # 			supported by AWS. IoT code signing is available for <a href="http://docs.aws.amazon.com/freertos/latest/userguide/">Amazon FreeRTOS</a> and <a href="http://docs.aws.amazon.com/iot/latest/developerguide/">AWS IoT Device Management</a>, and is
  # 			integrated with <a href="http://docs.aws.amazon.com/acm/latest/userguide/">AWS Certificate Manager (ACM)</a>. In order to sign
  # 			code, you import a third-party code signing certificate using ACM, and use that to
  # 			sign updates in Amazon FreeRTOS and AWS IoT Device Management. </p>
  # 		       <p>For more information about AWS Signer, see the <a href="http://docs.aws.amazon.com/signer/latest/developerguide/Welcome.html">AWS Signer Developer Guide</a>.</p>
  # 		
  # 		       <p></p>
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
    def initialize(config = AWS::SDK::Signer::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds cross-account permissions to a signing profile.</p>
    #
    # @param [Hash] params
    #   See {Types::AddProfilePermissionInput}.
    #
    # @option params [String] :profile_name
    #   <p>The human-readable name of the signing profile.</p>
    #
    # @option params [String] :profile_version
    #   <p>The version of the signing profile.</p>
    #
    # @option params [String] :action
    #   <p>The AWS Signer action permitted as part of cross-account permissions.</p>
    #
    # @option params [String] :principal
    #   <p>The AWS principal receiving cross-account permissions. This may be an IAM role or
    #   			another AWS account ID.</p>
    #
    # @option params [String] :revision_id
    #   <p>A unique identifier for the current profile revision.</p>
    #
    # @option params [String] :statement_id
    #   <p>A unique identifier for the cross-account permission statement.</p>
    #
    # @return [Types::AddProfilePermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_profile_permission(
    #     profile_name: 'profileName', # required
    #     profile_version: 'profileVersion',
    #     action: 'action', # required
    #     principal: 'principal', # required
    #     revision_id: 'revisionId',
    #     statement_id: 'statementId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddProfilePermissionOutput
    #   resp.data.revision_id #=> String
    #
    def add_profile_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddProfilePermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddProfilePermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddProfilePermission
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ServiceLimitExceededException, Errors::InternalServiceErrorException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::AddProfilePermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddProfilePermission,
        stubs: @stubs,
        params_class: Params::AddProfilePermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_profile_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the state of an <code>ACTIVE</code> signing profile to <code>CANCELED</code>.
    # 			A canceled profile is still viewable with the <code>ListSigningProfiles</code>
    # 			operation, but it cannot perform new signing jobs, and is deleted two years after
    # 			cancelation.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelSigningProfileInput}.
    #
    # @option params [String] :profile_name
    #   <p>The name of the signing profile to be canceled.</p>
    #
    # @return [Types::CancelSigningProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_signing_profile(
    #     profile_name: 'profileName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelSigningProfileOutput
    #
    def cancel_signing_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelSigningProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelSigningProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelSigningProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServiceErrorException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::CancelSigningProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelSigningProfile,
        stubs: @stubs,
        params_class: Params::CancelSigningProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_signing_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a specific code signing job. You specify the job by using
    # 			the <code>jobId</code> value that is returned by the <a>StartSigningJob</a>
    # 			operation. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSigningJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the signing job on input.</p>
    #
    # @return [Types::DescribeSigningJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_signing_job(
    #     job_id: 'jobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSigningJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.source #=> Types::Source
    #   resp.data.source.s3 #=> Types::S3Source
    #   resp.data.source.s3.bucket_name #=> String
    #   resp.data.source.s3.key #=> String
    #   resp.data.source.s3.version #=> String
    #   resp.data.signing_material #=> Types::SigningMaterial
    #   resp.data.signing_material.certificate_arn #=> String
    #   resp.data.platform_id #=> String
    #   resp.data.platform_display_name #=> String
    #   resp.data.profile_name #=> String
    #   resp.data.profile_version #=> String
    #   resp.data.overrides #=> Types::SigningPlatformOverrides
    #   resp.data.overrides.signing_configuration #=> Types::SigningConfigurationOverrides
    #   resp.data.overrides.signing_configuration.encryption_algorithm #=> String, one of ["RSA", "ECDSA"]
    #   resp.data.overrides.signing_configuration.hash_algorithm #=> String, one of ["SHA1", "SHA256"]
    #   resp.data.overrides.signing_image_format #=> String, one of ["JSON", "JSONEmbedded", "JSONDetached"]
    #   resp.data.signing_parameters #=> Hash<String, String>
    #   resp.data.signing_parameters['key'] #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.completed_at #=> Time
    #   resp.data.signature_expires_at #=> Time
    #   resp.data.requested_by #=> String
    #   resp.data.status #=> String, one of ["InProgress", "Failed", "Succeeded"]
    #   resp.data.status_reason #=> String
    #   resp.data.revocation_record #=> Types::SigningJobRevocationRecord
    #   resp.data.revocation_record.reason #=> String
    #   resp.data.revocation_record.revoked_at #=> Time
    #   resp.data.revocation_record.revoked_by #=> String
    #   resp.data.signed_object #=> Types::SignedObject
    #   resp.data.signed_object.s3 #=> Types::S3SignedObject
    #   resp.data.signed_object.s3.bucket_name #=> String
    #   resp.data.signed_object.s3.key #=> String
    #   resp.data.job_owner #=> String
    #   resp.data.job_invoker #=> String
    #
    def describe_signing_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSigningJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSigningJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSigningJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServiceErrorException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeSigningJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSigningJob,
        stubs: @stubs,
        params_class: Params::DescribeSigningJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_signing_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information on a specific signing platform.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSigningPlatformInput}.
    #
    # @option params [String] :platform_id
    #   <p>The ID of the target signing platform.</p>
    #
    # @return [Types::GetSigningPlatformOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_signing_platform(
    #     platform_id: 'platformId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSigningPlatformOutput
    #   resp.data.platform_id #=> String
    #   resp.data.display_name #=> String
    #   resp.data.partner #=> String
    #   resp.data.target #=> String
    #   resp.data.category #=> String, one of ["AWSIoT"]
    #   resp.data.signing_configuration #=> Types::SigningConfiguration
    #   resp.data.signing_configuration.encryption_algorithm_options #=> Types::EncryptionAlgorithmOptions
    #   resp.data.signing_configuration.encryption_algorithm_options.allowed_values #=> Array<String>
    #   resp.data.signing_configuration.encryption_algorithm_options.allowed_values[0] #=> String, one of ["RSA", "ECDSA"]
    #   resp.data.signing_configuration.encryption_algorithm_options.default_value #=> String, one of ["RSA", "ECDSA"]
    #   resp.data.signing_configuration.hash_algorithm_options #=> Types::HashAlgorithmOptions
    #   resp.data.signing_configuration.hash_algorithm_options.allowed_values #=> Array<String>
    #   resp.data.signing_configuration.hash_algorithm_options.allowed_values[0] #=> String, one of ["SHA1", "SHA256"]
    #   resp.data.signing_configuration.hash_algorithm_options.default_value #=> String, one of ["SHA1", "SHA256"]
    #   resp.data.signing_image_format #=> Types::SigningImageFormat
    #   resp.data.signing_image_format.supported_formats #=> Array<String>
    #   resp.data.signing_image_format.supported_formats[0] #=> String, one of ["JSON", "JSONEmbedded", "JSONDetached"]
    #   resp.data.signing_image_format.default_format #=> String, one of ["JSON", "JSONEmbedded", "JSONDetached"]
    #   resp.data.max_size_in_mb #=> Integer
    #   resp.data.revocation_supported #=> Boolean
    #
    def get_signing_platform(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSigningPlatformInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSigningPlatformInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSigningPlatform
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServiceErrorException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetSigningPlatform
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSigningPlatform,
        stubs: @stubs,
        params_class: Params::GetSigningPlatformOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_signing_platform
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information on a specific signing profile.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSigningProfileInput}.
    #
    # @option params [String] :profile_name
    #   <p>The name of the target signing profile.</p>
    #
    # @option params [String] :profile_owner
    #   <p>The AWS account ID of the profile owner.</p>
    #
    # @return [Types::GetSigningProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_signing_profile(
    #     profile_name: 'profileName', # required
    #     profile_owner: 'profileOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSigningProfileOutput
    #   resp.data.profile_name #=> String
    #   resp.data.profile_version #=> String
    #   resp.data.profile_version_arn #=> String
    #   resp.data.revocation_record #=> Types::SigningProfileRevocationRecord
    #   resp.data.revocation_record.revocation_effective_from #=> Time
    #   resp.data.revocation_record.revoked_at #=> Time
    #   resp.data.revocation_record.revoked_by #=> String
    #   resp.data.signing_material #=> Types::SigningMaterial
    #   resp.data.signing_material.certificate_arn #=> String
    #   resp.data.platform_id #=> String
    #   resp.data.platform_display_name #=> String
    #   resp.data.signature_validity_period #=> Types::SignatureValidityPeriod
    #   resp.data.signature_validity_period.value #=> Integer
    #   resp.data.signature_validity_period.type #=> String, one of ["DAYS", "MONTHS", "YEARS"]
    #   resp.data.overrides #=> Types::SigningPlatformOverrides
    #   resp.data.overrides.signing_configuration #=> Types::SigningConfigurationOverrides
    #   resp.data.overrides.signing_configuration.encryption_algorithm #=> String, one of ["RSA", "ECDSA"]
    #   resp.data.overrides.signing_configuration.hash_algorithm #=> String, one of ["SHA1", "SHA256"]
    #   resp.data.overrides.signing_image_format #=> String, one of ["JSON", "JSONEmbedded", "JSONDetached"]
    #   resp.data.signing_parameters #=> Hash<String, String>
    #   resp.data.signing_parameters['key'] #=> String
    #   resp.data.status #=> String, one of ["Active", "Canceled", "Revoked"]
    #   resp.data.status_reason #=> String
    #   resp.data.arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_signing_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSigningProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSigningProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSigningProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServiceErrorException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetSigningProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSigningProfile,
        stubs: @stubs,
        params_class: Params::GetSigningProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_signing_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the cross-account permissions associated with a signing profile.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProfilePermissionsInput}.
    #
    # @option params [String] :profile_name
    #   <p>Name of the signing profile containing the cross-account permissions.</p>
    #
    # @option params [String] :next_token
    #   <p>String for specifying the next set of paginated results.</p>
    #
    # @return [Types::ListProfilePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_permissions(
    #     profile_name: 'profileName', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProfilePermissionsOutput
    #   resp.data.revision_id #=> String
    #   resp.data.policy_size_bytes #=> Integer
    #   resp.data.permissions #=> Array<Permission>
    #   resp.data.permissions[0] #=> Types::Permission
    #   resp.data.permissions[0].action #=> String
    #   resp.data.permissions[0].principal #=> String
    #   resp.data.permissions[0].statement_id #=> String
    #   resp.data.permissions[0].profile_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_profile_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProfilePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProfilePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProfilePermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServiceErrorException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListProfilePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProfilePermissions,
        stubs: @stubs,
        params_class: Params::ListProfilePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_profile_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all your signing jobs. You can use the <code>maxResults</code> parameter to
    # 			limit the number of signing jobs that are returned in the response. If additional jobs
    # 			remain to be listed, code signing returns a <code>nextToken</code> value. Use this value in
    # 			subsequent calls to <code>ListSigningJobs</code> to fetch the remaining values. You can
    # 			continue calling <code>ListSigningJobs</code> with your <code>maxResults</code>
    # 			parameter and with new values that code signing returns in the <code>nextToken</code>
    # 			parameter until all of your signing jobs have been returned. </p>
    #
    # @param [Hash] params
    #   See {Types::ListSigningJobsInput}.
    #
    # @option params [String] :status
    #   <p>A status value with which to filter your results.</p>
    #
    # @option params [String] :platform_id
    #   <p>The ID of microcontroller platform that you specified for the distribution of your
    #   			code image.</p>
    #
    # @option params [String] :requested_by
    #   <p>The IAM principal that requested the signing job.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of items to return in the response. Use this parameter
    #   			when paginating results. If additional items exist beyond the number you specify, the
    #   				<code>nextToken</code> element is set in the response. Use the
    #   				<code>nextToken</code> value in a subsequent request to retrieve additional items.
    #   		</p>
    #
    # @option params [String] :next_token
    #   <p>String for specifying the next set of paginated results to return. After you receive a
    #   			response with truncated results, use this parameter in a subsequent request. Set it to
    #   			the value of <code>nextToken</code> from the response that you just received.</p>
    #
    # @option params [Boolean] :is_revoked
    #   <p>Filters results to return only signing jobs with revoked signatures.</p>
    #
    # @option params [Time] :signature_expires_before
    #   <p>Filters results to return only signing jobs with signatures expiring before a
    #   			specified timestamp.</p>
    #
    # @option params [Time] :signature_expires_after
    #   <p>Filters results to return only signing jobs with signatures expiring after a specified
    #   			timestamp.</p>
    #
    # @option params [String] :job_invoker
    #   <p>Filters results to return only signing jobs initiated by a specified IAM
    #   			entity.</p>
    #
    # @return [Types::ListSigningJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signing_jobs(
    #     status: 'InProgress', # accepts ["InProgress", "Failed", "Succeeded"]
    #     platform_id: 'platformId',
    #     requested_by: 'requestedBy',
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     is_revoked: false,
    #     signature_expires_before: Time.now,
    #     signature_expires_after: Time.now,
    #     job_invoker: 'jobInvoker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSigningJobsOutput
    #   resp.data.jobs #=> Array<SigningJob>
    #   resp.data.jobs[0] #=> Types::SigningJob
    #   resp.data.jobs[0].job_id #=> String
    #   resp.data.jobs[0].source #=> Types::Source
    #   resp.data.jobs[0].source.s3 #=> Types::S3Source
    #   resp.data.jobs[0].source.s3.bucket_name #=> String
    #   resp.data.jobs[0].source.s3.key #=> String
    #   resp.data.jobs[0].source.s3.version #=> String
    #   resp.data.jobs[0].signed_object #=> Types::SignedObject
    #   resp.data.jobs[0].signed_object.s3 #=> Types::S3SignedObject
    #   resp.data.jobs[0].signed_object.s3.bucket_name #=> String
    #   resp.data.jobs[0].signed_object.s3.key #=> String
    #   resp.data.jobs[0].signing_material #=> Types::SigningMaterial
    #   resp.data.jobs[0].signing_material.certificate_arn #=> String
    #   resp.data.jobs[0].created_at #=> Time
    #   resp.data.jobs[0].status #=> String, one of ["InProgress", "Failed", "Succeeded"]
    #   resp.data.jobs[0].is_revoked #=> Boolean
    #   resp.data.jobs[0].profile_name #=> String
    #   resp.data.jobs[0].profile_version #=> String
    #   resp.data.jobs[0].platform_id #=> String
    #   resp.data.jobs[0].platform_display_name #=> String
    #   resp.data.jobs[0].signature_expires_at #=> Time
    #   resp.data.jobs[0].job_owner #=> String
    #   resp.data.jobs[0].job_invoker #=> String
    #   resp.data.next_token #=> String
    #
    def list_signing_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSigningJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSigningJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSigningJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServiceErrorException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListSigningJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSigningJobs,
        stubs: @stubs,
        params_class: Params::ListSigningJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_signing_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all signing platforms available in code signing that match the request parameters. If
    # 			additional jobs remain to be listed, code signing returns a <code>nextToken</code> value. Use
    # 			this value in subsequent calls to <code>ListSigningJobs</code> to fetch the remaining
    # 			values. You can continue calling <code>ListSigningJobs</code> with your
    # 				<code>maxResults</code> parameter and with new values that code signing returns in the
    # 				<code>nextToken</code> parameter until all of your signing jobs have been
    # 			returned.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSigningPlatformsInput}.
    #
    # @option params [String] :category
    #   <p>The category type of a signing platform.</p>
    #
    # @option params [String] :partner
    #   <p>Any partner entities connected to a signing platform.</p>
    #
    # @option params [String] :target
    #   <p>The validation template that is used by the target signing platform.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned by this operation.</p>
    #
    # @option params [String] :next_token
    #   <p>Value for specifying the next set of paginated results to return. After you receive a
    #   			response with truncated results, use this parameter in a subsequent request. Set it to
    #   			the value of <code>nextToken</code> from the response that you just received.</p>
    #
    # @return [Types::ListSigningPlatformsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signing_platforms(
    #     category: 'category',
    #     partner: 'partner',
    #     target: 'target',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSigningPlatformsOutput
    #   resp.data.platforms #=> Array<SigningPlatform>
    #   resp.data.platforms[0] #=> Types::SigningPlatform
    #   resp.data.platforms[0].platform_id #=> String
    #   resp.data.platforms[0].display_name #=> String
    #   resp.data.platforms[0].partner #=> String
    #   resp.data.platforms[0].target #=> String
    #   resp.data.platforms[0].category #=> String, one of ["AWSIoT"]
    #   resp.data.platforms[0].signing_configuration #=> Types::SigningConfiguration
    #   resp.data.platforms[0].signing_configuration.encryption_algorithm_options #=> Types::EncryptionAlgorithmOptions
    #   resp.data.platforms[0].signing_configuration.encryption_algorithm_options.allowed_values #=> Array<String>
    #   resp.data.platforms[0].signing_configuration.encryption_algorithm_options.allowed_values[0] #=> String, one of ["RSA", "ECDSA"]
    #   resp.data.platforms[0].signing_configuration.encryption_algorithm_options.default_value #=> String, one of ["RSA", "ECDSA"]
    #   resp.data.platforms[0].signing_configuration.hash_algorithm_options #=> Types::HashAlgorithmOptions
    #   resp.data.platforms[0].signing_configuration.hash_algorithm_options.allowed_values #=> Array<String>
    #   resp.data.platforms[0].signing_configuration.hash_algorithm_options.allowed_values[0] #=> String, one of ["SHA1", "SHA256"]
    #   resp.data.platforms[0].signing_configuration.hash_algorithm_options.default_value #=> String, one of ["SHA1", "SHA256"]
    #   resp.data.platforms[0].signing_image_format #=> Types::SigningImageFormat
    #   resp.data.platforms[0].signing_image_format.supported_formats #=> Array<String>
    #   resp.data.platforms[0].signing_image_format.supported_formats[0] #=> String, one of ["JSON", "JSONEmbedded", "JSONDetached"]
    #   resp.data.platforms[0].signing_image_format.default_format #=> String, one of ["JSON", "JSONEmbedded", "JSONDetached"]
    #   resp.data.platforms[0].max_size_in_mb #=> Integer
    #   resp.data.platforms[0].revocation_supported #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_signing_platforms(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSigningPlatformsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSigningPlatformsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSigningPlatforms
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServiceErrorException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListSigningPlatforms
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSigningPlatforms,
        stubs: @stubs,
        params_class: Params::ListSigningPlatformsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_signing_platforms
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all available signing profiles in your AWS account. Returns only profiles with
    # 			an <code>ACTIVE</code> status unless the <code>includeCanceled</code> request field is
    # 			set to <code>true</code>. If additional jobs remain to be listed, code signing returns a
    # 				<code>nextToken</code> value. Use this value in subsequent calls to
    # 				<code>ListSigningJobs</code> to fetch the remaining values. You can continue calling
    # 				<code>ListSigningJobs</code> with your <code>maxResults</code> parameter and with
    # 			new values that code signing returns in the <code>nextToken</code> parameter until all of your
    # 			signing jobs have been returned.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSigningProfilesInput}.
    #
    # @option params [Boolean] :include_canceled
    #   <p>Designates whether to include profiles with the status of
    #   			<code>CANCELED</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of profiles to be returned.</p>
    #
    # @option params [String] :next_token
    #   <p>Value for specifying the next set of paginated results to return. After you receive a
    #   			response with truncated results, use this parameter in a subsequent request. Set it to
    #   			the value of <code>nextToken</code> from the response that you just received.</p>
    #
    # @option params [String] :platform_id
    #   <p>Filters results to return only signing jobs initiated for a specified signing
    #   			platform.</p>
    #
    # @option params [Array<String>] :statuses
    #   <p>Filters results to return only signing jobs with statuses in the specified
    #   			list.</p>
    #
    # @return [Types::ListSigningProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signing_profiles(
    #     include_canceled: false,
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     platform_id: 'platformId',
    #     statuses: [
    #       'Active' # accepts ["Active", "Canceled", "Revoked"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSigningProfilesOutput
    #   resp.data.profiles #=> Array<SigningProfile>
    #   resp.data.profiles[0] #=> Types::SigningProfile
    #   resp.data.profiles[0].profile_name #=> String
    #   resp.data.profiles[0].profile_version #=> String
    #   resp.data.profiles[0].profile_version_arn #=> String
    #   resp.data.profiles[0].signing_material #=> Types::SigningMaterial
    #   resp.data.profiles[0].signing_material.certificate_arn #=> String
    #   resp.data.profiles[0].signature_validity_period #=> Types::SignatureValidityPeriod
    #   resp.data.profiles[0].signature_validity_period.value #=> Integer
    #   resp.data.profiles[0].signature_validity_period.type #=> String, one of ["DAYS", "MONTHS", "YEARS"]
    #   resp.data.profiles[0].platform_id #=> String
    #   resp.data.profiles[0].platform_display_name #=> String
    #   resp.data.profiles[0].signing_parameters #=> Hash<String, String>
    #   resp.data.profiles[0].signing_parameters['key'] #=> String
    #   resp.data.profiles[0].status #=> String, one of ["Active", "Canceled", "Revoked"]
    #   resp.data.profiles[0].arn #=> String
    #   resp.data.profiles[0].tags #=> Hash<String, String>
    #   resp.data.profiles[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_signing_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSigningProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSigningProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSigningProfiles
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServiceErrorException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListSigningProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSigningProfiles,
        stubs: @stubs,
        params_class: Params::ListSigningProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_signing_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the tags associated with a signing profile resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException, Errors::InternalServiceErrorException, Errors::NotFoundException]),
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

    # <p>Creates a signing profile. A signing profile is a code signing template that can be used to
    # 			carry out a pre-defined signing job. For more information, see <a href="http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html">http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::PutSigningProfileInput}.
    #
    # @option params [String] :profile_name
    #   <p>The name of the signing profile to be created.</p>
    #
    # @option params [SigningMaterial] :signing_material
    #   <p>The AWS Certificate Manager certificate that will be used to sign code with the new signing
    #   			profile.</p>
    #
    # @option params [SignatureValidityPeriod] :signature_validity_period
    #   <p>The default validity period override for any signature generated using this signing
    #   			profile. If unspecified, the default is 135 months.</p>
    #
    # @option params [String] :platform_id
    #   <p>The ID of the signing platform to be created.</p>
    #
    # @option params [SigningPlatformOverrides] :overrides
    #   <p>A subfield of <code>platform</code>. This specifies any different configuration
    #   			options that you want to apply to the chosen platform (such as a different
    #   				<code>hash-algorithm</code> or <code>signing-algorithm</code>).</p>
    #
    # @option params [Hash<String, String>] :signing_parameters
    #   <p>Map of key-value pairs for signing. These can include any information that you want to
    #   			use during signing.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to be associated with the signing profile that is being created.</p>
    #
    # @return [Types::PutSigningProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_signing_profile(
    #     profile_name: 'profileName', # required
    #     signing_material: {
    #       certificate_arn: 'certificateArn' # required
    #     },
    #     signature_validity_period: {
    #       value: 1,
    #       type: 'DAYS' # accepts ["DAYS", "MONTHS", "YEARS"]
    #     },
    #     platform_id: 'platformId', # required
    #     overrides: {
    #       signing_configuration: {
    #         encryption_algorithm: 'RSA', # accepts ["RSA", "ECDSA"]
    #         hash_algorithm: 'SHA1' # accepts ["SHA1", "SHA256"]
    #       },
    #       signing_image_format: 'JSON' # accepts ["JSON", "JSONEmbedded", "JSONDetached"]
    #     },
    #     signing_parameters: {
    #       'key' => 'value'
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutSigningProfileOutput
    #   resp.data.arn #=> String
    #   resp.data.profile_version #=> String
    #   resp.data.profile_version_arn #=> String
    #
    def put_signing_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutSigningProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutSigningProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutSigningProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServiceErrorException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::PutSigningProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutSigningProfile,
        stubs: @stubs,
        params_class: Params::PutSigningProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_signing_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes cross-account permissions from a signing profile.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveProfilePermissionInput}.
    #
    # @option params [String] :profile_name
    #   <p>A human-readable name for the signing profile with permissions to be removed.</p>
    #
    # @option params [String] :revision_id
    #   <p>An identifier for the current revision of the signing profile permissions.</p>
    #
    # @option params [String] :statement_id
    #   <p>A unique identifier for the cross-account permissions statement.</p>
    #
    # @return [Types::RemoveProfilePermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_profile_permission(
    #     profile_name: 'profileName', # required
    #     revision_id: 'revisionId', # required
    #     statement_id: 'statementId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveProfilePermissionOutput
    #   resp.data.revision_id #=> String
    #
    def remove_profile_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveProfilePermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveProfilePermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveProfilePermission
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServiceErrorException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::RemoveProfilePermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveProfilePermission,
        stubs: @stubs,
        params_class: Params::RemoveProfilePermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_profile_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the state of a signing job to REVOKED. This indicates that the signature is no
    # 			longer valid.</p>
    #
    # @param [Hash] params
    #   See {Types::RevokeSignatureInput}.
    #
    # @option params [String] :job_id
    #   <p>ID of the signing job to be revoked.</p>
    #
    # @option params [String] :job_owner
    #   <p>AWS account ID of the job owner.</p>
    #
    # @option params [String] :reason
    #   <p>The reason for revoking the signing job.</p>
    #
    # @return [Types::RevokeSignatureOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_signature(
    #     job_id: 'jobId', # required
    #     job_owner: 'jobOwner',
    #     reason: 'reason' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RevokeSignatureOutput
    #
    def revoke_signature(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RevokeSignatureInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RevokeSignatureInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RevokeSignature
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServiceErrorException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::RevokeSignature
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RevokeSignature,
        stubs: @stubs,
        params_class: Params::RevokeSignatureOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :revoke_signature
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the state of a signing profile to REVOKED. This indicates that signatures
    # 			generated using the signing profile after an effective start date are no longer
    # 			valid.</p>
    #
    # @param [Hash] params
    #   See {Types::RevokeSigningProfileInput}.
    #
    # @option params [String] :profile_name
    #   <p>The name of the signing profile to be revoked.</p>
    #
    # @option params [String] :profile_version
    #   <p>The version of the signing profile to be revoked.</p>
    #
    # @option params [String] :reason
    #   <p>The reason for revoking a signing profile.</p>
    #
    # @option params [Time] :effective_time
    #   <p>A timestamp for when revocation of a Signing Profile should become effective.
    #   			Signatures generated using the signing profile after this timestamp are not
    #   			trusted.</p>
    #
    # @return [Types::RevokeSigningProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_signing_profile(
    #     profile_name: 'profileName', # required
    #     profile_version: 'profileVersion', # required
    #     reason: 'reason', # required
    #     effective_time: Time.now # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RevokeSigningProfileOutput
    #
    def revoke_signing_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RevokeSigningProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RevokeSigningProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RevokeSigningProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServiceErrorException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::RevokeSigningProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RevokeSigningProfile,
        stubs: @stubs,
        params_class: Params::RevokeSigningProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :revoke_signing_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiates a signing job to be performed on the code provided. Signing jobs are
    # 			viewable by the <code>ListSigningJobs</code> operation for two years after they are
    # 			performed. Note the following requirements: </p>
    # 		       <ul>
    #             <li>
    # 				           <p> You must create an Amazon S3 source bucket. For more information, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html">Create a Bucket</a> in the
    # 						<i>Amazon S3 Getting Started Guide</i>. </p>
    # 			         </li>
    #             <li>
    # 				           <p>Your S3 source bucket must be version enabled.</p>
    # 			         </li>
    #             <li>
    # 				           <p>You must create an S3 destination bucket. Code signing uses your S3 destination
    # 					bucket to write your signed code.</p>
    # 			         </li>
    #             <li>
    # 				           <p>You specify the name of the source and destination buckets when calling the
    # 						<code>StartSigningJob</code> operation.</p>
    # 			         </li>
    #             <li>
    # 				           <p>You must also specify a request token that identifies your request to
    # 					code signing.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>You can call the <a>DescribeSigningJob</a> and the <a>ListSigningJobs</a> actions after you call
    # 			<code>StartSigningJob</code>.</p>
    # 		       <p>For a Java example that shows how to use this action, see <a href="http://docs.aws.amazon.com/acm/latest/userguide/">http://docs.aws.amazon.com/acm/latest/userguide/</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::StartSigningJobInput}.
    #
    # @option params [Source] :source
    #   <p>The S3 bucket that contains the object to sign or a BLOB that contains your raw
    #   			code.</p>
    #
    # @option params [Destination] :destination
    #   <p>The S3 bucket in which to save your signed object. The destination contains the name
    #   			of your bucket and an optional prefix.</p>
    #
    # @option params [String] :profile_name
    #   <p>The name of the signing profile.</p>
    #
    # @option params [String] :client_request_token
    #   <p>String that identifies the signing request. All calls after the first that use this
    #   			token return the same response as the first call.</p>
    #
    # @option params [String] :profile_owner
    #   <p>The AWS account ID of the signing profile owner.</p>
    #
    # @return [Types::StartSigningJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_signing_job(
    #     source: {
    #       s3: {
    #         bucket_name: 'bucketName', # required
    #         key: 'key', # required
    #         version: 'version' # required
    #       }
    #     }, # required
    #     destination: {
    #       s3: {
    #         bucket_name: 'bucketName',
    #         prefix: 'prefix'
    #       }
    #     }, # required
    #     profile_name: 'profileName', # required
    #     client_request_token: 'clientRequestToken', # required
    #     profile_owner: 'profileOwner'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartSigningJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_owner #=> String
    #
    def start_signing_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartSigningJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartSigningJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartSigningJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ThrottlingException, Errors::InternalServiceErrorException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::StartSigningJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartSigningJob,
        stubs: @stubs,
        params_class: Params::StartSigningJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_signing_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to a signing profile. Tags are labels that you can use to
    # 			identify and organize your AWS resources. Each tag consists of a key and an optional
    # 			value. To specify the signing profile, use its Amazon Resource Name (ARN). To specify
    # 			the tag, use a key-value pair.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags to be associated with the signing profile.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException, Errors::InternalServiceErrorException, Errors::NotFoundException]),
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

    # <p>Removes one or more tags from a signing profile. To remove the tags, specify a list of
    # 			tag keys.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to be removed from the signing profile.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException, Errors::InternalServiceErrorException, Errors::NotFoundException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
