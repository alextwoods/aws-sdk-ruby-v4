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
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::BatchExecuteStatementInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::BatchExecuteStatement,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::BatchExecuteStatement,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::RequestLimitExceeded]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::BatchExecuteStatement,
          stub_error_classes: [Stubs::InternalServerError, Stubs::RequestLimitExceeded],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class BatchGetItem
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::BatchGetItemInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::BatchGetItem,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::BatchGetItem,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException, Parsers::RequestLimitExceeded, Parsers::ProvisionedThroughputExceededException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::BatchGetItem,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class BatchWriteItem
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::BatchWriteItemInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::BatchWriteItem,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::BatchWriteItem,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException, Parsers::RequestLimitExceeded, Parsers::ItemCollectionSizeLimitExceededException, Parsers::ProvisionedThroughputExceededException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::BatchWriteItem,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::ItemCollectionSizeLimitExceededException, Stubs::ProvisionedThroughputExceededException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateBackup
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateBackupInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CreateBackup,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::CreateBackup,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::LimitExceededException, Parsers::TableInUseException, Parsers::BackupInUseException, Parsers::TableNotFoundException, Parsers::ContinuousBackupsUnavailableException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::CreateBackup,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::TableInUseException, Stubs::BackupInUseException, Stubs::TableNotFoundException, Stubs::ContinuousBackupsUnavailableException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateGlobalTable
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateGlobalTableInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CreateGlobalTable,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::CreateGlobalTable,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::LimitExceededException, Parsers::TableNotFoundException, Parsers::GlobalTableAlreadyExistsException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::CreateGlobalTable,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::TableNotFoundException, Stubs::GlobalTableAlreadyExistsException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateTable
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateTableInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CreateTable,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::CreateTable,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::LimitExceededException, Parsers::ResourceInUseException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::CreateTable,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteBackup
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteBackupInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteBackup,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DeleteBackup,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::BackupNotFoundException, Parsers::LimitExceededException, Parsers::BackupInUseException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DeleteBackup,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::BackupNotFoundException, Stubs::LimitExceededException, Stubs::BackupInUseException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteItem
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteItemInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteItem,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DeleteItem,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException, Parsers::RequestLimitExceeded, Parsers::TransactionConflictException, Parsers::ConditionalCheckFailedException, Parsers::ItemCollectionSizeLimitExceededException, Parsers::ProvisionedThroughputExceededException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DeleteItem,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::TransactionConflictException, Stubs::ConditionalCheckFailedException, Stubs::ItemCollectionSizeLimitExceededException, Stubs::ProvisionedThroughputExceededException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteTable
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteTableInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteTable,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DeleteTable,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException, Parsers::LimitExceededException, Parsers::ResourceInUseException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DeleteTable,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeBackup
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeBackupInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeBackup,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DescribeBackup,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::BackupNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeBackup,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::BackupNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeContinuousBackups
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeContinuousBackupsInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeContinuousBackups,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DescribeContinuousBackups,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::TableNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeContinuousBackups,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::TableNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeContributorInsights
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeContributorInsightsInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeContributorInsights,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DescribeContributorInsights,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeContributorInsights,
          stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeEndpoints
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeEndpointsInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeEndpoints,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DescribeEndpoints,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeEndpoints,
          stub_error_classes: [],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeExport
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeExportInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeExport,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DescribeExport,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::LimitExceededException, Parsers::ExportNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeExport,
          stub_error_classes: [Stubs::InternalServerError, Stubs::LimitExceededException, Stubs::ExportNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeGlobalTable
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeGlobalTableInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeGlobalTable,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DescribeGlobalTable,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::GlobalTableNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeGlobalTable,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::GlobalTableNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeGlobalTableSettings
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeGlobalTableSettingsInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeGlobalTableSettings,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DescribeGlobalTableSettings,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::GlobalTableNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeGlobalTableSettings,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::GlobalTableNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeImport
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeImportInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeImport,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DescribeImport,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::ImportNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeImport,
          stub_error_classes: [Stubs::ImportNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeKinesisStreamingDestination
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeKinesisStreamingDestinationInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeKinesisStreamingDestination,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DescribeKinesisStreamingDestination,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeKinesisStreamingDestination,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeLimits
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeLimitsInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeLimits,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DescribeLimits,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeLimits,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeTable
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeTableInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeTable,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DescribeTable,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeTable,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeTableReplicaAutoScaling
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeTableReplicaAutoScalingInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeTableReplicaAutoScaling,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DescribeTableReplicaAutoScaling,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeTableReplicaAutoScaling,
          stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeTimeToLive
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeTimeToLiveInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeTimeToLive,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DescribeTimeToLive,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DescribeTimeToLive,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DisableKinesisStreamingDestination
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DisableKinesisStreamingDestinationInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DisableKinesisStreamingDestination,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::DisableKinesisStreamingDestination,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::LimitExceededException, Parsers::ResourceInUseException, Parsers::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::DisableKinesisStreamingDestination,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class EnableKinesisStreamingDestination
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::EnableKinesisStreamingDestinationInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::EnableKinesisStreamingDestination,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::EnableKinesisStreamingDestination,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::LimitExceededException, Parsers::ResourceInUseException, Parsers::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::EnableKinesisStreamingDestination,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ExecuteStatement
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ExecuteStatementInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ExecuteStatement,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::ExecuteStatement,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::ResourceNotFoundException, Parsers::DuplicateItemException, Parsers::RequestLimitExceeded, Parsers::TransactionConflictException, Parsers::ConditionalCheckFailedException, Parsers::ItemCollectionSizeLimitExceededException, Parsers::ProvisionedThroughputExceededException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ExecuteStatement,
          stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException, Stubs::DuplicateItemException, Stubs::RequestLimitExceeded, Stubs::TransactionConflictException, Stubs::ConditionalCheckFailedException, Stubs::ItemCollectionSizeLimitExceededException, Stubs::ProvisionedThroughputExceededException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ExecuteTransaction
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ExecuteTransactionInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ExecuteTransaction,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::ExecuteTransaction,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::ResourceNotFoundException, Parsers::IdempotentParameterMismatchException, Parsers::TransactionCanceledException, Parsers::RequestLimitExceeded, Parsers::ProvisionedThroughputExceededException, Parsers::TransactionInProgressException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ExecuteTransaction,
          stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException, Stubs::IdempotentParameterMismatchException, Stubs::TransactionCanceledException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException, Stubs::TransactionInProgressException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ExportTableToPointInTime
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ExportTableToPointInTimeInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ExportTableToPointInTime,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::ExportTableToPointInTime,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidExportTimeException, Parsers::LimitExceededException, Parsers::PointInTimeRecoveryUnavailableException, Parsers::ExportConflictException, Parsers::TableNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ExportTableToPointInTime,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidExportTimeException, Stubs::LimitExceededException, Stubs::PointInTimeRecoveryUnavailableException, Stubs::ExportConflictException, Stubs::TableNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetItem
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetItemInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetItem,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::GetItem,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException, Parsers::RequestLimitExceeded, Parsers::ProvisionedThroughputExceededException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::GetItem,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ImportTable
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ImportTableInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ImportTable,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::ImportTable,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::LimitExceededException, Parsers::ResourceInUseException, Parsers::ImportConflictException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ImportTable,
          stub_error_classes: [Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ImportConflictException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListBackups
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListBackupsInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListBackups,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::ListBackups,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ListBackups,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListContributorInsights
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListContributorInsightsInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListContributorInsights,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::ListContributorInsights,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ListContributorInsights,
          stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListExports
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListExportsInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListExports,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::ListExports,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::LimitExceededException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ListExports,
          stub_error_classes: [Stubs::InternalServerError, Stubs::LimitExceededException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListGlobalTables
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListGlobalTablesInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListGlobalTables,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::ListGlobalTables,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ListGlobalTables,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListImports
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListImportsInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListImports,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::ListImports,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::LimitExceededException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ListImports,
          stub_error_classes: [Stubs::LimitExceededException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListTables
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListTablesInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListTables,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::ListTables,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ListTables,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListTagsOfResource
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListTagsOfResourceInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListTagsOfResource,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::ListTagsOfResource,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::ListTagsOfResource,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutItem
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutItemInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::PutItem,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::PutItem,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException, Parsers::RequestLimitExceeded, Parsers::TransactionConflictException, Parsers::ConditionalCheckFailedException, Parsers::ItemCollectionSizeLimitExceededException, Parsers::ProvisionedThroughputExceededException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::PutItem,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::TransactionConflictException, Stubs::ConditionalCheckFailedException, Stubs::ItemCollectionSizeLimitExceededException, Stubs::ProvisionedThroughputExceededException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class Query
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::QueryInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::Query,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::Query,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException, Parsers::RequestLimitExceeded, Parsers::ProvisionedThroughputExceededException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::Query,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class RestoreTableFromBackup
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::RestoreTableFromBackupInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::RestoreTableFromBackup,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::RestoreTableFromBackup,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::BackupNotFoundException, Parsers::LimitExceededException, Parsers::TableInUseException, Parsers::BackupInUseException, Parsers::TableAlreadyExistsException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::RestoreTableFromBackup,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::BackupNotFoundException, Stubs::LimitExceededException, Stubs::TableInUseException, Stubs::BackupInUseException, Stubs::TableAlreadyExistsException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class RestoreTableToPointInTime
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::RestoreTableToPointInTimeInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::RestoreTableToPointInTime,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::RestoreTableToPointInTime,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::LimitExceededException, Parsers::TableInUseException, Parsers::PointInTimeRecoveryUnavailableException, Parsers::InvalidRestoreTimeException, Parsers::TableAlreadyExistsException, Parsers::TableNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::RestoreTableToPointInTime,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::TableInUseException, Stubs::PointInTimeRecoveryUnavailableException, Stubs::InvalidRestoreTimeException, Stubs::TableAlreadyExistsException, Stubs::TableNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class Scan
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ScanInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::Scan,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::Scan,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException, Parsers::RequestLimitExceeded, Parsers::ProvisionedThroughputExceededException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::Scan,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class TagResource
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::TagResourceInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::TagResource,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::TagResource,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::LimitExceededException, Parsers::ResourceInUseException, Parsers::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::TagResource,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class TransactGetItems
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::TransactGetItemsInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::TransactGetItems,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::TransactGetItems,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException, Parsers::TransactionCanceledException, Parsers::RequestLimitExceeded, Parsers::ProvisionedThroughputExceededException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::TransactGetItems,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::TransactionCanceledException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class TransactWriteItems
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::TransactWriteItemsInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::TransactWriteItems,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::TransactWriteItems,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException, Parsers::IdempotentParameterMismatchException, Parsers::TransactionCanceledException, Parsers::RequestLimitExceeded, Parsers::ProvisionedThroughputExceededException, Parsers::TransactionInProgressException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::TransactWriteItems,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::IdempotentParameterMismatchException, Stubs::TransactionCanceledException, Stubs::RequestLimitExceeded, Stubs::ProvisionedThroughputExceededException, Stubs::TransactionInProgressException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UntagResource
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UntagResourceInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UntagResource,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::UntagResource,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::LimitExceededException, Parsers::ResourceInUseException, Parsers::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::UntagResource,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateContinuousBackups
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateContinuousBackupsInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateContinuousBackups,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::UpdateContinuousBackups,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::TableNotFoundException, Parsers::ContinuousBackupsUnavailableException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::UpdateContinuousBackups,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::TableNotFoundException, Stubs::ContinuousBackupsUnavailableException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateContributorInsights
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateContributorInsightsInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateContributorInsights,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::UpdateContributorInsights,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::UpdateContributorInsights,
          stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateGlobalTable
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateGlobalTableInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateGlobalTable,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::UpdateGlobalTable,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::GlobalTableNotFoundException, Parsers::ReplicaNotFoundException, Parsers::TableNotFoundException, Parsers::ReplicaAlreadyExistsException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::UpdateGlobalTable,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::GlobalTableNotFoundException, Stubs::ReplicaNotFoundException, Stubs::TableNotFoundException, Stubs::ReplicaAlreadyExistsException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateGlobalTableSettings
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateGlobalTableSettingsInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateGlobalTableSettings,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::UpdateGlobalTableSettings,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::LimitExceededException, Parsers::GlobalTableNotFoundException, Parsers::IndexNotFoundException, Parsers::ReplicaNotFoundException, Parsers::ResourceInUseException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::UpdateGlobalTableSettings,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::LimitExceededException, Stubs::GlobalTableNotFoundException, Stubs::IndexNotFoundException, Stubs::ReplicaNotFoundException, Stubs::ResourceInUseException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateItem
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateItemInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateItem,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::UpdateItem,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException, Parsers::RequestLimitExceeded, Parsers::TransactionConflictException, Parsers::ConditionalCheckFailedException, Parsers::ItemCollectionSizeLimitExceededException, Parsers::ProvisionedThroughputExceededException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::UpdateItem,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::RequestLimitExceeded, Stubs::TransactionConflictException, Stubs::ConditionalCheckFailedException, Stubs::ItemCollectionSizeLimitExceededException, Stubs::ProvisionedThroughputExceededException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateKinesisStreamingDestination
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateKinesisStreamingDestinationInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateKinesisStreamingDestination,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::UpdateKinesisStreamingDestination,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException, Parsers::LimitExceededException, Parsers::ResourceInUseException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::UpdateKinesisStreamingDestination,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateTable
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateTableInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateTable,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::UpdateTable,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException, Parsers::LimitExceededException, Parsers::ResourceInUseException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::UpdateTable,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateTableReplicaAutoScaling
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateTableReplicaAutoScalingInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateTableReplicaAutoScaling,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::UpdateTableReplicaAutoScaling,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::ResourceNotFoundException, Parsers::LimitExceededException, Parsers::ResourceInUseException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::UpdateTableReplicaAutoScaling,
          stub_error_classes: [Stubs::InternalServerError, Stubs::ResourceNotFoundException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateTimeToLive
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateTimeToLiveInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateTimeToLive,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
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
          data_parser: Parsers::UpdateTimeToLive,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            error_parsers: [Parsers::InternalServerError, Parsers::InvalidEndpointException, Parsers::ResourceNotFoundException, Parsers::LimitExceededException, Parsers::ResourceInUseException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          event_handler: nil,
          stub_data_class: Stubs::UpdateTimeToLive,
          stub_error_classes: [Stubs::InternalServerError, Stubs::InvalidEndpointException, Stubs::ResourceNotFoundException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
          stub_message_encoder: Hearth::EventStream::Binary.const_get(:MessageEncoder).new,
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

  end
end
