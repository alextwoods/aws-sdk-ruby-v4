# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::CodeCatalyst
  # @api private
  module Middleware

    class CreateAccessToken
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateAccessTokenInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateAccessToken
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_access_token),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CreateAccessToken,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::CreateAccessToken,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 201,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CreateAccessToken,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateDevEnvironment
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateDevEnvironmentInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateDevEnvironment
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_dev_environment),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CreateDevEnvironment,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::CreateDevEnvironment,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 201,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CreateDevEnvironment,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateProject
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateProjectInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateProject
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_project),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CreateProject,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::CreateProject,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 201,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CreateProject,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateSourceRepository
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateSourceRepositoryInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateSourceRepository
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_source_repository),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CreateSourceRepository,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::CreateSourceRepository,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 201,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CreateSourceRepository,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateSourceRepositoryBranch
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateSourceRepositoryBranchInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateSourceRepositoryBranch
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_source_repository_branch),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CreateSourceRepositoryBranch,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::CreateSourceRepositoryBranch,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 201,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CreateSourceRepositoryBranch,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteAccessToken
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteAccessTokenInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteAccessToken
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_access_token),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteAccessToken,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteAccessToken,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteAccessToken,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteDevEnvironment
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteDevEnvironmentInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteDevEnvironment
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_dev_environment),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteDevEnvironment,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteDevEnvironment,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteDevEnvironment,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteProject
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteProjectInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteProject
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_project),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteProject,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteProject,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteProject,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteSourceRepository
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteSourceRepositoryInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteSourceRepository
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_source_repository),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteSourceRepository,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteSourceRepository,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteSourceRepository,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteSpace
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteSpaceInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteSpace
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_space),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteSpace,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteSpace,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteSpace,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetDevEnvironment
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetDevEnvironmentInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetDevEnvironment
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_dev_environment),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetDevEnvironment,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetDevEnvironment,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetDevEnvironment,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetProject
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetProjectInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetProject
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_project),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetProject,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetProject,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetProject,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetSourceRepository
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetSourceRepositoryInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetSourceRepository
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_source_repository),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetSourceRepository,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetSourceRepository,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetSourceRepository,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetSourceRepositoryCloneUrls
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetSourceRepositoryCloneUrlsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetSourceRepositoryCloneUrls
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_source_repository_clone_urls),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetSourceRepositoryCloneUrls,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetSourceRepositoryCloneUrls,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetSourceRepositoryCloneUrls,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetSpace
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetSpaceInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetSpace
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_space),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetSpace,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetSpace,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetSpace,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetSubscription
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetSubscriptionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetSubscription
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_subscription),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetSubscription,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetSubscription,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetSubscription,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetUserDetails
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetUserDetailsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetUserDetails
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_user_details),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetUserDetails,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetUserDetails,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetUserDetails,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetWorkflow
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetWorkflowInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetWorkflow
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_workflow),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetWorkflow,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetWorkflow,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetWorkflow,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetWorkflowRun
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetWorkflowRunInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetWorkflowRun
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_workflow_run),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetWorkflowRun,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetWorkflowRun,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetWorkflowRun,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListAccessTokens
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListAccessTokensInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListAccessTokens
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_access_tokens),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListAccessTokens,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListAccessTokens,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListAccessTokens,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListDevEnvironmentSessions
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListDevEnvironmentSessionsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListDevEnvironmentSessions
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_dev_environment_sessions),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListDevEnvironmentSessions,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListDevEnvironmentSessions,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListDevEnvironmentSessions,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListDevEnvironments
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListDevEnvironmentsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListDevEnvironments
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_dev_environments),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListDevEnvironments,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListDevEnvironments,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListDevEnvironments,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListEventLogs
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListEventLogsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListEventLogs
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_event_logs),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListEventLogs,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListEventLogs,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListEventLogs,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListProjects
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListProjectsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListProjects
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_projects),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListProjects,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListProjects,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListProjects,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListSourceRepositories
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListSourceRepositoriesInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListSourceRepositories
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_source_repositories),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListSourceRepositories,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListSourceRepositories,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListSourceRepositories,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListSourceRepositoryBranches
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListSourceRepositoryBranchesInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListSourceRepositoryBranches
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_source_repository_branches),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListSourceRepositoryBranches,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListSourceRepositoryBranches,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListSourceRepositoryBranches,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListSpaces
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListSpacesInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListSpaces
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_spaces),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListSpaces,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListSpaces,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListSpaces,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListWorkflowRuns
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListWorkflowRunsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListWorkflowRuns
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_workflow_runs),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListWorkflowRuns,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListWorkflowRuns,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListWorkflowRuns,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListWorkflows
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListWorkflowsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListWorkflows
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_workflows),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListWorkflows,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListWorkflows,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListWorkflows,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class StartDevEnvironment
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::StartDevEnvironmentInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::StartDevEnvironment
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :start_dev_environment),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::StartDevEnvironment,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::StartDevEnvironment,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::StartDevEnvironment,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class StartDevEnvironmentSession
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::StartDevEnvironmentSessionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::StartDevEnvironmentSession
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :start_dev_environment_session),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::StartDevEnvironmentSession,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::StartDevEnvironmentSession,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::StartDevEnvironmentSession,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class StartWorkflowRun
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::StartWorkflowRunInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::StartWorkflowRun
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :start_workflow_run),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::StartWorkflowRun,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::StartWorkflowRun,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::StartWorkflowRun,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class StopDevEnvironment
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::StopDevEnvironmentInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::StopDevEnvironment
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :stop_dev_environment),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::StopDevEnvironment,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::StopDevEnvironment,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::StopDevEnvironment,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class StopDevEnvironmentSession
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::StopDevEnvironmentSessionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::StopDevEnvironmentSession
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :stop_dev_environment_session),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::StopDevEnvironmentSession,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::StopDevEnvironmentSession,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::StopDevEnvironmentSession,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateDevEnvironment
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateDevEnvironmentInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateDevEnvironment
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_dev_environment),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateDevEnvironment,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::UpdateDevEnvironment,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::UpdateDevEnvironment,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateProject
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateProjectInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateProject
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_project),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateProject,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::UpdateProject,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::UpdateProject,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateSpace
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateSpaceInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateSpace
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_space),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateSpace,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::UpdateSpace,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::UpdateSpace,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class VerifySession
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::VerifySessionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::VerifySession
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :verify_session),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          Hearth::Identities::HTTPBearer => config.http_bearer_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::VerifySession,
          region: config.region,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::VerifySession,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::VerifySession,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

  end
end
