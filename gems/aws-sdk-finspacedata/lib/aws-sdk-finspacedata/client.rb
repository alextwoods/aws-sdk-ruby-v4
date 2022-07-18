# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::FinspaceData
  # An API client for AWSHabaneroPublicAPI
  # See {#initialize} for a full list of supported configuration options
  # <p> The FinSpace APIs let you take actions inside the FinSpace.</p>
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
    def initialize(config = AWS::SDK::FinspaceData::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a new Changeset in a FinSpace Dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateChangesetInput}.
    #
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    # @option params [String] :dataset_id
    #   <p>The unique identifier for the FinSpace Dataset where the Changeset will be created.
    #       </p>
    #
    # @option params [String] :change_type
    #   <p>The option to indicate how a Changeset will be applied to a Dataset.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REPLACE</code> – Changeset will be considered as a replacement to all prior
    #             loaded Changesets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APPEND</code> – Changeset will be considered as an addition to the end of all
    #             prior loaded Changesets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFY</code> – Changeset is considered as a replacement to a specific prior ingested Changeset.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Hash<String, String>] :source_params
    #   <p>Options that define the location of the data being ingested (<code>s3SourcePath</code>) and the source of the changeset (<code>sourceType</code>).</p>
    #            <p>Both <code>s3SourcePath</code> and <code>sourceType</code> are required attributes.</p>
    #            <p>Here is an example of how you could specify the <code>sourceParams</code>:</p>
    #            <p>
    #               <code>
    #           "sourceParams":
    #           {
    #           "s3SourcePath": "s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv",
    #           "sourceType": "S3"
    #           }
    #         </code>
    #            </p>
    #            <p>The S3 path that you specify must allow the FinSpace role access. To do that, you first need to configure the IAM policy on S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#access-s3-buckets">Loading data from an Amazon S3 Bucket using the FinSpace API</a> section.</p>
    #
    # @option params [Hash<String, String>] :format_params
    #   <p>Options that define the structure of the source file(s) including the format type (<code>formatType</code>), header row (<code>withHeader</code>), data separation character (<code>separator</code>) and the type of compression (<code>compression</code>).
    #       </p>
    #            <p>
    #               <code>formatType</code> is a required attribute and can have the following values:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PARQUET</code> – Parquet source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CSV</code> – CSV source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JSON</code> – JSON source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XML</code> – XML source file format.</p>
    #               </li>
    #            </ul>
    #
    #            <p>Here is an example of how you could specify the <code>formatParams</code>:</p>
    #            <p>
    #               <code>
    #             "formatParams":
    #           {
    #            "formatType": "CSV",
    #            "withHeader": "true",
    #            "separator": ",",
    #            "compression":"None"
    #            }
    #         </code>
    #            </p>
    #            <p>Note that if you only provide <code>formatType</code> as <code>CSV</code>, the rest of the attributes will automatically default to CSV values as following:</p>
    #            <p>
    #               <code>
    #             {
    #             "withHeader": "true",
    #             "separator": ","
    #              }
    #           </code>
    #            </p>
    #            <p> For more information about supported file formats, see <a href="https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html">Supported Data Types and File Formats</a> in the FinSpace User Guide.</p>
    #
    # @return [Types::CreateChangesetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_changeset(
    #     client_token: 'clientToken',
    #     dataset_id: 'datasetId', # required
    #     change_type: 'REPLACE', # required - accepts ["REPLACE", "APPEND", "MODIFY"]
    #     source_params: {
    #       'key' => 'value'
    #     }, # required
    #     format_params: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChangesetOutput
    #   resp.data.dataset_id #=> String
    #   resp.data.changeset_id #=> String
    #
    def create_changeset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateChangesetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateChangesetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateChangeset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateChangeset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateChangeset,
        stubs: @stubs,
        params_class: Params::CreateChangesetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_changeset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Dataview for a Dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDataViewInput}.
    #
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    # @option params [String] :dataset_id
    #   <p>The unique Dataset identifier that is used to create a Dataview.</p>
    #
    # @option params [Boolean] :auto_update
    #   <p>Flag to indicate Dataview should be updated automatically.</p>
    #
    # @option params [Array<String>] :sort_columns
    #   <p>Columns to be used for sorting the data.</p>
    #
    # @option params [Array<String>] :partition_columns
    #   <p>Ordered set of column names used to partition data.</p>
    #
    # @option params [Integer] :as_of_timestamp
    #   <p>Beginning time to use for the Dataview. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #
    # @option params [DataViewDestinationTypeParams] :destination_type_params
    #   <p>Options that define the destination type for the Dataview.</p>
    #
    # @return [Types::CreateDataViewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_view(
    #     client_token: 'clientToken',
    #     dataset_id: 'datasetId', # required
    #     auto_update: false,
    #     sort_columns: [
    #       'member'
    #     ],
    #     partition_columns: [
    #       'member'
    #     ],
    #     as_of_timestamp: 1,
    #     destination_type_params: {
    #       destination_type: 'destinationType', # required
    #       s3_destination_export_file_format: 'PARQUET', # accepts ["PARQUET", "DELIMITED_TEXT"]
    #       s3_destination_export_file_format_options: {
    #         'key' => 'value'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDataViewOutput
    #   resp.data.dataset_id #=> String
    #   resp.data.data_view_id #=> String
    #
    def create_data_view(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataViewInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataViewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataView
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateDataView
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataView,
        stubs: @stubs,
        params_class: Params::CreateDataViewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_data_view
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new FinSpace Dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDatasetInput}.
    #
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    # @option params [String] :dataset_title
    #   <p>Display title for a FinSpace Dataset.</p>
    #
    # @option params [String] :kind
    #   <p>The format in which Dataset data is structured.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TABULAR</code> – Data is structured in a tabular format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :dataset_description
    #   <p>Description of a Dataset.</p>
    #
    # @option params [DatasetOwnerInfo] :owner_info
    #   <p>Contact information for a Dataset owner.</p>
    #
    # @option params [PermissionGroupParams] :permission_group_params
    #   <p>Permission group parameters for Dataset permissions.</p>
    #
    # @option params [String] :alias
    #   <p>The unique resource identifier for a Dataset.</p>
    #
    # @option params [SchemaUnion] :schema_definition
    #   <p>Definition for a schema on a tabular Dataset.</p>
    #
    # @return [Types::CreateDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset(
    #     client_token: 'clientToken',
    #     dataset_title: 'datasetTitle', # required
    #     kind: 'TABULAR', # required - accepts ["TABULAR", "NON_TABULAR"]
    #     dataset_description: 'datasetDescription',
    #     owner_info: {
    #       name: 'name',
    #       phone_number: 'phoneNumber',
    #       email: 'email'
    #     },
    #     permission_group_params: {
    #       permission_group_id: 'permissionGroupId',
    #       dataset_permissions: [
    #         {
    #           permission: 'permission'
    #         }
    #       ]
    #     }, # required
    #     alias: 'alias',
    #     schema_definition: {
    #       tabular_schema_config: {
    #         columns: [
    #           {
    #             data_type: 'STRING', # accepts ["STRING", "CHAR", "INTEGER", "TINYINT", "SMALLINT", "BIGINT", "FLOAT", "DOUBLE", "DATE", "DATETIME", "BOOLEAN", "BINARY"]
    #             column_name: 'columnName',
    #             column_description: 'columnDescription'
    #           }
    #         ],
    #         primary_key_columns: [
    #           'member'
    #         ]
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDatasetOutput
    #   resp.data.dataset_id #=> String
    #
    def create_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataset,
        stubs: @stubs,
        params_class: Params::CreateDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a group of permissions for various actions that a user can perform in FinSpace.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePermissionGroupInput}.
    #
    # @option params [String] :name
    #   <p>The name of the permission group.</p>
    #
    # @option params [String] :description
    #   <p>A brief description for the permission group.</p>
    #
    # @option params [Array<String>] :application_permissions
    #   <p>The option to indicate FinSpace application permissions that are granted to a specific group.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CreateDataset</code> – Group members can create new datasets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageClusters</code> – Group members can manage Apache Spark clusters from FinSpace notebooks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageUsersAndGroups</code> – Group members can manage users and permission groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageAttributeSets</code> – Group members can manage attribute sets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ViewAuditData</code> – Group members can view audit data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccessNotebooks</code> – Group members will have access to FinSpace notebooks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GetTemporaryCredentials</code> – Group members can get temporary API credentials.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    # @return [Types::CreatePermissionGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_permission_group(
    #     name: 'name', # required
    #     description: 'description',
    #     application_permissions: [
    #       'CreateDataset' # accepts ["CreateDataset", "ManageClusters", "ManageUsersAndGroups", "ManageAttributeSets", "ViewAuditData", "AccessNotebooks", "GetTemporaryCredentials"]
    #     ], # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePermissionGroupOutput
    #   resp.data.permission_group_id #=> String
    #
    def create_permission_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePermissionGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePermissionGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePermissionGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::LimitExceededException, Errors::ThrottlingException]),
        data_parser: Parsers::CreatePermissionGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePermissionGroup,
        stubs: @stubs,
        params_class: Params::CreatePermissionGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_permission_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new user in FinSpace.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserInput}.
    #
    # @option params [String] :email_address
    #   <p>The email address of the user that you want to register. The email address serves as a uniquer identifier for each user and cannot be changed after it's created.</p>
    #
    # @option params [String] :type
    #   <p>The option to indicate the type of user. Use one of the following options to specify this parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUPER_USER</code> – A user with permission to all the functionality and data in FinSpace.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permission group.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :first_name
    #   <p>The first name of the user that you want to register.</p>
    #
    # @option params [String] :last_name
    #   <p>The last name of the user that you want to register.</p>
    #
    # @option params [String] :api_access
    #   <p>The option to indicate whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – The user has permissions to use the APIs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :api_access_principal_arn
    #   <p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>
    #
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    # @return [Types::CreateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user(
    #     email_address: 'emailAddress', # required
    #     type: 'SUPER_USER', # required - accepts ["SUPER_USER", "APP_USER"]
    #     first_name: 'firstName',
    #     last_name: 'lastName',
    #     api_access: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     api_access_principal_arn: 'apiAccessPrincipalArn',
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserOutput
    #   resp.data.user_id #=> String
    #
    def create_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::LimitExceededException, Errors::ThrottlingException]),
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

    # <p>Deletes a FinSpace Dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDatasetInput}.
    #
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    # @option params [String] :dataset_id
    #   <p>The unique identifier of the Dataset to be deleted.</p>
    #
    # @return [Types::DeleteDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset(
    #     client_token: 'clientToken',
    #     dataset_id: 'datasetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDatasetOutput
    #   resp.data.dataset_id #=> String
    #
    def delete_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataset,
        stubs: @stubs,
        params_class: Params::DeleteDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a permission group. This action is irreversible.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePermissionGroupInput}.
    #
    # @option params [String] :permission_group_id
    #   <p>The unique identifier for the permission group that you want to delete.</p>
    #
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    # @return [Types::DeletePermissionGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_permission_group(
    #     permission_group_id: 'permissionGroupId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePermissionGroupOutput
    #   resp.data.permission_group_id #=> String
    #
    def delete_permission_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePermissionGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePermissionGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePermissionGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeletePermissionGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePermissionGroup,
        stubs: @stubs,
        params_class: Params::DeletePermissionGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_permission_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Denies access to the FinSpace web application and API for the specified user.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableUserInput}.
    #
    # @option params [String] :user_id
    #   <p>The unique identifier for the user account that you want to disable.</p>
    #
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    # @return [Types::DisableUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_user(
    #     user_id: 'userId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableUserOutput
    #   resp.data.user_id #=> String
    #
    def disable_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableUserInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p> Allows the specified user to access the FinSpace web application and API.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableUserInput}.
    #
    # @option params [String] :user_id
    #   <p>The unique identifier for the user account that you want to enable.</p>
    #
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    # @return [Types::EnableUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_user(
    #     user_id: 'userId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableUserOutput
    #   resp.data.user_id #=> String
    #
    def enable_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableUserInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Get information about a Changeset.</p>
    #
    # @param [Hash] params
    #   See {Types::GetChangesetInput}.
    #
    # @option params [String] :dataset_id
    #   <p>The unique identifier for the FinSpace Dataset where the Changeset is created.</p>
    #
    # @option params [String] :changeset_id
    #   <p>The unique identifier of the Changeset for which to get data.</p>
    #
    # @return [Types::GetChangesetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_changeset(
    #     dataset_id: 'datasetId', # required
    #     changeset_id: 'changesetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetChangesetOutput
    #   resp.data.changeset_id #=> String
    #   resp.data.changeset_arn #=> String
    #   resp.data.dataset_id #=> String
    #   resp.data.change_type #=> String, one of ["REPLACE", "APPEND", "MODIFY"]
    #   resp.data.source_params #=> Hash<String, String>
    #   resp.data.source_params['key'] #=> String
    #   resp.data.format_params #=> Hash<String, String>
    #   resp.data.format_params['key'] #=> String
    #   resp.data.create_time #=> Integer
    #   resp.data.status #=> String, one of ["PENDING", "FAILED", "SUCCESS", "RUNNING", "STOP_REQUESTED"]
    #   resp.data.error_info #=> Types::ChangesetErrorInfo
    #   resp.data.error_info.error_message #=> String
    #   resp.data.error_info.error_category #=> String, one of ["VALIDATION", "SERVICE_QUOTA_EXCEEDED", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "THROTTLING", "INTERNAL_SERVICE_EXCEPTION", "CANCELLED", "USER_RECOVERABLE"]
    #   resp.data.active_until_timestamp #=> Integer
    #   resp.data.active_from_timestamp #=> Integer
    #   resp.data.updates_changeset_id #=> String
    #   resp.data.updated_by_changeset_id #=> String
    #
    def get_changeset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetChangesetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetChangesetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetChangeset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetChangeset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetChangeset,
        stubs: @stubs,
        params_class: Params::GetChangesetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_changeset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a Dataview.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDataViewInput}.
    #
    # @option params [String] :data_view_id
    #   <p>The unique identifier for the Dataview.</p>
    #
    # @option params [String] :dataset_id
    #   <p>The unique identifier for the Dataset used in the Dataview.</p>
    #
    # @return [Types::GetDataViewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_view(
    #     data_view_id: 'dataViewId', # required
    #     dataset_id: 'datasetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDataViewOutput
    #   resp.data.auto_update #=> Boolean
    #   resp.data.partition_columns #=> Array<String>
    #   resp.data.partition_columns[0] #=> String
    #   resp.data.dataset_id #=> String
    #   resp.data.as_of_timestamp #=> Integer
    #   resp.data.error_info #=> Types::DataViewErrorInfo
    #   resp.data.error_info.error_message #=> String
    #   resp.data.error_info.error_category #=> String, one of ["VALIDATION", "SERVICE_QUOTA_EXCEEDED", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "THROTTLING", "INTERNAL_SERVICE_EXCEPTION", "CANCELLED", "USER_RECOVERABLE"]
    #   resp.data.last_modified_time #=> Integer
    #   resp.data.create_time #=> Integer
    #   resp.data.sort_columns #=> Array<String>
    #   resp.data.sort_columns[0] #=> String
    #   resp.data.data_view_id #=> String
    #   resp.data.data_view_arn #=> String
    #   resp.data.destination_type_params #=> Types::DataViewDestinationTypeParams
    #   resp.data.destination_type_params.destination_type #=> String
    #   resp.data.destination_type_params.s3_destination_export_file_format #=> String, one of ["PARQUET", "DELIMITED_TEXT"]
    #   resp.data.destination_type_params.s3_destination_export_file_format_options #=> Hash<String, String>
    #   resp.data.destination_type_params.s3_destination_export_file_format_options['key'] #=> String
    #   resp.data.status #=> String, one of ["RUNNING", "STARTING", "FAILED", "CANCELLED", "TIMEOUT", "SUCCESS", "PENDING", "FAILED_CLEANUP_FAILED"]
    #
    def get_data_view(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDataViewInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDataViewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDataView
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetDataView
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDataView,
        stubs: @stubs,
        params_class: Params::GetDataViewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_data_view
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a Dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDatasetInput}.
    #
    # @option params [String] :dataset_id
    #   <p>The unique identifier for a Dataset.</p>
    #
    # @return [Types::GetDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dataset(
    #     dataset_id: 'datasetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDatasetOutput
    #   resp.data.dataset_id #=> String
    #   resp.data.dataset_arn #=> String
    #   resp.data.dataset_title #=> String
    #   resp.data.kind #=> String, one of ["TABULAR", "NON_TABULAR"]
    #   resp.data.dataset_description #=> String
    #   resp.data.create_time #=> Integer
    #   resp.data.last_modified_time #=> Integer
    #   resp.data.schema_definition #=> Types::SchemaUnion
    #   resp.data.schema_definition.tabular_schema_config #=> Types::SchemaDefinition
    #   resp.data.schema_definition.tabular_schema_config.columns #=> Array<ColumnDefinition>
    #   resp.data.schema_definition.tabular_schema_config.columns[0] #=> Types::ColumnDefinition
    #   resp.data.schema_definition.tabular_schema_config.columns[0].data_type #=> String, one of ["STRING", "CHAR", "INTEGER", "TINYINT", "SMALLINT", "BIGINT", "FLOAT", "DOUBLE", "DATE", "DATETIME", "BOOLEAN", "BINARY"]
    #   resp.data.schema_definition.tabular_schema_config.columns[0].column_name #=> String
    #   resp.data.schema_definition.tabular_schema_config.columns[0].column_description #=> String
    #   resp.data.schema_definition.tabular_schema_config.primary_key_columns #=> Array<String>
    #   resp.data.schema_definition.tabular_schema_config.primary_key_columns[0] #=> String
    #   resp.data.alias #=> String
    #   resp.data.status #=> String, one of ["PENDING", "FAILED", "SUCCESS", "RUNNING"]
    #
    def get_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDataset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDataset,
        stubs: @stubs,
        params_class: Params::GetDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Request programmatic credentials to use with FinSpace SDK.</p>
    #
    # @param [Hash] params
    #   See {Types::GetProgrammaticAccessCredentialsInput}.
    #
    # @option params [Integer] :duration_in_minutes
    #   <p>The time duration in which the credentials remain valid. </p>
    #
    # @option params [String] :environment_id
    #   <p>The FinSpace environment identifier.</p>
    #
    # @return [Types::GetProgrammaticAccessCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_programmatic_access_credentials(
    #     duration_in_minutes: 1,
    #     environment_id: 'environmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetProgrammaticAccessCredentialsOutput
    #   resp.data.credentials #=> Types::Credentials
    #   resp.data.credentials.access_key_id #=> String
    #   resp.data.credentials.secret_access_key #=> String
    #   resp.data.credentials.session_token #=> String
    #   resp.data.duration_in_minutes #=> Integer
    #
    def get_programmatic_access_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetProgrammaticAccessCredentialsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetProgrammaticAccessCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetProgrammaticAccessCredentials
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::GetProgrammaticAccessCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetProgrammaticAccessCredentials,
        stubs: @stubs,
        params_class: Params::GetProgrammaticAccessCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_programmatic_access_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details for a specific user.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUserInput}.
    #
    # @option params [String] :user_id
    #   <p>The unique identifier of the user to get data for.</p>
    #
    # @return [Types::GetUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user(
    #     user_id: 'userId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUserOutput
    #   resp.data.user_id #=> String
    #   resp.data.status #=> String, one of ["CREATING", "ENABLED", "DISABLED"]
    #   resp.data.first_name #=> String
    #   resp.data.last_name #=> String
    #   resp.data.email_address #=> String
    #   resp.data.type #=> String, one of ["SUPER_USER", "APP_USER"]
    #   resp.data.api_access #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.api_access_principal_arn #=> String
    #   resp.data.create_time #=> Integer
    #   resp.data.last_enabled_time #=> Integer
    #   resp.data.last_disabled_time #=> Integer
    #   resp.data.last_modified_time #=> Integer
    #   resp.data.last_login_time #=> Integer
    #
    def get_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUser,
        stubs: @stubs,
        params_class: Params::GetUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A temporary Amazon S3 location, where you can copy your files from a source location to stage or use
    #       as a scratch space in FinSpace notebook.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWorkingLocationInput}.
    #
    # @option params [String] :location_type
    #   <p>Specify the type of the working location.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SAGEMAKER</code> – Use the Amazon S3 location as a temporary location to store data content when
    #             working with FinSpace Notebooks that run on SageMaker studio.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INGESTION</code> – Use the Amazon S3 location as a staging location to copy your
    #             data content and then use the location with the Changeset creation operation.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::GetWorkingLocationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_working_location(
    #     location_type: 'INGESTION' # accepts ["INGESTION", "SAGEMAKER"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWorkingLocationOutput
    #   resp.data.s3_uri #=> String
    #   resp.data.s3_path #=> String
    #   resp.data.s3_bucket #=> String
    #
    def get_working_location(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWorkingLocationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWorkingLocationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWorkingLocation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::GetWorkingLocation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWorkingLocation,
        stubs: @stubs,
        params_class: Params::GetWorkingLocationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_working_location
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the FinSpace Changesets for a Dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::ListChangesetsInput}.
    #
    # @option params [String] :dataset_id
    #   <p>The unique identifier for the FinSpace Dataset to which the Changeset belongs.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #
    # @return [Types::ListChangesetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_changesets(
    #     dataset_id: 'datasetId', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChangesetsOutput
    #   resp.data.changesets #=> Array<ChangesetSummary>
    #   resp.data.changesets[0] #=> Types::ChangesetSummary
    #   resp.data.changesets[0].changeset_id #=> String
    #   resp.data.changesets[0].changeset_arn #=> String
    #   resp.data.changesets[0].dataset_id #=> String
    #   resp.data.changesets[0].change_type #=> String, one of ["REPLACE", "APPEND", "MODIFY"]
    #   resp.data.changesets[0].source_params #=> Hash<String, String>
    #   resp.data.changesets[0].source_params['key'] #=> String
    #   resp.data.changesets[0].format_params #=> Hash<String, String>
    #   resp.data.changesets[0].format_params['key'] #=> String
    #   resp.data.changesets[0].create_time #=> Integer
    #   resp.data.changesets[0].status #=> String, one of ["PENDING", "FAILED", "SUCCESS", "RUNNING", "STOP_REQUESTED"]
    #   resp.data.changesets[0].error_info #=> Types::ChangesetErrorInfo
    #   resp.data.changesets[0].error_info.error_message #=> String
    #   resp.data.changesets[0].error_info.error_category #=> String, one of ["VALIDATION", "SERVICE_QUOTA_EXCEEDED", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "THROTTLING", "INTERNAL_SERVICE_EXCEPTION", "CANCELLED", "USER_RECOVERABLE"]
    #   resp.data.changesets[0].active_until_timestamp #=> Integer
    #   resp.data.changesets[0].active_from_timestamp #=> Integer
    #   resp.data.changesets[0].updates_changeset_id #=> String
    #   resp.data.changesets[0].updated_by_changeset_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_changesets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChangesetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChangesetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChangesets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListChangesets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChangesets,
        stubs: @stubs,
        params_class: Params::ListChangesetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_changesets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all available Dataviews for a Dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDataViewsInput}.
    #
    # @option params [String] :dataset_id
    #   <p>The unique identifier of the Dataset for which to retrieve Dataviews.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    #
    # @return [Types::ListDataViewsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_views(
    #     dataset_id: 'datasetId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataViewsOutput
    #   resp.data.next_token #=> String
    #   resp.data.data_views #=> Array<DataViewSummary>
    #   resp.data.data_views[0] #=> Types::DataViewSummary
    #   resp.data.data_views[0].data_view_id #=> String
    #   resp.data.data_views[0].data_view_arn #=> String
    #   resp.data.data_views[0].dataset_id #=> String
    #   resp.data.data_views[0].as_of_timestamp #=> Integer
    #   resp.data.data_views[0].partition_columns #=> Array<String>
    #   resp.data.data_views[0].partition_columns[0] #=> String
    #   resp.data.data_views[0].sort_columns #=> Array<String>
    #   resp.data.data_views[0].sort_columns[0] #=> String
    #   resp.data.data_views[0].status #=> String, one of ["RUNNING", "STARTING", "FAILED", "CANCELLED", "TIMEOUT", "SUCCESS", "PENDING", "FAILED_CLEANUP_FAILED"]
    #   resp.data.data_views[0].error_info #=> Types::DataViewErrorInfo
    #   resp.data.data_views[0].error_info.error_message #=> String
    #   resp.data.data_views[0].error_info.error_category #=> String, one of ["VALIDATION", "SERVICE_QUOTA_EXCEEDED", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "THROTTLING", "INTERNAL_SERVICE_EXCEPTION", "CANCELLED", "USER_RECOVERABLE"]
    #   resp.data.data_views[0].destination_type_properties #=> Types::DataViewDestinationTypeParams
    #   resp.data.data_views[0].destination_type_properties.destination_type #=> String
    #   resp.data.data_views[0].destination_type_properties.s3_destination_export_file_format #=> String, one of ["PARQUET", "DELIMITED_TEXT"]
    #   resp.data.data_views[0].destination_type_properties.s3_destination_export_file_format_options #=> Hash<String, String>
    #   resp.data.data_views[0].destination_type_properties.s3_destination_export_file_format_options['key'] #=> String
    #   resp.data.data_views[0].auto_update #=> Boolean
    #   resp.data.data_views[0].create_time #=> Integer
    #   resp.data.data_views[0].last_modified_time #=> Integer
    #
    def list_data_views(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataViewsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataViewsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataViews
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListDataViews
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataViews,
        stubs: @stubs,
        params_class: Params::ListDataViewsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_data_views
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the active Datasets that a user has access to.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDatasetsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    #
    # @return [Types::ListDatasetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDatasetsOutput
    #   resp.data.datasets #=> Array<Dataset>
    #   resp.data.datasets[0] #=> Types::Dataset
    #   resp.data.datasets[0].dataset_id #=> String
    #   resp.data.datasets[0].dataset_arn #=> String
    #   resp.data.datasets[0].dataset_title #=> String
    #   resp.data.datasets[0].kind #=> String, one of ["TABULAR", "NON_TABULAR"]
    #   resp.data.datasets[0].dataset_description #=> String
    #   resp.data.datasets[0].owner_info #=> Types::DatasetOwnerInfo
    #   resp.data.datasets[0].owner_info.name #=> String
    #   resp.data.datasets[0].owner_info.phone_number #=> String
    #   resp.data.datasets[0].owner_info.email #=> String
    #   resp.data.datasets[0].create_time #=> Integer
    #   resp.data.datasets[0].last_modified_time #=> Integer
    #   resp.data.datasets[0].schema_definition #=> Types::SchemaUnion
    #   resp.data.datasets[0].schema_definition.tabular_schema_config #=> Types::SchemaDefinition
    #   resp.data.datasets[0].schema_definition.tabular_schema_config.columns #=> Array<ColumnDefinition>
    #   resp.data.datasets[0].schema_definition.tabular_schema_config.columns[0] #=> Types::ColumnDefinition
    #   resp.data.datasets[0].schema_definition.tabular_schema_config.columns[0].data_type #=> String, one of ["STRING", "CHAR", "INTEGER", "TINYINT", "SMALLINT", "BIGINT", "FLOAT", "DOUBLE", "DATE", "DATETIME", "BOOLEAN", "BINARY"]
    #   resp.data.datasets[0].schema_definition.tabular_schema_config.columns[0].column_name #=> String
    #   resp.data.datasets[0].schema_definition.tabular_schema_config.columns[0].column_description #=> String
    #   resp.data.datasets[0].schema_definition.tabular_schema_config.primary_key_columns #=> Array<String>
    #   resp.data.datasets[0].schema_definition.tabular_schema_config.primary_key_columns[0] #=> String
    #   resp.data.datasets[0].alias #=> String
    #   resp.data.next_token #=> String
    #
    def list_datasets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDatasetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDatasetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDatasets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListDatasets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDatasets,
        stubs: @stubs,
        params_class: Params::ListDatasetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_datasets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all available permission groups in FinSpace.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPermissionGroupsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    #
    # @return [Types::ListPermissionGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permission_groups(
    #     next_token: 'nextToken',
    #     max_results: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPermissionGroupsOutput
    #   resp.data.permission_groups #=> Array<PermissionGroup>
    #   resp.data.permission_groups[0] #=> Types::PermissionGroup
    #   resp.data.permission_groups[0].permission_group_id #=> String
    #   resp.data.permission_groups[0].name #=> String
    #   resp.data.permission_groups[0].description #=> String
    #   resp.data.permission_groups[0].application_permissions #=> Array<String>
    #   resp.data.permission_groups[0].application_permissions[0] #=> String, one of ["CreateDataset", "ManageClusters", "ManageUsersAndGroups", "ManageAttributeSets", "ViewAuditData", "AccessNotebooks", "GetTemporaryCredentials"]
    #   resp.data.permission_groups[0].create_time #=> Integer
    #   resp.data.permission_groups[0].last_modified_time #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_permission_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPermissionGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPermissionGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPermissionGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::ListPermissionGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPermissionGroups,
        stubs: @stubs,
        params_class: Params::ListPermissionGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_permission_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all available user accounts in FinSpace.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUsersInput}.
    #
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    #
    # @return [Types::ListUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users(
    #     next_token: 'nextToken',
    #     max_results: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUsersOutput
    #   resp.data.users #=> Array<User>
    #   resp.data.users[0] #=> Types::User
    #   resp.data.users[0].user_id #=> String
    #   resp.data.users[0].status #=> String, one of ["CREATING", "ENABLED", "DISABLED"]
    #   resp.data.users[0].first_name #=> String
    #   resp.data.users[0].last_name #=> String
    #   resp.data.users[0].email_address #=> String
    #   resp.data.users[0].type #=> String, one of ["SUPER_USER", "APP_USER"]
    #   resp.data.users[0].api_access #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.users[0].api_access_principal_arn #=> String
    #   resp.data.users[0].create_time #=> Integer
    #   resp.data.users[0].last_enabled_time #=> Integer
    #   resp.data.users[0].last_disabled_time #=> Integer
    #   resp.data.users[0].last_modified_time #=> Integer
    #   resp.data.users[0].last_login_time #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUsers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::ListUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUsers,
        stubs: @stubs,
        params_class: Params::ListUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resets the password for a specified user ID and generates a temporary one. Only a superuser can reset password for other users. Resetting the password immediately invalidates the previous password associated with the user.</p>
    #
    # @param [Hash] params
    #   See {Types::ResetUserPasswordInput}.
    #
    # @option params [String] :user_id
    #   <p>The unique identifier of the user that a temporary password is requested for.</p>
    #
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    # @return [Types::ResetUserPasswordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_user_password(
    #     user_id: 'userId', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetUserPasswordOutput
    #   resp.data.user_id #=> String
    #   resp.data.temporary_password #=> String
    #
    def reset_user_password(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetUserPasswordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetUserPasswordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetUserPassword
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ResetUserPassword
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetUserPassword,
        stubs: @stubs,
        params_class: Params::ResetUserPasswordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_user_password
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a FinSpace Changeset.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateChangesetInput}.
    #
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    # @option params [String] :dataset_id
    #   <p>The unique identifier for the FinSpace Dataset in which the Changeset is created.</p>
    #
    # @option params [String] :changeset_id
    #   <p>The unique identifier for the Changeset to update.</p>
    #
    # @option params [Hash<String, String>] :source_params
    #   <p>Options that define the location of the data being ingested (<code>s3SourcePath</code>) and the source of the changeset (<code>sourceType</code>).</p>
    #            <p>Both <code>s3SourcePath</code> and <code>sourceType</code> are required attributes.</p>
    #            <p>Here is an example of how you could specify the <code>sourceParams</code>:</p>
    #            <p>
    #               <code>
    #           "sourceParams":
    #           {
    #           "s3SourcePath": "s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv",
    #           "sourceType": "S3"
    #           }
    #         </code>
    #            </p>
    #            <p>The S3 path that you specify must allow the FinSpace role access. To do that, you first need to configure the IAM policy on S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#access-s3-buckets">Loading data from an Amazon S3 Bucket using the FinSpace API</a>section.</p>
    #
    # @option params [Hash<String, String>] :format_params
    #   <p>Options that define the structure of the source file(s) including the format type (<code>formatType</code>), header row (<code>withHeader</code>), data separation character (<code>separator</code>) and the type of compression (<code>compression</code>).
    #       </p>
    #            <p>
    #               <code>formatType</code> is a required attribute and can have the following values:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PARQUET</code> – Parquet source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CSV</code> – CSV source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JSON</code> – JSON source file format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XML</code> – XML source file format.</p>
    #               </li>
    #            </ul>
    #
    #            <p>Here is an example of how you could specify the <code>formatParams</code>:</p>
    #            <p>
    #               <code>
    #           "formatParams":
    #           {
    #           "formatType": "CSV",
    #           "withHeader": "true",
    #           "separator": ",",
    #           "compression":"None"
    #           }
    #         </code>
    #            </p>
    #            <p>Note that if you only provide <code>formatType</code> as <code>CSV</code>, the rest of the attributes will automatically default to CSV values as following:</p>
    #            <p>
    #               <code>
    #           {
    #           "withHeader": "true",
    #           "separator": ","
    #           }
    #           </code>
    #            </p>
    #            <p> For more information about supported file formats, see <a href="https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html">Supported Data Types and File Formats</a> in the FinSpace User Guide.</p>
    #
    # @return [Types::UpdateChangesetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_changeset(
    #     client_token: 'clientToken',
    #     dataset_id: 'datasetId', # required
    #     changeset_id: 'changesetId', # required
    #     source_params: {
    #       'key' => 'value'
    #     }, # required
    #     format_params: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateChangesetOutput
    #   resp.data.changeset_id #=> String
    #   resp.data.dataset_id #=> String
    #
    def update_changeset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateChangesetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateChangesetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateChangeset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateChangeset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateChangeset,
        stubs: @stubs,
        params_class: Params::UpdateChangesetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_changeset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a FinSpace Dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDatasetInput}.
    #
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    # @option params [String] :dataset_id
    #   <p>The unique identifier for the Dataset to update.</p>
    #
    # @option params [String] :dataset_title
    #   <p>A display title for the Dataset.</p>
    #
    # @option params [String] :kind
    #   <p>The format in which the Dataset data is structured.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TABULAR</code> – Data is structured in a tabular format.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_TABULAR</code> – Data is structured in a non-tabular format.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :dataset_description
    #   <p>A description for the Dataset.</p>
    #
    # @option params [String] :alias
    #   <p>The unique resource identifier for a Dataset.</p>
    #
    # @option params [SchemaUnion] :schema_definition
    #   <p>Definition for a schema on a tabular Dataset.</p>
    #
    # @return [Types::UpdateDatasetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset(
    #     client_token: 'clientToken',
    #     dataset_id: 'datasetId', # required
    #     dataset_title: 'datasetTitle', # required
    #     kind: 'TABULAR', # required - accepts ["TABULAR", "NON_TABULAR"]
    #     dataset_description: 'datasetDescription',
    #     alias: 'alias',
    #     schema_definition: {
    #       tabular_schema_config: {
    #         columns: [
    #           {
    #             data_type: 'STRING', # accepts ["STRING", "CHAR", "INTEGER", "TINYINT", "SMALLINT", "BIGINT", "FLOAT", "DOUBLE", "DATE", "DATETIME", "BOOLEAN", "BINARY"]
    #             column_name: 'columnName',
    #             column_description: 'columnDescription'
    #           }
    #         ],
    #         primary_key_columns: [
    #           'member'
    #         ]
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDatasetOutput
    #   resp.data.dataset_id #=> String
    #
    def update_dataset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDatasetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDatasetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDataset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateDataset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDataset,
        stubs: @stubs,
        params_class: Params::UpdateDatasetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_dataset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the details of a permission group. You cannot modify a <code>permissionGroupID</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePermissionGroupInput}.
    #
    # @option params [String] :permission_group_id
    #   <p>The unique identifier for the permission group to update.</p>
    #
    # @option params [String] :name
    #   <p>The name of the permission group.</p>
    #
    # @option params [String] :description
    #   <p>A brief description for the permission group.</p>
    #
    # @option params [Array<String>] :application_permissions
    #   <p>The permissions that are granted to a specific group for accessing the FinSpace application.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CreateDataset</code> – Group members can create new datasets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageClusters</code> – Group members can manage Apache Spark clusters from FinSpace notebooks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageUsersAndGroups</code> – Group members can manage users and permission groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ManageAttributeSets</code> – Group members can manage attribute sets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ViewAuditData</code> – Group members can view audit data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccessNotebooks</code> – Group members will have access to FinSpace notebooks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GetTemporaryCredentials</code> – Group members can get temporary API credentials.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    # @return [Types::UpdatePermissionGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_permission_group(
    #     permission_group_id: 'permissionGroupId', # required
    #     name: 'name',
    #     description: 'description',
    #     application_permissions: [
    #       'CreateDataset' # accepts ["CreateDataset", "ManageClusters", "ManageUsersAndGroups", "ManageAttributeSets", "ViewAuditData", "AccessNotebooks", "GetTemporaryCredentials"]
    #     ],
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePermissionGroupOutput
    #   resp.data.permission_group_id #=> String
    #
    def update_permission_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePermissionGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePermissionGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePermissionGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdatePermissionGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePermissionGroup,
        stubs: @stubs,
        params_class: Params::UpdatePermissionGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_permission_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the details of the specified user account. You cannot update the <code>userId</code> for a user.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserInput}.
    #
    # @option params [String] :user_id
    #   <p>The unique identifier for the user account to update.</p>
    #
    # @option params [String] :type
    #   <p>The option to indicate the type of user.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUPER_USER</code>– A user with permission to all the functionality and data in FinSpace.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APP_USER</code> – A user with specific permissions in FinSpace. The users are assigned permissions by adding them to a permissions group.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :first_name
    #   <p>The first name of the user.</p>
    #
    # @option params [String] :last_name
    #   <p>The last name of the user.</p>
    #
    # @option params [String] :api_access
    #   <p>The option to indicate whether the user can use the <code>GetProgrammaticAccessCredentials</code> API to obtain credentials that can then be used to access other FinSpace Data API operations.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> – The user has permissions to use the APIs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – The user does not have permissions to use any APIs.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :api_access_principal_arn
    #   <p>The ARN identifier of an AWS user or role that is allowed to call the <code>GetProgrammaticAccessCredentials</code> API to obtain a credentials token for a specific FinSpace user. This must be an IAM role within your FinSpace account.</p>
    #
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #
    # @return [Types::UpdateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user(
    #     user_id: 'userId', # required
    #     type: 'SUPER_USER', # accepts ["SUPER_USER", "APP_USER"]
    #     first_name: 'firstName',
    #     last_name: 'lastName',
    #     api_access: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     api_access_principal_arn: 'apiAccessPrincipalArn',
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserOutput
    #   resp.data.user_id #=> String
    #
    def update_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUser,
        stubs: @stubs,
        params_class: Params::UpdateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user
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
