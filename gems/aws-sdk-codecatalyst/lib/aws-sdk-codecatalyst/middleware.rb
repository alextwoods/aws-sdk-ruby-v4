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
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateAccessTokenInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::CreateAccessToken,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 201,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::CreateAccessToken
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::CreateAccessToken,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateDevEnvironment
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateDevEnvironmentInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::CreateDevEnvironment,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 201,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::CreateDevEnvironment
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::CreateDevEnvironment,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateProject
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateProjectInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::CreateProject,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 201,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::CreateProject
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::CreateProject,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateSourceRepository
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateSourceRepositoryInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::CreateSourceRepository,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 201,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::CreateSourceRepository
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::CreateSourceRepository,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateSourceRepositoryBranch
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateSourceRepositoryBranchInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::CreateSourceRepositoryBranch,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 201,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::CreateSourceRepositoryBranch
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::CreateSourceRepositoryBranch,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteAccessToken
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteAccessTokenInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::DeleteAccessToken,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::DeleteAccessToken
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::DeleteAccessToken,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteDevEnvironment
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteDevEnvironmentInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::DeleteDevEnvironment,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::DeleteDevEnvironment
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::DeleteDevEnvironment,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteProject
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteProjectInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::DeleteProject,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::DeleteProject
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::DeleteProject,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteSourceRepository
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteSourceRepositoryInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::DeleteSourceRepository,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::DeleteSourceRepository
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::DeleteSourceRepository,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteSpace
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteSpaceInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::DeleteSpace,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::DeleteSpace
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::DeleteSpace,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetDevEnvironment
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetDevEnvironmentInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::GetDevEnvironment,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::GetDevEnvironment
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::GetDevEnvironment,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetProject
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetProjectInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::GetProject,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::GetProject
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::GetProject,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetSourceRepository
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetSourceRepositoryInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::GetSourceRepository,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::GetSourceRepository
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::GetSourceRepository,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetSourceRepositoryCloneUrls
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetSourceRepositoryCloneUrlsInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::GetSourceRepositoryCloneUrls,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::GetSourceRepositoryCloneUrls
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::GetSourceRepositoryCloneUrls,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetSpace
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetSpaceInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::GetSpace,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::GetSpace
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::GetSpace,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetSubscription
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetSubscriptionInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::GetSubscription,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::GetSubscription
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::GetSubscription,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetUserDetails
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetUserDetailsInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::GetUserDetails,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::GetUserDetails
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::GetUserDetails,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetWorkflow
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetWorkflowInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::GetWorkflow,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::GetWorkflow
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::GetWorkflow,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetWorkflowRun
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetWorkflowRunInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::GetWorkflowRun,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::GetWorkflowRun
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::GetWorkflowRun,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListAccessTokens
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListAccessTokensInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::ListAccessTokens,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::ListAccessTokens
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::ListAccessTokens,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListDevEnvironmentSessions
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListDevEnvironmentSessionsInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::ListDevEnvironmentSessions,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::ListDevEnvironmentSessions
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::ListDevEnvironmentSessions,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListDevEnvironments
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListDevEnvironmentsInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::ListDevEnvironments,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::ListDevEnvironments
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::ListDevEnvironments,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListEventLogs
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListEventLogsInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::ListEventLogs,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::ListEventLogs
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::ListEventLogs,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListProjects
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListProjectsInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::ListProjects,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::ListProjects
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::ListProjects,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListSourceRepositories
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListSourceRepositoriesInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::ListSourceRepositories,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::ListSourceRepositories
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::ListSourceRepositories,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListSourceRepositoryBranches
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListSourceRepositoryBranchesInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::ListSourceRepositoryBranches,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::ListSourceRepositoryBranches
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::ListSourceRepositoryBranches,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListSpaces
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListSpacesInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::ListSpaces,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::ListSpaces
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::ListSpaces,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListWorkflowRuns
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListWorkflowRunsInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::ListWorkflowRuns,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::ListWorkflowRuns
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::ListWorkflowRuns,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListWorkflows
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListWorkflowsInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::ListWorkflows,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::ListWorkflows
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::ListWorkflows,
          stubs: config.stubs
        )
        stack
      end
    end

    class StartDevEnvironment
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::StartDevEnvironmentInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::StartDevEnvironment,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::StartDevEnvironment
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::StartDevEnvironment,
          stubs: config.stubs
        )
        stack
      end
    end

    class StartDevEnvironmentSession
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::StartDevEnvironmentSessionInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::StartDevEnvironmentSession,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::StartDevEnvironmentSession
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::StartDevEnvironmentSession,
          stubs: config.stubs
        )
        stack
      end
    end

    class StartWorkflowRun
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::StartWorkflowRunInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::StartWorkflowRun,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::StartWorkflowRun
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::StartWorkflowRun,
          stubs: config.stubs
        )
        stack
      end
    end

    class StopDevEnvironment
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::StopDevEnvironmentInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::StopDevEnvironment,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::StopDevEnvironment
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::StopDevEnvironment,
          stubs: config.stubs
        )
        stack
      end
    end

    class StopDevEnvironmentSession
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::StopDevEnvironmentSessionInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::StopDevEnvironmentSession,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::StopDevEnvironmentSession
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::StopDevEnvironmentSession,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateDevEnvironment
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdateDevEnvironmentInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::UpdateDevEnvironment,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::UpdateDevEnvironment
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::UpdateDevEnvironment,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateProject
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdateProjectInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::UpdateProject,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::UpdateProject
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::UpdateProject,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateSpace
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdateSpaceInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::UpdateSpace,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::UpdateSpace
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::UpdateSpace,
          stubs: config.stubs
        )
        stack
      end
    end

    class VerifySession
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::VerifySessionInput,
          validate_input: config.validate_input
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
          region: config.region,
          param_builder: Endpoint::Parameters::VerifySession,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::ValidationException]
          ),
          data_parser: Parsers::VerifySession
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::ResourceNotFoundException, Stubs::ServiceQuotaExceededException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_data_class: Stubs::VerifySession,
          stubs: config.stubs
        )
        stack
      end
    end

  end
end
