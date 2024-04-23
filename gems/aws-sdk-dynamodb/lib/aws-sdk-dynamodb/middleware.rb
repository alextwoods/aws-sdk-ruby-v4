# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::DynamoDB
  # @api private
  module Middleware

    class BatchExecuteStatement
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::BatchExecuteStatementInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::BatchExecuteStatement
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :batch_execute_statement, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::BatchExecuteStatement,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::RequestLimitExceeded]
          ),
          data_parser: Parsers::BatchExecuteStatement
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::RequestLimitExceeded],
          stub_data_class: Stubs::BatchExecuteStatement,
          stubs: stubs
        )
        stack
      end
    end

    class BatchGetItem
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::BatchGetItemInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::BatchGetItem
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :batch_get_item, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::BatchGetItem,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException]
          ),
          data_parser: Parsers::BatchGetItem
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException],
          stub_data_class: Stubs::BatchGetItem,
          stubs: stubs
        )
        stack
      end
    end

    class BatchWriteItem
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::BatchWriteItemInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::BatchWriteItem
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :batch_write_item, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::BatchWriteItem,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::ItemCollectionSizeLimitExceededException, Errors::ProvisionedThroughputExceededException]
          ),
          data_parser: Parsers::BatchWriteItem
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::ItemCollectionSizeLimitExceededException, Stubs::ProvisionedThroughputExceededException],
          stub_data_class: Stubs::BatchWriteItem,
          stubs: stubs
        )
        stack
      end
    end

    class CreateBackup
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateBackupInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateBackup
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_backup, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::CreateBackup,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::TableInUseException, Errors::BackupInUseException, Errors::TableNotFoundException, Errors::ContinuousBackupsUnavailableException]
          ),
          data_parser: Parsers::CreateBackup
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::TableInUseException, Stubs::BackupInUseException, Stubs::TableNotFoundException, Stubs::ContinuousBackupsUnavailableException],
          stub_data_class: Stubs::CreateBackup,
          stubs: stubs
        )
        stack
      end
    end

    class CreateGlobalTable
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateGlobalTableInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateGlobalTable
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_global_table, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::CreateGlobalTable,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::TableNotFoundException, Errors::GlobalTableAlreadyExistsException]
          ),
          data_parser: Parsers::CreateGlobalTable
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::TableNotFoundException, Stubs::GlobalTableAlreadyExistsException],
          stub_data_class: Stubs::CreateGlobalTable,
          stubs: stubs
        )
        stack
      end
    end

    class CreateTable
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateTableInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateTable
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_table, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::CreateTable,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::ResourceInUseException]
          ),
          data_parser: Parsers::CreateTable
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
          stub_data_class: Stubs::CreateTable,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteBackup
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteBackupInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBackup
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_backup, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DeleteBackup,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::BackupNotFoundException, Errors::LimitExceededException, Errors::BackupInUseException]
          ),
          data_parser: Parsers::DeleteBackup
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::BackupNotFoundException, Stubs::LimitExceededException, Stubs::BackupInUseException],
          stub_data_class: Stubs::DeleteBackup,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteItem
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteItemInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteItem
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_item, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DeleteItem,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::TransactionConflictException, Errors::ConditionalCheckFailedException, Errors::ItemCollectionSizeLimitExceededException, Errors::ProvisionedThroughputExceededException]
          ),
          data_parser: Parsers::DeleteItem
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::TransactionConflictException, Stubs::ConditionalCheckFailedException, Stubs::ItemCollectionSizeLimitExceededException, Stubs::ProvisionedThroughputExceededException],
          stub_data_class: Stubs::DeleteItem,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteTable
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteTableInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteTable
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_table, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DeleteTable,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]
          ),
          data_parser: Parsers::DeleteTable
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
          stub_data_class: Stubs::DeleteTable,
          stubs: stubs
        )
        stack
      end
    end

    class DescribeBackup
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DescribeBackupInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeBackup
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_backup, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DescribeBackup,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::BackupNotFoundException]
          ),
          data_parser: Parsers::DescribeBackup
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::BackupNotFoundException],
          stub_data_class: Stubs::DescribeBackup,
          stubs: stubs
        )
        stack
      end
    end

    class DescribeContinuousBackups
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DescribeContinuousBackupsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeContinuousBackups
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_continuous_backups, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DescribeContinuousBackups,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::TableNotFoundException]
          ),
          data_parser: Parsers::DescribeContinuousBackups
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::TableNotFoundException],
          stub_data_class: Stubs::DescribeContinuousBackups,
          stubs: stubs
        )
        stack
      end
    end

    class DescribeContributorInsights
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DescribeContributorInsightsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeContributorInsights
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_contributor_insights, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DescribeContributorInsights,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::ResourceNotFoundException]
          ),
          data_parser: Parsers::DescribeContributorInsights
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException],
          stub_data_class: Stubs::DescribeContributorInsights,
          stubs: stubs
        )
        stack
      end
    end

    class DescribeEndpoints
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DescribeEndpointsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeEndpoints
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_endpoints, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DescribeEndpoints,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: []
          ),
          data_parser: Parsers::DescribeEndpoints
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DescribeEndpoints,
          stubs: stubs
        )
        stack
      end
    end

    class DescribeExport
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DescribeExportInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeExport
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_export, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DescribeExport,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::LimitExceededException, Errors::ExportNotFoundException]
          ),
          data_parser: Parsers::DescribeExport
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::LimitExceededException, Stubs::ExportNotFoundException],
          stub_data_class: Stubs::DescribeExport,
          stubs: stubs
        )
        stack
      end
    end

    class DescribeGlobalTable
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DescribeGlobalTableInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeGlobalTable
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_global_table, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DescribeGlobalTable,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::GlobalTableNotFoundException]
          ),
          data_parser: Parsers::DescribeGlobalTable
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::GlobalTableNotFoundException],
          stub_data_class: Stubs::DescribeGlobalTable,
          stubs: stubs
        )
        stack
      end
    end

    class DescribeGlobalTableSettings
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DescribeGlobalTableSettingsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeGlobalTableSettings
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_global_table_settings, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DescribeGlobalTableSettings,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::GlobalTableNotFoundException]
          ),
          data_parser: Parsers::DescribeGlobalTableSettings
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::GlobalTableNotFoundException],
          stub_data_class: Stubs::DescribeGlobalTableSettings,
          stubs: stubs
        )
        stack
      end
    end

    class DescribeImport
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DescribeImportInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeImport
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_import, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DescribeImport,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::ImportNotFoundException]
          ),
          data_parser: Parsers::DescribeImport
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::ImportNotFoundException],
          stub_data_class: Stubs::DescribeImport,
          stubs: stubs
        )
        stack
      end
    end

    class DescribeKinesisStreamingDestination
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DescribeKinesisStreamingDestinationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeKinesisStreamingDestination
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_kinesis_streaming_destination, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DescribeKinesisStreamingDestination,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException]
          ),
          data_parser: Parsers::DescribeKinesisStreamingDestination
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException],
          stub_data_class: Stubs::DescribeKinesisStreamingDestination,
          stubs: stubs
        )
        stack
      end
    end

    class DescribeLimits
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DescribeLimitsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeLimits
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_limits, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DescribeLimits,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException]
          ),
          data_parser: Parsers::DescribeLimits
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException],
          stub_data_class: Stubs::DescribeLimits,
          stubs: stubs
        )
        stack
      end
    end

    class DescribeTable
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DescribeTableInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeTable
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_table, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DescribeTable,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException]
          ),
          data_parser: Parsers::DescribeTable
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException],
          stub_data_class: Stubs::DescribeTable,
          stubs: stubs
        )
        stack
      end
    end

    class DescribeTableReplicaAutoScaling
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DescribeTableReplicaAutoScalingInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeTableReplicaAutoScaling
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_table_replica_auto_scaling, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DescribeTableReplicaAutoScaling,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::ResourceNotFoundException]
          ),
          data_parser: Parsers::DescribeTableReplicaAutoScaling
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException],
          stub_data_class: Stubs::DescribeTableReplicaAutoScaling,
          stubs: stubs
        )
        stack
      end
    end

    class DescribeTimeToLive
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DescribeTimeToLiveInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeTimeToLive
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_time_to_live, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DescribeTimeToLive,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException]
          ),
          data_parser: Parsers::DescribeTimeToLive
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException],
          stub_data_class: Stubs::DescribeTimeToLive,
          stubs: stubs
        )
        stack
      end
    end

    class DisableKinesisStreamingDestination
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DisableKinesisStreamingDestinationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DisableKinesisStreamingDestination
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :disable_kinesis_streaming_destination, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DisableKinesisStreamingDestination,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          ),
          data_parser: Parsers::DisableKinesisStreamingDestination
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_data_class: Stubs::DisableKinesisStreamingDestination,
          stubs: stubs
        )
        stack
      end
    end

    class EnableKinesisStreamingDestination
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::EnableKinesisStreamingDestinationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::EnableKinesisStreamingDestination
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :enable_kinesis_streaming_destination, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::EnableKinesisStreamingDestination,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          ),
          data_parser: Parsers::EnableKinesisStreamingDestination
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_data_class: Stubs::EnableKinesisStreamingDestination,
          stubs: stubs
        )
        stack
      end
    end

    class ExecuteStatement
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ExecuteStatementInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ExecuteStatement
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :execute_statement, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::ExecuteStatement,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::ResourceNotFoundException, Errors::DuplicateItemException, Errors::RequestLimitExceeded, Errors::TransactionConflictException, Errors::ConditionalCheckFailedException, Errors::ItemCollectionSizeLimitExceededException, Errors::ProvisionedThroughputExceededException]
          ),
          data_parser: Parsers::ExecuteStatement
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException, Stubs::DuplicateItemException, Stubs::RequestLimitExceeded, Stubs::TransactionConflictException, Stubs::ConditionalCheckFailedException, Stubs::ItemCollectionSizeLimitExceededException, Stubs::ProvisionedThroughputExceededException],
          stub_data_class: Stubs::ExecuteStatement,
          stubs: stubs
        )
        stack
      end
    end

    class ExecuteTransaction
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ExecuteTransactionInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ExecuteTransaction
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :execute_transaction, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::ExecuteTransaction,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::ResourceNotFoundException, Errors::IdempotentParameterMismatchException, Errors::TransactionCanceledException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException, Errors::TransactionInProgressException]
          ),
          data_parser: Parsers::ExecuteTransaction
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException, Stubs::IdempotentParameterMismatchException, Stubs::TransactionCanceledException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException, Stubs::TransactionInProgressException],
          stub_data_class: Stubs::ExecuteTransaction,
          stubs: stubs
        )
        stack
      end
    end

    class ExportTableToPointInTime
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ExportTableToPointInTimeInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ExportTableToPointInTime
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :export_table_to_point_in_time, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::ExportTableToPointInTime,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidExportTimeException, Errors::LimitExceededException, Errors::PointInTimeRecoveryUnavailableException, Errors::ExportConflictException, Errors::TableNotFoundException]
          ),
          data_parser: Parsers::ExportTableToPointInTime
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidExportTimeException, Stubs::LimitExceededException, Stubs::PointInTimeRecoveryUnavailableException, Stubs::ExportConflictException, Stubs::TableNotFoundException],
          stub_data_class: Stubs::ExportTableToPointInTime,
          stubs: stubs
        )
        stack
      end
    end

    class GetItem
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetItemInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetItem
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_item, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::GetItem,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException]
          ),
          data_parser: Parsers::GetItem
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException],
          stub_data_class: Stubs::GetItem,
          stubs: stubs
        )
        stack
      end
    end

    class ImportTable
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ImportTableInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ImportTable
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :import_table, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::ImportTable,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ImportConflictException]
          ),
          data_parser: Parsers::ImportTable
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ImportConflictException],
          stub_data_class: Stubs::ImportTable,
          stubs: stubs
        )
        stack
      end
    end

    class ListBackups
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListBackupsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListBackups
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_backups, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::ListBackups,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException]
          ),
          data_parser: Parsers::ListBackups
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException],
          stub_data_class: Stubs::ListBackups,
          stubs: stubs
        )
        stack
      end
    end

    class ListContributorInsights
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListContributorInsightsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListContributorInsights
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_contributor_insights, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::ListContributorInsights,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::ResourceNotFoundException]
          ),
          data_parser: Parsers::ListContributorInsights
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException],
          stub_data_class: Stubs::ListContributorInsights,
          stubs: stubs
        )
        stack
      end
    end

    class ListExports
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListExportsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListExports
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_exports, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::ListExports,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::LimitExceededException]
          ),
          data_parser: Parsers::ListExports
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::LimitExceededException],
          stub_data_class: Stubs::ListExports,
          stubs: stubs
        )
        stack
      end
    end

    class ListGlobalTables
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListGlobalTablesInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListGlobalTables
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_global_tables, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::ListGlobalTables,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException]
          ),
          data_parser: Parsers::ListGlobalTables
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException],
          stub_data_class: Stubs::ListGlobalTables,
          stubs: stubs
        )
        stack
      end
    end

    class ListImports
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListImportsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListImports
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_imports, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::ListImports,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::LimitExceededException]
          ),
          data_parser: Parsers::ListImports
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::LimitExceededException],
          stub_data_class: Stubs::ListImports,
          stubs: stubs
        )
        stack
      end
    end

    class ListTables
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListTablesInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListTables
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_tables, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::ListTables,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException]
          ),
          data_parser: Parsers::ListTables
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException],
          stub_data_class: Stubs::ListTables,
          stubs: stubs
        )
        stack
      end
    end

    class ListTagsOfResource
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListTagsOfResourceInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListTagsOfResource
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_tags_of_resource, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::ListTagsOfResource,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException]
          ),
          data_parser: Parsers::ListTagsOfResource
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException],
          stub_data_class: Stubs::ListTagsOfResource,
          stubs: stubs
        )
        stack
      end
    end

    class PutItem
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutItemInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutItem
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_item, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::PutItem,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::TransactionConflictException, Errors::ConditionalCheckFailedException, Errors::ItemCollectionSizeLimitExceededException, Errors::ProvisionedThroughputExceededException]
          ),
          data_parser: Parsers::PutItem
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::TransactionConflictException, Stubs::ConditionalCheckFailedException, Stubs::ItemCollectionSizeLimitExceededException, Stubs::ProvisionedThroughputExceededException],
          stub_data_class: Stubs::PutItem,
          stubs: stubs
        )
        stack
      end
    end

    class Query
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::QueryInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::Query
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :query, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::Query,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException]
          ),
          data_parser: Parsers::Query
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException],
          stub_data_class: Stubs::Query,
          stubs: stubs
        )
        stack
      end
    end

    class RestoreTableFromBackup
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::RestoreTableFromBackupInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::RestoreTableFromBackup
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :restore_table_from_backup, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::RestoreTableFromBackup,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::BackupNotFoundException, Errors::LimitExceededException, Errors::TableInUseException, Errors::BackupInUseException, Errors::TableAlreadyExistsException]
          ),
          data_parser: Parsers::RestoreTableFromBackup
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::BackupNotFoundException, Stubs::LimitExceededException, Stubs::TableInUseException, Stubs::BackupInUseException, Stubs::TableAlreadyExistsException],
          stub_data_class: Stubs::RestoreTableFromBackup,
          stubs: stubs
        )
        stack
      end
    end

    class RestoreTableToPointInTime
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::RestoreTableToPointInTimeInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::RestoreTableToPointInTime
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :restore_table_to_point_in_time, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::RestoreTableToPointInTime,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::TableInUseException, Errors::PointInTimeRecoveryUnavailableException, Errors::InvalidRestoreTimeException, Errors::TableAlreadyExistsException, Errors::TableNotFoundException]
          ),
          data_parser: Parsers::RestoreTableToPointInTime
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::TableInUseException, Stubs::PointInTimeRecoveryUnavailableException, Stubs::InvalidRestoreTimeException, Stubs::TableAlreadyExistsException, Stubs::TableNotFoundException],
          stub_data_class: Stubs::RestoreTableToPointInTime,
          stubs: stubs
        )
        stack
      end
    end

    class Scan
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ScanInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::Scan
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :scan, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::Scan,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException]
          ),
          data_parser: Parsers::Scan
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException],
          stub_data_class: Stubs::Scan,
          stubs: stubs
        )
        stack
      end
    end

    class TagResource
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::TagResourceInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::TagResource
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :tag_resource, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::TagResource,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          ),
          data_parser: Parsers::TagResource
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_data_class: Stubs::TagResource,
          stubs: stubs
        )
        stack
      end
    end

    class TransactGetItems
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::TransactGetItemsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::TransactGetItems
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :transact_get_items, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::TransactGetItems,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::TransactionCanceledException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException]
          ),
          data_parser: Parsers::TransactGetItems
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::TransactionCanceledException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException],
          stub_data_class: Stubs::TransactGetItems,
          stubs: stubs
        )
        stack
      end
    end

    class TransactWriteItems
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::TransactWriteItemsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::TransactWriteItems
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :transact_write_items, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::TransactWriteItems,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::IdempotentParameterMismatchException, Errors::TransactionCanceledException, Errors::RequestLimitExceeded, Errors::ProvisionedThroughputExceededException, Errors::TransactionInProgressException]
          ),
          data_parser: Parsers::TransactWriteItems
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::IdempotentParameterMismatchException, Stubs::TransactionCanceledException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException, Stubs::TransactionInProgressException],
          stub_data_class: Stubs::TransactWriteItems,
          stubs: stubs
        )
        stack
      end
    end

    class UntagResource
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UntagResourceInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UntagResource
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :untag_resource, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::UntagResource,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          ),
          data_parser: Parsers::UntagResource
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_data_class: Stubs::UntagResource,
          stubs: stubs
        )
        stack
      end
    end

    class UpdateContinuousBackups
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdateContinuousBackupsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateContinuousBackups
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_continuous_backups, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::UpdateContinuousBackups,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::TableNotFoundException, Errors::ContinuousBackupsUnavailableException]
          ),
          data_parser: Parsers::UpdateContinuousBackups
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::TableNotFoundException, Stubs::ContinuousBackupsUnavailableException],
          stub_data_class: Stubs::UpdateContinuousBackups,
          stubs: stubs
        )
        stack
      end
    end

    class UpdateContributorInsights
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdateContributorInsightsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateContributorInsights
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_contributor_insights, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::UpdateContributorInsights,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::ResourceNotFoundException]
          ),
          data_parser: Parsers::UpdateContributorInsights
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException],
          stub_data_class: Stubs::UpdateContributorInsights,
          stubs: stubs
        )
        stack
      end
    end

    class UpdateGlobalTable
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdateGlobalTableInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateGlobalTable
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_global_table, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::UpdateGlobalTable,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::GlobalTableNotFoundException, Errors::ReplicaNotFoundException, Errors::TableNotFoundException, Errors::ReplicaAlreadyExistsException]
          ),
          data_parser: Parsers::UpdateGlobalTable
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::GlobalTableNotFoundException, Stubs::ReplicaNotFoundException, Stubs::TableNotFoundException, Stubs::ReplicaAlreadyExistsException],
          stub_data_class: Stubs::UpdateGlobalTable,
          stubs: stubs
        )
        stack
      end
    end

    class UpdateGlobalTableSettings
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdateGlobalTableSettingsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateGlobalTableSettings
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_global_table_settings, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::UpdateGlobalTableSettings,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::LimitExceededException, Errors::GlobalTableNotFoundException, Errors::IndexNotFoundException, Errors::ReplicaNotFoundException, Errors::ResourceInUseException]
          ),
          data_parser: Parsers::UpdateGlobalTableSettings
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::GlobalTableNotFoundException, Stubs::IndexNotFoundException, Stubs::ReplicaNotFoundException, Stubs::ResourceInUseException],
          stub_data_class: Stubs::UpdateGlobalTableSettings,
          stubs: stubs
        )
        stack
      end
    end

    class UpdateItem
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdateItemInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateItem
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_item, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::UpdateItem,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::RequestLimitExceeded, Errors::TransactionConflictException, Errors::ConditionalCheckFailedException, Errors::ItemCollectionSizeLimitExceededException, Errors::ProvisionedThroughputExceededException]
          ),
          data_parser: Parsers::UpdateItem
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::TransactionConflictException, Stubs::ConditionalCheckFailedException, Stubs::ItemCollectionSizeLimitExceededException, Stubs::ProvisionedThroughputExceededException],
          stub_data_class: Stubs::UpdateItem,
          stubs: stubs
        )
        stack
      end
    end

    class UpdateKinesisStreamingDestination
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdateKinesisStreamingDestinationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateKinesisStreamingDestination
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_kinesis_streaming_destination, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::UpdateKinesisStreamingDestination,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]
          ),
          data_parser: Parsers::UpdateKinesisStreamingDestination
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
          stub_data_class: Stubs::UpdateKinesisStreamingDestination,
          stubs: stubs
        )
        stack
      end
    end

    class UpdateTable
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdateTableInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateTable
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_table, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::UpdateTable,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]
          ),
          data_parser: Parsers::UpdateTable
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
          stub_data_class: Stubs::UpdateTable,
          stubs: stubs
        )
        stack
      end
    end

    class UpdateTableReplicaAutoScaling
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdateTableReplicaAutoScalingInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateTableReplicaAutoScaling
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_table_replica_auto_scaling, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::UpdateTableReplicaAutoScaling,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]
          ),
          data_parser: Parsers::UpdateTableReplicaAutoScaling
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
          stub_data_class: Stubs::UpdateTableReplicaAutoScaling,
          stubs: stubs
        )
        stack
      end
    end

    class UpdateTimeToLive
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdateTimeToLiveInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateTimeToLive
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_time_to_live, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::UpdateTimeToLive,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
            errors: [Errors::InternalServerError, Errors::InvalidEndpointException, Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::ResourceInUseException]
          ),
          data_parser: Parsers::UpdateTimeToLive
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
          stub_data_class: Stubs::UpdateTimeToLive,
          stubs: stubs
        )
        stack
      end
    end

  end
end
