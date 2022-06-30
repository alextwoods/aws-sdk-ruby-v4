# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::AppStream
  # An API client for PhotonAdminProxyService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon AppStream 2.0</fullname>
  #         <p>This is the <i>Amazon AppStream 2.0 API Reference</i>. This documentation provides descriptions and syntax for each of the actions and data types in AppStream 2.0. AppStream 2.0 is a fully managed, secure application streaming service that lets you stream desktop applications to users without rewriting applications. AppStream 2.0 manages the AWS resources that are required to host and run your applications, scales automatically, and provides access to your users on demand. </p>
  #
  #         <note>
  #             <p>You can call the AppStream 2.0 API operations by using an interface VPC endpoint (interface endpoint). For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/access-api-cli-through-interface-vpc-endpoint.html">Access AppStream 2.0 API Operations and CLI Commands Through an Interface VPC Endpoint</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
  #          </note>
  #
  #         <p>To learn more about AppStream 2.0, see the following resources:</p>
  #
  #             <ul>
  #             <li>
  #                <p>
  #                   <a href="http://aws.amazon.com/appstream2">Amazon AppStream 2.0 product page</a>
  #                </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="http://aws.amazon.com/documentation/appstream2">Amazon AppStream 2.0 documentation</a>
  #                </p>
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
    def initialize(config = AWS::SDK::AppStream::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates the specified application with the specified fleet. This is only supported for Elastic fleets.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateApplicationFleetInput}.
    #
    # @option params [String] :fleet_name
    #   <p>The name of the fleet.</p>
    #
    # @option params [String] :application_arn
    #   <p>The ARN of the application.</p>
    #
    # @return [Types::AssociateApplicationFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_application_fleet(
    #     fleet_name: 'FleetName', # required
    #     application_arn: 'ApplicationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateApplicationFleetOutput
    #   resp.data.application_fleet_association #=> Types::ApplicationFleetAssociation
    #   resp.data.application_fleet_association.fleet_name #=> String
    #   resp.data.application_fleet_association.application_arn #=> String
    #
    def associate_application_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateApplicationFleetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateApplicationFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateApplicationFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::AssociateApplicationFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateApplicationFleet,
        stubs: @stubs,
        params_class: Params::AssociateApplicationFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_application_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates an application to entitle.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateApplicationToEntitlementInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack.</p>
    #
    # @option params [String] :entitlement_name
    #   <p>The name of the entitlement.</p>
    #
    # @option params [String] :application_identifier
    #   <p>The identifier of the application.</p>
    #
    # @return [Types::AssociateApplicationToEntitlementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_application_to_entitlement(
    #     stack_name: 'StackName', # required
    #     entitlement_name: 'EntitlementName', # required
    #     application_identifier: 'ApplicationIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateApplicationToEntitlementOutput
    #
    def associate_application_to_entitlement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateApplicationToEntitlementInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateApplicationToEntitlementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateApplicationToEntitlement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::EntitlementNotFoundException]),
        data_parser: Parsers::AssociateApplicationToEntitlement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateApplicationToEntitlement,
        stubs: @stubs,
        params_class: Params::AssociateApplicationToEntitlementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_application_to_entitlement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified fleet with the specified stack.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateFleetInput}.
    #
    # @option params [String] :fleet_name
    #   <p>The name of the fleet. </p>
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack.</p>
    #
    # @return [Types::AssociateFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_fleet(
    #     fleet_name: 'FleetName', # required
    #     stack_name: 'StackName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateFleetOutput
    #
    def associate_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateFleetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::IncompatibleImageException, Errors::ConcurrentModificationException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::AssociateFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateFleet,
        stubs: @stubs,
        params_class: Params::AssociateFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified users with the specified stacks. Users in a user pool cannot be assigned to stacks with fleets that are joined to an Active Directory domain.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchAssociateUserStackInput}.
    #
    # @option params [Array<UserStackAssociation>] :user_stack_associations
    #   <p>The list of UserStackAssociation objects.</p>
    #
    # @return [Types::BatchAssociateUserStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_user_stack(
    #     user_stack_associations: [
    #       {
    #         stack_name: 'StackName', # required
    #         user_name: 'UserName', # required
    #         authentication_type: 'API', # required - accepts ["API", "SAML", "USERPOOL"]
    #         send_email_notification: false
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchAssociateUserStackOutput
    #   resp.data.errors #=> Array<UserStackAssociationError>
    #   resp.data.errors[0] #=> Types::UserStackAssociationError
    #   resp.data.errors[0].user_stack_association #=> Types::UserStackAssociation
    #   resp.data.errors[0].user_stack_association.stack_name #=> String
    #   resp.data.errors[0].user_stack_association.user_name #=> String
    #   resp.data.errors[0].user_stack_association.authentication_type #=> String, one of ["API", "SAML", "USERPOOL"]
    #   resp.data.errors[0].user_stack_association.send_email_notification #=> Boolean
    #   resp.data.errors[0].error_code #=> String, one of ["STACK_NOT_FOUND", "USER_NAME_NOT_FOUND", "DIRECTORY_NOT_FOUND", "INTERNAL_ERROR"]
    #   resp.data.errors[0].error_message #=> String
    #
    def batch_associate_user_stack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchAssociateUserStackInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchAssociateUserStackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchAssociateUserStack
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::OperationNotPermittedException]),
        data_parser: Parsers::BatchAssociateUserStack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchAssociateUserStack,
        stubs: @stubs,
        params_class: Params::BatchAssociateUserStackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_associate_user_stack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified users from the specified stacks.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDisassociateUserStackInput}.
    #
    # @option params [Array<UserStackAssociation>] :user_stack_associations
    #   <p>The list of UserStackAssociation objects.</p>
    #
    # @return [Types::BatchDisassociateUserStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_user_stack(
    #     user_stack_associations: [
    #       {
    #         stack_name: 'StackName', # required
    #         user_name: 'UserName', # required
    #         authentication_type: 'API', # required - accepts ["API", "SAML", "USERPOOL"]
    #         send_email_notification: false
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDisassociateUserStackOutput
    #   resp.data.errors #=> Array<UserStackAssociationError>
    #   resp.data.errors[0] #=> Types::UserStackAssociationError
    #   resp.data.errors[0].user_stack_association #=> Types::UserStackAssociation
    #   resp.data.errors[0].user_stack_association.stack_name #=> String
    #   resp.data.errors[0].user_stack_association.user_name #=> String
    #   resp.data.errors[0].user_stack_association.authentication_type #=> String, one of ["API", "SAML", "USERPOOL"]
    #   resp.data.errors[0].user_stack_association.send_email_notification #=> Boolean
    #   resp.data.errors[0].error_code #=> String, one of ["STACK_NOT_FOUND", "USER_NAME_NOT_FOUND", "DIRECTORY_NOT_FOUND", "INTERNAL_ERROR"]
    #   resp.data.errors[0].error_message #=> String
    #
    def batch_disassociate_user_stack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDisassociateUserStackInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDisassociateUserStackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDisassociateUserStack
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::OperationNotPermittedException]),
        data_parser: Parsers::BatchDisassociateUserStack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDisassociateUserStack,
        stubs: @stubs,
        params_class: Params::BatchDisassociateUserStackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_disassociate_user_stack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Copies the image within the same region or to a new region within the same AWS account. Note that any tags you added to the image will not be copied.</p>
    #
    # @param [Hash] params
    #   See {Types::CopyImageInput}.
    #
    # @option params [String] :source_image_name
    #   <p>The name of the image to copy.</p>
    #
    # @option params [String] :destination_image_name
    #   <p>The name that the image will have when it is copied to the destination.</p>
    #
    # @option params [String] :destination_region
    #   <p>The destination region to which the image will be copied. This parameter is required, even if you are copying an image within the same region.</p>
    #
    # @option params [String] :destination_image_description
    #   <p>The description that the image will have when it is copied to the destination.</p>
    #
    # @return [Types::CopyImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_image(
    #     source_image_name: 'SourceImageName', # required
    #     destination_image_name: 'DestinationImageName', # required
    #     destination_region: 'DestinationRegion', # required
    #     destination_image_description: 'DestinationImageDescription'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CopyImageOutput
    #   resp.data.destination_image_name #=> String
    #
    def copy_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CopyImageInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CopyImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CopyImage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ResourceNotAvailableException, Errors::ResourceAlreadyExistsException, Errors::IncompatibleImageException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::CopyImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CopyImage,
        stubs: @stubs,
        params_class: Params::CopyImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :copy_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an app block.</p>
    #         <p>App blocks are an Amazon AppStream 2.0 resource that stores the details about the
    #             virtual hard disk in an S3 bucket. It also stores the setup script with details about
    #             how to mount the virtual hard disk. The virtual hard disk includes the application
    #             binaries and other files necessary to launch your applications. Multiple applications
    #             can be assigned to a single app block.</p>
    #         <p>This is only supported for Elastic fleets.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAppBlockInput}.
    #
    # @option params [String] :name
    #   <p>The name of the app block.</p>
    #
    # @option params [String] :description
    #   <p>The description of the app block.</p>
    #
    # @option params [String] :display_name
    #   <p>The display name of the app block. This is not displayed to the user.</p>
    #
    # @option params [S3Location] :source_s3_location
    #   <p>The source S3 location of the app block.</p>
    #
    # @option params [ScriptDetails] :setup_script_details
    #   <p>The setup script details of the app block.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the app block.</p>
    #
    # @return [Types::CreateAppBlockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_block(
    #     name: 'Name', # required
    #     description: 'Description',
    #     display_name: 'DisplayName',
    #     source_s3_location: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key: 'S3Key' # required
    #     }, # required
    #     setup_script_details: {
    #       executable_path: 'ExecutablePath', # required
    #       executable_parameters: 'ExecutableParameters',
    #       timeout_in_seconds: 1 # required
    #     }, # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAppBlockOutput
    #   resp.data.app_block #=> Types::AppBlock
    #   resp.data.app_block.name #=> String
    #   resp.data.app_block.arn #=> String
    #   resp.data.app_block.description #=> String
    #   resp.data.app_block.display_name #=> String
    #   resp.data.app_block.source_s3_location #=> Types::S3Location
    #   resp.data.app_block.source_s3_location.s3_bucket #=> String
    #   resp.data.app_block.source_s3_location.s3_key #=> String
    #   resp.data.app_block.setup_script_details #=> Types::ScriptDetails
    #   resp.data.app_block.setup_script_details.script_s3_location #=> Types::S3Location
    #   resp.data.app_block.setup_script_details.executable_path #=> String
    #   resp.data.app_block.setup_script_details.executable_parameters #=> String
    #   resp.data.app_block.setup_script_details.timeout_in_seconds #=> Integer
    #   resp.data.app_block.created_time #=> Time
    #
    def create_app_block(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAppBlockInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAppBlockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAppBlock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceAlreadyExistsException, Errors::OperationNotPermittedException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::CreateAppBlock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAppBlock,
        stubs: @stubs,
        params_class: Params::CreateAppBlockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_app_block
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an application.</p>
    #         <p>Applications are an Amazon AppStream 2.0 resource that stores the details about how to
    #             launch applications on Elastic fleet streaming instances. An application consists of the
    #             launch details, icon, and display name. Applications are associated with an app block
    #             that contains the application binaries and other files. The applications assigned to an
    #             Elastic fleet are the applications users can launch. </p>
    #         <p>This is only supported for Elastic fleets.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the application. This name is visible to users when display name is not specified.</p>
    #
    # @option params [String] :display_name
    #   <p>The display name of the application. This name is visible to users in the application catalog.</p>
    #
    # @option params [String] :description
    #   <p>The description of the application.</p>
    #
    # @option params [S3Location] :icon_s3_location
    #   <p>The location in S3 of the application icon.</p>
    #
    # @option params [String] :launch_path
    #   <p>The launch path of the application.</p>
    #
    # @option params [String] :working_directory
    #   <p>The working directory of the application.</p>
    #
    # @option params [String] :launch_parameters
    #   <p>The launch parameters of the application.</p>
    #
    # @option params [Array<String>] :platforms
    #   <p>The platforms the application supports. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic fleets.</p>
    #
    # @option params [Array<String>] :instance_families
    #   <p>The instance families the application supports. Valid values are GENERAL_PURPOSE and GRAPHICS_G4.</p>
    #
    # @option params [String] :app_block_arn
    #   <p>The app block ARN to which the application should be associated</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the application.</p>
    #
    # @return [Types::CreateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application(
    #     name: 'Name', # required
    #     display_name: 'DisplayName',
    #     description: 'Description',
    #     icon_s3_location: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key: 'S3Key' # required
    #     }, # required
    #     launch_path: 'LaunchPath', # required
    #     working_directory: 'WorkingDirectory',
    #     launch_parameters: 'LaunchParameters',
    #     platforms: [
    #       'WINDOWS' # accepts ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #     ], # required
    #     instance_families: [
    #       'member'
    #     ], # required
    #     app_block_arn: 'AppBlockArn', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationOutput
    #   resp.data.application #=> Types::Application
    #   resp.data.application.name #=> String
    #   resp.data.application.display_name #=> String
    #   resp.data.application.icon_url #=> String
    #   resp.data.application.launch_path #=> String
    #   resp.data.application.launch_parameters #=> String
    #   resp.data.application.enabled #=> Boolean
    #   resp.data.application.metadata #=> Hash<String, String>
    #   resp.data.application.metadata['key'] #=> String
    #   resp.data.application.working_directory #=> String
    #   resp.data.application.description #=> String
    #   resp.data.application.arn #=> String
    #   resp.data.application.app_block_arn #=> String
    #   resp.data.application.icon_s3_location #=> Types::S3Location
    #   resp.data.application.icon_s3_location.s3_bucket #=> String
    #   resp.data.application.icon_s3_location.s3_key #=> String
    #   resp.data.application.platforms #=> Array<String>
    #   resp.data.application.platforms[0] #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.application.instance_families #=> Array<String>
    #   resp.data.application.instance_families[0] #=> String
    #   resp.data.application.created_time #=> Time
    #
    def create_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::OperationNotPermittedException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::CreateApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApplication,
        stubs: @stubs,
        params_class: Params::CreateApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDirectoryConfigInput}.
    #
    # @option params [String] :directory_name
    #   <p>The fully qualified name of the directory (for example, corp.example.com).</p>
    #
    # @option params [Array<String>] :organizational_unit_distinguished_names
    #   <p>The distinguished names of the organizational units for computer accounts.</p>
    #
    # @option params [ServiceAccountCredentials] :service_account_credentials
    #   <p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>
    #
    # @return [Types::CreateDirectoryConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_directory_config(
    #     directory_name: 'DirectoryName', # required
    #     organizational_unit_distinguished_names: [
    #       'member'
    #     ], # required
    #     service_account_credentials: {
    #       account_name: 'AccountName', # required
    #       account_password: 'AccountPassword' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDirectoryConfigOutput
    #   resp.data.directory_config #=> Types::DirectoryConfig
    #   resp.data.directory_config.directory_name #=> String
    #   resp.data.directory_config.organizational_unit_distinguished_names #=> Array<String>
    #   resp.data.directory_config.organizational_unit_distinguished_names[0] #=> String
    #   resp.data.directory_config.service_account_credentials #=> Types::ServiceAccountCredentials
    #   resp.data.directory_config.service_account_credentials.account_name #=> String
    #   resp.data.directory_config.service_account_credentials.account_password #=> String
    #   resp.data.directory_config.created_time #=> Time
    #
    def create_directory_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDirectoryConfigInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDirectoryConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDirectoryConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::OperationNotPermittedException, Errors::InvalidRoleException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::CreateDirectoryConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDirectoryConfig,
        stubs: @stubs,
        params_class: Params::CreateDirectoryConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_directory_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new entitlement. Entitlements control access to specific applications within
    #             a stack, based on user attributes. Entitlements apply to SAML 2.0 federated user
    #             identities. Amazon AppStream 2.0 user pool and streaming URL users are entitled to all
    #             applications in a stack. Entitlements don't apply to the desktop stream view
    #             application, or to applications managed by a dynamic app provider using the Dynamic
    #             Application Framework.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEntitlementInput}.
    #
    # @option params [String] :name
    #   <p>The name of the entitlement.</p>
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #
    # @option params [String] :description
    #   <p>The description of the entitlement.</p>
    #
    # @option params [String] :app_visibility
    #   <p>Specifies whether all or selected apps are entitled.</p>
    #
    # @option params [Array<EntitlementAttribute>] :attributes
    #   <p>The attributes of the entitlement.</p>
    #
    # @return [Types::CreateEntitlementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_entitlement(
    #     name: 'Name', # required
    #     stack_name: 'StackName', # required
    #     description: 'Description',
    #     app_visibility: 'ALL', # required - accepts ["ALL", "ASSOCIATED"]
    #     attributes: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEntitlementOutput
    #   resp.data.entitlement #=> Types::Entitlement
    #   resp.data.entitlement.name #=> String
    #   resp.data.entitlement.stack_name #=> String
    #   resp.data.entitlement.description #=> String
    #   resp.data.entitlement.app_visibility #=> String, one of ["ALL", "ASSOCIATED"]
    #   resp.data.entitlement.attributes #=> Array<EntitlementAttribute>
    #   resp.data.entitlement.attributes[0] #=> Types::EntitlementAttribute
    #   resp.data.entitlement.attributes[0].name #=> String
    #   resp.data.entitlement.attributes[0].value #=> String
    #   resp.data.entitlement.created_time #=> Time
    #   resp.data.entitlement.last_modified_time #=> Time
    #
    def create_entitlement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEntitlementInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEntitlementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEntitlement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::EntitlementAlreadyExistsException, Errors::OperationNotPermittedException]),
        data_parser: Parsers::CreateEntitlement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEntitlement,
        stubs: @stubs,
        params_class: Params::CreateEntitlementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_entitlement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a fleet. A fleet consists of streaming instances that run a specified image when using Always-On or On-Demand.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFleetInput}.
    #
    # @option params [String] :name
    #   <p>A unique name for the fleet.</p>
    #
    # @option params [String] :image_name
    #   <p>The name of the image used to create the fleet.</p>
    #
    # @option params [String] :image_arn
    #   <p>The ARN of the public, private, or shared image to use.</p>
    #
    # @option params [String] :instance_type
    #   <p>The instance type to use when launching fleet instances. The following instance types are available:</p>
    #           <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #            </ul>
    #           <p>The following instance types are available for Elastic fleets:</p>
    #           <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :fleet_type
    #   <p>The fleet type.</p>
    #           <dl>
    #               <dt>ALWAYS_ON</dt>
    #               <dd>
    #                       <p>Provides users with instant-on access to their apps.
    #                           You are charged for all running instances in your fleet, even if no users are streaming apps.</p>
    #                   </dd>
    #               <dt>ON_DEMAND</dt>
    #               <dd>
    #                       <p>Provide users with access to applications after they connect, which takes one to two minutes.
    #                           You are charged for instance streaming when users are connected and a
    #                           small hourly fee for instances that are not streaming apps.</p>
    #                   </dd>
    #            </dl>
    #
    # @option params [ComputeCapacity] :compute_capacity
    #   <p>The desired capacity for the fleet. This is not allowed for Elastic fleets. For Elastic fleets, specify MaxConcurrentSessions instead.</p>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>The VPC configuration for the fleet. This is required for Elastic fleets, but not required for other fleet types. Elastic fleets require that you specify at least two subnets in different availability zones.</p>
    #
    # @option params [Integer] :max_user_duration_in_seconds
    #   <p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.</p>
    #           <p>Specify a value between 600 and 360000.</p>
    #
    # @option params [Integer] :disconnect_timeout_in_seconds
    #   <p>The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance. </p>
    #           <p>Specify a value between 60 and 360000.</p>
    #
    # @option params [String] :description
    #   <p>The description to display.</p>
    #
    # @option params [String] :display_name
    #   <p>The fleet name to display.</p>
    #
    # @option params [Boolean] :enable_default_internet_access
    #   <p>Enables or disables default internet access for the fleet.</p>
    #
    # @option params [DomainJoinInfo] :domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. This is not allowed for Elastic fleets. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the fleet. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #
    #           <p>If you do not specify a value, the value is set to an empty string.</p>
    #
    #           <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #           <p>_ . : / = + \ - @</p>
    #
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    # @option params [Integer] :idle_disconnect_timeout_in_seconds
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected
    #               from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time
    #               interval begins. Users are notified before they are disconnected due to inactivity. If
    #               they try to reconnect to the streaming session before the time interval specified in
    #               <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their
    #               previous session. Users are considered idle when they stop providing keyboard or mouse
    #               input during their streaming session. File uploads and downloads, audio in, audio out,
    #               and pixels changing do not qualify as user activity. If users continue to be idle after
    #               the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are
    #               disconnected.</p>
    #           <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 3600. The default value is 0.</p>
    #           <note>
    #               <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>
    #            </note>
    #
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    # @option params [String] :stream_view
    #   <p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>
    #
    #           <p>The default value is <code>APP</code>.</p>
    #
    # @option params [String] :platform
    #   <p>The fleet platform. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic
    #               fleets. </p>
    #
    # @option params [Integer] :max_concurrent_sessions
    #   <p>The maximum concurrent sessions of the Elastic fleet. This is required for Elastic
    #               fleets, and not allowed for other fleet types.</p>
    #
    # @option params [Array<String>] :usb_device_filter_strings
    #   <p>The USB device filter strings that specify which USB devices a user can redirect to the fleet streaming session, when using the Windows native client. This is allowed but not required for Elastic fleets.</p>
    #
    # @option params [S3Location] :session_script_s3_location
    #   <p>The S3 location of the session scripts configuration zip file. This only applies to Elastic fleets.</p>
    #
    # @return [Types::CreateFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet(
    #     name: 'Name', # required
    #     image_name: 'ImageName',
    #     image_arn: 'ImageArn',
    #     instance_type: 'InstanceType', # required
    #     fleet_type: 'ALWAYS_ON', # accepts ["ALWAYS_ON", "ON_DEMAND", "ELASTIC"]
    #     compute_capacity: {
    #       desired_instances: 1 # required
    #     },
    #     vpc_config: {
    #       subnet_ids: [
    #         'member'
    #       ],
    #       security_group_ids: [
    #         'member'
    #       ]
    #     },
    #     max_user_duration_in_seconds: 1,
    #     disconnect_timeout_in_seconds: 1,
    #     description: 'Description',
    #     display_name: 'DisplayName',
    #     enable_default_internet_access: false,
    #     domain_join_info: {
    #       directory_name: 'DirectoryName',
    #       organizational_unit_distinguished_name: 'OrganizationalUnitDistinguishedName'
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     idle_disconnect_timeout_in_seconds: 1,
    #     iam_role_arn: 'IamRoleArn',
    #     stream_view: 'APP', # accepts ["APP", "DESKTOP"]
    #     platform: 'WINDOWS', # accepts ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #     max_concurrent_sessions: 1,
    #     usb_device_filter_strings: [
    #       'member'
    #     ],
    #     session_script_s3_location: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key: 'S3Key' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFleetOutput
    #   resp.data.fleet #=> Types::Fleet
    #   resp.data.fleet.arn #=> String
    #   resp.data.fleet.name #=> String
    #   resp.data.fleet.display_name #=> String
    #   resp.data.fleet.description #=> String
    #   resp.data.fleet.image_name #=> String
    #   resp.data.fleet.image_arn #=> String
    #   resp.data.fleet.instance_type #=> String
    #   resp.data.fleet.fleet_type #=> String, one of ["ALWAYS_ON", "ON_DEMAND", "ELASTIC"]
    #   resp.data.fleet.compute_capacity_status #=> Types::ComputeCapacityStatus
    #   resp.data.fleet.compute_capacity_status.desired #=> Integer
    #   resp.data.fleet.compute_capacity_status.running #=> Integer
    #   resp.data.fleet.compute_capacity_status.in_use #=> Integer
    #   resp.data.fleet.compute_capacity_status.available #=> Integer
    #   resp.data.fleet.max_user_duration_in_seconds #=> Integer
    #   resp.data.fleet.disconnect_timeout_in_seconds #=> Integer
    #   resp.data.fleet.state #=> String, one of ["STARTING", "RUNNING", "STOPPING", "STOPPED"]
    #   resp.data.fleet.vpc_config #=> Types::VpcConfig
    #   resp.data.fleet.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.fleet.vpc_config.subnet_ids[0] #=> String
    #   resp.data.fleet.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.fleet.vpc_config.security_group_ids[0] #=> String
    #   resp.data.fleet.created_time #=> Time
    #   resp.data.fleet.fleet_errors #=> Array<FleetError>
    #   resp.data.fleet.fleet_errors[0] #=> Types::FleetError
    #   resp.data.fleet.fleet_errors[0].error_code #=> String, one of ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"]
    #   resp.data.fleet.fleet_errors[0].error_message #=> String
    #   resp.data.fleet.enable_default_internet_access #=> Boolean
    #   resp.data.fleet.domain_join_info #=> Types::DomainJoinInfo
    #   resp.data.fleet.domain_join_info.directory_name #=> String
    #   resp.data.fleet.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.data.fleet.idle_disconnect_timeout_in_seconds #=> Integer
    #   resp.data.fleet.iam_role_arn #=> String
    #   resp.data.fleet.stream_view #=> String, one of ["APP", "DESKTOP"]
    #   resp.data.fleet.platform #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.fleet.max_concurrent_sessions #=> Integer
    #   resp.data.fleet.usb_device_filter_strings #=> Array<String>
    #   resp.data.fleet.usb_device_filter_strings[0] #=> String
    #   resp.data.fleet.session_script_s3_location #=> Types::S3Location
    #   resp.data.fleet.session_script_s3_location.s3_bucket #=> String
    #   resp.data.fleet.session_script_s3_location.s3_key #=> String
    #
    def create_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFleetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestLimitExceededException, Errors::InvalidParameterCombinationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ResourceNotAvailableException, Errors::ResourceAlreadyExistsException, Errors::OperationNotPermittedException, Errors::InvalidRoleException, Errors::IncompatibleImageException, Errors::ConcurrentModificationException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::CreateFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFleet,
        stubs: @stubs,
        params_class: Params::CreateFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an image builder. An image builder is a virtual machine that is used to create an image.</p>
    #         <p>The initial state of the builder is <code>PENDING</code>. When it is ready, the state is <code>RUNNING</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateImageBuilderInput}.
    #
    # @option params [String] :name
    #   <p>A unique name for the image builder.</p>
    #
    # @option params [String] :image_name
    #   <p>The name of the image used to create the image builder.</p>
    #
    # @option params [String] :image_arn
    #   <p>The ARN of the public, private, or shared image to use.</p>
    #
    # @option params [String] :instance_type
    #   <p>The instance type to use when launching the image builder. The following instance types are available:</p>
    #           <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :description
    #   <p>The description to display.</p>
    #
    # @option params [String] :display_name
    #   <p>The image builder name to display.</p>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>The VPC configuration for the image builder. You can specify only one subnet.</p>
    #
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the image builder. To assume a role, the image builder calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    # @option params [Boolean] :enable_default_internet_access
    #   <p>Enables or disables default internet access for the image builder.</p>
    #
    # @option params [DomainJoinInfo] :domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. </p>
    #
    # @option params [String] :appstream_agent_version
    #   <p>The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the image builder. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #
    #           <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #           <p>_ . : / = + \ - @</p>
    #
    #           <p>If you do not specify a value, the value is set to an empty string.</p>
    #
    #           <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    # @option params [Array<AccessEndpoint>] :access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Administrators can connect to the image builder only through the specified endpoints.</p>
    #
    # @return [Types::CreateImageBuilderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image_builder(
    #     name: 'Name', # required
    #     image_name: 'ImageName',
    #     image_arn: 'ImageArn',
    #     instance_type: 'InstanceType', # required
    #     description: 'Description',
    #     display_name: 'DisplayName',
    #     vpc_config: {
    #       subnet_ids: [
    #         'member'
    #       ],
    #       security_group_ids: [
    #         'member'
    #       ]
    #     },
    #     iam_role_arn: 'IamRoleArn',
    #     enable_default_internet_access: false,
    #     domain_join_info: {
    #       directory_name: 'DirectoryName',
    #       organizational_unit_distinguished_name: 'OrganizationalUnitDistinguishedName'
    #     },
    #     appstream_agent_version: 'AppstreamAgentVersion',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     access_endpoints: [
    #       {
    #         endpoint_type: 'STREAMING', # required - accepts ["STREAMING"]
    #         vpce_id: 'VpceId'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateImageBuilderOutput
    #   resp.data.image_builder #=> Types::ImageBuilder
    #   resp.data.image_builder.name #=> String
    #   resp.data.image_builder.arn #=> String
    #   resp.data.image_builder.image_arn #=> String
    #   resp.data.image_builder.description #=> String
    #   resp.data.image_builder.display_name #=> String
    #   resp.data.image_builder.vpc_config #=> Types::VpcConfig
    #   resp.data.image_builder.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.image_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.data.image_builder.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.image_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.data.image_builder.instance_type #=> String
    #   resp.data.image_builder.platform #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.image_builder.iam_role_arn #=> String
    #   resp.data.image_builder.state #=> String, one of ["PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"]
    #   resp.data.image_builder.state_change_reason #=> Types::ImageBuilderStateChangeReason
    #   resp.data.image_builder.state_change_reason.code #=> String, one of ["INTERNAL_ERROR", "IMAGE_UNAVAILABLE"]
    #   resp.data.image_builder.state_change_reason.message #=> String
    #   resp.data.image_builder.created_time #=> Time
    #   resp.data.image_builder.enable_default_internet_access #=> Boolean
    #   resp.data.image_builder.domain_join_info #=> Types::DomainJoinInfo
    #   resp.data.image_builder.domain_join_info.directory_name #=> String
    #   resp.data.image_builder.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.data.image_builder.network_access_configuration #=> Types::NetworkAccessConfiguration
    #   resp.data.image_builder.network_access_configuration.eni_private_ip_address #=> String
    #   resp.data.image_builder.network_access_configuration.eni_id #=> String
    #   resp.data.image_builder.image_builder_errors #=> Array<ResourceError>
    #   resp.data.image_builder.image_builder_errors[0] #=> Types::ResourceError
    #   resp.data.image_builder.image_builder_errors[0].error_code #=> String, one of ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"]
    #   resp.data.image_builder.image_builder_errors[0].error_message #=> String
    #   resp.data.image_builder.image_builder_errors[0].error_timestamp #=> Time
    #   resp.data.image_builder.appstream_agent_version #=> String
    #   resp.data.image_builder.access_endpoints #=> Array<AccessEndpoint>
    #   resp.data.image_builder.access_endpoints[0] #=> Types::AccessEndpoint
    #   resp.data.image_builder.access_endpoints[0].endpoint_type #=> String, one of ["STREAMING"]
    #   resp.data.image_builder.access_endpoints[0].vpce_id #=> String
    #
    def create_image_builder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateImageBuilderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateImageBuilderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateImageBuilder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestLimitExceededException, Errors::InvalidParameterCombinationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ResourceNotAvailableException, Errors::ResourceAlreadyExistsException, Errors::OperationNotPermittedException, Errors::InvalidRoleException, Errors::IncompatibleImageException, Errors::ConcurrentModificationException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::CreateImageBuilder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateImageBuilder,
        stubs: @stubs,
        params_class: Params::CreateImageBuilderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_image_builder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a URL to start an image builder streaming session.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateImageBuilderStreamingURLInput}.
    #
    # @option params [String] :name
    #   <p>The name of the image builder.</p>
    #
    # @option params [Integer] :validity
    #   <p>The time that the streaming URL will be valid, in seconds.
    #               Specify a value between 1 and 604800 seconds. The default is 3600 seconds.</p>
    #
    # @return [Types::CreateImageBuilderStreamingURLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image_builder_streaming_url(
    #     name: 'Name', # required
    #     validity: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateImageBuilderStreamingURLOutput
    #   resp.data.streaming_url #=> String
    #   resp.data.expires #=> Time
    #
    def create_image_builder_streaming_url(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateImageBuilderStreamingURLInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateImageBuilderStreamingURLInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateImageBuilderStreamingURL
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException]),
        data_parser: Parsers::CreateImageBuilderStreamingURL
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateImageBuilderStreamingURL,
        stubs: @stubs,
        params_class: Params::CreateImageBuilderStreamingURLOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_image_builder_streaming_url
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a stack to start streaming applications to users. A stack consists of an associated fleet, user access policies, and storage configurations. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateStackInput}.
    #
    # @option params [String] :name
    #   <p>The name of the stack.</p>
    #
    # @option params [String] :description
    #   <p>The description to display.</p>
    #
    # @option params [String] :display_name
    #   <p>The stack name to display.</p>
    #
    # @option params [Array<StorageConnector>] :storage_connectors
    #   <p>The storage connectors to enable.</p>
    #
    # @option params [String] :redirect_url
    #   <p>The URL that users are redirected to after their streaming session ends.</p>
    #
    # @option params [String] :feedback_url
    #   <p>The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>
    #
    # @option params [Array<UserSetting>] :user_settings
    #   <p>The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled. </p>
    #
    # @option params [ApplicationSettings] :application_settings
    #   <p>The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the stack. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #
    #           <p>If you do not specify a value, the value is set to an empty string.</p>
    #
    #           <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #           <p>_ . : / = + \ - @</p>
    #
    #           <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    # @option params [Array<AccessEndpoint>] :access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.</p>
    #
    # @option params [Array<String>] :embed_host_domains
    #   <p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions. </p>
    #
    # @return [Types::CreateStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack(
    #     name: 'Name', # required
    #     description: 'Description',
    #     display_name: 'DisplayName',
    #     storage_connectors: [
    #       {
    #         connector_type: 'HOMEFOLDERS', # required - accepts ["HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"]
    #         resource_identifier: 'ResourceIdentifier',
    #         domains: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     redirect_url: 'RedirectURL',
    #     feedback_url: 'FeedbackURL',
    #     user_settings: [
    #       {
    #         action: 'CLIPBOARD_COPY_FROM_LOCAL_DEVICE', # required - accepts ["CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE", "DOMAIN_PASSWORD_SIGNIN", "DOMAIN_SMART_CARD_SIGNIN"]
    #         permission: 'ENABLED' # required - accepts ["ENABLED", "DISABLED"]
    #       }
    #     ],
    #     application_settings: {
    #       enabled: false, # required
    #       settings_group: 'SettingsGroup'
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     access_endpoints: [
    #       {
    #         endpoint_type: 'STREAMING', # required - accepts ["STREAMING"]
    #         vpce_id: 'VpceId'
    #       }
    #     ],
    #     embed_host_domains: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStackOutput
    #   resp.data.stack #=> Types::Stack
    #   resp.data.stack.arn #=> String
    #   resp.data.stack.name #=> String
    #   resp.data.stack.description #=> String
    #   resp.data.stack.display_name #=> String
    #   resp.data.stack.created_time #=> Time
    #   resp.data.stack.storage_connectors #=> Array<StorageConnector>
    #   resp.data.stack.storage_connectors[0] #=> Types::StorageConnector
    #   resp.data.stack.storage_connectors[0].connector_type #=> String, one of ["HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"]
    #   resp.data.stack.storage_connectors[0].resource_identifier #=> String
    #   resp.data.stack.storage_connectors[0].domains #=> Array<String>
    #   resp.data.stack.storage_connectors[0].domains[0] #=> String
    #   resp.data.stack.redirect_url #=> String
    #   resp.data.stack.feedback_url #=> String
    #   resp.data.stack.stack_errors #=> Array<StackError>
    #   resp.data.stack.stack_errors[0] #=> Types::StackError
    #   resp.data.stack.stack_errors[0].error_code #=> String, one of ["STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"]
    #   resp.data.stack.stack_errors[0].error_message #=> String
    #   resp.data.stack.user_settings #=> Array<UserSetting>
    #   resp.data.stack.user_settings[0] #=> Types::UserSetting
    #   resp.data.stack.user_settings[0].action #=> String, one of ["CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE", "DOMAIN_PASSWORD_SIGNIN", "DOMAIN_SMART_CARD_SIGNIN"]
    #   resp.data.stack.user_settings[0].permission #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.stack.application_settings #=> Types::ApplicationSettingsResponse
    #   resp.data.stack.application_settings.enabled #=> Boolean
    #   resp.data.stack.application_settings.settings_group #=> String
    #   resp.data.stack.application_settings.s3_bucket_name #=> String
    #   resp.data.stack.access_endpoints #=> Array<AccessEndpoint>
    #   resp.data.stack.access_endpoints[0] #=> Types::AccessEndpoint
    #   resp.data.stack.access_endpoints[0].endpoint_type #=> String, one of ["STREAMING"]
    #   resp.data.stack.access_endpoints[0].vpce_id #=> String
    #   resp.data.stack.embed_host_domains #=> Array<String>
    #   resp.data.stack.embed_host_domains[0] #=> String
    #
    def create_stack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStackInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStack
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::InvalidRoleException, Errors::ConcurrentModificationException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::CreateStack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStack,
        stubs: @stubs,
        params_class: Params::CreateStackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_stack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a temporary URL to start an AppStream 2.0 streaming session for the specified user. A streaming URL enables application streaming to be tested without user setup. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateStreamingURLInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack.</p>
    #
    # @option params [String] :fleet_name
    #   <p>The name of the fleet.</p>
    #
    # @option params [String] :user_id
    #   <p>The identifier of the user.</p>
    #
    # @option params [String] :application_id
    #   <p>The name of the application to launch after the session starts. This is the name that you specified
    #               as <b>Name</b> in the Image Assistant. If your fleet is enabled for the <b>Desktop</b> stream view, you can also choose to launch directly to the operating system desktop. To do so, specify <b>Desktop</b>.</p>
    #
    # @option params [Integer] :validity
    #   <p>The time that the streaming URL will be valid, in seconds.
    #               Specify a value between 1 and 604800 seconds. The default is 60 seconds.</p>
    #
    # @option params [String] :session_context
    #   <p>The session context. For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/managing-stacks-fleets.html#managing-stacks-fleets-parameters">Session Context</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    # @return [Types::CreateStreamingURLOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_streaming_url(
    #     stack_name: 'StackName', # required
    #     fleet_name: 'FleetName', # required
    #     user_id: 'UserId', # required
    #     application_id: 'ApplicationId',
    #     validity: 1,
    #     session_context: 'SessionContext'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStreamingURLOutput
    #   resp.data.streaming_url #=> String
    #   resp.data.expires #=> Time
    #
    def create_streaming_url(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStreamingURLInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStreamingURLInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStreamingURL
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ResourceNotFoundException, Errors::ResourceNotAvailableException, Errors::OperationNotPermittedException]),
        data_parser: Parsers::CreateStreamingURL
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStreamingURL,
        stubs: @stubs,
        params_class: Params::CreateStreamingURLOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_streaming_url
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new image with the latest Windows operating system updates, driver updates, and AppStream 2.0 agent software.</p>
    #
    #         <p>For more information, see the "Update an Image by Using
    #             Managed AppStream 2.0 Image Updates" section in <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/administer-images.html">Administer Your AppStream 2.0 Images</a>, in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUpdatedImageInput}.
    #
    # @option params [String] :existing_image_name
    #   <p>The name of the image to update.</p>
    #
    # @option params [String] :new_image_name
    #   <p>The name of the new image. The name must be unique within the AWS account and Region.</p>
    #
    # @option params [String] :new_image_description
    #   <p>The description to display for the new image.</p>
    #
    # @option params [String] :new_image_display_name
    #   <p>The name to display for the new image.</p>
    #
    # @option params [Hash<String, String>] :new_image_tags
    #   <p>The tags to associate with the new image. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #           <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #           <p>_ . : / = + \ - @</p>
    #           <p>If you do not specify a value, the value is set to an empty string.</p>
    #           <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Indicates whether to display the status of image update availability before AppStream 2.0 initiates the process of creating a new updated image. If this value is set to <code>true</code>, AppStream 2.0 displays whether image updates are available. If this value is set to <code>false</code>, AppStream 2.0 initiates the process of creating a new updated image without displaying whether image updates are available.</p>
    #
    # @return [Types::CreateUpdatedImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_updated_image(
    #     existing_image_name: 'existingImageName', # required
    #     new_image_name: 'newImageName', # required
    #     new_image_description: 'newImageDescription',
    #     new_image_display_name: 'newImageDisplayName',
    #     new_image_tags: {
    #       'key' => 'value'
    #     },
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUpdatedImageOutput
    #   resp.data.image #=> Types::Image
    #   resp.data.image.name #=> String
    #   resp.data.image.arn #=> String
    #   resp.data.image.base_image_arn #=> String
    #   resp.data.image.display_name #=> String
    #   resp.data.image.state #=> String, one of ["PENDING", "AVAILABLE", "FAILED", "COPYING", "DELETING", "CREATING", "IMPORTING"]
    #   resp.data.image.visibility #=> String, one of ["PUBLIC", "PRIVATE", "SHARED"]
    #   resp.data.image.image_builder_supported #=> Boolean
    #   resp.data.image.image_builder_name #=> String
    #   resp.data.image.platform #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.image.description #=> String
    #   resp.data.image.state_change_reason #=> Types::ImageStateChangeReason
    #   resp.data.image.state_change_reason.code #=> String, one of ["INTERNAL_ERROR", "IMAGE_BUILDER_NOT_AVAILABLE", "IMAGE_COPY_FAILURE"]
    #   resp.data.image.state_change_reason.message #=> String
    #   resp.data.image.applications #=> Array<Application>
    #   resp.data.image.applications[0] #=> Types::Application
    #   resp.data.image.applications[0].name #=> String
    #   resp.data.image.applications[0].display_name #=> String
    #   resp.data.image.applications[0].icon_url #=> String
    #   resp.data.image.applications[0].launch_path #=> String
    #   resp.data.image.applications[0].launch_parameters #=> String
    #   resp.data.image.applications[0].enabled #=> Boolean
    #   resp.data.image.applications[0].metadata #=> Hash<String, String>
    #   resp.data.image.applications[0].metadata['key'] #=> String
    #   resp.data.image.applications[0].working_directory #=> String
    #   resp.data.image.applications[0].description #=> String
    #   resp.data.image.applications[0].arn #=> String
    #   resp.data.image.applications[0].app_block_arn #=> String
    #   resp.data.image.applications[0].icon_s3_location #=> Types::S3Location
    #   resp.data.image.applications[0].icon_s3_location.s3_bucket #=> String
    #   resp.data.image.applications[0].icon_s3_location.s3_key #=> String
    #   resp.data.image.applications[0].platforms #=> Array<String>
    #   resp.data.image.applications[0].platforms[0] #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.image.applications[0].instance_families #=> Array<String>
    #   resp.data.image.applications[0].instance_families[0] #=> String
    #   resp.data.image.applications[0].created_time #=> Time
    #   resp.data.image.created_time #=> Time
    #   resp.data.image.public_base_image_released_date #=> Time
    #   resp.data.image.appstream_agent_version #=> String
    #   resp.data.image.image_permissions #=> Types::ImagePermissions
    #   resp.data.image.image_permissions.allow_fleet #=> Boolean
    #   resp.data.image.image_permissions.allow_image_builder #=> Boolean
    #   resp.data.image.image_errors #=> Array<ResourceError>
    #   resp.data.image.image_errors[0] #=> Types::ResourceError
    #   resp.data.image.image_errors[0].error_code #=> String, one of ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"]
    #   resp.data.image.image_errors[0].error_message #=> String
    #   resp.data.image.image_errors[0].error_timestamp #=> Time
    #   resp.data.can_update_image #=> Boolean
    #
    def create_updated_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUpdatedImageInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUpdatedImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUpdatedImage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::OperationNotPermittedException, Errors::IncompatibleImageException, Errors::ConcurrentModificationException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::CreateUpdatedImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUpdatedImage,
        stubs: @stubs,
        params_class: Params::CreateUpdatedImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_updated_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a usage report subscription. Usage reports are generated daily.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUsageReportSubscriptionInput}.
    #
    # @return [Types::CreateUsageReportSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_usage_report_subscription()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUsageReportSubscriptionOutput
    #   resp.data.s3_bucket_name #=> String
    #   resp.data.schedule #=> String, one of ["DAILY"]
    #
    def create_usage_report_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUsageReportSubscriptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUsageReportSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUsageReportSubscription
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InvalidRoleException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::CreateUsageReportSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUsageReportSubscription,
        stubs: @stubs,
        params_class: Params::CreateUsageReportSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_usage_report_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new user in the user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserInput}.
    #
    # @option params [String] :user_name
    #   <p>The email address of the user.</p>
    #
    #           <note>
    #               <p>Users' email addresses are case-sensitive. During login, if they specify an email address that doesn't use the same capitalization as the email address specified when their user pool account was created, a "user does not exist" error message displays.</p>
    #            </note>
    #
    # @option params [String] :message_action
    #   <p>The action to take for the welcome email that is sent to a user after the user is created in the user pool. If you specify SUPPRESS, no email is sent. If you specify RESEND, do not specify the first name or last name of the user. If the value is null, the email is sent. </p>
    #
    #           <note>
    #               <p>The temporary password in the welcome email is valid for only 7 days. If users don’t set their passwords within 7 days, you must send them a new welcome email.</p>
    #            </note>
    #
    # @option params [String] :first_name
    #   <p>The first name, or given name, of the user.</p>
    #
    # @option params [String] :last_name
    #   <p>The last name, or surname, of the user.</p>
    #
    # @option params [String] :authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL. </p>
    #
    # @return [Types::CreateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user(
    #     user_name: 'UserName', # required
    #     message_action: 'SUPPRESS', # accepts ["SUPPRESS", "RESEND"]
    #     first_name: 'FirstName',
    #     last_name: 'LastName',
    #     authentication_type: 'API' # required - accepts ["API", "SAML", "USERPOOL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserOutput
    #
    def create_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::LimitExceededException, Errors::ResourceAlreadyExistsException, Errors::OperationNotPermittedException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::CreateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUser,
        stubs: @stubs,
        params_class: Params::CreateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an app block.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppBlockInput}.
    #
    # @option params [String] :name
    #   <p>The name of the app block.</p>
    #
    # @return [Types::DeleteAppBlockOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_block(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppBlockOutput
    #
    def delete_app_block(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppBlockInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppBlockInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAppBlock
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceInUseException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DeleteAppBlock
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAppBlock,
        stubs: @stubs,
        params_class: Params::DeleteAppBlockOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app_block
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the application.</p>
    #
    # @return [Types::DeleteApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationOutput
    #
    def delete_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::ResourceInUseException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DeleteApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplication,
        stubs: @stubs,
        params_class: Params::DeleteApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified Directory Config object from AppStream 2.0. This object includes the information required to join streaming instances to an Active Directory domain.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDirectoryConfigInput}.
    #
    # @option params [String] :directory_name
    #   <p>The name of the directory configuration.</p>
    #
    # @return [Types::DeleteDirectoryConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_directory_config(
    #     directory_name: 'DirectoryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDirectoryConfigOutput
    #
    def delete_directory_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDirectoryConfigInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDirectoryConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDirectoryConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteDirectoryConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDirectoryConfig,
        stubs: @stubs,
        params_class: Params::DeleteDirectoryConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_directory_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified entitlement.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEntitlementInput}.
    #
    # @option params [String] :name
    #   <p>The name of the entitlement.</p>
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #
    # @return [Types::DeleteEntitlementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_entitlement(
    #     name: 'Name', # required
    #     stack_name: 'StackName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEntitlementOutput
    #
    def delete_entitlement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEntitlementInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEntitlementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEntitlement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::EntitlementNotFoundException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DeleteEntitlement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEntitlement,
        stubs: @stubs,
        params_class: Params::DeleteEntitlementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_entitlement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified fleet.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFleetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the fleet.</p>
    #
    # @return [Types::DeleteFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFleetOutput
    #
    def delete_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFleetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceInUseException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DeleteFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFleet,
        stubs: @stubs,
        params_class: Params::DeleteFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified image. You cannot delete an image when it is in use.
    #             After you delete an image, you cannot provision new capacity using the image.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteImageInput}.
    #
    # @option params [String] :name
    #   <p>The name of the image.</p>
    #
    # @return [Types::DeleteImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteImageOutput
    #   resp.data.image #=> Types::Image
    #   resp.data.image.name #=> String
    #   resp.data.image.arn #=> String
    #   resp.data.image.base_image_arn #=> String
    #   resp.data.image.display_name #=> String
    #   resp.data.image.state #=> String, one of ["PENDING", "AVAILABLE", "FAILED", "COPYING", "DELETING", "CREATING", "IMPORTING"]
    #   resp.data.image.visibility #=> String, one of ["PUBLIC", "PRIVATE", "SHARED"]
    #   resp.data.image.image_builder_supported #=> Boolean
    #   resp.data.image.image_builder_name #=> String
    #   resp.data.image.platform #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.image.description #=> String
    #   resp.data.image.state_change_reason #=> Types::ImageStateChangeReason
    #   resp.data.image.state_change_reason.code #=> String, one of ["INTERNAL_ERROR", "IMAGE_BUILDER_NOT_AVAILABLE", "IMAGE_COPY_FAILURE"]
    #   resp.data.image.state_change_reason.message #=> String
    #   resp.data.image.applications #=> Array<Application>
    #   resp.data.image.applications[0] #=> Types::Application
    #   resp.data.image.applications[0].name #=> String
    #   resp.data.image.applications[0].display_name #=> String
    #   resp.data.image.applications[0].icon_url #=> String
    #   resp.data.image.applications[0].launch_path #=> String
    #   resp.data.image.applications[0].launch_parameters #=> String
    #   resp.data.image.applications[0].enabled #=> Boolean
    #   resp.data.image.applications[0].metadata #=> Hash<String, String>
    #   resp.data.image.applications[0].metadata['key'] #=> String
    #   resp.data.image.applications[0].working_directory #=> String
    #   resp.data.image.applications[0].description #=> String
    #   resp.data.image.applications[0].arn #=> String
    #   resp.data.image.applications[0].app_block_arn #=> String
    #   resp.data.image.applications[0].icon_s3_location #=> Types::S3Location
    #   resp.data.image.applications[0].icon_s3_location.s3_bucket #=> String
    #   resp.data.image.applications[0].icon_s3_location.s3_key #=> String
    #   resp.data.image.applications[0].platforms #=> Array<String>
    #   resp.data.image.applications[0].platforms[0] #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.image.applications[0].instance_families #=> Array<String>
    #   resp.data.image.applications[0].instance_families[0] #=> String
    #   resp.data.image.applications[0].created_time #=> Time
    #   resp.data.image.created_time #=> Time
    #   resp.data.image.public_base_image_released_date #=> Time
    #   resp.data.image.appstream_agent_version #=> String
    #   resp.data.image.image_permissions #=> Types::ImagePermissions
    #   resp.data.image.image_permissions.allow_fleet #=> Boolean
    #   resp.data.image.image_permissions.allow_image_builder #=> Boolean
    #   resp.data.image.image_errors #=> Array<ResourceError>
    #   resp.data.image.image_errors[0] #=> Types::ResourceError
    #   resp.data.image.image_errors[0].error_code #=> String, one of ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"]
    #   resp.data.image.image_errors[0].error_message #=> String
    #   resp.data.image.image_errors[0].error_timestamp #=> Time
    #
    def delete_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteImageInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteImage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::ResourceInUseException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DeleteImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteImage,
        stubs: @stubs,
        params_class: Params::DeleteImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified image builder and releases the capacity.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteImageBuilderInput}.
    #
    # @option params [String] :name
    #   <p>The name of the image builder.</p>
    #
    # @return [Types::DeleteImageBuilderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image_builder(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteImageBuilderOutput
    #   resp.data.image_builder #=> Types::ImageBuilder
    #   resp.data.image_builder.name #=> String
    #   resp.data.image_builder.arn #=> String
    #   resp.data.image_builder.image_arn #=> String
    #   resp.data.image_builder.description #=> String
    #   resp.data.image_builder.display_name #=> String
    #   resp.data.image_builder.vpc_config #=> Types::VpcConfig
    #   resp.data.image_builder.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.image_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.data.image_builder.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.image_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.data.image_builder.instance_type #=> String
    #   resp.data.image_builder.platform #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.image_builder.iam_role_arn #=> String
    #   resp.data.image_builder.state #=> String, one of ["PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"]
    #   resp.data.image_builder.state_change_reason #=> Types::ImageBuilderStateChangeReason
    #   resp.data.image_builder.state_change_reason.code #=> String, one of ["INTERNAL_ERROR", "IMAGE_UNAVAILABLE"]
    #   resp.data.image_builder.state_change_reason.message #=> String
    #   resp.data.image_builder.created_time #=> Time
    #   resp.data.image_builder.enable_default_internet_access #=> Boolean
    #   resp.data.image_builder.domain_join_info #=> Types::DomainJoinInfo
    #   resp.data.image_builder.domain_join_info.directory_name #=> String
    #   resp.data.image_builder.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.data.image_builder.network_access_configuration #=> Types::NetworkAccessConfiguration
    #   resp.data.image_builder.network_access_configuration.eni_private_ip_address #=> String
    #   resp.data.image_builder.network_access_configuration.eni_id #=> String
    #   resp.data.image_builder.image_builder_errors #=> Array<ResourceError>
    #   resp.data.image_builder.image_builder_errors[0] #=> Types::ResourceError
    #   resp.data.image_builder.image_builder_errors[0].error_code #=> String, one of ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"]
    #   resp.data.image_builder.image_builder_errors[0].error_message #=> String
    #   resp.data.image_builder.image_builder_errors[0].error_timestamp #=> Time
    #   resp.data.image_builder.appstream_agent_version #=> String
    #   resp.data.image_builder.access_endpoints #=> Array<AccessEndpoint>
    #   resp.data.image_builder.access_endpoints[0] #=> Types::AccessEndpoint
    #   resp.data.image_builder.access_endpoints[0].endpoint_type #=> String, one of ["STREAMING"]
    #   resp.data.image_builder.access_endpoints[0].vpce_id #=> String
    #
    def delete_image_builder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteImageBuilderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteImageBuilderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteImageBuilder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DeleteImageBuilder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteImageBuilder,
        stubs: @stubs,
        params_class: Params::DeleteImageBuilderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_image_builder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes permissions for the specified private image. After you delete permissions for an image, AWS accounts to which you previously granted these permissions can no longer use the image.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteImagePermissionsInput}.
    #
    # @option params [String] :name
    #   <p>The name of the private image.</p>
    #
    # @option params [String] :shared_account_id
    #   <p>The 12-digit identifier of the AWS account for which to delete image permissions.</p>
    #
    # @return [Types::DeleteImagePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_image_permissions(
    #     name: 'Name', # required
    #     shared_account_id: 'SharedAccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteImagePermissionsOutput
    #
    def delete_image_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteImagePermissionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteImagePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteImagePermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceNotAvailableException]),
        data_parser: Parsers::DeleteImagePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteImagePermissions,
        stubs: @stubs,
        params_class: Params::DeleteImagePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_image_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified stack. After the stack is deleted, the application streaming environment provided by the stack is no longer available to users. Also, any reservations made for application streaming sessions for the stack are released.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStackInput}.
    #
    # @option params [String] :name
    #   <p>The name of the stack.</p>
    #
    # @return [Types::DeleteStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStackOutput
    #
    def delete_stack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStackInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStack
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::ResourceInUseException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DeleteStack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStack,
        stubs: @stubs,
        params_class: Params::DeleteStackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_stack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables usage report generation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUsageReportSubscriptionInput}.
    #
    # @return [Types::DeleteUsageReportSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_usage_report_subscription()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUsageReportSubscriptionOutput
    #
    def delete_usage_report_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUsageReportSubscriptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUsageReportSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUsageReportSubscription
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::DeleteUsageReportSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUsageReportSubscription,
        stubs: @stubs,
        params_class: Params::DeleteUsageReportSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_usage_report_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a user from the user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserInput}.
    #
    # @option params [String] :user_name
    #   <p>The email address of the user.</p>
    #
    #           <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    #
    # @option params [String] :authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL.</p>
    #
    # @return [Types::DeleteUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user(
    #     user_name: 'UserName', # required
    #     authentication_type: 'API' # required - accepts ["API", "SAML", "USERPOOL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserOutput
    #
    def delete_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUser,
        stubs: @stubs,
        params_class: Params::DeleteUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes one or more app blocks.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAppBlocksInput}.
    #
    # @option params [Array<String>] :arns
    #   <p>The ARNs of the app blocks.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    #
    # @return [Types::DescribeAppBlocksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_blocks(
    #     arns: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAppBlocksOutput
    #   resp.data.app_blocks #=> Array<AppBlock>
    #   resp.data.app_blocks[0] #=> Types::AppBlock
    #   resp.data.app_blocks[0].name #=> String
    #   resp.data.app_blocks[0].arn #=> String
    #   resp.data.app_blocks[0].description #=> String
    #   resp.data.app_blocks[0].display_name #=> String
    #   resp.data.app_blocks[0].source_s3_location #=> Types::S3Location
    #   resp.data.app_blocks[0].source_s3_location.s3_bucket #=> String
    #   resp.data.app_blocks[0].source_s3_location.s3_key #=> String
    #   resp.data.app_blocks[0].setup_script_details #=> Types::ScriptDetails
    #   resp.data.app_blocks[0].setup_script_details.script_s3_location #=> Types::S3Location
    #   resp.data.app_blocks[0].setup_script_details.executable_path #=> String
    #   resp.data.app_blocks[0].setup_script_details.executable_parameters #=> String
    #   resp.data.app_blocks[0].setup_script_details.timeout_in_seconds #=> Integer
    #   resp.data.app_blocks[0].created_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_app_blocks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAppBlocksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAppBlocksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAppBlocks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException]),
        data_parser: Parsers::DescribeAppBlocks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAppBlocks,
        stubs: @stubs,
        params_class: Params::DescribeAppBlocksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_app_blocks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes one or more application fleet associations. Either ApplicationArn or FleetName must be specified.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeApplicationFleetAssociationsInput}.
    #
    # @option params [String] :fleet_name
    #   <p>The name of the fleet.</p>
    #
    # @option params [String] :application_arn
    #   <p>The ARN of the application.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #
    # @return [Types::DescribeApplicationFleetAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_fleet_associations(
    #     fleet_name: 'FleetName',
    #     application_arn: 'ApplicationArn',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeApplicationFleetAssociationsOutput
    #   resp.data.application_fleet_associations #=> Array<ApplicationFleetAssociation>
    #   resp.data.application_fleet_associations[0] #=> Types::ApplicationFleetAssociation
    #   resp.data.application_fleet_associations[0].fleet_name #=> String
    #   resp.data.application_fleet_associations[0].application_arn #=> String
    #   resp.data.next_token #=> String
    #
    def describe_application_fleet_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeApplicationFleetAssociationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeApplicationFleetAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeApplicationFleetAssociations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::OperationNotPermittedException]),
        data_parser: Parsers::DescribeApplicationFleetAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeApplicationFleetAssociations,
        stubs: @stubs,
        params_class: Params::DescribeApplicationFleetAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_application_fleet_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes one or more applications.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeApplicationsInput}.
    #
    # @option params [Array<String>] :arns
    #   <p>The ARNs for the applications.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    #
    # @return [Types::DescribeApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_applications(
    #     arns: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeApplicationsOutput
    #   resp.data.applications #=> Array<Application>
    #   resp.data.applications[0] #=> Types::Application
    #   resp.data.applications[0].name #=> String
    #   resp.data.applications[0].display_name #=> String
    #   resp.data.applications[0].icon_url #=> String
    #   resp.data.applications[0].launch_path #=> String
    #   resp.data.applications[0].launch_parameters #=> String
    #   resp.data.applications[0].enabled #=> Boolean
    #   resp.data.applications[0].metadata #=> Hash<String, String>
    #   resp.data.applications[0].metadata['key'] #=> String
    #   resp.data.applications[0].working_directory #=> String
    #   resp.data.applications[0].description #=> String
    #   resp.data.applications[0].arn #=> String
    #   resp.data.applications[0].app_block_arn #=> String
    #   resp.data.applications[0].icon_s3_location #=> Types::S3Location
    #   resp.data.applications[0].icon_s3_location.s3_bucket #=> String
    #   resp.data.applications[0].icon_s3_location.s3_key #=> String
    #   resp.data.applications[0].platforms #=> Array<String>
    #   resp.data.applications[0].platforms[0] #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.applications[0].instance_families #=> Array<String>
    #   resp.data.applications[0].instance_families[0] #=> String
    #   resp.data.applications[0].created_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeApplicationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeApplications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException]),
        data_parser: Parsers::DescribeApplications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeApplications,
        stubs: @stubs,
        params_class: Params::DescribeApplicationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_applications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes one or more specified Directory Config objects for AppStream 2.0, if the names for these objects are provided. Otherwise, all Directory Config objects in the account are described. These objects include the configuration information required to join fleets and image builders to Microsoft Active Directory domains.
    #         </p>
    #         <p>Although the response syntax in this topic includes the account password, this password is not returned in the actual response.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDirectoryConfigsInput}.
    #
    # @option params [Array<String>] :directory_names
    #   <p>The directory names.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::DescribeDirectoryConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_directory_configs(
    #     directory_names: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDirectoryConfigsOutput
    #   resp.data.directory_configs #=> Array<DirectoryConfig>
    #   resp.data.directory_configs[0] #=> Types::DirectoryConfig
    #   resp.data.directory_configs[0].directory_name #=> String
    #   resp.data.directory_configs[0].organizational_unit_distinguished_names #=> Array<String>
    #   resp.data.directory_configs[0].organizational_unit_distinguished_names[0] #=> String
    #   resp.data.directory_configs[0].service_account_credentials #=> Types::ServiceAccountCredentials
    #   resp.data.directory_configs[0].service_account_credentials.account_name #=> String
    #   resp.data.directory_configs[0].service_account_credentials.account_password #=> String
    #   resp.data.directory_configs[0].created_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_directory_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDirectoryConfigsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDirectoryConfigsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDirectoryConfigs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeDirectoryConfigs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDirectoryConfigs,
        stubs: @stubs,
        params_class: Params::DescribeDirectoryConfigsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_directory_configs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes one of more entitlements.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEntitlementsInput}.
    #
    # @option params [String] :name
    #   <p>The name of the entitlement.</p>
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    #
    # @return [Types::DescribeEntitlementsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entitlements(
    #     name: 'Name',
    #     stack_name: 'StackName', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEntitlementsOutput
    #   resp.data.entitlements #=> Array<Entitlement>
    #   resp.data.entitlements[0] #=> Types::Entitlement
    #   resp.data.entitlements[0].name #=> String
    #   resp.data.entitlements[0].stack_name #=> String
    #   resp.data.entitlements[0].description #=> String
    #   resp.data.entitlements[0].app_visibility #=> String, one of ["ALL", "ASSOCIATED"]
    #   resp.data.entitlements[0].attributes #=> Array<EntitlementAttribute>
    #   resp.data.entitlements[0].attributes[0] #=> Types::EntitlementAttribute
    #   resp.data.entitlements[0].attributes[0].name #=> String
    #   resp.data.entitlements[0].attributes[0].value #=> String
    #   resp.data.entitlements[0].created_time #=> Time
    #   resp.data.entitlements[0].last_modified_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_entitlements(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEntitlementsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEntitlementsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEntitlements
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::EntitlementNotFoundException]),
        data_parser: Parsers::DescribeEntitlements
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEntitlements,
        stubs: @stubs,
        params_class: Params::DescribeEntitlementsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_entitlements
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes one or more specified fleets, if the fleet names are provided. Otherwise, all fleets in the account are described.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetsInput}.
    #
    # @option params [Array<String>] :names
    #   <p>The names of the fleets to describe.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::DescribeFleetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleets(
    #     names: [
    #       'member'
    #     ],
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetsOutput
    #   resp.data.fleets #=> Array<Fleet>
    #   resp.data.fleets[0] #=> Types::Fleet
    #   resp.data.fleets[0].arn #=> String
    #   resp.data.fleets[0].name #=> String
    #   resp.data.fleets[0].display_name #=> String
    #   resp.data.fleets[0].description #=> String
    #   resp.data.fleets[0].image_name #=> String
    #   resp.data.fleets[0].image_arn #=> String
    #   resp.data.fleets[0].instance_type #=> String
    #   resp.data.fleets[0].fleet_type #=> String, one of ["ALWAYS_ON", "ON_DEMAND", "ELASTIC"]
    #   resp.data.fleets[0].compute_capacity_status #=> Types::ComputeCapacityStatus
    #   resp.data.fleets[0].compute_capacity_status.desired #=> Integer
    #   resp.data.fleets[0].compute_capacity_status.running #=> Integer
    #   resp.data.fleets[0].compute_capacity_status.in_use #=> Integer
    #   resp.data.fleets[0].compute_capacity_status.available #=> Integer
    #   resp.data.fleets[0].max_user_duration_in_seconds #=> Integer
    #   resp.data.fleets[0].disconnect_timeout_in_seconds #=> Integer
    #   resp.data.fleets[0].state #=> String, one of ["STARTING", "RUNNING", "STOPPING", "STOPPED"]
    #   resp.data.fleets[0].vpc_config #=> Types::VpcConfig
    #   resp.data.fleets[0].vpc_config.subnet_ids #=> Array<String>
    #   resp.data.fleets[0].vpc_config.subnet_ids[0] #=> String
    #   resp.data.fleets[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.fleets[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.fleets[0].created_time #=> Time
    #   resp.data.fleets[0].fleet_errors #=> Array<FleetError>
    #   resp.data.fleets[0].fleet_errors[0] #=> Types::FleetError
    #   resp.data.fleets[0].fleet_errors[0].error_code #=> String, one of ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"]
    #   resp.data.fleets[0].fleet_errors[0].error_message #=> String
    #   resp.data.fleets[0].enable_default_internet_access #=> Boolean
    #   resp.data.fleets[0].domain_join_info #=> Types::DomainJoinInfo
    #   resp.data.fleets[0].domain_join_info.directory_name #=> String
    #   resp.data.fleets[0].domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.data.fleets[0].idle_disconnect_timeout_in_seconds #=> Integer
    #   resp.data.fleets[0].iam_role_arn #=> String
    #   resp.data.fleets[0].stream_view #=> String, one of ["APP", "DESKTOP"]
    #   resp.data.fleets[0].platform #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.fleets[0].max_concurrent_sessions #=> Integer
    #   resp.data.fleets[0].usb_device_filter_strings #=> Array<String>
    #   resp.data.fleets[0].usb_device_filter_strings[0] #=> String
    #   resp.data.fleets[0].session_script_s3_location #=> Types::S3Location
    #   resp.data.fleets[0].session_script_s3_location.s3_bucket #=> String
    #   resp.data.fleets[0].session_script_s3_location.s3_key #=> String
    #   resp.data.next_token #=> String
    #
    def describe_fleets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeFleets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleets,
        stubs: @stubs,
        params_class: Params::DescribeFleetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes one or more specified image builders, if the image builder names are provided. Otherwise, all image builders in the account are described.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeImageBuildersInput}.
    #
    # @option params [Array<String>] :names
    #   <p>The names of the image builders to describe.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::DescribeImageBuildersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_builders(
    #     names: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeImageBuildersOutput
    #   resp.data.image_builders #=> Array<ImageBuilder>
    #   resp.data.image_builders[0] #=> Types::ImageBuilder
    #   resp.data.image_builders[0].name #=> String
    #   resp.data.image_builders[0].arn #=> String
    #   resp.data.image_builders[0].image_arn #=> String
    #   resp.data.image_builders[0].description #=> String
    #   resp.data.image_builders[0].display_name #=> String
    #   resp.data.image_builders[0].vpc_config #=> Types::VpcConfig
    #   resp.data.image_builders[0].vpc_config.subnet_ids #=> Array<String>
    #   resp.data.image_builders[0].vpc_config.subnet_ids[0] #=> String
    #   resp.data.image_builders[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.image_builders[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.image_builders[0].instance_type #=> String
    #   resp.data.image_builders[0].platform #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.image_builders[0].iam_role_arn #=> String
    #   resp.data.image_builders[0].state #=> String, one of ["PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"]
    #   resp.data.image_builders[0].state_change_reason #=> Types::ImageBuilderStateChangeReason
    #   resp.data.image_builders[0].state_change_reason.code #=> String, one of ["INTERNAL_ERROR", "IMAGE_UNAVAILABLE"]
    #   resp.data.image_builders[0].state_change_reason.message #=> String
    #   resp.data.image_builders[0].created_time #=> Time
    #   resp.data.image_builders[0].enable_default_internet_access #=> Boolean
    #   resp.data.image_builders[0].domain_join_info #=> Types::DomainJoinInfo
    #   resp.data.image_builders[0].domain_join_info.directory_name #=> String
    #   resp.data.image_builders[0].domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.data.image_builders[0].network_access_configuration #=> Types::NetworkAccessConfiguration
    #   resp.data.image_builders[0].network_access_configuration.eni_private_ip_address #=> String
    #   resp.data.image_builders[0].network_access_configuration.eni_id #=> String
    #   resp.data.image_builders[0].image_builder_errors #=> Array<ResourceError>
    #   resp.data.image_builders[0].image_builder_errors[0] #=> Types::ResourceError
    #   resp.data.image_builders[0].image_builder_errors[0].error_code #=> String, one of ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"]
    #   resp.data.image_builders[0].image_builder_errors[0].error_message #=> String
    #   resp.data.image_builders[0].image_builder_errors[0].error_timestamp #=> Time
    #   resp.data.image_builders[0].appstream_agent_version #=> String
    #   resp.data.image_builders[0].access_endpoints #=> Array<AccessEndpoint>
    #   resp.data.image_builders[0].access_endpoints[0] #=> Types::AccessEndpoint
    #   resp.data.image_builders[0].access_endpoints[0].endpoint_type #=> String, one of ["STREAMING"]
    #   resp.data.image_builders[0].access_endpoints[0].vpce_id #=> String
    #   resp.data.next_token #=> String
    #
    def describe_image_builders(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeImageBuildersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeImageBuildersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeImageBuilders
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeImageBuilders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeImageBuilders,
        stubs: @stubs,
        params_class: Params::DescribeImageBuildersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_image_builders
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes the permissions for shared AWS account IDs on a private image that you own. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeImagePermissionsInput}.
    #
    # @option params [String] :name
    #   <p>The name of the private image for which to describe permissions. The image must be one that you own. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    #
    # @option params [Array<String>] :shared_aws_account_ids
    #   <p>The 12-digit identifier of one or more AWS accounts with which the image is shared.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::DescribeImagePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_permissions(
    #     name: 'Name', # required
    #     max_results: 1,
    #     shared_aws_account_ids: [
    #       'member'
    #     ],
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeImagePermissionsOutput
    #   resp.data.name #=> String
    #   resp.data.shared_image_permissions_list #=> Array<SharedImagePermissions>
    #   resp.data.shared_image_permissions_list[0] #=> Types::SharedImagePermissions
    #   resp.data.shared_image_permissions_list[0].shared_account_id #=> String
    #   resp.data.shared_image_permissions_list[0].image_permissions #=> Types::ImagePermissions
    #   resp.data.shared_image_permissions_list[0].image_permissions.allow_fleet #=> Boolean
    #   resp.data.shared_image_permissions_list[0].image_permissions.allow_image_builder #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_image_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeImagePermissionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeImagePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeImagePermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeImagePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeImagePermissions,
        stubs: @stubs,
        params_class: Params::DescribeImagePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_image_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes one or more specified images, if the image names or image ARNs are provided. Otherwise, all images in the account are described.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeImagesInput}.
    #
    # @option params [Array<String>] :names
    #   <p>The names of the public or private images to describe.</p>
    #
    # @option params [Array<String>] :arns
    #   <p>The ARNs of the public, private, and shared images to describe.</p>
    #
    # @option params [String] :type
    #   <p>The type of image (public, private, or shared) to describe. </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    #
    # @return [Types::DescribeImagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_images(
    #     names: [
    #       'member'
    #     ],
    #     arns: [
    #       'member'
    #     ],
    #     type: 'PUBLIC', # accepts ["PUBLIC", "PRIVATE", "SHARED"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeImagesOutput
    #   resp.data.images #=> Array<Image>
    #   resp.data.images[0] #=> Types::Image
    #   resp.data.images[0].name #=> String
    #   resp.data.images[0].arn #=> String
    #   resp.data.images[0].base_image_arn #=> String
    #   resp.data.images[0].display_name #=> String
    #   resp.data.images[0].state #=> String, one of ["PENDING", "AVAILABLE", "FAILED", "COPYING", "DELETING", "CREATING", "IMPORTING"]
    #   resp.data.images[0].visibility #=> String, one of ["PUBLIC", "PRIVATE", "SHARED"]
    #   resp.data.images[0].image_builder_supported #=> Boolean
    #   resp.data.images[0].image_builder_name #=> String
    #   resp.data.images[0].platform #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.images[0].description #=> String
    #   resp.data.images[0].state_change_reason #=> Types::ImageStateChangeReason
    #   resp.data.images[0].state_change_reason.code #=> String, one of ["INTERNAL_ERROR", "IMAGE_BUILDER_NOT_AVAILABLE", "IMAGE_COPY_FAILURE"]
    #   resp.data.images[0].state_change_reason.message #=> String
    #   resp.data.images[0].applications #=> Array<Application>
    #   resp.data.images[0].applications[0] #=> Types::Application
    #   resp.data.images[0].applications[0].name #=> String
    #   resp.data.images[0].applications[0].display_name #=> String
    #   resp.data.images[0].applications[0].icon_url #=> String
    #   resp.data.images[0].applications[0].launch_path #=> String
    #   resp.data.images[0].applications[0].launch_parameters #=> String
    #   resp.data.images[0].applications[0].enabled #=> Boolean
    #   resp.data.images[0].applications[0].metadata #=> Hash<String, String>
    #   resp.data.images[0].applications[0].metadata['key'] #=> String
    #   resp.data.images[0].applications[0].working_directory #=> String
    #   resp.data.images[0].applications[0].description #=> String
    #   resp.data.images[0].applications[0].arn #=> String
    #   resp.data.images[0].applications[0].app_block_arn #=> String
    #   resp.data.images[0].applications[0].icon_s3_location #=> Types::S3Location
    #   resp.data.images[0].applications[0].icon_s3_location.s3_bucket #=> String
    #   resp.data.images[0].applications[0].icon_s3_location.s3_key #=> String
    #   resp.data.images[0].applications[0].platforms #=> Array<String>
    #   resp.data.images[0].applications[0].platforms[0] #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.images[0].applications[0].instance_families #=> Array<String>
    #   resp.data.images[0].applications[0].instance_families[0] #=> String
    #   resp.data.images[0].applications[0].created_time #=> Time
    #   resp.data.images[0].created_time #=> Time
    #   resp.data.images[0].public_base_image_released_date #=> Time
    #   resp.data.images[0].appstream_agent_version #=> String
    #   resp.data.images[0].image_permissions #=> Types::ImagePermissions
    #   resp.data.images[0].image_permissions.allow_fleet #=> Boolean
    #   resp.data.images[0].image_permissions.allow_image_builder #=> Boolean
    #   resp.data.images[0].image_errors #=> Array<ResourceError>
    #   resp.data.images[0].image_errors[0] #=> Types::ResourceError
    #   resp.data.images[0].image_errors[0].error_code #=> String, one of ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"]
    #   resp.data.images[0].image_errors[0].error_message #=> String
    #   resp.data.images[0].image_errors[0].error_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_images(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeImagesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeImagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeImages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeImages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeImages,
        stubs: @stubs,
        params_class: Params::DescribeImagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_images
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes the streaming sessions for a specified stack and fleet. If a UserId is provided for the stack and fleet,
    #             only streaming sessions for that user are described. If an authentication type is not provided,
    #             the default is to authenticate users using a streaming URL.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSessionsInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack. This value is case-sensitive.</p>
    #
    # @option params [String] :fleet_name
    #   <p>The name of the fleet. This value is case-sensitive.</p>
    #
    # @option params [String] :user_id
    #   <p>The user identifier (ID). If you specify a user ID, you must also specify the authentication type.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @option params [Integer] :limit
    #   <p>The size of each page of results. The default value is 20 and the maximum value is 50.</p>
    #
    # @option params [String] :authentication_type
    #   <p>The authentication method. Specify <code>API</code> for a user
    #               authenticated using a streaming URL or <code>SAML</code> for a SAML federated user.
    #               The default is to authenticate users using a streaming URL.</p>
    #
    # @return [Types::DescribeSessionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_sessions(
    #     stack_name: 'StackName', # required
    #     fleet_name: 'FleetName', # required
    #     user_id: 'UserId',
    #     next_token: 'NextToken',
    #     limit: 1,
    #     authentication_type: 'API' # accepts ["API", "SAML", "USERPOOL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSessionsOutput
    #   resp.data.sessions #=> Array<Session>
    #   resp.data.sessions[0] #=> Types::Session
    #   resp.data.sessions[0].id #=> String
    #   resp.data.sessions[0].user_id #=> String
    #   resp.data.sessions[0].stack_name #=> String
    #   resp.data.sessions[0].fleet_name #=> String
    #   resp.data.sessions[0].state #=> String, one of ["ACTIVE", "PENDING", "EXPIRED"]
    #   resp.data.sessions[0].connection_state #=> String, one of ["CONNECTED", "NOT_CONNECTED"]
    #   resp.data.sessions[0].start_time #=> Time
    #   resp.data.sessions[0].max_expiration_time #=> Time
    #   resp.data.sessions[0].authentication_type #=> String, one of ["API", "SAML", "USERPOOL"]
    #   resp.data.sessions[0].network_access_configuration #=> Types::NetworkAccessConfiguration
    #   resp.data.sessions[0].network_access_configuration.eni_private_ip_address #=> String
    #   resp.data.sessions[0].network_access_configuration.eni_id #=> String
    #   resp.data.next_token #=> String
    #
    def describe_sessions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSessionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSessionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSessions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException]),
        data_parser: Parsers::DescribeSessions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSessions,
        stubs: @stubs,
        params_class: Params::DescribeSessionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_sessions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes one or more specified stacks, if the stack names are provided. Otherwise, all stacks in the account are described.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStacksInput}.
    #
    # @option params [Array<String>] :names
    #   <p>The names of the stacks to describe.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::DescribeStacksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stacks(
    #     names: [
    #       'member'
    #     ],
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStacksOutput
    #   resp.data.stacks #=> Array<Stack>
    #   resp.data.stacks[0] #=> Types::Stack
    #   resp.data.stacks[0].arn #=> String
    #   resp.data.stacks[0].name #=> String
    #   resp.data.stacks[0].description #=> String
    #   resp.data.stacks[0].display_name #=> String
    #   resp.data.stacks[0].created_time #=> Time
    #   resp.data.stacks[0].storage_connectors #=> Array<StorageConnector>
    #   resp.data.stacks[0].storage_connectors[0] #=> Types::StorageConnector
    #   resp.data.stacks[0].storage_connectors[0].connector_type #=> String, one of ["HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"]
    #   resp.data.stacks[0].storage_connectors[0].resource_identifier #=> String
    #   resp.data.stacks[0].storage_connectors[0].domains #=> Array<String>
    #   resp.data.stacks[0].storage_connectors[0].domains[0] #=> String
    #   resp.data.stacks[0].redirect_url #=> String
    #   resp.data.stacks[0].feedback_url #=> String
    #   resp.data.stacks[0].stack_errors #=> Array<StackError>
    #   resp.data.stacks[0].stack_errors[0] #=> Types::StackError
    #   resp.data.stacks[0].stack_errors[0].error_code #=> String, one of ["STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"]
    #   resp.data.stacks[0].stack_errors[0].error_message #=> String
    #   resp.data.stacks[0].user_settings #=> Array<UserSetting>
    #   resp.data.stacks[0].user_settings[0] #=> Types::UserSetting
    #   resp.data.stacks[0].user_settings[0].action #=> String, one of ["CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE", "DOMAIN_PASSWORD_SIGNIN", "DOMAIN_SMART_CARD_SIGNIN"]
    #   resp.data.stacks[0].user_settings[0].permission #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.stacks[0].application_settings #=> Types::ApplicationSettingsResponse
    #   resp.data.stacks[0].application_settings.enabled #=> Boolean
    #   resp.data.stacks[0].application_settings.settings_group #=> String
    #   resp.data.stacks[0].application_settings.s3_bucket_name #=> String
    #   resp.data.stacks[0].access_endpoints #=> Array<AccessEndpoint>
    #   resp.data.stacks[0].access_endpoints[0] #=> Types::AccessEndpoint
    #   resp.data.stacks[0].access_endpoints[0].endpoint_type #=> String, one of ["STREAMING"]
    #   resp.data.stacks[0].access_endpoints[0].vpce_id #=> String
    #   resp.data.stacks[0].embed_host_domains #=> Array<String>
    #   resp.data.stacks[0].embed_host_domains[0] #=> String
    #   resp.data.next_token #=> String
    #
    def describe_stacks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStacksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStacksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStacks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeStacks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStacks,
        stubs: @stubs,
        params_class: Params::DescribeStacksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stacks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes one or more usage report subscriptions.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUsageReportSubscriptionsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::DescribeUsageReportSubscriptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_usage_report_subscriptions(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUsageReportSubscriptionsOutput
    #   resp.data.usage_report_subscriptions #=> Array<UsageReportSubscription>
    #   resp.data.usage_report_subscriptions[0] #=> Types::UsageReportSubscription
    #   resp.data.usage_report_subscriptions[0].s3_bucket_name #=> String
    #   resp.data.usage_report_subscriptions[0].schedule #=> String, one of ["DAILY"]
    #   resp.data.usage_report_subscriptions[0].last_generated_report_date #=> Time
    #   resp.data.usage_report_subscriptions[0].subscription_errors #=> Array<LastReportGenerationExecutionError>
    #   resp.data.usage_report_subscriptions[0].subscription_errors[0] #=> Types::LastReportGenerationExecutionError
    #   resp.data.usage_report_subscriptions[0].subscription_errors[0].error_code #=> String, one of ["RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_SERVICE_ERROR"]
    #   resp.data.usage_report_subscriptions[0].subscription_errors[0].error_message #=> String
    #   resp.data.next_token #=> String
    #
    def describe_usage_report_subscriptions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUsageReportSubscriptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUsageReportSubscriptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUsageReportSubscriptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::DescribeUsageReportSubscriptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUsageReportSubscriptions,
        stubs: @stubs,
        params_class: Params::DescribeUsageReportSubscriptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_usage_report_subscriptions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes the UserStackAssociation objects. You must specify either or both of the following:</p>
    #         <ul>
    #             <li>
    #                <p>The stack name</p>
    #             </li>
    #             <li>
    #                <p>The user name (email address of the user associated with the stack) and the authentication type for the user</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserStackAssociationsInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack that is associated with the user.</p>
    #
    # @option params [String] :user_name
    #   <p>The email address of the user who is associated with the stack.</p>
    #
    #           <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    #
    # @option params [String] :authentication_type
    #   <p>The authentication type for the user who is associated with the stack. You must specify USERPOOL.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::DescribeUserStackAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_stack_associations(
    #     stack_name: 'StackName',
    #     user_name: 'UserName',
    #     authentication_type: 'API', # accepts ["API", "SAML", "USERPOOL"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserStackAssociationsOutput
    #   resp.data.user_stack_associations #=> Array<UserStackAssociation>
    #   resp.data.user_stack_associations[0] #=> Types::UserStackAssociation
    #   resp.data.user_stack_associations[0].stack_name #=> String
    #   resp.data.user_stack_associations[0].user_name #=> String
    #   resp.data.user_stack_associations[0].authentication_type #=> String, one of ["API", "SAML", "USERPOOL"]
    #   resp.data.user_stack_associations[0].send_email_notification #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_user_stack_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserStackAssociationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserStackAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUserStackAssociations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::OperationNotPermittedException]),
        data_parser: Parsers::DescribeUserStackAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUserStackAssociations,
        stubs: @stubs,
        params_class: Params::DescribeUserStackAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user_stack_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes one or more specified users in the user pool.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUsersInput}.
    #
    # @option params [String] :authentication_type
    #   <p>The authentication type for the users in the user pool to describe. You must specify USERPOOL.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::DescribeUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_users(
    #     authentication_type: 'API', # required - accepts ["API", "SAML", "USERPOOL"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUsersOutput
    #   resp.data.users #=> Array<User>
    #   resp.data.users[0] #=> Types::User
    #   resp.data.users[0].arn #=> String
    #   resp.data.users[0].user_name #=> String
    #   resp.data.users[0].enabled #=> Boolean
    #   resp.data.users[0].status #=> String
    #   resp.data.users[0].first_name #=> String
    #   resp.data.users[0].last_name #=> String
    #   resp.data.users[0].created_time #=> Time
    #   resp.data.users[0].authentication_type #=> String, one of ["API", "SAML", "USERPOOL"]
    #   resp.data.next_token #=> String
    #
    def describe_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUsersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUsers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::ResourceNotFoundException, Errors::OperationNotPermittedException]),
        data_parser: Parsers::DescribeUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUsers,
        stubs: @stubs,
        params_class: Params::DescribeUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the specified user in the user pool. Users can't sign in to AppStream 2.0 until they are re-enabled. This action does not delete the user. </p>
    #
    # @param [Hash] params
    #   See {Types::DisableUserInput}.
    #
    # @option params [String] :user_name
    #   <p>The email address of the user.</p>
    #
    #           <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    #
    # @option params [String] :authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL.</p>
    #
    # @return [Types::DisableUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_user(
    #     user_name: 'UserName', # required
    #     authentication_type: 'API' # required - accepts ["API", "SAML", "USERPOOL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableUserOutput
    #
    def disable_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableUserInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DisableUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableUser,
        stubs: @stubs,
        params_class: Params::DisableUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified application from the fleet.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateApplicationFleetInput}.
    #
    # @option params [String] :fleet_name
    #   <p>The name of the fleet.</p>
    #
    # @option params [String] :application_arn
    #   <p>The ARN of the application.</p>
    #
    # @return [Types::DisassociateApplicationFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_application_fleet(
    #     fleet_name: 'FleetName', # required
    #     application_arn: 'ApplicationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateApplicationFleetOutput
    #
    def disassociate_application_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateApplicationFleetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateApplicationFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateApplicationFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::OperationNotPermittedException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DisassociateApplicationFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateApplicationFleet,
        stubs: @stubs,
        params_class: Params::DisassociateApplicationFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_application_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified application from the specified entitlement.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateApplicationFromEntitlementInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #
    # @option params [String] :entitlement_name
    #   <p>The name of the entitlement.</p>
    #
    # @option params [String] :application_identifier
    #   <p>The identifier of the application to remove from the entitlement.</p>
    #
    # @return [Types::DisassociateApplicationFromEntitlementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_application_from_entitlement(
    #     stack_name: 'StackName', # required
    #     entitlement_name: 'EntitlementName', # required
    #     application_identifier: 'ApplicationIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateApplicationFromEntitlementOutput
    #
    def disassociate_application_from_entitlement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateApplicationFromEntitlementInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateApplicationFromEntitlementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateApplicationFromEntitlement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::EntitlementNotFoundException]),
        data_parser: Parsers::DisassociateApplicationFromEntitlement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateApplicationFromEntitlement,
        stubs: @stubs,
        params_class: Params::DisassociateApplicationFromEntitlementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_application_from_entitlement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified fleet from the specified stack.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateFleetInput}.
    #
    # @option params [String] :fleet_name
    #   <p>The name of the fleet.</p>
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack.</p>
    #
    # @return [Types::DisassociateFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_fleet(
    #     fleet_name: 'FleetName', # required
    #     stack_name: 'StackName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateFleetOutput
    #
    def disassociate_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateFleetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::ResourceInUseException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DisassociateFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateFleet,
        stubs: @stubs,
        params_class: Params::DisassociateFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables a user in the user pool. After being enabled, users can sign in to AppStream 2.0 and open applications from the stacks to which they are assigned.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableUserInput}.
    #
    # @option params [String] :user_name
    #   <p>The email address of the user.</p>
    #
    #           <note>
    #               <p>Users' email addresses are case-sensitive. During login, if they specify an email address that doesn't use the same capitalization as the email address specified when their user pool account was created, a "user does not exist" error message displays. </p>
    #            </note>
    #
    # @option params [String] :authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL.</p>
    #
    # @return [Types::EnableUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_user(
    #     user_name: 'UserName', # required
    #     authentication_type: 'API' # required - accepts ["API", "SAML", "USERPOOL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableUserOutput
    #
    def enable_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableUserInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::EnableUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableUser,
        stubs: @stubs,
        params_class: Params::EnableUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Immediately stops the specified streaming session.</p>
    #
    # @param [Hash] params
    #   See {Types::ExpireSessionInput}.
    #
    # @option params [String] :session_id
    #   <p>The identifier of the streaming session.</p>
    #
    # @return [Types::ExpireSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.expire_session(
    #     session_id: 'SessionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExpireSessionOutput
    #
    def expire_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExpireSessionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExpireSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExpireSession
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
        data_parser: Parsers::ExpireSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExpireSession,
        stubs: @stubs,
        params_class: Params::ExpireSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :expire_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the name of the fleet that is associated with the specified stack.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssociatedFleetsInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::ListAssociatedFleetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_fleets(
    #     stack_name: 'StackName', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssociatedFleetsOutput
    #   resp.data.names #=> Array<String>
    #   resp.data.names[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_associated_fleets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssociatedFleetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssociatedFleetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssociatedFleets
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
        data_parser: Parsers::ListAssociatedFleets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssociatedFleets,
        stubs: @stubs,
        params_class: Params::ListAssociatedFleetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_associated_fleets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the name of the stack with which the specified fleet is associated.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssociatedStacksInput}.
    #
    # @option params [String] :fleet_name
    #   <p>The name of the fleet.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::ListAssociatedStacksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_stacks(
    #     fleet_name: 'FleetName', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssociatedStacksOutput
    #   resp.data.names #=> Array<String>
    #   resp.data.names[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_associated_stacks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssociatedStacksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssociatedStacksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssociatedStacks
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
        data_parser: Parsers::ListAssociatedStacks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssociatedStacks,
        stubs: @stubs,
        params_class: Params::ListAssociatedStacksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_associated_stacks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of entitled applications.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEntitledApplicationsInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #
    # @option params [String] :entitlement_name
    #   <p>The name of the entitlement.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum size of each page of results.</p>
    #
    # @return [Types::ListEntitledApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entitled_applications(
    #     stack_name: 'StackName', # required
    #     entitlement_name: 'EntitlementName', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEntitledApplicationsOutput
    #   resp.data.entitled_applications #=> Array<EntitledApplication>
    #   resp.data.entitled_applications[0] #=> Types::EntitledApplication
    #   resp.data.entitled_applications[0].application_identifier #=> String
    #   resp.data.next_token #=> String
    #
    def list_entitled_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEntitledApplicationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEntitledApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEntitledApplications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::EntitlementNotFoundException]),
        data_parser: Parsers::ListEntitledApplications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEntitledApplications,
        stubs: @stubs,
        params_class: Params::ListEntitledApplicationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_entitled_applications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of all tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks.</p>
    #         <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
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

    # <p>Starts the specified fleet.</p>
    #
    # @param [Hash] params
    #   See {Types::StartFleetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the fleet.</p>
    #
    # @return [Types::StartFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fleet(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartFleetOutput
    #
    def start_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartFleetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestLimitExceededException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ResourceNotAvailableException, Errors::OperationNotPermittedException, Errors::InvalidRoleException, Errors::ConcurrentModificationException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::StartFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartFleet,
        stubs: @stubs,
        params_class: Params::StartFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the specified image builder.</p>
    #
    # @param [Hash] params
    #   See {Types::StartImageBuilderInput}.
    #
    # @option params [String] :name
    #   <p>The name of the image builder.</p>
    #
    # @option params [String] :appstream_agent_version
    #   <p>The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. </p>
    #
    # @return [Types::StartImageBuilderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_image_builder(
    #     name: 'Name', # required
    #     appstream_agent_version: 'AppstreamAgentVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartImageBuilderOutput
    #   resp.data.image_builder #=> Types::ImageBuilder
    #   resp.data.image_builder.name #=> String
    #   resp.data.image_builder.arn #=> String
    #   resp.data.image_builder.image_arn #=> String
    #   resp.data.image_builder.description #=> String
    #   resp.data.image_builder.display_name #=> String
    #   resp.data.image_builder.vpc_config #=> Types::VpcConfig
    #   resp.data.image_builder.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.image_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.data.image_builder.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.image_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.data.image_builder.instance_type #=> String
    #   resp.data.image_builder.platform #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.image_builder.iam_role_arn #=> String
    #   resp.data.image_builder.state #=> String, one of ["PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"]
    #   resp.data.image_builder.state_change_reason #=> Types::ImageBuilderStateChangeReason
    #   resp.data.image_builder.state_change_reason.code #=> String, one of ["INTERNAL_ERROR", "IMAGE_UNAVAILABLE"]
    #   resp.data.image_builder.state_change_reason.message #=> String
    #   resp.data.image_builder.created_time #=> Time
    #   resp.data.image_builder.enable_default_internet_access #=> Boolean
    #   resp.data.image_builder.domain_join_info #=> Types::DomainJoinInfo
    #   resp.data.image_builder.domain_join_info.directory_name #=> String
    #   resp.data.image_builder.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.data.image_builder.network_access_configuration #=> Types::NetworkAccessConfiguration
    #   resp.data.image_builder.network_access_configuration.eni_private_ip_address #=> String
    #   resp.data.image_builder.network_access_configuration.eni_id #=> String
    #   resp.data.image_builder.image_builder_errors #=> Array<ResourceError>
    #   resp.data.image_builder.image_builder_errors[0] #=> Types::ResourceError
    #   resp.data.image_builder.image_builder_errors[0].error_code #=> String, one of ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"]
    #   resp.data.image_builder.image_builder_errors[0].error_message #=> String
    #   resp.data.image_builder.image_builder_errors[0].error_timestamp #=> Time
    #   resp.data.image_builder.appstream_agent_version #=> String
    #   resp.data.image_builder.access_endpoints #=> Array<AccessEndpoint>
    #   resp.data.image_builder.access_endpoints[0] #=> Types::AccessEndpoint
    #   resp.data.image_builder.access_endpoints[0].endpoint_type #=> String, one of ["STREAMING"]
    #   resp.data.image_builder.access_endpoints[0].vpce_id #=> String
    #
    def start_image_builder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartImageBuilderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartImageBuilderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartImageBuilder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceNotAvailableException, Errors::IncompatibleImageException, Errors::ConcurrentModificationException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::StartImageBuilder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartImageBuilder,
        stubs: @stubs,
        params_class: Params::StartImageBuilderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_image_builder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops the specified fleet.</p>
    #
    # @param [Hash] params
    #   See {Types::StopFleetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the fleet.</p>
    #
    # @return [Types::StopFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_fleet(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopFleetOutput
    #
    def stop_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopFleetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::StopFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopFleet,
        stubs: @stubs,
        params_class: Params::StopFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops the specified image builder.</p>
    #
    # @param [Hash] params
    #   See {Types::StopImageBuilderInput}.
    #
    # @option params [String] :name
    #   <p>The name of the image builder.</p>
    #
    # @return [Types::StopImageBuilderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_image_builder(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopImageBuilderOutput
    #   resp.data.image_builder #=> Types::ImageBuilder
    #   resp.data.image_builder.name #=> String
    #   resp.data.image_builder.arn #=> String
    #   resp.data.image_builder.image_arn #=> String
    #   resp.data.image_builder.description #=> String
    #   resp.data.image_builder.display_name #=> String
    #   resp.data.image_builder.vpc_config #=> Types::VpcConfig
    #   resp.data.image_builder.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.image_builder.vpc_config.subnet_ids[0] #=> String
    #   resp.data.image_builder.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.image_builder.vpc_config.security_group_ids[0] #=> String
    #   resp.data.image_builder.instance_type #=> String
    #   resp.data.image_builder.platform #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.image_builder.iam_role_arn #=> String
    #   resp.data.image_builder.state #=> String, one of ["PENDING", "UPDATING_AGENT", "RUNNING", "STOPPING", "STOPPED", "REBOOTING", "SNAPSHOTTING", "DELETING", "FAILED", "UPDATING", "PENDING_QUALIFICATION"]
    #   resp.data.image_builder.state_change_reason #=> Types::ImageBuilderStateChangeReason
    #   resp.data.image_builder.state_change_reason.code #=> String, one of ["INTERNAL_ERROR", "IMAGE_UNAVAILABLE"]
    #   resp.data.image_builder.state_change_reason.message #=> String
    #   resp.data.image_builder.created_time #=> Time
    #   resp.data.image_builder.enable_default_internet_access #=> Boolean
    #   resp.data.image_builder.domain_join_info #=> Types::DomainJoinInfo
    #   resp.data.image_builder.domain_join_info.directory_name #=> String
    #   resp.data.image_builder.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.data.image_builder.network_access_configuration #=> Types::NetworkAccessConfiguration
    #   resp.data.image_builder.network_access_configuration.eni_private_ip_address #=> String
    #   resp.data.image_builder.network_access_configuration.eni_id #=> String
    #   resp.data.image_builder.image_builder_errors #=> Array<ResourceError>
    #   resp.data.image_builder.image_builder_errors[0] #=> Types::ResourceError
    #   resp.data.image_builder.image_builder_errors[0].error_code #=> String, one of ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"]
    #   resp.data.image_builder.image_builder_errors[0].error_message #=> String
    #   resp.data.image_builder.image_builder_errors[0].error_timestamp #=> Time
    #   resp.data.image_builder.appstream_agent_version #=> String
    #   resp.data.image_builder.access_endpoints #=> Array<AccessEndpoint>
    #   resp.data.image_builder.access_endpoints[0] #=> Types::AccessEndpoint
    #   resp.data.image_builder.access_endpoints[0].endpoint_type #=> String, one of ["STREAMING"]
    #   resp.data.image_builder.access_endpoints[0].vpce_id #=> String
    #
    def stop_image_builder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopImageBuilderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopImageBuilderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopImageBuilder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::StopImageBuilder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopImageBuilder,
        stubs: @stubs,
        params_class: Params::StopImageBuilderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_image_builder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or overwrites one or more tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks.</p>
    #             <p>Each tag consists of a key and an optional value. If a resource already has a tag with the same key,
    #                 this operation updates its value.</p>
    #
    #             <p>To list the current tags for your resources, use <a>ListTagsForResource</a>.
    #                 To disassociate tags from your resources, use <a>UntagResource</a>.</p>
    #         <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #
    #           <p>If you do not specify a value, the value is set to an empty string.</p>
    #
    #           <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #           <p>_ . : / = + \ - @</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::InvalidAccountStatusException]),
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

    # <p>Disassociates one or more specified tags from the specified AppStream 2.0 resource.</p>
    #         <p>To list the current tags for your resources, use <a>ListTagsForResource</a>.</p>
    #         <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys for the tags to disassociate.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
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

    # <p>Updates the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the application. This name is visible to users when display name is not specified.</p>
    #
    # @option params [String] :display_name
    #   <p>The display name of the application. This name is visible to users in the application catalog.</p>
    #
    # @option params [String] :description
    #   <p>The description of the application.</p>
    #
    # @option params [S3Location] :icon_s3_location
    #   <p>The icon S3 location of the application.</p>
    #
    # @option params [String] :launch_path
    #   <p>The launch path of the application.</p>
    #
    # @option params [String] :working_directory
    #   <p>The working directory of the application.</p>
    #
    # @option params [String] :launch_parameters
    #   <p>The launch parameters of the application.</p>
    #
    # @option params [String] :app_block_arn
    #   <p>The ARN of the app block.</p>
    #
    # @option params [Array<String>] :attributes_to_delete
    #   <p>The attributes to delete for an application.</p>
    #
    # @return [Types::UpdateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application(
    #     name: 'Name', # required
    #     display_name: 'DisplayName',
    #     description: 'Description',
    #     icon_s3_location: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key: 'S3Key' # required
    #     },
    #     launch_path: 'LaunchPath',
    #     working_directory: 'WorkingDirectory',
    #     launch_parameters: 'LaunchParameters',
    #     app_block_arn: 'AppBlockArn',
    #     attributes_to_delete: [
    #       'LAUNCH_PARAMETERS' # accepts ["LAUNCH_PARAMETERS", "WORKING_DIRECTORY"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationOutput
    #   resp.data.application #=> Types::Application
    #   resp.data.application.name #=> String
    #   resp.data.application.display_name #=> String
    #   resp.data.application.icon_url #=> String
    #   resp.data.application.launch_path #=> String
    #   resp.data.application.launch_parameters #=> String
    #   resp.data.application.enabled #=> Boolean
    #   resp.data.application.metadata #=> Hash<String, String>
    #   resp.data.application.metadata['key'] #=> String
    #   resp.data.application.working_directory #=> String
    #   resp.data.application.description #=> String
    #   resp.data.application.arn #=> String
    #   resp.data.application.app_block_arn #=> String
    #   resp.data.application.icon_s3_location #=> Types::S3Location
    #   resp.data.application.icon_s3_location.s3_bucket #=> String
    #   resp.data.application.icon_s3_location.s3_key #=> String
    #   resp.data.application.platforms #=> Array<String>
    #   resp.data.application.platforms[0] #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.application.instance_families #=> Array<String>
    #   resp.data.application.instance_families[0] #=> String
    #   resp.data.application.created_time #=> Time
    #
    def update_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::UpdateApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApplication,
        stubs: @stubs,
        params_class: Params::UpdateApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDirectoryConfigInput}.
    #
    # @option params [String] :directory_name
    #   <p>The name of the Directory Config object.</p>
    #
    # @option params [Array<String>] :organizational_unit_distinguished_names
    #   <p>The distinguished names of the organizational units for computer accounts.</p>
    #
    # @option params [ServiceAccountCredentials] :service_account_credentials
    #   <p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>
    #
    # @return [Types::UpdateDirectoryConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_directory_config(
    #     directory_name: 'DirectoryName', # required
    #     organizational_unit_distinguished_names: [
    #       'member'
    #     ],
    #     service_account_credentials: {
    #       account_name: 'AccountName', # required
    #       account_password: 'AccountPassword' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDirectoryConfigOutput
    #   resp.data.directory_config #=> Types::DirectoryConfig
    #   resp.data.directory_config.directory_name #=> String
    #   resp.data.directory_config.organizational_unit_distinguished_names #=> Array<String>
    #   resp.data.directory_config.organizational_unit_distinguished_names[0] #=> String
    #   resp.data.directory_config.service_account_credentials #=> Types::ServiceAccountCredentials
    #   resp.data.directory_config.service_account_credentials.account_name #=> String
    #   resp.data.directory_config.service_account_credentials.account_password #=> String
    #   resp.data.directory_config.created_time #=> Time
    #
    def update_directory_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDirectoryConfigInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDirectoryConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDirectoryConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::InvalidRoleException, Errors::ResourceInUseException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::UpdateDirectoryConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDirectoryConfig,
        stubs: @stubs,
        params_class: Params::UpdateDirectoryConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_directory_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified entitlement.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEntitlementInput}.
    #
    # @option params [String] :name
    #   <p>The name of the entitlement.</p>
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #
    # @option params [String] :description
    #   <p>The description of the entitlement.</p>
    #
    # @option params [String] :app_visibility
    #   <p>Specifies whether all or only selected apps are entitled.</p>
    #
    # @option params [Array<EntitlementAttribute>] :attributes
    #   <p>The attributes of the entitlement.</p>
    #
    # @return [Types::UpdateEntitlementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_entitlement(
    #     name: 'Name', # required
    #     stack_name: 'StackName', # required
    #     description: 'Description',
    #     app_visibility: 'ALL', # accepts ["ALL", "ASSOCIATED"]
    #     attributes: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEntitlementOutput
    #   resp.data.entitlement #=> Types::Entitlement
    #   resp.data.entitlement.name #=> String
    #   resp.data.entitlement.stack_name #=> String
    #   resp.data.entitlement.description #=> String
    #   resp.data.entitlement.app_visibility #=> String, one of ["ALL", "ASSOCIATED"]
    #   resp.data.entitlement.attributes #=> Array<EntitlementAttribute>
    #   resp.data.entitlement.attributes[0] #=> Types::EntitlementAttribute
    #   resp.data.entitlement.attributes[0].name #=> String
    #   resp.data.entitlement.attributes[0].value #=> String
    #   resp.data.entitlement.created_time #=> Time
    #   resp.data.entitlement.last_modified_time #=> Time
    #
    def update_entitlement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEntitlementInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEntitlementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEntitlement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::EntitlementNotFoundException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::UpdateEntitlement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEntitlement,
        stubs: @stubs,
        params_class: Params::UpdateEntitlementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_entitlement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified fleet.</p>
    #         <p>If the fleet is in the <code>STOPPED</code> state, you can update any attribute except
    #             the fleet name.</p>
    #         <p>If the fleet is in the <code>RUNNING</code> state, you can update the following based
    #             on the fleet type:</p>
    #         <ul>
    #             <li>
    #                <p>Always-On and On-Demand fleet types</p>
    #                 <p>You can update the  <code>DisplayName</code>, <code>ComputeCapacity</code>,
    #                         <code>ImageARN</code>, <code>ImageName</code>,
    #                         <code>IdleDisconnectTimeoutInSeconds</code>, and
    #                         <code>DisconnectTimeoutInSeconds</code> attributes.</p>
    #             </li>
    #             <li>
    #                <p>Elastic fleet type</p>
    #                 <p>You can update the  <code>DisplayName</code>,
    #                         <code>IdleDisconnectTimeoutInSeconds</code>,
    #                         <code>DisconnectTimeoutInSeconds</code>, <code>MaxConcurrentSessions</code>,
    #                     and <code>UsbDeviceFilterStrings</code> attributes.</p>
    #             </li>
    #          </ul>
    #         <p>If the fleet is in the <code>STARTING</code> or <code>STOPPED</code> state, you can't update it.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFleetInput}.
    #
    # @option params [String] :image_name
    #   <p>The name of the image used to create the fleet.</p>
    #
    # @option params [String] :image_arn
    #   <p>The ARN of the public, private, or shared image to use.</p>
    #
    # @option params [String] :name
    #   <p>A unique name for the fleet.</p>
    #
    # @option params [String] :instance_type
    #   <p>The instance type to use when launching fleet instances. The following instance types are available:</p>
    #           <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #            </ul>
    #           <p>The following instance types are available for Elastic fleets:</p>
    #           <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #            </ul>
    #
    # @option params [ComputeCapacity] :compute_capacity
    #   <p>The desired capacity for the fleet. This is not allowed for Elastic fleets.</p>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>The VPC configuration for the fleet. This is required for Elastic fleets, but not required for other fleet types. Elastic fleets require that you specify at least two subnets in different availability zones. </p>
    #
    # @option params [Integer] :max_user_duration_in_seconds
    #   <p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.</p>
    #           <p>Specify a value between 600 and 360000.</p>
    #
    # @option params [Integer] :disconnect_timeout_in_seconds
    #   <p>The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance. </p>
    #           <p>Specify a value between 60 and 360000.</p>
    #
    # @option params [Boolean] :delete_vpc_config
    #   <p>Deletes the VPC association for the specified fleet.</p>
    #
    # @option params [String] :description
    #   <p>The description to display.</p>
    #
    # @option params [String] :display_name
    #   <p>The fleet name to display.</p>
    #
    # @option params [Boolean] :enable_default_internet_access
    #   <p>Enables or disables default internet access for the fleet.</p>
    #
    # @option params [DomainJoinInfo] :domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. </p>
    #
    # @option params [Integer] :idle_disconnect_timeout_in_seconds
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected
    #               from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time
    #               interval begins. Users are notified before they are disconnected due to inactivity. If
    #               users try to reconnect to the streaming session before the time interval specified in
    #               <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their
    #               previous session. Users are considered idle when they stop providing keyboard or mouse
    #               input during their streaming session. File uploads and downloads, audio in, audio out,
    #               and pixels changing do not qualify as user activity. If users continue to be idle after
    #               the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are
    #               disconnected. </p>
    #           <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 3600. The default value is 0.</p>
    #
    #           <note>
    #               <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>
    #            </note>
    #
    # @option params [Array<String>] :attributes_to_delete
    #   <p>The fleet attributes to delete.</p>
    #
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #
    # @option params [String] :stream_view
    #   <p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>
    #
    #           <p>The default value is <code>APP</code>.</p>
    #
    # @option params [String] :platform
    #   <p>The platform of the fleet. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic fleets. </p>
    #
    # @option params [Integer] :max_concurrent_sessions
    #   <p>The maximum number of concurrent sessions for a fleet.</p>
    #
    # @option params [Array<String>] :usb_device_filter_strings
    #   <p>The USB device filter strings that specify which USB devices a user can redirect to the fleet streaming session, when using the Windows native client. This is allowed but not required for Elastic fleets.</p>
    #
    # @option params [S3Location] :session_script_s3_location
    #   <p>The S3 location of the session scripts configuration zip file. This only applies to Elastic fleets. </p>
    #
    # @return [Types::UpdateFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet(
    #     image_name: 'ImageName',
    #     image_arn: 'ImageArn',
    #     name: 'Name',
    #     instance_type: 'InstanceType',
    #     compute_capacity: {
    #       desired_instances: 1 # required
    #     },
    #     vpc_config: {
    #       subnet_ids: [
    #         'member'
    #       ],
    #       security_group_ids: [
    #         'member'
    #       ]
    #     },
    #     max_user_duration_in_seconds: 1,
    #     disconnect_timeout_in_seconds: 1,
    #     delete_vpc_config: false,
    #     description: 'Description',
    #     display_name: 'DisplayName',
    #     enable_default_internet_access: false,
    #     domain_join_info: {
    #       directory_name: 'DirectoryName',
    #       organizational_unit_distinguished_name: 'OrganizationalUnitDistinguishedName'
    #     },
    #     idle_disconnect_timeout_in_seconds: 1,
    #     attributes_to_delete: [
    #       'VPC_CONFIGURATION' # accepts ["VPC_CONFIGURATION", "VPC_CONFIGURATION_SECURITY_GROUP_IDS", "DOMAIN_JOIN_INFO", "IAM_ROLE_ARN", "USB_DEVICE_FILTER_STRINGS", "SESSION_SCRIPT_S3_LOCATION"]
    #     ],
    #     iam_role_arn: 'IamRoleArn',
    #     stream_view: 'APP', # accepts ["APP", "DESKTOP"]
    #     platform: 'WINDOWS', # accepts ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #     max_concurrent_sessions: 1,
    #     usb_device_filter_strings: [
    #       'member'
    #     ],
    #     session_script_s3_location: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key: 'S3Key' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFleetOutput
    #   resp.data.fleet #=> Types::Fleet
    #   resp.data.fleet.arn #=> String
    #   resp.data.fleet.name #=> String
    #   resp.data.fleet.display_name #=> String
    #   resp.data.fleet.description #=> String
    #   resp.data.fleet.image_name #=> String
    #   resp.data.fleet.image_arn #=> String
    #   resp.data.fleet.instance_type #=> String
    #   resp.data.fleet.fleet_type #=> String, one of ["ALWAYS_ON", "ON_DEMAND", "ELASTIC"]
    #   resp.data.fleet.compute_capacity_status #=> Types::ComputeCapacityStatus
    #   resp.data.fleet.compute_capacity_status.desired #=> Integer
    #   resp.data.fleet.compute_capacity_status.running #=> Integer
    #   resp.data.fleet.compute_capacity_status.in_use #=> Integer
    #   resp.data.fleet.compute_capacity_status.available #=> Integer
    #   resp.data.fleet.max_user_duration_in_seconds #=> Integer
    #   resp.data.fleet.disconnect_timeout_in_seconds #=> Integer
    #   resp.data.fleet.state #=> String, one of ["STARTING", "RUNNING", "STOPPING", "STOPPED"]
    #   resp.data.fleet.vpc_config #=> Types::VpcConfig
    #   resp.data.fleet.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.fleet.vpc_config.subnet_ids[0] #=> String
    #   resp.data.fleet.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.fleet.vpc_config.security_group_ids[0] #=> String
    #   resp.data.fleet.created_time #=> Time
    #   resp.data.fleet.fleet_errors #=> Array<FleetError>
    #   resp.data.fleet.fleet_errors[0] #=> Types::FleetError
    #   resp.data.fleet.fleet_errors[0].error_code #=> String, one of ["IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "IAM_SERVICE_ROLE_IS_MISSING", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "FLEET_STOPPED", "FLEET_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"]
    #   resp.data.fleet.fleet_errors[0].error_message #=> String
    #   resp.data.fleet.enable_default_internet_access #=> Boolean
    #   resp.data.fleet.domain_join_info #=> Types::DomainJoinInfo
    #   resp.data.fleet.domain_join_info.directory_name #=> String
    #   resp.data.fleet.domain_join_info.organizational_unit_distinguished_name #=> String
    #   resp.data.fleet.idle_disconnect_timeout_in_seconds #=> Integer
    #   resp.data.fleet.iam_role_arn #=> String
    #   resp.data.fleet.stream_view #=> String, one of ["APP", "DESKTOP"]
    #   resp.data.fleet.platform #=> String, one of ["WINDOWS", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "AMAZON_LINUX2"]
    #   resp.data.fleet.max_concurrent_sessions #=> Integer
    #   resp.data.fleet.usb_device_filter_strings #=> Array<String>
    #   resp.data.fleet.usb_device_filter_strings[0] #=> String
    #   resp.data.fleet.session_script_s3_location #=> Types::S3Location
    #   resp.data.fleet.session_script_s3_location.s3_bucket #=> String
    #   resp.data.fleet.session_script_s3_location.s3_key #=> String
    #
    def update_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFleetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestLimitExceededException, Errors::InvalidParameterCombinationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ResourceNotAvailableException, Errors::OperationNotPermittedException, Errors::InvalidRoleException, Errors::IncompatibleImageException, Errors::ResourceInUseException, Errors::ConcurrentModificationException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::UpdateFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFleet,
        stubs: @stubs,
        params_class: Params::UpdateFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates permissions for the specified private image. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateImagePermissionsInput}.
    #
    # @option params [String] :name
    #   <p>The name of the private image.</p>
    #
    # @option params [String] :shared_account_id
    #   <p>The 12-digit identifier of the AWS account for which you want add or update image permissions.</p>
    #
    # @option params [ImagePermissions] :image_permissions
    #   <p>The permissions for the image.</p>
    #
    # @return [Types::UpdateImagePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_image_permissions(
    #     name: 'Name', # required
    #     shared_account_id: 'SharedAccountId', # required
    #     image_permissions: {
    #       allow_fleet: false,
    #       allow_image_builder: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateImagePermissionsOutput
    #
    def update_image_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateImagePermissionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateImagePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateImagePermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ResourceNotAvailableException]),
        data_parser: Parsers::UpdateImagePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateImagePermissions,
        stubs: @stubs,
        params_class: Params::UpdateImagePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_image_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified fields for the specified stack.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStackInput}.
    #
    # @option params [String] :display_name
    #   <p>The stack name to display.</p>
    #
    # @option params [String] :description
    #   <p>The description to display.</p>
    #
    # @option params [String] :name
    #   <p>The name of the stack.</p>
    #
    # @option params [Array<StorageConnector>] :storage_connectors
    #   <p>The storage connectors to enable.</p>
    #
    # @option params [Boolean] :delete_storage_connectors
    #   <p>Deletes the storage connectors currently enabled for the stack.</p>
    #
    # @option params [String] :redirect_url
    #   <p>The URL that users are redirected to after their streaming session ends.</p>
    #
    # @option params [String] :feedback_url
    #   <p>The URL that users are redirected to after they choose the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>
    #
    # @option params [Array<String>] :attributes_to_delete
    #   <p>The stack attributes to delete.</p>
    #
    # @option params [Array<UserSetting>] :user_settings
    #   <p>The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled.</p>
    #
    # @option params [ApplicationSettings] :application_settings
    #   <p>The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.</p>
    #
    # @option params [Array<AccessEndpoint>] :access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.</p>
    #
    # @option params [Array<String>] :embed_host_domains
    #   <p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions. </p>
    #
    # @return [Types::UpdateStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack(
    #     display_name: 'DisplayName',
    #     description: 'Description',
    #     name: 'Name', # required
    #     storage_connectors: [
    #       {
    #         connector_type: 'HOMEFOLDERS', # required - accepts ["HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"]
    #         resource_identifier: 'ResourceIdentifier',
    #         domains: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     delete_storage_connectors: false,
    #     redirect_url: 'RedirectURL',
    #     feedback_url: 'FeedbackURL',
    #     attributes_to_delete: [
    #       'STORAGE_CONNECTORS' # accepts ["STORAGE_CONNECTORS", "STORAGE_CONNECTOR_HOMEFOLDERS", "STORAGE_CONNECTOR_GOOGLE_DRIVE", "STORAGE_CONNECTOR_ONE_DRIVE", "REDIRECT_URL", "FEEDBACK_URL", "THEME_NAME", "USER_SETTINGS", "EMBED_HOST_DOMAINS", "IAM_ROLE_ARN", "ACCESS_ENDPOINTS"]
    #     ],
    #     user_settings: [
    #       {
    #         action: 'CLIPBOARD_COPY_FROM_LOCAL_DEVICE', # required - accepts ["CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE", "DOMAIN_PASSWORD_SIGNIN", "DOMAIN_SMART_CARD_SIGNIN"]
    #         permission: 'ENABLED' # required - accepts ["ENABLED", "DISABLED"]
    #       }
    #     ],
    #     application_settings: {
    #       enabled: false, # required
    #       settings_group: 'SettingsGroup'
    #     },
    #     access_endpoints: [
    #       {
    #         endpoint_type: 'STREAMING', # required - accepts ["STREAMING"]
    #         vpce_id: 'VpceId'
    #       }
    #     ],
    #     embed_host_domains: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStackOutput
    #   resp.data.stack #=> Types::Stack
    #   resp.data.stack.arn #=> String
    #   resp.data.stack.name #=> String
    #   resp.data.stack.description #=> String
    #   resp.data.stack.display_name #=> String
    #   resp.data.stack.created_time #=> Time
    #   resp.data.stack.storage_connectors #=> Array<StorageConnector>
    #   resp.data.stack.storage_connectors[0] #=> Types::StorageConnector
    #   resp.data.stack.storage_connectors[0].connector_type #=> String, one of ["HOMEFOLDERS", "GOOGLE_DRIVE", "ONE_DRIVE"]
    #   resp.data.stack.storage_connectors[0].resource_identifier #=> String
    #   resp.data.stack.storage_connectors[0].domains #=> Array<String>
    #   resp.data.stack.storage_connectors[0].domains[0] #=> String
    #   resp.data.stack.redirect_url #=> String
    #   resp.data.stack.feedback_url #=> String
    #   resp.data.stack.stack_errors #=> Array<StackError>
    #   resp.data.stack.stack_errors[0] #=> Types::StackError
    #   resp.data.stack.stack_errors[0].error_code #=> String, one of ["STORAGE_CONNECTOR_ERROR", "INTERNAL_SERVICE_ERROR"]
    #   resp.data.stack.stack_errors[0].error_message #=> String
    #   resp.data.stack.user_settings #=> Array<UserSetting>
    #   resp.data.stack.user_settings[0] #=> Types::UserSetting
    #   resp.data.stack.user_settings[0].action #=> String, one of ["CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "FILE_UPLOAD", "FILE_DOWNLOAD", "PRINTING_TO_LOCAL_DEVICE", "DOMAIN_PASSWORD_SIGNIN", "DOMAIN_SMART_CARD_SIGNIN"]
    #   resp.data.stack.user_settings[0].permission #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.stack.application_settings #=> Types::ApplicationSettingsResponse
    #   resp.data.stack.application_settings.enabled #=> Boolean
    #   resp.data.stack.application_settings.settings_group #=> String
    #   resp.data.stack.application_settings.s3_bucket_name #=> String
    #   resp.data.stack.access_endpoints #=> Array<AccessEndpoint>
    #   resp.data.stack.access_endpoints[0] #=> Types::AccessEndpoint
    #   resp.data.stack.access_endpoints[0].endpoint_type #=> String, one of ["STREAMING"]
    #   resp.data.stack.access_endpoints[0].vpce_id #=> String
    #   resp.data.stack.embed_host_domains #=> Array<String>
    #   resp.data.stack.embed_host_domains[0] #=> String
    #
    def update_stack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStackInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStack
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterCombinationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::OperationNotPermittedException, Errors::InvalidRoleException, Errors::IncompatibleImageException, Errors::ResourceInUseException, Errors::ConcurrentModificationException, Errors::InvalidAccountStatusException]),
        data_parser: Parsers::UpdateStack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStack,
        stubs: @stubs,
        params_class: Params::UpdateStackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_stack
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
