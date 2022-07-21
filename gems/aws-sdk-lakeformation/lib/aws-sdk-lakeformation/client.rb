# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::LakeFormation
  # An API client for AWSLakeFormation
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Lake Formation</fullname>
  #          <p>Defines the public endpoint for the Lake Formation service.</p>
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
    def initialize(config = AWS::SDK::LakeFormation::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Attaches one or more LF-tags to an existing resource.</p>
    #
    # @param [Hash] params
    #   See {Types::AddLFTagsToResourceInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [Resource] :resource
    #   <p>The database, table, or column resource to which to attach an LF-tag.</p>
    #
    # @option params [Array<LFTagPair>] :lf_tags
    #   <p>The LF-tags to attach to the resource.</p>
    #
    # @return [Types::AddLFTagsToResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_lf_tags_to_resource(
    #     catalog_id: 'CatalogId',
    #     resource: {
    #       catalog: { },
    #       database: {
    #         catalog_id: 'CatalogId',
    #         name: 'Name' # required
    #       },
    #       table: {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         name: 'Name',
    #         table_wildcard: { }
    #       },
    #       table_with_columns: {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         name: 'Name', # required
    #         column_names: [
    #           'member'
    #         ],
    #         column_wildcard: {
    #         }
    #       },
    #       data_location: {
    #         catalog_id: 'CatalogId',
    #         resource_arn: 'ResourceArn' # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: 'TableCatalogId',
    #         database_name: 'DatabaseName',
    #         table_name: 'TableName',
    #         name: 'Name'
    #       },
    #       lf_tag: {
    #         catalog_id: 'CatalogId',
    #         tag_key: 'TagKey', # required
    #         tag_values: [
    #           'member'
    #         ] # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: 'CatalogId',
    #         resource_type: 'DATABASE', # required - accepts ["DATABASE", "TABLE"]
    #         expression: [
    #           {
    #             tag_key: 'TagKey', # required
    #           }
    #         ] # required
    #       }
    #     }, # required
    #     lf_tags: [
    #       {
    #         catalog_id: 'CatalogId',
    #         tag_key: 'TagKey', # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddLFTagsToResourceOutput
    #   resp.data.failures #=> Array<LFTagError>
    #   resp.data.failures[0] #=> Types::LFTagError
    #   resp.data.failures[0].lf_tag #=> Types::LFTagPair
    #   resp.data.failures[0].lf_tag.catalog_id #=> String
    #   resp.data.failures[0].lf_tag.tag_key #=> String
    #   resp.data.failures[0].lf_tag.tag_values #=> Array<String>
    #   resp.data.failures[0].lf_tag.tag_values[0] #=> String
    #   resp.data.failures[0].error #=> Types::ErrorDetail
    #   resp.data.failures[0].error.error_code #=> String
    #   resp.data.failures[0].error.error_message #=> String
    #
    def add_lf_tags_to_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddLFTagsToResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddLFTagsToResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddLFTagsToResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::ConcurrentModificationException, Errors::EntityNotFoundException]),
        data_parser: Parsers::AddLFTagsToResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddLFTagsToResource,
        stubs: @stubs,
        params_class: Params::AddLFTagsToResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_lf_tags_to_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Batch operation to grant permissions to the principal.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGrantPermissionsInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [Array<BatchPermissionsRequestEntry>] :entries
    #   <p>A list of up to 20 entries for resource permissions to be granted by batch operation to the principal.</p>
    #
    # @return [Types::BatchGrantPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_grant_permissions(
    #     catalog_id: 'CatalogId',
    #     entries: [
    #       {
    #         id: 'Id', # required
    #         principal: {
    #           data_lake_principal_identifier: 'DataLakePrincipalIdentifier'
    #         },
    #         resource: {
    #           catalog: { },
    #           database: {
    #             catalog_id: 'CatalogId',
    #             name: 'Name' # required
    #           },
    #           table: {
    #             catalog_id: 'CatalogId',
    #             database_name: 'DatabaseName', # required
    #             name: 'Name',
    #             table_wildcard: { }
    #           },
    #           table_with_columns: {
    #             catalog_id: 'CatalogId',
    #             database_name: 'DatabaseName', # required
    #             name: 'Name', # required
    #             column_names: [
    #               'member'
    #             ],
    #             column_wildcard: {
    #             }
    #           },
    #           data_location: {
    #             catalog_id: 'CatalogId',
    #             resource_arn: 'ResourceArn' # required
    #           },
    #           data_cells_filter: {
    #             table_catalog_id: 'TableCatalogId',
    #             database_name: 'DatabaseName',
    #             table_name: 'TableName',
    #             name: 'Name'
    #           },
    #           lf_tag: {
    #             catalog_id: 'CatalogId',
    #             tag_key: 'TagKey', # required
    #             tag_values: [
    #               'member'
    #             ] # required
    #           },
    #           lf_tag_policy: {
    #             catalog_id: 'CatalogId',
    #             resource_type: 'DATABASE', # required - accepts ["DATABASE", "TABLE"]
    #             expression: [
    #               {
    #                 tag_key: 'TagKey', # required
    #               }
    #             ] # required
    #           }
    #         },
    #         permissions: [
    #           'ALL' # accepts ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_TAG", "ASSOCIATE"]
    #         ],
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGrantPermissionsOutput
    #   resp.data.failures #=> Array<BatchPermissionsFailureEntry>
    #   resp.data.failures[0] #=> Types::BatchPermissionsFailureEntry
    #   resp.data.failures[0].request_entry #=> Types::BatchPermissionsRequestEntry
    #   resp.data.failures[0].request_entry.id #=> String
    #   resp.data.failures[0].request_entry.principal #=> Types::DataLakePrincipal
    #   resp.data.failures[0].request_entry.principal.data_lake_principal_identifier #=> String
    #   resp.data.failures[0].request_entry.resource #=> Types::Resource
    #   resp.data.failures[0].request_entry.resource.catalog #=> Types::CatalogResource
    #   resp.data.failures[0].request_entry.resource.database #=> Types::DatabaseResource
    #   resp.data.failures[0].request_entry.resource.database.catalog_id #=> String
    #   resp.data.failures[0].request_entry.resource.database.name #=> String
    #   resp.data.failures[0].request_entry.resource.table #=> Types::TableResource
    #   resp.data.failures[0].request_entry.resource.table.catalog_id #=> String
    #   resp.data.failures[0].request_entry.resource.table.database_name #=> String
    #   resp.data.failures[0].request_entry.resource.table.name #=> String
    #   resp.data.failures[0].request_entry.resource.table.table_wildcard #=> Types::TableWildcard
    #   resp.data.failures[0].request_entry.resource.table_with_columns #=> Types::TableWithColumnsResource
    #   resp.data.failures[0].request_entry.resource.table_with_columns.catalog_id #=> String
    #   resp.data.failures[0].request_entry.resource.table_with_columns.database_name #=> String
    #   resp.data.failures[0].request_entry.resource.table_with_columns.name #=> String
    #   resp.data.failures[0].request_entry.resource.table_with_columns.column_names #=> Array<String>
    #   resp.data.failures[0].request_entry.resource.table_with_columns.column_names[0] #=> String
    #   resp.data.failures[0].request_entry.resource.table_with_columns.column_wildcard #=> Types::ColumnWildcard
    #   resp.data.failures[0].request_entry.resource.table_with_columns.column_wildcard.excluded_column_names #=> Array<String>
    #   resp.data.failures[0].request_entry.resource.data_location #=> Types::DataLocationResource
    #   resp.data.failures[0].request_entry.resource.data_location.catalog_id #=> String
    #   resp.data.failures[0].request_entry.resource.data_location.resource_arn #=> String
    #   resp.data.failures[0].request_entry.resource.data_cells_filter #=> Types::DataCellsFilterResource
    #   resp.data.failures[0].request_entry.resource.data_cells_filter.table_catalog_id #=> String
    #   resp.data.failures[0].request_entry.resource.data_cells_filter.database_name #=> String
    #   resp.data.failures[0].request_entry.resource.data_cells_filter.table_name #=> String
    #   resp.data.failures[0].request_entry.resource.data_cells_filter.name #=> String
    #   resp.data.failures[0].request_entry.resource.lf_tag #=> Types::LFTagKeyResource
    #   resp.data.failures[0].request_entry.resource.lf_tag.catalog_id #=> String
    #   resp.data.failures[0].request_entry.resource.lf_tag.tag_key #=> String
    #   resp.data.failures[0].request_entry.resource.lf_tag.tag_values #=> Array<String>
    #   resp.data.failures[0].request_entry.resource.lf_tag.tag_values[0] #=> String
    #   resp.data.failures[0].request_entry.resource.lf_tag_policy #=> Types::LFTagPolicyResource
    #   resp.data.failures[0].request_entry.resource.lf_tag_policy.catalog_id #=> String
    #   resp.data.failures[0].request_entry.resource.lf_tag_policy.resource_type #=> String, one of ["DATABASE", "TABLE"]
    #   resp.data.failures[0].request_entry.resource.lf_tag_policy.expression #=> Array<LFTag>
    #   resp.data.failures[0].request_entry.resource.lf_tag_policy.expression[0] #=> Types::LFTag
    #   resp.data.failures[0].request_entry.resource.lf_tag_policy.expression[0].tag_key #=> String
    #   resp.data.failures[0].request_entry.resource.lf_tag_policy.expression[0].tag_values #=> Array<String>
    #   resp.data.failures[0].request_entry.permissions #=> Array<String>
    #   resp.data.failures[0].request_entry.permissions[0] #=> String, one of ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_TAG", "ASSOCIATE"]
    #   resp.data.failures[0].request_entry.permissions_with_grant_option #=> Array<String>
    #   resp.data.failures[0].error #=> Types::ErrorDetail
    #   resp.data.failures[0].error.error_code #=> String
    #   resp.data.failures[0].error.error_message #=> String
    #
    def batch_grant_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGrantPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGrantPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGrantPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::InvalidInputException]),
        data_parser: Parsers::BatchGrantPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGrantPermissions,
        stubs: @stubs,
        params_class: Params::BatchGrantPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_grant_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Batch operation to revoke permissions from the principal.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchRevokePermissionsInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [Array<BatchPermissionsRequestEntry>] :entries
    #   <p>A list of up to 20 entries for resource permissions to be revoked by batch operation to the principal.</p>
    #
    # @return [Types::BatchRevokePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_revoke_permissions(
    #     catalog_id: 'CatalogId',
    #     entries: [
    #       {
    #         id: 'Id', # required
    #         principal: {
    #           data_lake_principal_identifier: 'DataLakePrincipalIdentifier'
    #         },
    #         resource: {
    #           catalog: { },
    #           database: {
    #             catalog_id: 'CatalogId',
    #             name: 'Name' # required
    #           },
    #           table: {
    #             catalog_id: 'CatalogId',
    #             database_name: 'DatabaseName', # required
    #             name: 'Name',
    #             table_wildcard: { }
    #           },
    #           table_with_columns: {
    #             catalog_id: 'CatalogId',
    #             database_name: 'DatabaseName', # required
    #             name: 'Name', # required
    #             column_names: [
    #               'member'
    #             ],
    #             column_wildcard: {
    #             }
    #           },
    #           data_location: {
    #             catalog_id: 'CatalogId',
    #             resource_arn: 'ResourceArn' # required
    #           },
    #           data_cells_filter: {
    #             table_catalog_id: 'TableCatalogId',
    #             database_name: 'DatabaseName',
    #             table_name: 'TableName',
    #             name: 'Name'
    #           },
    #           lf_tag: {
    #             catalog_id: 'CatalogId',
    #             tag_key: 'TagKey', # required
    #             tag_values: [
    #               'member'
    #             ] # required
    #           },
    #           lf_tag_policy: {
    #             catalog_id: 'CatalogId',
    #             resource_type: 'DATABASE', # required - accepts ["DATABASE", "TABLE"]
    #             expression: [
    #               {
    #                 tag_key: 'TagKey', # required
    #               }
    #             ] # required
    #           }
    #         },
    #         permissions: [
    #           'ALL' # accepts ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_TAG", "ASSOCIATE"]
    #         ],
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchRevokePermissionsOutput
    #   resp.data.failures #=> Array<BatchPermissionsFailureEntry>
    #   resp.data.failures[0] #=> Types::BatchPermissionsFailureEntry
    #   resp.data.failures[0].request_entry #=> Types::BatchPermissionsRequestEntry
    #   resp.data.failures[0].request_entry.id #=> String
    #   resp.data.failures[0].request_entry.principal #=> Types::DataLakePrincipal
    #   resp.data.failures[0].request_entry.principal.data_lake_principal_identifier #=> String
    #   resp.data.failures[0].request_entry.resource #=> Types::Resource
    #   resp.data.failures[0].request_entry.resource.catalog #=> Types::CatalogResource
    #   resp.data.failures[0].request_entry.resource.database #=> Types::DatabaseResource
    #   resp.data.failures[0].request_entry.resource.database.catalog_id #=> String
    #   resp.data.failures[0].request_entry.resource.database.name #=> String
    #   resp.data.failures[0].request_entry.resource.table #=> Types::TableResource
    #   resp.data.failures[0].request_entry.resource.table.catalog_id #=> String
    #   resp.data.failures[0].request_entry.resource.table.database_name #=> String
    #   resp.data.failures[0].request_entry.resource.table.name #=> String
    #   resp.data.failures[0].request_entry.resource.table.table_wildcard #=> Types::TableWildcard
    #   resp.data.failures[0].request_entry.resource.table_with_columns #=> Types::TableWithColumnsResource
    #   resp.data.failures[0].request_entry.resource.table_with_columns.catalog_id #=> String
    #   resp.data.failures[0].request_entry.resource.table_with_columns.database_name #=> String
    #   resp.data.failures[0].request_entry.resource.table_with_columns.name #=> String
    #   resp.data.failures[0].request_entry.resource.table_with_columns.column_names #=> Array<String>
    #   resp.data.failures[0].request_entry.resource.table_with_columns.column_names[0] #=> String
    #   resp.data.failures[0].request_entry.resource.table_with_columns.column_wildcard #=> Types::ColumnWildcard
    #   resp.data.failures[0].request_entry.resource.table_with_columns.column_wildcard.excluded_column_names #=> Array<String>
    #   resp.data.failures[0].request_entry.resource.data_location #=> Types::DataLocationResource
    #   resp.data.failures[0].request_entry.resource.data_location.catalog_id #=> String
    #   resp.data.failures[0].request_entry.resource.data_location.resource_arn #=> String
    #   resp.data.failures[0].request_entry.resource.data_cells_filter #=> Types::DataCellsFilterResource
    #   resp.data.failures[0].request_entry.resource.data_cells_filter.table_catalog_id #=> String
    #   resp.data.failures[0].request_entry.resource.data_cells_filter.database_name #=> String
    #   resp.data.failures[0].request_entry.resource.data_cells_filter.table_name #=> String
    #   resp.data.failures[0].request_entry.resource.data_cells_filter.name #=> String
    #   resp.data.failures[0].request_entry.resource.lf_tag #=> Types::LFTagKeyResource
    #   resp.data.failures[0].request_entry.resource.lf_tag.catalog_id #=> String
    #   resp.data.failures[0].request_entry.resource.lf_tag.tag_key #=> String
    #   resp.data.failures[0].request_entry.resource.lf_tag.tag_values #=> Array<String>
    #   resp.data.failures[0].request_entry.resource.lf_tag.tag_values[0] #=> String
    #   resp.data.failures[0].request_entry.resource.lf_tag_policy #=> Types::LFTagPolicyResource
    #   resp.data.failures[0].request_entry.resource.lf_tag_policy.catalog_id #=> String
    #   resp.data.failures[0].request_entry.resource.lf_tag_policy.resource_type #=> String, one of ["DATABASE", "TABLE"]
    #   resp.data.failures[0].request_entry.resource.lf_tag_policy.expression #=> Array<LFTag>
    #   resp.data.failures[0].request_entry.resource.lf_tag_policy.expression[0] #=> Types::LFTag
    #   resp.data.failures[0].request_entry.resource.lf_tag_policy.expression[0].tag_key #=> String
    #   resp.data.failures[0].request_entry.resource.lf_tag_policy.expression[0].tag_values #=> Array<String>
    #   resp.data.failures[0].request_entry.permissions #=> Array<String>
    #   resp.data.failures[0].request_entry.permissions[0] #=> String, one of ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_TAG", "ASSOCIATE"]
    #   resp.data.failures[0].request_entry.permissions_with_grant_option #=> Array<String>
    #   resp.data.failures[0].error #=> Types::ErrorDetail
    #   resp.data.failures[0].error.error_code #=> String
    #   resp.data.failures[0].error.error_message #=> String
    #
    def batch_revoke_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchRevokePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchRevokePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchRevokePermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::InvalidInputException]),
        data_parser: Parsers::BatchRevokePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchRevokePermissions,
        stubs: @stubs,
        params_class: Params::BatchRevokePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_revoke_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attempts to cancel the specified transaction. Returns an exception if the transaction was previously committed.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelTransactionInput}.
    #
    # @option params [String] :transaction_id
    #   <p>The transaction to cancel.</p>
    #
    # @return [Types::CancelTransactionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_transaction(
    #     transaction_id: 'TransactionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelTransactionOutput
    #
    def cancel_transaction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelTransactionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelTransactionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelTransaction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::TransactionCommitInProgressException, Errors::InternalServiceException, Errors::TransactionCommittedException, Errors::InvalidInputException, Errors::ConcurrentModificationException, Errors::EntityNotFoundException]),
        data_parser: Parsers::CancelTransaction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelTransaction,
        stubs: @stubs,
        params_class: Params::CancelTransactionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_transaction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attempts to commit the specified transaction. Returns an exception if the transaction was previously aborted. This API action is idempotent if called multiple times for the same transaction.</p>
    #
    # @param [Hash] params
    #   See {Types::CommitTransactionInput}.
    #
    # @option params [String] :transaction_id
    #   <p>The transaction to commit.</p>
    #
    # @return [Types::CommitTransactionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.commit_transaction(
    #     transaction_id: 'TransactionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CommitTransactionOutput
    #   resp.data.transaction_status #=> String, one of ["ACTIVE", "COMMITTED", "ABORTED", "COMMIT_IN_PROGRESS"]
    #
    def commit_transaction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CommitTransactionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CommitTransactionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CommitTransaction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::ConcurrentModificationException, Errors::TransactionCanceledException, Errors::EntityNotFoundException]),
        data_parser: Parsers::CommitTransaction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CommitTransaction,
        stubs: @stubs,
        params_class: Params::CommitTransactionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :commit_transaction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a data cell filter to allow one to grant access to certain columns on certain rows.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDataCellsFilterInput}.
    #
    # @option params [DataCellsFilter] :table_data
    #   <p>A <code>DataCellsFilter</code> structure containing information about the data cells filter.</p>
    #
    # @return [Types::CreateDataCellsFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_cells_filter(
    #     table_data: {
    #       table_catalog_id: 'TableCatalogId', # required
    #       database_name: 'DatabaseName', # required
    #       table_name: 'TableName', # required
    #       name: 'Name', # required
    #       row_filter: {
    #         filter_expression: 'FilterExpression',
    #         all_rows_wildcard: { }
    #       },
    #       column_names: [
    #         'member'
    #       ],
    #       column_wildcard: {
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDataCellsFilterOutput
    #
    def create_data_cells_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataCellsFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataCellsFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataCellsFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNumberLimitExceededException, Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::AlreadyExistsException, Errors::EntityNotFoundException]),
        data_parser: Parsers::CreateDataCellsFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataCellsFilter,
        stubs: @stubs,
        params_class: Params::CreateDataCellsFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_data_cells_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an LF-tag with the specified name and values.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLFTagInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [String] :tag_key
    #   <p>The key-name for the LF-tag.</p>
    #
    # @option params [Array<String>] :tag_values
    #   <p>A list of possible values an attribute can take.</p>
    #
    # @return [Types::CreateLFTagOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_lf_tag(
    #     catalog_id: 'CatalogId',
    #     tag_key: 'TagKey', # required
    #     tag_values: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLFTagOutput
    #
    def create_lf_tag(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLFTagInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLFTagInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLFTag
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNumberLimitExceededException, Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::CreateLFTag
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLFTag,
        stubs: @stubs,
        params_class: Params::CreateLFTagOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_lf_tag
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a data cell filter.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDataCellsFilterInput}.
    #
    # @option params [String] :table_catalog_id
    #   <p>The ID of the catalog to which the table belongs.</p>
    #
    # @option params [String] :database_name
    #   <p>A database in the Glue Data Catalog.</p>
    #
    # @option params [String] :table_name
    #   <p>A table in the database.</p>
    #
    # @option params [String] :name
    #   <p>The name given by the user to the data filter cell.</p>
    #
    # @return [Types::DeleteDataCellsFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_cells_filter(
    #     table_catalog_id: 'TableCatalogId',
    #     database_name: 'DatabaseName',
    #     table_name: 'TableName',
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDataCellsFilterOutput
    #
    def delete_data_cells_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDataCellsFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDataCellsFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataCellsFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::DeleteDataCellsFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataCellsFilter,
        stubs: @stubs,
        params_class: Params::DeleteDataCellsFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_data_cells_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified LF-tag key name. If the attribute key does not exist or the LF-tag does not exist, then the operation will not do anything. If the attribute key exists, then the operation checks if any resources are tagged with this attribute key, if yes, the API throws a 400 Exception with the message "Delete not allowed" as the LF-tag key is still attached with resources. You can consider untagging resources with this LF-tag key.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLFTagInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [String] :tag_key
    #   <p>The key-name for the LF-tag to delete.</p>
    #
    # @return [Types::DeleteLFTagOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lf_tag(
    #     catalog_id: 'CatalogId',
    #     tag_key: 'TagKey' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLFTagOutput
    #
    def delete_lf_tag(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLFTagInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLFTagInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLFTag
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::DeleteLFTag
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLFTag,
        stubs: @stubs,
        params_class: Params::DeleteLFTagOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_lf_tag
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>For a specific governed table, provides a list of Amazon S3 objects that will be written during the current transaction and that can be automatically deleted
    #       if the transaction is canceled. Without this call, no Amazon S3 objects are automatically deleted when a transaction cancels.
    #     </p>
    #          <p>
    #       The Glue ETL library function <code>write_dynamic_frame.from_catalog()</code> includes an option to automatically
    #       call <code>DeleteObjectsOnCancel</code> before writes. For more information, see
    #       <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/transactions-data-operations.html#rolling-back-writes">Rolling Back Amazon S3 Writes</a>.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteObjectsOnCancelInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The Glue data catalog that contains the governed table. Defaults to the current account ID.</p>
    #
    # @option params [String] :database_name
    #   <p>The database that contains the governed table.</p>
    #
    # @option params [String] :table_name
    #   <p>The name of the governed table.</p>
    #
    # @option params [String] :transaction_id
    #   <p>ID of the transaction that the writes occur in.</p>
    #
    # @option params [Array<VirtualObject>] :objects
    #   <p>A list of VirtualObject structures, which indicates the Amazon S3 objects to be deleted if the transaction cancels.</p>
    #
    # @return [Types::DeleteObjectsOnCancelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_objects_on_cancel(
    #     catalog_id: 'CatalogId',
    #     database_name: 'DatabaseName', # required
    #     table_name: 'TableName', # required
    #     transaction_id: 'TransactionId', # required
    #     objects: [
    #       {
    #         uri: 'Uri', # required
    #         e_tag: 'ETag'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteObjectsOnCancelOutput
    #
    def delete_objects_on_cancel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteObjectsOnCancelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteObjectsOnCancelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteObjectsOnCancel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::TransactionCommittedException, Errors::InvalidInputException, Errors::ConcurrentModificationException, Errors::TransactionCanceledException, Errors::ResourceNotReadyException, Errors::EntityNotFoundException]),
        data_parser: Parsers::DeleteObjectsOnCancel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteObjectsOnCancel,
        stubs: @stubs,
        params_class: Params::DeleteObjectsOnCancelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_objects_on_cancel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters the resource as managed by the Data Catalog.</p>
    # 	
    #          <p>When you deregister a path, Lake Formation removes the path from the inline policy attached to your service-linked role.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to deregister.</p>
    #
    # @return [Types::DeregisterResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_resource(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterResourceOutput
    #
    def deregister_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::DeregisterResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterResource,
        stubs: @stubs,
        params_class: Params::DeregisterResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the current data access role for the given resource registered in Lake Formation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    #
    # @return [Types::DescribeResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeResourceOutput
    #   resp.data.resource_info #=> Types::ResourceInfo
    #   resp.data.resource_info.resource_arn #=> String
    #   resp.data.resource_info.role_arn #=> String
    #   resp.data.resource_info.last_modified #=> Time
    #
    def describe_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::DescribeResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeResource,
        stubs: @stubs,
        params_class: Params::DescribeResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the details of a single transaction.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTransactionInput}.
    #
    # @option params [String] :transaction_id
    #   <p>The transaction for which to return status.</p>
    #
    # @return [Types::DescribeTransactionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_transaction(
    #     transaction_id: 'TransactionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTransactionOutput
    #   resp.data.transaction_description #=> Types::TransactionDescription
    #   resp.data.transaction_description.transaction_id #=> String
    #   resp.data.transaction_description.transaction_status #=> String, one of ["ACTIVE", "COMMITTED", "ABORTED", "COMMIT_IN_PROGRESS"]
    #   resp.data.transaction_description.transaction_start_time #=> Time
    #   resp.data.transaction_description.transaction_end_time #=> Time
    #
    def describe_transaction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTransactionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTransactionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTransaction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::DescribeTransaction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTransaction,
        stubs: @stubs,
        params_class: Params::DescribeTransactionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_transaction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Indicates to the service that the specified transaction is still active and should not be treated as idle and aborted.</p>
    # 	
    # 	        <p>Write transactions that remain idle for a long period are automatically aborted unless explicitly extended.</p>
    #
    # @param [Hash] params
    #   See {Types::ExtendTransactionInput}.
    #
    # @option params [String] :transaction_id
    #   <p>The transaction to extend.</p>
    #
    # @return [Types::ExtendTransactionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.extend_transaction(
    #     transaction_id: 'TransactionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExtendTransactionOutput
    #
    def extend_transaction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExtendTransactionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExtendTransactionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExtendTransaction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::TransactionCommitInProgressException, Errors::InternalServiceException, Errors::TransactionCommittedException, Errors::InvalidInputException, Errors::TransactionCanceledException, Errors::EntityNotFoundException]),
        data_parser: Parsers::ExtendTransaction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExtendTransaction,
        stubs: @stubs,
        params_class: Params::ExtendTransactionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :extend_transaction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the list of the data lake administrators of a Lake Formation-managed data lake. </p>
    #
    # @param [Hash] params
    #   See {Types::GetDataLakeSettingsInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @return [Types::GetDataLakeSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_lake_settings(
    #     catalog_id: 'CatalogId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDataLakeSettingsOutput
    #   resp.data.data_lake_settings #=> Types::DataLakeSettings
    #   resp.data.data_lake_settings.data_lake_admins #=> Array<DataLakePrincipal>
    #   resp.data.data_lake_settings.data_lake_admins[0] #=> Types::DataLakePrincipal
    #   resp.data.data_lake_settings.data_lake_admins[0].data_lake_principal_identifier #=> String
    #   resp.data.data_lake_settings.create_database_default_permissions #=> Array<PrincipalPermissions>
    #   resp.data.data_lake_settings.create_database_default_permissions[0] #=> Types::PrincipalPermissions
    #   resp.data.data_lake_settings.create_database_default_permissions[0].principal #=> Types::DataLakePrincipal
    #   resp.data.data_lake_settings.create_database_default_permissions[0].permissions #=> Array<String>
    #   resp.data.data_lake_settings.create_database_default_permissions[0].permissions[0] #=> String, one of ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_TAG", "ASSOCIATE"]
    #   resp.data.data_lake_settings.create_table_default_permissions #=> Array<PrincipalPermissions>
    #   resp.data.data_lake_settings.trusted_resource_owners #=> Array<String>
    #   resp.data.data_lake_settings.trusted_resource_owners[0] #=> String
    #   resp.data.data_lake_settings.allow_external_data_filtering #=> Boolean
    #   resp.data.data_lake_settings.external_data_filtering_allow_list #=> Array<DataLakePrincipal>
    #   resp.data.data_lake_settings.authorized_session_tag_value_list #=> Array<String>
    #   resp.data.data_lake_settings.authorized_session_tag_value_list[0] #=> String
    #
    def get_data_lake_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDataLakeSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDataLakeSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDataLakeSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::GetDataLakeSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDataLakeSettings,
        stubs: @stubs,
        params_class: Params::GetDataLakeSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_data_lake_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the Lake Formation permissions for a specified table or database resource located
    #       at a path in Amazon S3. <code>GetEffectivePermissionsForPath</code> will not return databases and tables if the catalog is encrypted.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEffectivePermissionsForPathInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to get permissions.</p>
    #
    # @option params [String] :next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @return [Types::GetEffectivePermissionsForPathOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_effective_permissions_for_path(
    #     catalog_id: 'CatalogId',
    #     resource_arn: 'ResourceArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEffectivePermissionsForPathOutput
    #   resp.data.permissions #=> Array<PrincipalResourcePermissions>
    #   resp.data.permissions[0] #=> Types::PrincipalResourcePermissions
    #   resp.data.permissions[0].principal #=> Types::DataLakePrincipal
    #   resp.data.permissions[0].principal.data_lake_principal_identifier #=> String
    #   resp.data.permissions[0].resource #=> Types::Resource
    #   resp.data.permissions[0].resource.catalog #=> Types::CatalogResource
    #   resp.data.permissions[0].resource.database #=> Types::DatabaseResource
    #   resp.data.permissions[0].resource.database.catalog_id #=> String
    #   resp.data.permissions[0].resource.database.name #=> String
    #   resp.data.permissions[0].resource.table #=> Types::TableResource
    #   resp.data.permissions[0].resource.table.catalog_id #=> String
    #   resp.data.permissions[0].resource.table.database_name #=> String
    #   resp.data.permissions[0].resource.table.name #=> String
    #   resp.data.permissions[0].resource.table.table_wildcard #=> Types::TableWildcard
    #   resp.data.permissions[0].resource.table_with_columns #=> Types::TableWithColumnsResource
    #   resp.data.permissions[0].resource.table_with_columns.catalog_id #=> String
    #   resp.data.permissions[0].resource.table_with_columns.database_name #=> String
    #   resp.data.permissions[0].resource.table_with_columns.name #=> String
    #   resp.data.permissions[0].resource.table_with_columns.column_names #=> Array<String>
    #   resp.data.permissions[0].resource.table_with_columns.column_names[0] #=> String
    #   resp.data.permissions[0].resource.table_with_columns.column_wildcard #=> Types::ColumnWildcard
    #   resp.data.permissions[0].resource.table_with_columns.column_wildcard.excluded_column_names #=> Array<String>
    #   resp.data.permissions[0].resource.data_location #=> Types::DataLocationResource
    #   resp.data.permissions[0].resource.data_location.catalog_id #=> String
    #   resp.data.permissions[0].resource.data_location.resource_arn #=> String
    #   resp.data.permissions[0].resource.data_cells_filter #=> Types::DataCellsFilterResource
    #   resp.data.permissions[0].resource.data_cells_filter.table_catalog_id #=> String
    #   resp.data.permissions[0].resource.data_cells_filter.database_name #=> String
    #   resp.data.permissions[0].resource.data_cells_filter.table_name #=> String
    #   resp.data.permissions[0].resource.data_cells_filter.name #=> String
    #   resp.data.permissions[0].resource.lf_tag #=> Types::LFTagKeyResource
    #   resp.data.permissions[0].resource.lf_tag.catalog_id #=> String
    #   resp.data.permissions[0].resource.lf_tag.tag_key #=> String
    #   resp.data.permissions[0].resource.lf_tag.tag_values #=> Array<String>
    #   resp.data.permissions[0].resource.lf_tag.tag_values[0] #=> String
    #   resp.data.permissions[0].resource.lf_tag_policy #=> Types::LFTagPolicyResource
    #   resp.data.permissions[0].resource.lf_tag_policy.catalog_id #=> String
    #   resp.data.permissions[0].resource.lf_tag_policy.resource_type #=> String, one of ["DATABASE", "TABLE"]
    #   resp.data.permissions[0].resource.lf_tag_policy.expression #=> Array<LFTag>
    #   resp.data.permissions[0].resource.lf_tag_policy.expression[0] #=> Types::LFTag
    #   resp.data.permissions[0].resource.lf_tag_policy.expression[0].tag_key #=> String
    #   resp.data.permissions[0].resource.lf_tag_policy.expression[0].tag_values #=> Array<String>
    #   resp.data.permissions[0].permissions #=> Array<String>
    #   resp.data.permissions[0].permissions[0] #=> String, one of ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_TAG", "ASSOCIATE"]
    #   resp.data.permissions[0].permissions_with_grant_option #=> Array<String>
    #   resp.data.permissions[0].additional_details #=> Types::DetailsMap
    #   resp.data.permissions[0].additional_details.resource_share #=> Array<String>
    #   resp.data.permissions[0].additional_details.resource_share[0] #=> String
    #   resp.data.next_token #=> String
    #
    def get_effective_permissions_for_path(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEffectivePermissionsForPathInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEffectivePermissionsForPathInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEffectivePermissionsForPath
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::GetEffectivePermissionsForPath
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEffectivePermissionsForPath,
        stubs: @stubs,
        params_class: Params::GetEffectivePermissionsForPathOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_effective_permissions_for_path
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an LF-tag definition.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLFTagInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [String] :tag_key
    #   <p>The key-name for the LF-tag.</p>
    #
    # @return [Types::GetLFTagOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lf_tag(
    #     catalog_id: 'CatalogId',
    #     tag_key: 'TagKey' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLFTagOutput
    #   resp.data.catalog_id #=> String
    #   resp.data.tag_key #=> String
    #   resp.data.tag_values #=> Array<String>
    #   resp.data.tag_values[0] #=> String
    #
    def get_lf_tag(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLFTagInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLFTagInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLFTag
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::GetLFTag
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLFTag,
        stubs: @stubs,
        params_class: Params::GetLFTagOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_lf_tag
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the state of a query previously submitted. Clients are expected to poll <code>GetQueryState</code> to monitor the current state of the planning before retrieving the work units. A query state is only visible to the principal that made the initial call to <code>StartQueryPlanning</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetQueryStateInput}.
    #
    # @option params [String] :query_id
    #   <p>The ID of the plan query operation.</p>
    #
    # @return [Types::GetQueryStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_state(
    #     query_id: 'QueryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetQueryStateOutput
    #   resp.data.error #=> String
    #   resp.data.state #=> String, one of ["PENDING", "WORKUNITS_AVAILABLE", "ERROR", "FINISHED", "EXPIRED"]
    #
    def get_query_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetQueryStateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetQueryStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "query-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetQueryState
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServiceException, Errors::InvalidInputException]),
        data_parser: Parsers::GetQueryState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetQueryState,
        stubs: @stubs,
        params_class: Params::GetQueryStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_query_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves statistics on the planning and execution of a query.</p>
    #
    # @param [Hash] params
    #   See {Types::GetQueryStatisticsInput}.
    #
    # @option params [String] :query_id
    #   <p>The ID of the plan query operation.</p>
    #
    # @return [Types::GetQueryStatisticsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_statistics(
    #     query_id: 'QueryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetQueryStatisticsOutput
    #   resp.data.execution_statistics #=> Types::ExecutionStatistics
    #   resp.data.execution_statistics.average_execution_time_millis #=> Integer
    #   resp.data.execution_statistics.data_scanned_bytes #=> Integer
    #   resp.data.execution_statistics.work_units_executed_count #=> Integer
    #   resp.data.planning_statistics #=> Types::PlanningStatistics
    #   resp.data.planning_statistics.estimated_data_to_scan_bytes #=> Integer
    #   resp.data.planning_statistics.planning_time_millis #=> Integer
    #   resp.data.planning_statistics.queue_time_millis #=> Integer
    #   resp.data.planning_statistics.work_units_generated_count #=> Integer
    #   resp.data.query_submission_time #=> Time
    #
    def get_query_statistics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetQueryStatisticsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetQueryStatisticsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "query-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetQueryStatistics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ExpiredException, Errors::AccessDeniedException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::StatisticsNotReadyYetException, Errors::ThrottledException]),
        data_parser: Parsers::GetQueryStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetQueryStatistics,
        stubs: @stubs,
        params_class: Params::GetQueryStatisticsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_query_statistics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the LF-tags applied to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourceLFTagsInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [Resource] :resource
    #   <p>The database, table, or column resource for which you want to return LF-tags.</p>
    #
    # @option params [Boolean] :show_assigned_lf_tags
    #   <p>Indicates whether to show the assigned LF-tags.</p>
    #
    # @return [Types::GetResourceLFTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_lf_tags(
    #     catalog_id: 'CatalogId',
    #     resource: {
    #       catalog: { },
    #       database: {
    #         catalog_id: 'CatalogId',
    #         name: 'Name' # required
    #       },
    #       table: {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         name: 'Name',
    #         table_wildcard: { }
    #       },
    #       table_with_columns: {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         name: 'Name', # required
    #         column_names: [
    #           'member'
    #         ],
    #         column_wildcard: {
    #         }
    #       },
    #       data_location: {
    #         catalog_id: 'CatalogId',
    #         resource_arn: 'ResourceArn' # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: 'TableCatalogId',
    #         database_name: 'DatabaseName',
    #         table_name: 'TableName',
    #         name: 'Name'
    #       },
    #       lf_tag: {
    #         catalog_id: 'CatalogId',
    #         tag_key: 'TagKey', # required
    #         tag_values: [
    #           'member'
    #         ] # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: 'CatalogId',
    #         resource_type: 'DATABASE', # required - accepts ["DATABASE", "TABLE"]
    #         expression: [
    #           {
    #             tag_key: 'TagKey', # required
    #           }
    #         ] # required
    #       }
    #     }, # required
    #     show_assigned_lf_tags: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceLFTagsOutput
    #   resp.data.lf_tag_on_database #=> Array<LFTagPair>
    #   resp.data.lf_tag_on_database[0] #=> Types::LFTagPair
    #   resp.data.lf_tag_on_database[0].catalog_id #=> String
    #   resp.data.lf_tag_on_database[0].tag_key #=> String
    #   resp.data.lf_tag_on_database[0].tag_values #=> Array<String>
    #   resp.data.lf_tag_on_database[0].tag_values[0] #=> String
    #   resp.data.lf_tags_on_table #=> Array<LFTagPair>
    #   resp.data.lf_tags_on_columns #=> Array<ColumnLFTag>
    #   resp.data.lf_tags_on_columns[0] #=> Types::ColumnLFTag
    #   resp.data.lf_tags_on_columns[0].name #=> String
    #   resp.data.lf_tags_on_columns[0].lf_tags #=> Array<LFTagPair>
    #
    def get_resource_lf_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourceLFTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourceLFTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourceLFTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::GlueEncryptionException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::GetResourceLFTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourceLFTags,
        stubs: @stubs,
        params_class: Params::GetResourceLFTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_lf_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the set of Amazon S3 objects that make up the specified governed table. A transaction ID or timestamp can be specified for time-travel queries.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTableObjectsInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The catalog containing the governed table. Defaults to the caller’s account.</p>
    #
    # @option params [String] :database_name
    #   <p>The database containing the governed table.</p>
    #
    # @option params [String] :table_name
    #   <p>The governed table for which to retrieve objects.</p>
    #
    # @option params [String] :transaction_id
    #   <p>The transaction ID at which to read the governed table contents. If this transaction has aborted, an error is returned. If not set, defaults to the most recent committed transaction. Cannot be specified along with <code>QueryAsOfTime</code>.</p>
    #
    # @option params [Time] :query_as_of_time
    #   <p>The time as of when to read the governed table contents. If not set, the most recent transaction commit time is used. Cannot be specified along with <code>TransactionId</code>.</p>
    #
    # @option params [String] :partition_predicate
    #   <p>A predicate to filter the objects returned based on the partition keys defined in the governed table.</p>
    #   	        <ul>
    #               <li>
    #                  <p>The comparison operators supported are: =, >, <, >=, <=</p>
    #               </li>
    #               <li>
    #                  <p>The logical operators supported are: AND</p>
    #               </li>
    #               <li>
    #                  <p>The data types supported are integer, long, date(yyyy-MM-dd), timestamp(yyyy-MM-dd HH:mm:ssXXX or yyyy-MM-dd HH:mm:ss"), string and decimal.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies how many values to return in a page.</p>
    #
    # @option params [String] :next_token
    #   <p>A continuation token if this is not the first call to retrieve these objects.</p>
    #
    # @return [Types::GetTableObjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_objects(
    #     catalog_id: 'CatalogId',
    #     database_name: 'DatabaseName', # required
    #     table_name: 'TableName', # required
    #     transaction_id: 'TransactionId',
    #     query_as_of_time: Time.now,
    #     partition_predicate: 'PartitionPredicate',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTableObjectsOutput
    #   resp.data.objects #=> Array<PartitionObjects>
    #   resp.data.objects[0] #=> Types::PartitionObjects
    #   resp.data.objects[0].partition_values #=> Array<String>
    #   resp.data.objects[0].partition_values[0] #=> String
    #   resp.data.objects[0].objects #=> Array<TableObject>
    #   resp.data.objects[0].objects[0] #=> Types::TableObject
    #   resp.data.objects[0].objects[0].uri #=> String
    #   resp.data.objects[0].objects[0].e_tag #=> String
    #   resp.data.objects[0].objects[0].size #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_table_objects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTableObjectsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTableObjectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTableObjects
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::TransactionCommittedException, Errors::InvalidInputException, Errors::TransactionCanceledException, Errors::ResourceNotReadyException, Errors::EntityNotFoundException]),
        data_parser: Parsers::GetTableObjects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTableObjects,
        stubs: @stubs,
        params_class: Params::GetTableObjectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_table_objects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is identical to <code>GetTemporaryTableCredentials</code> except that this is used when the target Data Catalog resource is of type Partition.  Lake Formation restricts the permission of the vended credentials with the same scope down policy which restricts access to a single Amazon S3 prefix.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTemporaryGluePartitionCredentialsInput}.
    #
    # @option params [String] :table_arn
    #   <p>The ARN of the partitions' table.</p>
    #
    # @option params [PartitionValueList] :partition
    #   <p>A list of partition values identifying a single partition.</p>
    #
    # @option params [Array<String>] :permissions
    #   <p>Filters the request based on the user having been granted a list of specified permissions on the requested resource(s).</p>
    #
    # @option params [Integer] :duration_seconds
    #   <p>The time period, between 900 and 21,600 seconds, for the timeout of the temporary credentials.</p>
    #
    # @option params [AuditContext] :audit_context
    #   <p>A structure representing context to access a resource (column names, query ID, etc).</p>
    #
    # @option params [Array<String>] :supported_permission_types
    #   <p>A list of supported permission types for the partition. Valid values are <code>COLUMN_PERMISSION</code> and <code>CELL_FILTER_PERMISSION</code>.</p>
    #
    # @return [Types::GetTemporaryGluePartitionCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_temporary_glue_partition_credentials(
    #     table_arn: 'TableArn', # required
    #     partition: {
    #       values: [
    #         'member'
    #       ] # required
    #     }, # required
    #     permissions: [
    #       'ALL' # accepts ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_TAG", "ASSOCIATE"]
    #     ],
    #     duration_seconds: 1,
    #     audit_context: {
    #       additional_audit_context: 'AdditionalAuditContext'
    #     },
    #     supported_permission_types: [
    #       'COLUMN_PERMISSION' # accepts ["COLUMN_PERMISSION", "CELL_FILTER_PERMISSION"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTemporaryGluePartitionCredentialsOutput
    #   resp.data.access_key_id #=> String
    #   resp.data.secret_access_key #=> String
    #   resp.data.session_token #=> String
    #   resp.data.expiration #=> Time
    #
    def get_temporary_glue_partition_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTemporaryGluePartitionCredentialsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTemporaryGluePartitionCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTemporaryGluePartitionCredentials
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::PermissionTypeMismatchException, Errors::EntityNotFoundException]),
        data_parser: Parsers::GetTemporaryGluePartitionCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTemporaryGluePartitionCredentials,
        stubs: @stubs,
        params_class: Params::GetTemporaryGluePartitionCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_temporary_glue_partition_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows a caller in a secure environment to assume a role with permission to access Amazon S3. In order to vend such credentials, Lake Formation assumes the role associated with a registered location, for example an Amazon S3 bucket, with a scope down policy which restricts the access to a single prefix.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTemporaryGlueTableCredentialsInput}.
    #
    # @option params [String] :table_arn
    #   <p>The ARN identifying a table in the Data Catalog for the temporary credentials request.</p>
    #
    # @option params [Array<String>] :permissions
    #   <p>Filters the request based on the user having been granted a list of specified permissions on the requested resource(s).</p>
    #
    # @option params [Integer] :duration_seconds
    #   <p>The time period, between 900 and 21,600 seconds, for the timeout of the temporary credentials.</p>
    #
    # @option params [AuditContext] :audit_context
    #   <p>A structure representing context to access a resource (column names, query ID, etc).</p>
    #
    # @option params [Array<String>] :supported_permission_types
    #   <p>A list of supported permission types for the table. Valid values are <code>COLUMN_PERMISSION</code> and <code>CELL_FILTER_PERMISSION</code>.</p>
    #
    # @return [Types::GetTemporaryGlueTableCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_temporary_glue_table_credentials(
    #     table_arn: 'TableArn', # required
    #     permissions: [
    #       'ALL' # accepts ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_TAG", "ASSOCIATE"]
    #     ],
    #     duration_seconds: 1,
    #     audit_context: {
    #       additional_audit_context: 'AdditionalAuditContext'
    #     },
    #     supported_permission_types: [
    #       'COLUMN_PERMISSION' # accepts ["COLUMN_PERMISSION", "CELL_FILTER_PERMISSION"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTemporaryGlueTableCredentialsOutput
    #   resp.data.access_key_id #=> String
    #   resp.data.secret_access_key #=> String
    #   resp.data.session_token #=> String
    #   resp.data.expiration #=> Time
    #
    def get_temporary_glue_table_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTemporaryGlueTableCredentialsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTemporaryGlueTableCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTemporaryGlueTableCredentials
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::PermissionTypeMismatchException, Errors::EntityNotFoundException]),
        data_parser: Parsers::GetTemporaryGlueTableCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTemporaryGlueTableCredentials,
        stubs: @stubs,
        params_class: Params::GetTemporaryGlueTableCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_temporary_glue_table_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the work units resulting from the query. Work units can be executed in any order and in parallel. </p>
    #
    # @param [Hash] params
    #   See {Types::GetWorkUnitResultsInput}.
    #
    # @option params [String] :query_id
    #   <p>The ID of the plan query operation for which to get results.</p>
    #
    # @option params [Integer] :work_unit_id
    #   <p>The work unit ID for which to get results. Value generated by enumerating <code>WorkUnitIdMin</code> to <code>WorkUnitIdMax</code> (inclusive) from the <code>WorkUnitRange</code> in the output of <code>GetWorkUnits</code>.</p>
    #
    # @option params [String] :work_unit_token
    #   <p>A work token used to query the execution service. Token output from <code>GetWorkUnits</code>.</p>
    #
    # @return [Types::GetWorkUnitResultsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_work_unit_results(
    #     query_id: 'QueryId', # required
    #     work_unit_id: 1, # required
    #     work_unit_token: 'WorkUnitToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWorkUnitResultsOutput
    #   resp.data.result_stream #=> String
    #
    def get_work_unit_results(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWorkUnitResultsInput.build(params)
      response_body = output_stream(options, &block)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWorkUnitResultsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "data-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWorkUnitResults
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ExpiredException, Errors::AccessDeniedException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::ThrottledException]),
        data_parser: Parsers::GetWorkUnitResults
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWorkUnitResults,
        stubs: @stubs,
        params_class: Params::GetWorkUnitResultsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_work_unit_results
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the work units generated by the <code>StartQueryPlanning</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWorkUnitsInput}.
    #
    # @option params [String] :next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The size of each page to get in the Amazon Web Services service call. This does not affect the number of items returned in the command's output. Setting a smaller page size results in more calls to the Amazon Web Services service, retrieving fewer items in each call. This can help prevent the Amazon Web Services service calls from timing out.</p>
    #
    # @option params [String] :query_id
    #   <p>The ID of the plan query operation.</p>
    #
    # @return [Types::GetWorkUnitsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_work_units(
    #     next_token: 'NextToken',
    #     page_size: 1,
    #     query_id: 'QueryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWorkUnitsOutput
    #   resp.data.next_token #=> String
    #   resp.data.query_id #=> String
    #   resp.data.work_unit_ranges #=> Array<WorkUnitRange>
    #   resp.data.work_unit_ranges[0] #=> Types::WorkUnitRange
    #   resp.data.work_unit_ranges[0].work_unit_id_max #=> Integer
    #   resp.data.work_unit_ranges[0].work_unit_id_min #=> Integer
    #   resp.data.work_unit_ranges[0].work_unit_token #=> String
    #
    def get_work_units(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWorkUnitsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWorkUnitsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "query-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWorkUnits
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ExpiredException, Errors::AccessDeniedException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::WorkUnitsNotReadyYetException]),
        data_parser: Parsers::GetWorkUnits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWorkUnits,
        stubs: @stubs,
        params_class: Params::GetWorkUnitsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_work_units
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Grants permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3.</p>
    # 	        <p>For information about permissions, see <a href="https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html">Security and Access Control to Metadata and Data</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GrantPermissionsInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [DataLakePrincipal] :principal
    #   <p>The principal to be granted the permissions on the resource. Supported principals are IAM users or IAM roles, and they are defined by their principal type and their ARN.</p>
    #   	        <p>Note that if you define a resource with a particular ARN, then later delete, and recreate a resource with that same ARN, the resource maintains the permissions already granted. </p>
    #
    # @option params [Resource] :resource
    #   <p>The resource to which permissions are to be granted. Resources in Lake Formation are the Data Catalog, databases, and tables.</p>
    #
    # @option params [Array<String>] :permissions
    #   <p>The permissions granted to the principal on the resource. Lake Formation defines privileges to grant and revoke access to metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. Lake Formation requires that each principal be authorized to perform a specific task on Lake Formation resources. </p>
    #
    # @option params [Array<String>] :permissions_with_grant_option
    #   <p>Indicates a list of the granted permissions that the principal may pass to other users. These permissions may only be a subset of the permissions granted in the <code>Privileges</code>.</p>
    #
    # @return [Types::GrantPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.grant_permissions(
    #     catalog_id: 'CatalogId',
    #     principal: {
    #       data_lake_principal_identifier: 'DataLakePrincipalIdentifier'
    #     }, # required
    #     resource: {
    #       catalog: { },
    #       database: {
    #         catalog_id: 'CatalogId',
    #         name: 'Name' # required
    #       },
    #       table: {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         name: 'Name',
    #         table_wildcard: { }
    #       },
    #       table_with_columns: {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         name: 'Name', # required
    #         column_names: [
    #           'member'
    #         ],
    #         column_wildcard: {
    #         }
    #       },
    #       data_location: {
    #         catalog_id: 'CatalogId',
    #         resource_arn: 'ResourceArn' # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: 'TableCatalogId',
    #         database_name: 'DatabaseName',
    #         table_name: 'TableName',
    #         name: 'Name'
    #       },
    #       lf_tag: {
    #         catalog_id: 'CatalogId',
    #         tag_key: 'TagKey', # required
    #         tag_values: [
    #           'member'
    #         ] # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: 'CatalogId',
    #         resource_type: 'DATABASE', # required - accepts ["DATABASE", "TABLE"]
    #         expression: [
    #           {
    #             tag_key: 'TagKey', # required
    #           }
    #         ] # required
    #       }
    #     }, # required
    #     permissions: [
    #       'ALL' # accepts ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_TAG", "ASSOCIATE"]
    #     ], # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GrantPermissionsOutput
    #
    def grant_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GrantPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GrantPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GrantPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ConcurrentModificationException, Errors::EntityNotFoundException]),
        data_parser: Parsers::GrantPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GrantPermissions,
        stubs: @stubs,
        params_class: Params::GrantPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :grant_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the data cell filters on a table.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDataCellsFilterInput}.
    #
    # @option params [TableResource] :table
    #   <p>A table in the Glue Data Catalog.</p>
    #
    # @option params [String] :next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum size of the response.</p>
    #
    # @return [Types::ListDataCellsFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_cells_filter(
    #     table: {
    #       catalog_id: 'CatalogId',
    #       database_name: 'DatabaseName', # required
    #       name: 'Name',
    #       table_wildcard: { }
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataCellsFilterOutput
    #   resp.data.data_cells_filters #=> Array<DataCellsFilter>
    #   resp.data.data_cells_filters[0] #=> Types::DataCellsFilter
    #   resp.data.data_cells_filters[0].table_catalog_id #=> String
    #   resp.data.data_cells_filters[0].database_name #=> String
    #   resp.data.data_cells_filters[0].table_name #=> String
    #   resp.data.data_cells_filters[0].name #=> String
    #   resp.data.data_cells_filters[0].row_filter #=> Types::RowFilter
    #   resp.data.data_cells_filters[0].row_filter.filter_expression #=> String
    #   resp.data.data_cells_filters[0].row_filter.all_rows_wildcard #=> Types::AllRowsWildcard
    #   resp.data.data_cells_filters[0].column_names #=> Array<String>
    #   resp.data.data_cells_filters[0].column_names[0] #=> String
    #   resp.data.data_cells_filters[0].column_wildcard #=> Types::ColumnWildcard
    #   resp.data.data_cells_filters[0].column_wildcard.excluded_column_names #=> Array<String>
    #   resp.data.next_token #=> String
    #
    def list_data_cells_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataCellsFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataCellsFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataCellsFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException]),
        data_parser: Parsers::ListDataCellsFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataCellsFilter,
        stubs: @stubs,
        params_class: Params::ListDataCellsFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_data_cells_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists LF-tags that the requester has permission to view. </p>
    #
    # @param [Hash] params
    #   See {Types::ListLFTagsInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [String] :resource_share_type
    #   <p>If resource share type is <code>ALL</code>, returns both in-account LF-tags and shared LF-tags that the requester has permission to view. If resource share type is <code>FOREIGN</code>, returns all share LF-tags that the requester can view. If no resource share type is passed, lists LF-tags in the given catalog ID that the requester has permission to view.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #
    # @return [Types::ListLFTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lf_tags(
    #     catalog_id: 'CatalogId',
    #     resource_share_type: 'FOREIGN', # accepts ["FOREIGN", "ALL"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLFTagsOutput
    #   resp.data.lf_tags #=> Array<LFTagPair>
    #   resp.data.lf_tags[0] #=> Types::LFTagPair
    #   resp.data.lf_tags[0].catalog_id #=> String
    #   resp.data.lf_tags[0].tag_key #=> String
    #   resp.data.lf_tags[0].tag_values #=> Array<String>
    #   resp.data.lf_tags[0].tag_values[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_lf_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLFTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLFTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLFTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::ListLFTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLFTags,
        stubs: @stubs,
        params_class: Params::ListLFTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_lf_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the principal permissions on the resource, filtered by the permissions of the caller. For example, if you are granted an ALTER permission, you are able to see only the principal permissions for ALTER.</p>
    # 	        <p>This operation returns only those permissions that have been explicitly granted.</p>
    # 	        <p>For information about permissions, see <a href="https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html">Security and Access Control to Metadata and Data</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPermissionsInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [DataLakePrincipal] :principal
    #   <p>Specifies a principal to filter the permissions returned.</p>
    #
    # @option params [String] :resource_type
    #   <p>Specifies a resource type to filter the permissions returned.</p>
    #
    # @option params [Resource] :resource
    #   <p>A resource where you will get a list of the principal permissions.</p>
    #            <p>This operation does not support getting privileges on a table with columns. Instead, call this operation on the table, and the operation returns the table and the table w columns.</p>
    #
    # @option params [String] :next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :include_related
    #   <p>Indicates that related permissions should be included in the results.</p>
    #
    # @return [Types::ListPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permissions(
    #     catalog_id: 'CatalogId',
    #     principal: {
    #       data_lake_principal_identifier: 'DataLakePrincipalIdentifier'
    #     },
    #     resource_type: 'CATALOG', # accepts ["CATALOG", "DATABASE", "TABLE", "DATA_LOCATION", "LF_TAG", "LF_TAG_POLICY", "LF_TAG_POLICY_DATABASE", "LF_TAG_POLICY_TABLE"]
    #     resource: {
    #       catalog: { },
    #       database: {
    #         catalog_id: 'CatalogId',
    #         name: 'Name' # required
    #       },
    #       table: {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         name: 'Name',
    #         table_wildcard: { }
    #       },
    #       table_with_columns: {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         name: 'Name', # required
    #         column_names: [
    #           'member'
    #         ],
    #         column_wildcard: {
    #         }
    #       },
    #       data_location: {
    #         catalog_id: 'CatalogId',
    #         resource_arn: 'ResourceArn' # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: 'TableCatalogId',
    #         database_name: 'DatabaseName',
    #         table_name: 'TableName',
    #         name: 'Name'
    #       },
    #       lf_tag: {
    #         catalog_id: 'CatalogId',
    #         tag_key: 'TagKey', # required
    #         tag_values: [
    #           'member'
    #         ] # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: 'CatalogId',
    #         resource_type: 'DATABASE', # required - accepts ["DATABASE", "TABLE"]
    #         expression: [
    #           {
    #             tag_key: 'TagKey', # required
    #           }
    #         ] # required
    #       }
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     include_related: 'IncludeRelated'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPermissionsOutput
    #   resp.data.principal_resource_permissions #=> Array<PrincipalResourcePermissions>
    #   resp.data.principal_resource_permissions[0] #=> Types::PrincipalResourcePermissions
    #   resp.data.principal_resource_permissions[0].principal #=> Types::DataLakePrincipal
    #   resp.data.principal_resource_permissions[0].principal.data_lake_principal_identifier #=> String
    #   resp.data.principal_resource_permissions[0].resource #=> Types::Resource
    #   resp.data.principal_resource_permissions[0].resource.catalog #=> Types::CatalogResource
    #   resp.data.principal_resource_permissions[0].resource.database #=> Types::DatabaseResource
    #   resp.data.principal_resource_permissions[0].resource.database.catalog_id #=> String
    #   resp.data.principal_resource_permissions[0].resource.database.name #=> String
    #   resp.data.principal_resource_permissions[0].resource.table #=> Types::TableResource
    #   resp.data.principal_resource_permissions[0].resource.table.catalog_id #=> String
    #   resp.data.principal_resource_permissions[0].resource.table.database_name #=> String
    #   resp.data.principal_resource_permissions[0].resource.table.name #=> String
    #   resp.data.principal_resource_permissions[0].resource.table.table_wildcard #=> Types::TableWildcard
    #   resp.data.principal_resource_permissions[0].resource.table_with_columns #=> Types::TableWithColumnsResource
    #   resp.data.principal_resource_permissions[0].resource.table_with_columns.catalog_id #=> String
    #   resp.data.principal_resource_permissions[0].resource.table_with_columns.database_name #=> String
    #   resp.data.principal_resource_permissions[0].resource.table_with_columns.name #=> String
    #   resp.data.principal_resource_permissions[0].resource.table_with_columns.column_names #=> Array<String>
    #   resp.data.principal_resource_permissions[0].resource.table_with_columns.column_names[0] #=> String
    #   resp.data.principal_resource_permissions[0].resource.table_with_columns.column_wildcard #=> Types::ColumnWildcard
    #   resp.data.principal_resource_permissions[0].resource.table_with_columns.column_wildcard.excluded_column_names #=> Array<String>
    #   resp.data.principal_resource_permissions[0].resource.data_location #=> Types::DataLocationResource
    #   resp.data.principal_resource_permissions[0].resource.data_location.catalog_id #=> String
    #   resp.data.principal_resource_permissions[0].resource.data_location.resource_arn #=> String
    #   resp.data.principal_resource_permissions[0].resource.data_cells_filter #=> Types::DataCellsFilterResource
    #   resp.data.principal_resource_permissions[0].resource.data_cells_filter.table_catalog_id #=> String
    #   resp.data.principal_resource_permissions[0].resource.data_cells_filter.database_name #=> String
    #   resp.data.principal_resource_permissions[0].resource.data_cells_filter.table_name #=> String
    #   resp.data.principal_resource_permissions[0].resource.data_cells_filter.name #=> String
    #   resp.data.principal_resource_permissions[0].resource.lf_tag #=> Types::LFTagKeyResource
    #   resp.data.principal_resource_permissions[0].resource.lf_tag.catalog_id #=> String
    #   resp.data.principal_resource_permissions[0].resource.lf_tag.tag_key #=> String
    #   resp.data.principal_resource_permissions[0].resource.lf_tag.tag_values #=> Array<String>
    #   resp.data.principal_resource_permissions[0].resource.lf_tag.tag_values[0] #=> String
    #   resp.data.principal_resource_permissions[0].resource.lf_tag_policy #=> Types::LFTagPolicyResource
    #   resp.data.principal_resource_permissions[0].resource.lf_tag_policy.catalog_id #=> String
    #   resp.data.principal_resource_permissions[0].resource.lf_tag_policy.resource_type #=> String, one of ["DATABASE", "TABLE"]
    #   resp.data.principal_resource_permissions[0].resource.lf_tag_policy.expression #=> Array<LFTag>
    #   resp.data.principal_resource_permissions[0].resource.lf_tag_policy.expression[0] #=> Types::LFTag
    #   resp.data.principal_resource_permissions[0].resource.lf_tag_policy.expression[0].tag_key #=> String
    #   resp.data.principal_resource_permissions[0].resource.lf_tag_policy.expression[0].tag_values #=> Array<String>
    #   resp.data.principal_resource_permissions[0].permissions #=> Array<String>
    #   resp.data.principal_resource_permissions[0].permissions[0] #=> String, one of ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_TAG", "ASSOCIATE"]
    #   resp.data.principal_resource_permissions[0].permissions_with_grant_option #=> Array<String>
    #   resp.data.principal_resource_permissions[0].additional_details #=> Types::DetailsMap
    #   resp.data.principal_resource_permissions[0].additional_details.resource_share #=> Array<String>
    #   resp.data.principal_resource_permissions[0].additional_details.resource_share[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException]),
        data_parser: Parsers::ListPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPermissions,
        stubs: @stubs,
        params_class: Params::ListPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the resources registered to be managed by the Data Catalog.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResourcesInput}.
    #
    # @option params [Array<FilterCondition>] :filter_condition_list
    #   <p>Any applicable row-level and/or column-level filtering conditions for the resources.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of resource results.</p>
    #
    # @option params [String] :next_token
    #   <p>A continuation token, if this is not the first call to retrieve these resources.</p>
    #
    # @return [Types::ListResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources(
    #     filter_condition_list: [
    #       {
    #         field: 'RESOURCE_ARN', # accepts ["RESOURCE_ARN", "ROLE_ARN", "LAST_MODIFIED"]
    #         comparison_operator: 'EQ', # accepts ["EQ", "NE", "LE", "LT", "GE", "GT", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH", "IN", "BETWEEN"]
    #         string_value_list: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourcesOutput
    #   resp.data.resource_info_list #=> Array<ResourceInfo>
    #   resp.data.resource_info_list[0] #=> Types::ResourceInfo
    #   resp.data.resource_info_list[0].resource_arn #=> String
    #   resp.data.resource_info_list[0].role_arn #=> String
    #   resp.data.resource_info_list[0].last_modified #=> Time
    #   resp.data.next_token #=> String
    #
    def list_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException]),
        data_parser: Parsers::ListResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResources,
        stubs: @stubs,
        params_class: Params::ListResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the configuration of all storage optimizers associated with a specified table.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTableStorageOptimizersInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The Catalog ID of the table.</p>
    #
    # @option params [String] :database_name
    #   <p>Name of the database where the table is present.</p>
    #
    # @option params [String] :table_name
    #   <p>Name of the table.</p>
    #
    # @option params [String] :storage_optimizer_type
    #   <p>The specific type of storage optimizers to list. The supported value is <code>compaction</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of storage optimizers to return on each call.</p>
    #
    # @option params [String] :next_token
    #   <p>A continuation token, if this is a continuation call.</p>
    #
    # @return [Types::ListTableStorageOptimizersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_table_storage_optimizers(
    #     catalog_id: 'CatalogId',
    #     database_name: 'DatabaseName', # required
    #     table_name: 'TableName', # required
    #     storage_optimizer_type: 'COMPACTION', # accepts ["COMPACTION", "GARBAGE_COLLECTION", "ALL"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTableStorageOptimizersOutput
    #   resp.data.storage_optimizer_list #=> Array<StorageOptimizer>
    #   resp.data.storage_optimizer_list[0] #=> Types::StorageOptimizer
    #   resp.data.storage_optimizer_list[0].storage_optimizer_type #=> String, one of ["COMPACTION", "GARBAGE_COLLECTION", "ALL"]
    #   resp.data.storage_optimizer_list[0].config #=> Hash<String, String>
    #   resp.data.storage_optimizer_list[0].config['key'] #=> String
    #   resp.data.storage_optimizer_list[0].error_message #=> String
    #   resp.data.storage_optimizer_list[0].warnings #=> String
    #   resp.data.storage_optimizer_list[0].last_run_details #=> String
    #   resp.data.next_token #=> String
    #
    def list_table_storage_optimizers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTableStorageOptimizersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTableStorageOptimizersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTableStorageOptimizers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::ListTableStorageOptimizers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTableStorageOptimizers,
        stubs: @stubs,
        params_class: Params::ListTableStorageOptimizersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_table_storage_optimizers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata about transactions and their status. To prevent the response from growing indefinitely, only uncommitted transactions and those available for time-travel queries are returned.</p>
    # 	        <p>This operation can help you identify uncommitted transactions or to get information about transactions.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTransactionsInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The catalog for which to list transactions. Defaults to the account ID of the caller.</p>
    #
    # @option params [String] :status_filter
    #   <p> A filter indicating the status of transactions to return. Options are ALL | COMPLETED | COMMITTED | ABORTED | ACTIVE. The default is <code>ALL</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of transactions to return in a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>A continuation token if this is not the first call to retrieve transactions.</p>
    #
    # @return [Types::ListTransactionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_transactions(
    #     catalog_id: 'CatalogId',
    #     status_filter: 'ALL', # accepts ["ALL", "COMPLETED", "ACTIVE", "COMMITTED", "ABORTED"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTransactionsOutput
    #   resp.data.transactions #=> Array<TransactionDescription>
    #   resp.data.transactions[0] #=> Types::TransactionDescription
    #   resp.data.transactions[0].transaction_id #=> String
    #   resp.data.transactions[0].transaction_status #=> String, one of ["ACTIVE", "COMMITTED", "ABORTED", "COMMIT_IN_PROGRESS"]
    #   resp.data.transactions[0].transaction_start_time #=> Time
    #   resp.data.transactions[0].transaction_end_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_transactions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTransactionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTransactionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTransactions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException]),
        data_parser: Parsers::ListTransactions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTransactions,
        stubs: @stubs,
        params_class: Params::ListTransactionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_transactions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the list of data lake administrators who have admin privileges on all resources managed by Lake Formation. For more information on admin privileges, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/lake-formation-permissions.html">Granting Lake Formation Permissions</a>.</p>
    # 	
    # 	        <p>This API replaces the current list of data lake admins with the new list being passed. To add an admin, fetch the current list and add the new admin to that list and pass that list in this API.</p>
    #
    # @param [Hash] params
    #   See {Types::PutDataLakeSettingsInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [DataLakeSettings] :data_lake_settings
    #   <p>A structure representing a list of Lake Formation principals designated as data lake administrators.</p>
    #
    # @return [Types::PutDataLakeSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_data_lake_settings(
    #     catalog_id: 'CatalogId',
    #     data_lake_settings: {
    #       data_lake_admins: [
    #         {
    #           data_lake_principal_identifier: 'DataLakePrincipalIdentifier'
    #         }
    #       ],
    #       create_database_default_permissions: [
    #         {
    #           permissions: [
    #             'ALL' # accepts ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_TAG", "ASSOCIATE"]
    #           ]
    #         }
    #       ],
    #       trusted_resource_owners: [
    #         'member'
    #       ],
    #       allow_external_data_filtering: false,
    #       authorized_session_tag_value_list: [
    #         'member'
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutDataLakeSettingsOutput
    #
    def put_data_lake_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutDataLakeSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutDataLakeSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutDataLakeSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException, Errors::InvalidInputException]),
        data_parser: Parsers::PutDataLakeSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutDataLakeSettings,
        stubs: @stubs,
        params_class: Params::PutDataLakeSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_data_lake_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers the resource as managed by the Data Catalog.</p>
    # 	
    #          <p>To add or update data, Lake Formation needs read/write access to the chosen Amazon S3 path. Choose a role that you know has permission to do this, or choose the AWSServiceRoleForLakeFormationDataAccess service-linked role. When you register the first Amazon S3 path, the service-linked role and a new inline policy are created on your behalf. Lake Formation adds the first path to the inline policy and attaches it to the service-linked role. When you register subsequent paths, Lake Formation adds the path to the existing policy.</p>
    #
    #          <p>The following request registers a new location and gives Lake Formation permission to use the service-linked role to access that location.</p>
    #
    #          <p>
    #             <code>ResourceArn = arn:aws:s3:::my-bucket
    # UseServiceLinkedRole = true</code>
    #          </p>
    # 	
    # 	        <p>If <code>UseServiceLinkedRole</code> is not set to true, you must provide or set the <code>RoleArn</code>:</p>
    # 	
    #          <p>
    #             <code>arn:aws:iam::12345:role/my-data-access-role</code>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::RegisterResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to register.</p>
    #
    # @option params [Boolean] :use_service_linked_role
    #   <p>Designates an Identity and Access Management (IAM) service-linked role by registering this role with the Data Catalog. A service-linked role is a unique type of IAM role that is linked directly to Lake Formation.</p>
    #
    #            <p>For more information, see <a href="https://docs-aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html">Using Service-Linked Roles for Lake Formation</a>.</p>
    #
    # @option params [String] :role_arn
    #   <p>The identifier for the role that registers the resource.</p>
    #
    # @return [Types::RegisterResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_resource(
    #     resource_arn: 'ResourceArn', # required
    #     use_service_linked_role: false,
    #     role_arn: 'RoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterResourceOutput
    #
    def register_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNumberLimitExceededException, Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::AlreadyExistsException, Errors::EntityNotFoundException]),
        data_parser: Parsers::RegisterResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterResource,
        stubs: @stubs,
        params_class: Params::RegisterResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an LF-tag from the resource. Only database, table, or tableWithColumns resource are allowed. To tag columns, use the column inclusion list in <code>tableWithColumns</code> to specify column input.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveLFTagsFromResourceInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [Resource] :resource
    #   <p>The database, table, or column resource where you want to remove an LF-tag.</p>
    #
    # @option params [Array<LFTagPair>] :lf_tags
    #   <p>The LF-tags to be removed from the resource.</p>
    #
    # @return [Types::RemoveLFTagsFromResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_lf_tags_from_resource(
    #     catalog_id: 'CatalogId',
    #     resource: {
    #       catalog: { },
    #       database: {
    #         catalog_id: 'CatalogId',
    #         name: 'Name' # required
    #       },
    #       table: {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         name: 'Name',
    #         table_wildcard: { }
    #       },
    #       table_with_columns: {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         name: 'Name', # required
    #         column_names: [
    #           'member'
    #         ],
    #         column_wildcard: {
    #         }
    #       },
    #       data_location: {
    #         catalog_id: 'CatalogId',
    #         resource_arn: 'ResourceArn' # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: 'TableCatalogId',
    #         database_name: 'DatabaseName',
    #         table_name: 'TableName',
    #         name: 'Name'
    #       },
    #       lf_tag: {
    #         catalog_id: 'CatalogId',
    #         tag_key: 'TagKey', # required
    #         tag_values: [
    #           'member'
    #         ] # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: 'CatalogId',
    #         resource_type: 'DATABASE', # required - accepts ["DATABASE", "TABLE"]
    #         expression: [
    #           {
    #             tag_key: 'TagKey', # required
    #           }
    #         ] # required
    #       }
    #     }, # required
    #     lf_tags: [
    #       {
    #         catalog_id: 'CatalogId',
    #         tag_key: 'TagKey', # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveLFTagsFromResourceOutput
    #   resp.data.failures #=> Array<LFTagError>
    #   resp.data.failures[0] #=> Types::LFTagError
    #   resp.data.failures[0].lf_tag #=> Types::LFTagPair
    #   resp.data.failures[0].lf_tag.catalog_id #=> String
    #   resp.data.failures[0].lf_tag.tag_key #=> String
    #   resp.data.failures[0].lf_tag.tag_values #=> Array<String>
    #   resp.data.failures[0].lf_tag.tag_values[0] #=> String
    #   resp.data.failures[0].error #=> Types::ErrorDetail
    #   resp.data.failures[0].error.error_code #=> String
    #   resp.data.failures[0].error.error_message #=> String
    #
    def remove_lf_tags_from_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveLFTagsFromResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveLFTagsFromResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveLFTagsFromResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::GlueEncryptionException, Errors::InvalidInputException, Errors::ConcurrentModificationException, Errors::EntityNotFoundException]),
        data_parser: Parsers::RemoveLFTagsFromResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveLFTagsFromResource,
        stubs: @stubs,
        params_class: Params::RemoveLFTagsFromResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_lf_tags_from_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Revokes permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3.</p>
    #
    # @param [Hash] params
    #   See {Types::RevokePermissionsInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [DataLakePrincipal] :principal
    #   <p>The principal to be revoked permissions on the resource.</p>
    #
    # @option params [Resource] :resource
    #   <p>The resource to which permissions are to be revoked.</p>
    #
    # @option params [Array<String>] :permissions
    #   <p>The permissions revoked to the principal on the resource. For information about permissions, see <a href="https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html">Security
    #         and Access Control to Metadata and Data</a>.</p>
    #
    # @option params [Array<String>] :permissions_with_grant_option
    #   <p>Indicates a list of permissions for which to revoke the grant option allowing the principal to pass permissions to other principals.</p>
    #
    # @return [Types::RevokePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_permissions(
    #     catalog_id: 'CatalogId',
    #     principal: {
    #       data_lake_principal_identifier: 'DataLakePrincipalIdentifier'
    #     }, # required
    #     resource: {
    #       catalog: { },
    #       database: {
    #         catalog_id: 'CatalogId',
    #         name: 'Name' # required
    #       },
    #       table: {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         name: 'Name',
    #         table_wildcard: { }
    #       },
    #       table_with_columns: {
    #         catalog_id: 'CatalogId',
    #         database_name: 'DatabaseName', # required
    #         name: 'Name', # required
    #         column_names: [
    #           'member'
    #         ],
    #         column_wildcard: {
    #         }
    #       },
    #       data_location: {
    #         catalog_id: 'CatalogId',
    #         resource_arn: 'ResourceArn' # required
    #       },
    #       data_cells_filter: {
    #         table_catalog_id: 'TableCatalogId',
    #         database_name: 'DatabaseName',
    #         table_name: 'TableName',
    #         name: 'Name'
    #       },
    #       lf_tag: {
    #         catalog_id: 'CatalogId',
    #         tag_key: 'TagKey', # required
    #         tag_values: [
    #           'member'
    #         ] # required
    #       },
    #       lf_tag_policy: {
    #         catalog_id: 'CatalogId',
    #         resource_type: 'DATABASE', # required - accepts ["DATABASE", "TABLE"]
    #         expression: [
    #           {
    #             tag_key: 'TagKey', # required
    #           }
    #         ] # required
    #       }
    #     }, # required
    #     permissions: [
    #       'ALL' # accepts ["ALL", "SELECT", "ALTER", "DROP", "DELETE", "INSERT", "DESCRIBE", "CREATE_DATABASE", "CREATE_TABLE", "DATA_LOCATION_ACCESS", "CREATE_TAG", "ASSOCIATE"]
    #     ], # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RevokePermissionsOutput
    #
    def revoke_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RevokePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RevokePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RevokePermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ConcurrentModificationException, Errors::EntityNotFoundException]),
        data_parser: Parsers::RevokePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RevokePermissions,
        stubs: @stubs,
        params_class: Params::RevokePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :revoke_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation allows a search on <code>DATABASE</code> resources by <code>TagCondition</code>. This operation is used by admins who want to grant user permissions on certain <code>TagConditions</code>. Before making a grant, the admin can use <code>SearchDatabasesByTags</code> to find all resources where the given <code>TagConditions</code> are valid to verify whether the returned resources can be shared.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchDatabasesByLFTagsInput}.
    #
    # @option params [String] :next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [Array<LFTag>] :expression
    #   <p>A list of conditions (<code>LFTag</code> structures) to search for in database resources.</p>
    #
    # @return [Types::SearchDatabasesByLFTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_databases_by_lf_tags(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     catalog_id: 'CatalogId',
    #     expression: [
    #       {
    #         tag_key: 'TagKey', # required
    #         tag_values: [
    #           'member'
    #         ] # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchDatabasesByLFTagsOutput
    #   resp.data.next_token #=> String
    #   resp.data.database_list #=> Array<TaggedDatabase>
    #   resp.data.database_list[0] #=> Types::TaggedDatabase
    #   resp.data.database_list[0].database #=> Types::DatabaseResource
    #   resp.data.database_list[0].database.catalog_id #=> String
    #   resp.data.database_list[0].database.name #=> String
    #   resp.data.database_list[0].lf_tags #=> Array<LFTagPair>
    #   resp.data.database_list[0].lf_tags[0] #=> Types::LFTagPair
    #   resp.data.database_list[0].lf_tags[0].catalog_id #=> String
    #   resp.data.database_list[0].lf_tags[0].tag_key #=> String
    #   resp.data.database_list[0].lf_tags[0].tag_values #=> Array<String>
    #   resp.data.database_list[0].lf_tags[0].tag_values[0] #=> String
    #
    def search_databases_by_lf_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchDatabasesByLFTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchDatabasesByLFTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchDatabasesByLFTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::GlueEncryptionException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::SearchDatabasesByLFTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchDatabasesByLFTags,
        stubs: @stubs,
        params_class: Params::SearchDatabasesByLFTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_databases_by_lf_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation allows a search on <code>TABLE</code> resources by <code>LFTag</code>s. This will be used by admins who want to grant user permissions on certain LF-tags. Before making a grant, the admin can use <code>SearchTablesByLFTags</code> to find all resources where the given <code>LFTag</code>s are valid to verify whether the returned resources can be shared.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchTablesByLFTagsInput}.
    #
    # @option params [String] :next_token
    #   <p>A continuation token, if this is not the first call to retrieve this list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [Array<LFTag>] :expression
    #   <p>A list of conditions (<code>LFTag</code> structures) to search for in table resources.</p>
    #
    # @return [Types::SearchTablesByLFTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_tables_by_lf_tags(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     catalog_id: 'CatalogId',
    #     expression: [
    #       {
    #         tag_key: 'TagKey', # required
    #         tag_values: [
    #           'member'
    #         ] # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchTablesByLFTagsOutput
    #   resp.data.next_token #=> String
    #   resp.data.table_list #=> Array<TaggedTable>
    #   resp.data.table_list[0] #=> Types::TaggedTable
    #   resp.data.table_list[0].table #=> Types::TableResource
    #   resp.data.table_list[0].table.catalog_id #=> String
    #   resp.data.table_list[0].table.database_name #=> String
    #   resp.data.table_list[0].table.name #=> String
    #   resp.data.table_list[0].table.table_wildcard #=> Types::TableWildcard
    #   resp.data.table_list[0].lf_tag_on_database #=> Array<LFTagPair>
    #   resp.data.table_list[0].lf_tag_on_database[0] #=> Types::LFTagPair
    #   resp.data.table_list[0].lf_tag_on_database[0].catalog_id #=> String
    #   resp.data.table_list[0].lf_tag_on_database[0].tag_key #=> String
    #   resp.data.table_list[0].lf_tag_on_database[0].tag_values #=> Array<String>
    #   resp.data.table_list[0].lf_tag_on_database[0].tag_values[0] #=> String
    #   resp.data.table_list[0].lf_tags_on_table #=> Array<LFTagPair>
    #   resp.data.table_list[0].lf_tags_on_columns #=> Array<ColumnLFTag>
    #   resp.data.table_list[0].lf_tags_on_columns[0] #=> Types::ColumnLFTag
    #   resp.data.table_list[0].lf_tags_on_columns[0].name #=> String
    #   resp.data.table_list[0].lf_tags_on_columns[0].lf_tags #=> Array<LFTagPair>
    #
    def search_tables_by_lf_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchTablesByLFTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchTablesByLFTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchTablesByLFTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::GlueEncryptionException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::SearchTablesByLFTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchTablesByLFTags,
        stubs: @stubs,
        params_class: Params::SearchTablesByLFTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_tables_by_lf_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Submits a request to process a query statement.</p>
    # 	
    # 	        <p>This operation generates work units that can be retrieved with the <code>GetWorkUnits</code> operation as soon as the query state is WORKUNITS_AVAILABLE or FINISHED.</p>
    #
    # @param [Hash] params
    #   See {Types::StartQueryPlanningInput}.
    #
    # @option params [QueryPlanningContext] :query_planning_context
    #   <p>A structure containing information about the query plan.</p>
    #
    # @option params [String] :query_string
    #   <p>A PartiQL query statement used as an input to the planner service.</p>
    #
    # @return [Types::StartQueryPlanningOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_query_planning(
    #     query_planning_context: {
    #       catalog_id: 'CatalogId',
    #       database_name: 'DatabaseName', # required
    #       query_as_of_time: Time.now,
    #       query_parameters: {
    #         'key' => 'value'
    #       },
    #       transaction_id: 'TransactionId'
    #     }, # required
    #     query_string: 'QueryString' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartQueryPlanningOutput
    #   resp.data.query_id #=> String
    #
    def start_query_planning(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartQueryPlanningInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartQueryPlanningInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "query-",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartQueryPlanning
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::ThrottledException]),
        data_parser: Parsers::StartQueryPlanning
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartQueryPlanning,
        stubs: @stubs,
        params_class: Params::StartQueryPlanningOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_query_planning
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a new transaction and returns its transaction ID. Transaction IDs are opaque objects that you can use to identify a transaction.</p>
    #
    # @param [Hash] params
    #   See {Types::StartTransactionInput}.
    #
    # @option params [String] :transaction_type
    #   <p>Indicates whether this transaction should be read only or read and write. Writes made using a read-only transaction ID will be rejected. Read-only transactions do not need to be committed. </p>
    #
    # @return [Types::StartTransactionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_transaction(
    #     transaction_type: 'READ_AND_WRITE' # accepts ["READ_AND_WRITE", "READ_ONLY"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartTransactionOutput
    #   resp.data.transaction_id #=> String
    #
    def start_transaction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartTransactionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartTransactionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartTransaction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::InternalServiceException]),
        data_parser: Parsers::StartTransaction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartTransaction,
        stubs: @stubs,
        params_class: Params::StartTransactionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_transaction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the list of possible values for the specified LF-tag key. If the LF-tag does not exist, the operation throws an EntityNotFoundException. The values in the delete key values will be deleted from list of possible values. If any value in the delete key values is attached to a resource, then API errors out with a 400 Exception - "Update not allowed". Untag the attribute before deleting the LF-tag key's value. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLFTagInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. </p>
    #
    # @option params [String] :tag_key
    #   <p>The key-name for the LF-tag for which to add or delete values.</p>
    #
    # @option params [Array<String>] :tag_values_to_delete
    #   <p>A list of LF-tag values to delete from the LF-tag.</p>
    #
    # @option params [Array<String>] :tag_values_to_add
    #   <p>A list of LF-tag values to add from the LF-tag.</p>
    #
    # @return [Types::UpdateLFTagOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_lf_tag(
    #     catalog_id: 'CatalogId',
    #     tag_key: 'TagKey', # required
    #     tag_values_to_delete: [
    #       'member'
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLFTagOutput
    #
    def update_lf_tag(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLFTagInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLFTagInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLFTag
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::ConcurrentModificationException, Errors::EntityNotFoundException]),
        data_parser: Parsers::UpdateLFTag
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLFTag,
        stubs: @stubs,
        params_class: Params::UpdateLFTagOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_lf_tag
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the data access role used for vending access to the given (registered) resource in Lake Formation. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResourceInput}.
    #
    # @option params [String] :role_arn
    #   <p>The new role to use for the given resource registered in Lake Formation.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    #
    # @return [Types::UpdateResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource(
    #     role_arn: 'RoleArn', # required
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResourceOutput
    #
    def update_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::UpdateResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResource,
        stubs: @stubs,
        params_class: Params::UpdateResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the manifest of Amazon S3 objects that make up the specified governed table.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTableObjectsInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The catalog containing the governed table to update. Defaults to the caller’s account ID.</p>
    #
    # @option params [String] :database_name
    #   <p>The database containing the governed table to update.</p>
    #
    # @option params [String] :table_name
    #   <p>The governed table to update.</p>
    #
    # @option params [String] :transaction_id
    #   <p>The transaction at which to do the write.</p>
    #
    # @option params [Array<WriteOperation>] :write_operations
    #   <p>A list of <code>WriteOperation</code> objects that define an object to add to or delete from the manifest for a governed table.</p>
    #
    # @return [Types::UpdateTableObjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table_objects(
    #     catalog_id: 'CatalogId',
    #     database_name: 'DatabaseName', # required
    #     table_name: 'TableName', # required
    #     transaction_id: 'TransactionId',
    #     write_operations: [
    #       {
    #         add_object: {
    #           uri: 'Uri', # required
    #           e_tag: 'ETag', # required
    #           size: 1, # required
    #           partition_values: [
    #             'member'
    #           ]
    #         },
    #         delete_object: {
    #           uri: 'Uri', # required
    #           e_tag: 'ETag',
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTableObjectsOutput
    #
    def update_table_objects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTableObjectsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTableObjectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTableObjects
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationTimeoutException, Errors::TransactionCommitInProgressException, Errors::InternalServiceException, Errors::TransactionCommittedException, Errors::InvalidInputException, Errors::ConcurrentModificationException, Errors::TransactionCanceledException, Errors::ResourceNotReadyException, Errors::EntityNotFoundException]),
        data_parser: Parsers::UpdateTableObjects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTableObjects,
        stubs: @stubs,
        params_class: Params::UpdateTableObjectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_table_objects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the configuration of the storage optimizers for a table.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTableStorageOptimizerInput}.
    #
    # @option params [String] :catalog_id
    #   <p>The Catalog ID of the table.</p>
    #
    # @option params [String] :database_name
    #   <p>Name of the database where the table is present.</p>
    #
    # @option params [String] :table_name
    #   <p>Name of the table for which to enable the storage optimizer.</p>
    #
    # @option params [Hash<String, Hash<String, String>>] :storage_optimizer_config
    #   <p>Name of the table for which to enable the storage optimizer.</p>
    #
    # @return [Types::UpdateTableStorageOptimizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table_storage_optimizer(
    #     catalog_id: 'CatalogId',
    #     database_name: 'DatabaseName', # required
    #     table_name: 'TableName', # required
    #     storage_optimizer_config: {
    #       'key' => {
    #         'key' => 'value'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTableStorageOptimizerOutput
    #   resp.data.result #=> String
    #
    def update_table_storage_optimizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTableStorageOptimizerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTableStorageOptimizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTableStorageOptimizer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServiceException, Errors::InvalidInputException, Errors::EntityNotFoundException]),
        data_parser: Parsers::UpdateTableStorageOptimizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTableStorageOptimizer,
        stubs: @stubs,
        params_class: Params::UpdateTableStorageOptimizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_table_storage_optimizer
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

    def output_stream(options = {}, &block)
      return options[:output_stream] if options[:output_stream]
      return Hearth::BlockIO.new(block) if block

      ::StringIO.new
    end
  end
end
