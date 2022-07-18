# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Appflow
  # An API client for SandstoneConfigurationServiceLambda
  # See {#initialize} for a full list of supported configuration options
  # <p>Welcome to the Amazon AppFlow API reference. This guide is for developers who need
  #       detailed information about the Amazon AppFlow API operations, data types, and errors. </p>
  #          <p>Amazon AppFlow is a fully managed integration service that enables you to securely
  #       transfer data between software as a service (SaaS) applications like Salesforce, Marketo,
  #       Slack, and ServiceNow, and Amazon Web Services like Amazon S3 and Amazon Redshift. </p>
  #          <p>Use the following links to get started on the Amazon AppFlow API:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Operations.html">Actions</a>: An alphabetical list of all Amazon AppFlow API
  #           operations.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Types.html">Data
  #             types</a>: An alphabetical list of all Amazon AppFlow data types.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonParameters.html">Common parameters</a>: Parameters that all Query operations can use.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonErrors.html">Common
  #             errors</a>: Client and server errors that all operations can return.</p>
  #             </li>
  #          </ul>
  #          <p>If you're new to Amazon AppFlow, we recommend that you review the <a href="https://docs.aws.amazon.com/appflow/latest/userguide/what-is-appflow.html">Amazon AppFlow User Guide</a>.</p>
  #          <p>Amazon AppFlow API users can use vendor-specific mechanisms for OAuth, and include
  #       applicable OAuth attributes (such as <code>auth-code</code> and <code>redirecturi</code>) with
  #       the connector-specific <code>ConnectorProfileProperties</code> when creating a new connector
  #       profile using Amazon AppFlow API operations. For example, Salesforce users can refer to
  #       the <a href="https://help.salesforce.com/articleView?id=remoteaccess_authenticate.htm">
  #                <i>Authorize Apps with OAuth</i>
  #             </a> documentation.</p>
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
    def initialize(config = AWS::SDK::Appflow::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p> Creates a new connector profile associated with your Amazon Web Services account. There
    #       is a soft quota of 100 connector profiles per Amazon Web Services account. If you need more
    #       connector profiles than this quota allows, you can submit a request to the Amazon AppFlow team through the Amazon AppFlow support channel. In each connector profile that you
    #       create, you can provide the credentials and properties for only one connector.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConnectorProfileInput}.
    #
    # @option params [String] :connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in your Amazon Web Services account. </p>
    #
    # @option params [String] :kms_arn
    #   <p> The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for
    #         encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS
    #         key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key. </p>
    #
    # @option params [String] :connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #
    # @option params [String] :connector_label
    #   <p>The label of the connector. The label is unique for each
    #           <code>ConnectorRegistration</code> in your Amazon Web Services account. Only needed if
    #         calling for CUSTOMCONNECTOR connector type/.</p>
    #
    # @option params [String] :connection_mode
    #   <p> Indicates the connection mode and specifies whether it is public or private. Private
    #         flows use Amazon Web Services PrivateLink to route data over Amazon Web Services infrastructure
    #         without exposing it to the public internet. </p>
    #
    # @option params [ConnectorProfileConfig] :connector_profile_config
    #   <p> Defines the connector-specific configuration and credentials. </p>
    #
    # @return [Types::CreateConnectorProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connector_profile(
    #     connector_profile_name: 'connectorProfileName', # required
    #     kms_arn: 'kmsArn',
    #     connector_type: 'Salesforce', # required - accepts ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #     connector_label: 'connectorLabel',
    #     connection_mode: 'Public', # required - accepts ["Public", "Private"]
    #     connector_profile_config: {
    #       connector_profile_properties: {
    #         amplitude: { },
    #         datadog: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         dynatrace: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         google_analytics: { },
    #         honeycode: { },
    #         infor_nexus: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         marketo: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         redshift: {
    #           database_url: 'databaseUrl', # required
    #           bucket_name: 'bucketName', # required
    #           bucket_prefix: 'bucketPrefix',
    #           role_arn: 'roleArn' # required
    #         },
    #         salesforce: {
    #           instance_url: 'instanceUrl',
    #           is_sandbox_environment: false
    #         },
    #         service_now: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         singular: { },
    #         slack: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         snowflake: {
    #           warehouse: 'warehouse', # required
    #           stage: 'stage', # required
    #           bucket_name: 'bucketName', # required
    #           bucket_prefix: 'bucketPrefix',
    #           private_link_service_name: 'privateLinkServiceName',
    #           account_name: 'accountName',
    #           region: 'region'
    #         },
    #         trendmicro: { },
    #         veeva: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         zendesk: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         sapo_data: {
    #           application_host_url: 'applicationHostUrl', # required
    #           application_service_path: 'applicationServicePath', # required
    #           port_number: 1, # required
    #           client_number: 'clientNumber', # required
    #           logon_language: 'logonLanguage',
    #           private_link_service_name: 'privateLinkServiceName',
    #           o_auth_properties: {
    #             token_url: 'tokenUrl', # required
    #             auth_code_url: 'authCodeUrl', # required
    #             o_auth_scopes: [
    #               'member'
    #             ] # required
    #           }
    #         },
    #         custom_connector: {
    #           profile_properties: {
    #             'key' => 'value'
    #           },
    #           o_auth2_properties: {
    #             token_url: 'tokenUrl', # required
    #             o_auth2_grant_type: 'CLIENT_CREDENTIALS', # required - accepts ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE"]
    #             token_url_custom_properties: {
    #               'key' => 'value'
    #             }
    #           }
    #         }
    #       }, # required
    #       connector_profile_credentials: {
    #         amplitude: {
    #           api_key: 'apiKey', # required
    #           secret_key: 'secretKey' # required
    #         },
    #         datadog: {
    #           api_key: 'apiKey', # required
    #           application_key: 'applicationKey' # required
    #         },
    #         dynatrace: {
    #           api_token: 'apiToken' # required
    #         },
    #         google_analytics: {
    #           client_id: 'clientId', # required
    #           client_secret: 'clientSecret', # required
    #           access_token: 'accessToken',
    #           refresh_token: 'refreshToken',
    #           o_auth_request: {
    #             auth_code: 'authCode',
    #             redirect_uri: 'redirectUri'
    #           }
    #         },
    #         honeycode: {
    #           access_token: 'accessToken',
    #           refresh_token: 'refreshToken',
    #         },
    #         infor_nexus: {
    #           access_key_id: 'accessKeyId', # required
    #           user_id: 'userId', # required
    #           secret_access_key: 'secretAccessKey', # required
    #           datakey: 'datakey' # required
    #         },
    #         marketo: {
    #           client_id: 'clientId', # required
    #           client_secret: 'clientSecret', # required
    #           access_token: 'accessToken',
    #         },
    #         redshift: {
    #           username: 'username', # required
    #           password: 'password' # required
    #         },
    #         salesforce: {
    #           access_token: 'accessToken',
    #           refresh_token: 'refreshToken',
    #           client_credentials_arn: 'clientCredentialsArn'
    #         },
    #         service_now: {
    #           username: 'username', # required
    #           password: 'password' # required
    #         },
    #         singular: {
    #           api_key: 'apiKey' # required
    #         },
    #         slack: {
    #           client_id: 'clientId', # required
    #           client_secret: 'clientSecret', # required
    #           access_token: 'accessToken',
    #         },
    #         snowflake: {
    #           username: 'username', # required
    #           password: 'password' # required
    #         },
    #         trendmicro: {
    #           api_secret_key: 'apiSecretKey' # required
    #         },
    #         veeva: {
    #           username: 'username', # required
    #           password: 'password' # required
    #         },
    #         zendesk: {
    #           client_id: 'clientId', # required
    #           client_secret: 'clientSecret', # required
    #           access_token: 'accessToken',
    #         },
    #         sapo_data: {
    #           basic_auth_credentials: {
    #             username: 'username', # required
    #             password: 'password' # required
    #           },
    #           o_auth_credentials: {
    #             client_id: 'clientId', # required
    #             client_secret: 'clientSecret', # required
    #             access_token: 'accessToken',
    #             refresh_token: 'refreshToken',
    #           }
    #         },
    #         custom_connector: {
    #           authentication_type: 'OAUTH2', # required - accepts ["OAUTH2", "APIKEY", "BASIC", "CUSTOM"]
    #           oauth2: {
    #             client_id: 'clientId',
    #             client_secret: 'clientSecret',
    #             access_token: 'accessToken',
    #             refresh_token: 'refreshToken',
    #           },
    #           api_key: {
    #             api_key: 'apiKey', # required
    #             api_secret_key: 'apiSecretKey'
    #           },
    #           custom: {
    #             custom_authentication_type: 'customAuthenticationType', # required
    #             credentials_map: {
    #               'key' => 'value'
    #             }
    #           }
    #         }
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConnectorProfileOutput
    #   resp.data.connector_profile_arn #=> String
    #
    def create_connector_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConnectorProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConnectorProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConnectorProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ConflictException, Errors::ServiceQuotaExceededException, Errors::ValidationException, Errors::ConnectorAuthenticationException]),
        data_parser: Parsers::CreateConnectorProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConnectorProfile,
        stubs: @stubs,
        params_class: Params::CreateConnectorProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_connector_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Enables your application to create a new flow using Amazon AppFlow. You must create
    #       a connector profile before calling this API. Please note that the Request Syntax below shows
    #       syntax for multiple destinations, however, you can only transfer data to one item in this list
    #       at a time. Amazon AppFlow does not currently support flows to multiple destinations at
    #       once. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateFlowInput}.
    #
    # @option params [String] :flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    # @option params [String] :description
    #   <p> A description of the flow you want to create. </p>
    #
    # @option params [String] :kms_arn
    #   <p> The ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for
    #         encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS
    #         key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key. </p>
    #
    # @option params [TriggerConfig] :trigger_config
    #   <p> The trigger settings that determine how and when the flow runs. </p>
    #
    # @option params [SourceFlowConfig] :source_flow_config
    #   <p> The configuration that controls how Amazon AppFlow retrieves data from the source
    #         connector. </p>
    #
    # @option params [Array<DestinationFlowConfig>] :destination_flow_config_list
    #   <p> The configuration that controls how Amazon AppFlow places data in the destination
    #         connector. </p>
    #
    # @option params [Array<Task>] :tasks
    #   <p> A list of tasks that Amazon AppFlow performs while transferring the data in the
    #         flow run. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> The tags used to organize, track, or control access for your flow. </p>
    #
    # @return [Types::CreateFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_flow(
    #     flow_name: 'flowName', # required
    #     description: 'description',
    #     kms_arn: 'kmsArn',
    #     trigger_config: {
    #       trigger_type: 'Scheduled', # required - accepts ["Scheduled", "Event", "OnDemand"]
    #       trigger_properties: {
    #         scheduled: {
    #           schedule_expression: 'scheduleExpression', # required
    #           data_pull_mode: 'Incremental', # accepts ["Incremental", "Complete"]
    #           schedule_start_time: Time.now,
    #           schedule_end_time: Time.now,
    #           timezone: 'timezone',
    #           schedule_offset: 1,
    #           first_execution_from: Time.now,
    #           flow_error_deactivation_threshold: 1
    #         }
    #       }
    #     }, # required
    #     source_flow_config: {
    #       connector_type: 'Salesforce', # required - accepts ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #       api_version: 'apiVersion',
    #       connector_profile_name: 'connectorProfileName',
    #       source_connector_properties: {
    #         amplitude: {
    #           object: 'object' # required
    #         },
    #         datadog: {
    #           object: 'object' # required
    #         },
    #         dynatrace: {
    #           object: 'object' # required
    #         },
    #         google_analytics: {
    #           object: 'object' # required
    #         },
    #         infor_nexus: {
    #           object: 'object' # required
    #         },
    #         marketo: {
    #           object: 'object' # required
    #         },
    #         s3: {
    #           bucket_name: 'bucketName', # required
    #           bucket_prefix: 'bucketPrefix',
    #           s3_input_format_config: {
    #             s3_input_file_type: 'CSV' # accepts ["CSV", "JSON"]
    #           }
    #         },
    #         salesforce: {
    #           object: 'object', # required
    #           enable_dynamic_field_update: false,
    #           include_deleted_records: false
    #         },
    #         service_now: {
    #           object: 'object' # required
    #         },
    #         singular: {
    #           object: 'object' # required
    #         },
    #         slack: {
    #           object: 'object' # required
    #         },
    #         trendmicro: {
    #           object: 'object' # required
    #         },
    #         veeva: {
    #           object: 'object', # required
    #           document_type: 'documentType',
    #           include_source_files: false,
    #           include_renditions: false,
    #           include_all_versions: false
    #         },
    #         zendesk: {
    #           object: 'object' # required
    #         },
    #         sapo_data: {
    #           object_path: 'objectPath'
    #         },
    #         custom_connector: {
    #           entity_name: 'entityName', # required
    #           custom_properties: {
    #             'key' => 'value'
    #           }
    #         }
    #       }, # required
    #       incremental_pull_config: {
    #         datetime_type_field_name: 'datetimeTypeFieldName'
    #       }
    #     }, # required
    #     destination_flow_config_list: [
    #       {
    #         connector_type: 'Salesforce', # required - accepts ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #         api_version: 'apiVersion',
    #         connector_profile_name: 'connectorProfileName',
    #         destination_connector_properties: {
    #           redshift: {
    #             object: 'object', # required
    #             intermediate_bucket_name: 'intermediateBucketName', # required
    #             bucket_prefix: 'bucketPrefix',
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: 'bucketPrefix',
    #               bucket_name: 'bucketName'
    #             }
    #           },
    #           s3: {
    #             bucket_name: 'bucketName', # required
    #             bucket_prefix: 'bucketPrefix',
    #             s3_output_format_config: {
    #               file_type: 'CSV', # accepts ["CSV", "JSON", "PARQUET"]
    #               prefix_config: {
    #                 prefix_type: 'FILENAME', # accepts ["FILENAME", "PATH", "PATH_AND_FILENAME"]
    #                 prefix_format: 'YEAR' # accepts ["YEAR", "MONTH", "DAY", "HOUR", "MINUTE"]
    #               },
    #               aggregation_config: {
    #                 aggregation_type: 'None' # accepts ["None", "SingleFile"]
    #               },
    #               preserve_source_data_typing: false
    #             }
    #           },
    #           salesforce: {
    #             object: 'object', # required
    #             id_field_names: [
    #               'member'
    #             ],
    #             write_operation_type: 'INSERT' # accepts ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #           },
    #           snowflake: {
    #             object: 'object', # required
    #             intermediate_bucket_name: 'intermediateBucketName', # required
    #             bucket_prefix: 'bucketPrefix',
    #           },
    #           event_bridge: {
    #             object: 'object', # required
    #           },
    #           lookout_metrics: { },
    #           upsolver: {
    #             bucket_name: 'bucketName', # required
    #             bucket_prefix: 'bucketPrefix',
    #             s3_output_format_config: {
    #               file_type: 'CSV', # accepts ["CSV", "JSON", "PARQUET"]
    #             } # required
    #           },
    #           honeycode: {
    #             object: 'object', # required
    #           },
    #           customer_profiles: {
    #             domain_name: 'domainName', # required
    #             object_type_name: 'objectTypeName'
    #           },
    #           zendesk: {
    #             object: 'object', # required
    #             write_operation_type: 'INSERT' # accepts ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #           },
    #           marketo: {
    #             object: 'object', # required
    #           },
    #           custom_connector: {
    #             entity_name: 'entityName', # required
    #             write_operation_type: 'INSERT', # accepts ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #           },
    #           sapo_data: {
    #             object_path: 'objectPath', # required
    #             success_response_handling_config: {
    #               bucket_prefix: 'bucketPrefix',
    #               bucket_name: 'bucketName'
    #             },
    #             write_operation_type: 'INSERT' # accepts ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #           }
    #         } # required
    #       }
    #     ], # required
    #     tasks: [
    #       {
    #         source_fields: [
    #           'member'
    #         ], # required
    #         connector_operator: {
    #           amplitude: 'BETWEEN', # accepts ["BETWEEN"]
    #           datadog: 'PROJECTION', # accepts ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           dynatrace: 'PROJECTION', # accepts ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           google_analytics: 'PROJECTION', # accepts ["PROJECTION", "BETWEEN"]
    #           infor_nexus: 'PROJECTION', # accepts ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           marketo: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           s3: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           salesforce: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           service_now: 'PROJECTION', # accepts ["PROJECTION", "CONTAINS", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           singular: 'PROJECTION', # accepts ["PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           slack: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           trendmicro: 'PROJECTION', # accepts ["PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           veeva: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           zendesk: 'PROJECTION', # accepts ["PROJECTION", "GREATER_THAN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           sapo_data: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           custom_connector: 'PROJECTION' # accepts ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #         },
    #         destination_field: 'destinationField',
    #         task_type: 'Arithmetic', # required - accepts ["Arithmetic", "Filter", "Map", "Map_all", "Mask", "Merge", "Passthrough", "Truncate", "Validate"]
    #         task_properties: {
    #           'key' => 'value'
    #         }
    #       }
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFlowOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.flow_status #=> String, one of ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"]
    #
    def create_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ConflictException, Errors::ServiceQuotaExceededException, Errors::ConnectorServerException, Errors::ValidationException, Errors::ConnectorAuthenticationException]),
        data_parser: Parsers::CreateFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFlow,
        stubs: @stubs,
        params_class: Params::CreateFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Enables you to delete an existing connector profile. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConnectorProfileInput}.
    #
    # @option params [String] :connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in your account. </p>
    #
    # @option params [Boolean] :force_delete
    #   <p> Indicates whether Amazon AppFlow should delete the profile, even if it is currently
    #         in use in one or more flows. </p>
    #
    # @return [Types::DeleteConnectorProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connector_profile(
    #     connector_profile_name: 'connectorProfileName', # required
    #     force_delete: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConnectorProfileOutput
    #
    def delete_connector_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConnectorProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConnectorProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConnectorProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::DeleteConnectorProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConnectorProfile,
        stubs: @stubs,
        params_class: Params::DeleteConnectorProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_connector_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Enables your application to delete an existing flow. Before deleting the flow, Amazon AppFlow validates the request by checking the flow configuration and status. You can
    #       delete flows one at a time. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFlowInput}.
    #
    # @option params [String] :flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    # @option params [Boolean] :force_delete
    #   <p> Indicates whether Amazon AppFlow should delete the flow, even if it is currently in
    #         use. </p>
    #
    # @return [Types::DeleteFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_flow(
    #     flow_name: 'flowName', # required
    #     force_delete: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFlowOutput
    #
    def delete_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::DeleteFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFlow,
        stubs: @stubs,
        params_class: Params::DeleteFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the given custom connector registered in your Amazon Web Services account. This
    #       API can be used for custom connectors that are registered in your account and also for Amazon
    #       authored connectors.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConnectorInput}.
    #
    # @option params [String] :connector_type
    #   <p>The connector type, such as CUSTOMCONNECTOR, Saleforce, Marketo. Please choose
    #         CUSTOMCONNECTOR for Lambda based custom connectors.</p>
    #
    # @option params [String] :connector_label
    #   <p>The label of the connector. The label is unique for each
    #           <code>ConnectorRegistration</code> in your Amazon Web Services account. Only needed if
    #         calling for CUSTOMCONNECTOR connector type/.</p>
    #
    # @return [Types::DescribeConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connector(
    #     connector_type: 'Salesforce', # required - accepts ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #     connector_label: 'connectorLabel'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConnectorOutput
    #   resp.data.connector_configuration #=> Types::ConnectorConfiguration
    #   resp.data.connector_configuration.can_use_as_source #=> Boolean
    #   resp.data.connector_configuration.can_use_as_destination #=> Boolean
    #   resp.data.connector_configuration.supported_destination_connectors #=> Array<String>
    #   resp.data.connector_configuration.supported_destination_connectors[0] #=> String, one of ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #   resp.data.connector_configuration.supported_scheduling_frequencies #=> Array<String>
    #   resp.data.connector_configuration.supported_scheduling_frequencies[0] #=> String, one of ["BYMINUTE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "ONCE"]
    #   resp.data.connector_configuration.is_private_link_enabled #=> Boolean
    #   resp.data.connector_configuration.is_private_link_endpoint_url_required #=> Boolean
    #   resp.data.connector_configuration.supported_trigger_types #=> Array<String>
    #   resp.data.connector_configuration.supported_trigger_types[0] #=> String, one of ["Scheduled", "Event", "OnDemand"]
    #   resp.data.connector_configuration.connector_metadata #=> Types::ConnectorMetadata
    #   resp.data.connector_configuration.connector_metadata.amplitude #=> Types::AmplitudeMetadata
    #   resp.data.connector_configuration.connector_metadata.datadog #=> Types::DatadogMetadata
    #   resp.data.connector_configuration.connector_metadata.dynatrace #=> Types::DynatraceMetadata
    #   resp.data.connector_configuration.connector_metadata.google_analytics #=> Types::GoogleAnalyticsMetadata
    #   resp.data.connector_configuration.connector_metadata.google_analytics.o_auth_scopes #=> Array<String>
    #   resp.data.connector_configuration.connector_metadata.google_analytics.o_auth_scopes[0] #=> String
    #   resp.data.connector_configuration.connector_metadata.infor_nexus #=> Types::InforNexusMetadata
    #   resp.data.connector_configuration.connector_metadata.marketo #=> Types::MarketoMetadata
    #   resp.data.connector_configuration.connector_metadata.redshift #=> Types::RedshiftMetadata
    #   resp.data.connector_configuration.connector_metadata.s3 #=> Types::S3Metadata
    #   resp.data.connector_configuration.connector_metadata.salesforce #=> Types::SalesforceMetadata
    #   resp.data.connector_configuration.connector_metadata.salesforce.o_auth_scopes #=> Array<String>
    #   resp.data.connector_configuration.connector_metadata.service_now #=> Types::ServiceNowMetadata
    #   resp.data.connector_configuration.connector_metadata.singular #=> Types::SingularMetadata
    #   resp.data.connector_configuration.connector_metadata.slack #=> Types::SlackMetadata
    #   resp.data.connector_configuration.connector_metadata.slack.o_auth_scopes #=> Array<String>
    #   resp.data.connector_configuration.connector_metadata.snowflake #=> Types::SnowflakeMetadata
    #   resp.data.connector_configuration.connector_metadata.snowflake.supported_regions #=> Array<String>
    #   resp.data.connector_configuration.connector_metadata.snowflake.supported_regions[0] #=> String
    #   resp.data.connector_configuration.connector_metadata.trendmicro #=> Types::TrendmicroMetadata
    #   resp.data.connector_configuration.connector_metadata.veeva #=> Types::VeevaMetadata
    #   resp.data.connector_configuration.connector_metadata.zendesk #=> Types::ZendeskMetadata
    #   resp.data.connector_configuration.connector_metadata.zendesk.o_auth_scopes #=> Array<String>
    #   resp.data.connector_configuration.connector_metadata.event_bridge #=> Types::EventBridgeMetadata
    #   resp.data.connector_configuration.connector_metadata.upsolver #=> Types::UpsolverMetadata
    #   resp.data.connector_configuration.connector_metadata.customer_profiles #=> Types::CustomerProfilesMetadata
    #   resp.data.connector_configuration.connector_metadata.honeycode #=> Types::HoneycodeMetadata
    #   resp.data.connector_configuration.connector_metadata.honeycode.o_auth_scopes #=> Array<String>
    #   resp.data.connector_configuration.connector_metadata.sapo_data #=> Types::SAPODataMetadata
    #   resp.data.connector_configuration.connector_type #=> String, one of ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #   resp.data.connector_configuration.connector_label #=> String
    #   resp.data.connector_configuration.connector_description #=> String
    #   resp.data.connector_configuration.connector_owner #=> String
    #   resp.data.connector_configuration.connector_name #=> String
    #   resp.data.connector_configuration.connector_version #=> String
    #   resp.data.connector_configuration.connector_arn #=> String
    #   resp.data.connector_configuration.connector_modes #=> Array<String>
    #   resp.data.connector_configuration.connector_modes[0] #=> String
    #   resp.data.connector_configuration.authentication_config #=> Types::AuthenticationConfig
    #   resp.data.connector_configuration.authentication_config.is_basic_auth_supported #=> Boolean
    #   resp.data.connector_configuration.authentication_config.is_api_key_auth_supported #=> Boolean
    #   resp.data.connector_configuration.authentication_config.is_o_auth2_supported #=> Boolean
    #   resp.data.connector_configuration.authentication_config.is_custom_auth_supported #=> Boolean
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults #=> Types::OAuth2Defaults
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.oauth_scopes #=> Array<String>
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.token_urls #=> Array<String>
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.token_urls[0] #=> String
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.auth_code_urls #=> Array<String>
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.auth_code_urls[0] #=> String
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.oauth2_grant_types_supported #=> Array<String>
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.oauth2_grant_types_supported[0] #=> String, one of ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE"]
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.oauth2_custom_properties #=> Array<OAuth2CustomParameter>
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.oauth2_custom_properties[0] #=> Types::OAuth2CustomParameter
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.oauth2_custom_properties[0].key #=> String
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.oauth2_custom_properties[0].is_required #=> Boolean
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.oauth2_custom_properties[0].label #=> String
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.oauth2_custom_properties[0].description #=> String
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.oauth2_custom_properties[0].is_sensitive_field #=> Boolean
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.oauth2_custom_properties[0].connector_supplied_values #=> Array<String>
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.oauth2_custom_properties[0].connector_supplied_values[0] #=> String
    #   resp.data.connector_configuration.authentication_config.o_auth2_defaults.oauth2_custom_properties[0].type #=> String, one of ["TOKEN_URL", "AUTH_URL"]
    #   resp.data.connector_configuration.authentication_config.custom_auth_configs #=> Array<CustomAuthConfig>
    #   resp.data.connector_configuration.authentication_config.custom_auth_configs[0] #=> Types::CustomAuthConfig
    #   resp.data.connector_configuration.authentication_config.custom_auth_configs[0].custom_authentication_type #=> String
    #   resp.data.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters #=> Array<AuthParameter>
    #   resp.data.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters[0] #=> Types::AuthParameter
    #   resp.data.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters[0].key #=> String
    #   resp.data.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters[0].is_required #=> Boolean
    #   resp.data.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters[0].label #=> String
    #   resp.data.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters[0].description #=> String
    #   resp.data.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters[0].is_sensitive_field #=> Boolean
    #   resp.data.connector_configuration.authentication_config.custom_auth_configs[0].auth_parameters[0].connector_supplied_values #=> Array<String>
    #   resp.data.connector_configuration.connector_runtime_settings #=> Array<ConnectorRuntimeSetting>
    #   resp.data.connector_configuration.connector_runtime_settings[0] #=> Types::ConnectorRuntimeSetting
    #   resp.data.connector_configuration.connector_runtime_settings[0].key #=> String
    #   resp.data.connector_configuration.connector_runtime_settings[0].data_type #=> String
    #   resp.data.connector_configuration.connector_runtime_settings[0].is_required #=> Boolean
    #   resp.data.connector_configuration.connector_runtime_settings[0].label #=> String
    #   resp.data.connector_configuration.connector_runtime_settings[0].description #=> String
    #   resp.data.connector_configuration.connector_runtime_settings[0].scope #=> String
    #   resp.data.connector_configuration.connector_runtime_settings[0].connector_supplied_value_options #=> Array<String>
    #   resp.data.connector_configuration.connector_runtime_settings[0].connector_supplied_value_options[0] #=> String
    #   resp.data.connector_configuration.supported_api_versions #=> Array<String>
    #   resp.data.connector_configuration.supported_api_versions[0] #=> String
    #   resp.data.connector_configuration.supported_operators #=> Array<String>
    #   resp.data.connector_configuration.supported_operators[0] #=> String, one of ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.connector_configuration.supported_write_operations #=> Array<String>
    #   resp.data.connector_configuration.supported_write_operations[0] #=> String, one of ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #   resp.data.connector_configuration.connector_provisioning_type #=> String, one of ["LAMBDA"]
    #   resp.data.connector_configuration.connector_provisioning_config #=> Types::ConnectorProvisioningConfig
    #   resp.data.connector_configuration.connector_provisioning_config.lambda #=> Types::LambdaConnectorProvisioningConfig
    #   resp.data.connector_configuration.connector_provisioning_config.lambda.lambda_arn #=> String
    #   resp.data.connector_configuration.logo_url #=> String
    #   resp.data.connector_configuration.registered_at #=> Time
    #   resp.data.connector_configuration.registered_by #=> String
    #
    def describe_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConnector
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConnector,
        stubs: @stubs,
        params_class: Params::DescribeConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Provides details regarding the entity used with the connector, with a description of the
    #       data model for each field in that entity. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConnectorEntityInput}.
    #
    # @option params [String] :connector_entity_name
    #   <p> The entity name for that connector. </p>
    #
    # @option params [String] :connector_type
    #   <p> The type of connector application, such as Salesforce, Amplitude, and so on. </p>
    #
    # @option params [String] :connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in the Amazon Web Services account. </p>
    #
    # @option params [String] :api_version
    #   <p>The version of the API that's used by the connector.</p>
    #
    # @return [Types::DescribeConnectorEntityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connector_entity(
    #     connector_entity_name: 'connectorEntityName', # required
    #     connector_type: 'Salesforce', # accepts ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #     connector_profile_name: 'connectorProfileName',
    #     api_version: 'apiVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConnectorEntityOutput
    #   resp.data.connector_entity_fields #=> Array<ConnectorEntityField>
    #   resp.data.connector_entity_fields[0] #=> Types::ConnectorEntityField
    #   resp.data.connector_entity_fields[0].identifier #=> String
    #   resp.data.connector_entity_fields[0].parent_identifier #=> String
    #   resp.data.connector_entity_fields[0].label #=> String
    #   resp.data.connector_entity_fields[0].is_primary_key #=> Boolean
    #   resp.data.connector_entity_fields[0].default_value #=> String
    #   resp.data.connector_entity_fields[0].is_deprecated #=> Boolean
    #   resp.data.connector_entity_fields[0].supported_field_type_details #=> Types::SupportedFieldTypeDetails
    #   resp.data.connector_entity_fields[0].supported_field_type_details.v1 #=> Types::FieldTypeDetails
    #   resp.data.connector_entity_fields[0].supported_field_type_details.v1.field_type #=> String
    #   resp.data.connector_entity_fields[0].supported_field_type_details.v1.filter_operators #=> Array<String>
    #   resp.data.connector_entity_fields[0].supported_field_type_details.v1.filter_operators[0] #=> String, one of ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.connector_entity_fields[0].supported_field_type_details.v1.supported_values #=> Array<String>
    #   resp.data.connector_entity_fields[0].supported_field_type_details.v1.supported_values[0] #=> String
    #   resp.data.connector_entity_fields[0].supported_field_type_details.v1.value_regex_pattern #=> String
    #   resp.data.connector_entity_fields[0].supported_field_type_details.v1.supported_date_format #=> String
    #   resp.data.connector_entity_fields[0].supported_field_type_details.v1.field_value_range #=> Types::Range
    #   resp.data.connector_entity_fields[0].supported_field_type_details.v1.field_value_range.maximum #=> Float
    #   resp.data.connector_entity_fields[0].supported_field_type_details.v1.field_value_range.minimum #=> Float
    #   resp.data.connector_entity_fields[0].supported_field_type_details.v1.field_length_range #=> Types::Range
    #   resp.data.connector_entity_fields[0].description #=> String
    #   resp.data.connector_entity_fields[0].source_properties #=> Types::SourceFieldProperties
    #   resp.data.connector_entity_fields[0].source_properties.is_retrievable #=> Boolean
    #   resp.data.connector_entity_fields[0].source_properties.is_queryable #=> Boolean
    #   resp.data.connector_entity_fields[0].source_properties.is_timestamp_field_for_incremental_queries #=> Boolean
    #   resp.data.connector_entity_fields[0].destination_properties #=> Types::DestinationFieldProperties
    #   resp.data.connector_entity_fields[0].destination_properties.is_creatable #=> Boolean
    #   resp.data.connector_entity_fields[0].destination_properties.is_nullable #=> Boolean
    #   resp.data.connector_entity_fields[0].destination_properties.is_upsertable #=> Boolean
    #   resp.data.connector_entity_fields[0].destination_properties.is_updatable #=> Boolean
    #   resp.data.connector_entity_fields[0].destination_properties.is_defaulted_on_create #=> Boolean
    #   resp.data.connector_entity_fields[0].destination_properties.supported_write_operations #=> Array<String>
    #   resp.data.connector_entity_fields[0].destination_properties.supported_write_operations[0] #=> String, one of ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #   resp.data.connector_entity_fields[0].custom_properties #=> Hash<String, String>
    #   resp.data.connector_entity_fields[0].custom_properties['key'] #=> String
    #
    def describe_connector_entity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConnectorEntityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConnectorEntityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConnectorEntity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ConnectorServerException, Errors::ValidationException, Errors::ConnectorAuthenticationException]),
        data_parser: Parsers::DescribeConnectorEntity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConnectorEntity,
        stubs: @stubs,
        params_class: Params::DescribeConnectorEntityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_connector_entity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of <code>connector-profile</code> details matching the provided
    #         <code>connector-profile</code> names and <code>connector-types</code>. Both input lists are
    #       optional, and you can use them to filter the result. </p>
    #          <p>If no names or <code>connector-types</code> are provided, returns all connector profiles
    #       in a paginated form. If there is no match, this operation returns an empty list.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConnectorProfilesInput}.
    #
    # @option params [Array<String>] :connector_profile_names
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in the Amazon Web Services account. </p>
    #
    # @option params [String] :connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #
    # @option params [String] :connector_label
    #   <p>The name of the connector. The name is unique for each <code>ConnectorRegistration</code>
    #         in your Amazon Web Services account. Only needed if calling for CUSTOMCONNECTOR connector
    #         type/.</p>
    #
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of items that should be returned in the result set. The
    #         default for <code>maxResults</code> is 20 (for all paginated API operations). </p>
    #
    # @option params [String] :next_token
    #   <p> The pagination token for the next page of data. </p>
    #
    # @return [Types::DescribeConnectorProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connector_profiles(
    #     connector_profile_names: [
    #       'member'
    #     ],
    #     connector_type: 'Salesforce', # accepts ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #     connector_label: 'connectorLabel',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConnectorProfilesOutput
    #   resp.data.connector_profile_details #=> Array<ConnectorProfile>
    #   resp.data.connector_profile_details[0] #=> Types::ConnectorProfile
    #   resp.data.connector_profile_details[0].connector_profile_arn #=> String
    #   resp.data.connector_profile_details[0].connector_profile_name #=> String
    #   resp.data.connector_profile_details[0].connector_type #=> String, one of ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #   resp.data.connector_profile_details[0].connector_label #=> String
    #   resp.data.connector_profile_details[0].connection_mode #=> String, one of ["Public", "Private"]
    #   resp.data.connector_profile_details[0].credentials_arn #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties #=> Types::ConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.amplitude #=> Types::AmplitudeConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.datadog #=> Types::DatadogConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.datadog.instance_url #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.dynatrace #=> Types::DynatraceConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.dynatrace.instance_url #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.google_analytics #=> Types::GoogleAnalyticsConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.honeycode #=> Types::HoneycodeConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.infor_nexus #=> Types::InforNexusConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.infor_nexus.instance_url #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.marketo #=> Types::MarketoConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.marketo.instance_url #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.redshift #=> Types::RedshiftConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.redshift.database_url #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.redshift.bucket_name #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.redshift.bucket_prefix #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.redshift.role_arn #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.salesforce #=> Types::SalesforceConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.salesforce.instance_url #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.salesforce.is_sandbox_environment #=> Boolean
    #   resp.data.connector_profile_details[0].connector_profile_properties.service_now #=> Types::ServiceNowConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.service_now.instance_url #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.singular #=> Types::SingularConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.slack #=> Types::SlackConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.slack.instance_url #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.snowflake #=> Types::SnowflakeConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.snowflake.warehouse #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.snowflake.stage #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.snowflake.bucket_name #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.snowflake.bucket_prefix #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.snowflake.private_link_service_name #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.snowflake.account_name #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.snowflake.region #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.trendmicro #=> Types::TrendmicroConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.veeva #=> Types::VeevaConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.veeva.instance_url #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.zendesk #=> Types::ZendeskConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.zendesk.instance_url #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.sapo_data #=> Types::SAPODataConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.sapo_data.application_host_url #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.sapo_data.application_service_path #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.sapo_data.port_number #=> Integer
    #   resp.data.connector_profile_details[0].connector_profile_properties.sapo_data.client_number #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.sapo_data.logon_language #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.sapo_data.private_link_service_name #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.sapo_data.o_auth_properties #=> Types::OAuthProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.sapo_data.o_auth_properties.token_url #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.sapo_data.o_auth_properties.auth_code_url #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.sapo_data.o_auth_properties.o_auth_scopes #=> Array<String>
    #   resp.data.connector_profile_details[0].connector_profile_properties.sapo_data.o_auth_properties.o_auth_scopes[0] #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.custom_connector #=> Types::CustomConnectorProfileProperties
    #   resp.data.connector_profile_details[0].connector_profile_properties.custom_connector.profile_properties #=> Hash<String, String>
    #   resp.data.connector_profile_details[0].connector_profile_properties.custom_connector.profile_properties['key'] #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.custom_connector.o_auth2_properties #=> Types::OAuth2Properties
    #   resp.data.connector_profile_details[0].connector_profile_properties.custom_connector.o_auth2_properties.token_url #=> String
    #   resp.data.connector_profile_details[0].connector_profile_properties.custom_connector.o_auth2_properties.o_auth2_grant_type #=> String, one of ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE"]
    #   resp.data.connector_profile_details[0].connector_profile_properties.custom_connector.o_auth2_properties.token_url_custom_properties #=> Hash<String, String>
    #   resp.data.connector_profile_details[0].connector_profile_properties.custom_connector.o_auth2_properties.token_url_custom_properties['key'] #=> String
    #   resp.data.connector_profile_details[0].created_at #=> Time
    #   resp.data.connector_profile_details[0].last_updated_at #=> Time
    #   resp.data.connector_profile_details[0].private_connection_provisioning_state #=> Types::PrivateConnectionProvisioningState
    #   resp.data.connector_profile_details[0].private_connection_provisioning_state.status #=> String, one of ["FAILED", "PENDING", "CREATED"]
    #   resp.data.connector_profile_details[0].private_connection_provisioning_state.failure_message #=> String
    #   resp.data.connector_profile_details[0].private_connection_provisioning_state.failure_cause #=> String, one of ["CONNECTOR_AUTHENTICATION", "CONNECTOR_SERVER", "INTERNAL_SERVER", "ACCESS_DENIED", "VALIDATION"]
    #   resp.data.next_token #=> String
    #
    def describe_connector_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConnectorProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConnectorProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConnectorProfiles
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeConnectorProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConnectorProfiles,
        stubs: @stubs,
        params_class: Params::DescribeConnectorProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_connector_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Describes the connectors vended by Amazon AppFlow for specified connector types. If
    #       you don't specify a connector type, this operation describes all connectors vended by Amazon AppFlow. If there are more connectors than can be returned in one page, the response
    #       contains a <code>nextToken</code> object, which can be be passed in to the next call to the
    #         <code>DescribeConnectors</code> API operation to retrieve the next page. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConnectorsInput}.
    #
    # @option params [Array<String>] :connector_types
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items that should be returned in the result set. The default is
    #         20.</p>
    #
    # @option params [String] :next_token
    #   <p> The pagination token for the next page of data. </p>
    #
    # @return [Types::DescribeConnectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connectors(
    #     connector_types: [
    #       'Salesforce' # accepts ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConnectorsOutput
    #   resp.data.connector_configurations #=> Hash<String, ConnectorConfiguration>
    #   resp.data.connector_configurations['key'] #=> Types::ConnectorConfiguration
    #   resp.data.connector_configurations['key'].can_use_as_source #=> Boolean
    #   resp.data.connector_configurations['key'].can_use_as_destination #=> Boolean
    #   resp.data.connector_configurations['key'].supported_destination_connectors #=> Array<String>
    #   resp.data.connector_configurations['key'].supported_destination_connectors[0] #=> String, one of ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #   resp.data.connector_configurations['key'].supported_scheduling_frequencies #=> Array<String>
    #   resp.data.connector_configurations['key'].supported_scheduling_frequencies[0] #=> String, one of ["BYMINUTE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY", "ONCE"]
    #   resp.data.connector_configurations['key'].is_private_link_enabled #=> Boolean
    #   resp.data.connector_configurations['key'].is_private_link_endpoint_url_required #=> Boolean
    #   resp.data.connector_configurations['key'].supported_trigger_types #=> Array<String>
    #   resp.data.connector_configurations['key'].supported_trigger_types[0] #=> String, one of ["Scheduled", "Event", "OnDemand"]
    #   resp.data.connector_configurations['key'].connector_metadata #=> Types::ConnectorMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.amplitude #=> Types::AmplitudeMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.datadog #=> Types::DatadogMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.dynatrace #=> Types::DynatraceMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.google_analytics #=> Types::GoogleAnalyticsMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.google_analytics.o_auth_scopes #=> Array<String>
    #   resp.data.connector_configurations['key'].connector_metadata.google_analytics.o_auth_scopes[0] #=> String
    #   resp.data.connector_configurations['key'].connector_metadata.infor_nexus #=> Types::InforNexusMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.marketo #=> Types::MarketoMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.redshift #=> Types::RedshiftMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.s3 #=> Types::S3Metadata
    #   resp.data.connector_configurations['key'].connector_metadata.salesforce #=> Types::SalesforceMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.salesforce.o_auth_scopes #=> Array<String>
    #   resp.data.connector_configurations['key'].connector_metadata.service_now #=> Types::ServiceNowMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.singular #=> Types::SingularMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.slack #=> Types::SlackMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.slack.o_auth_scopes #=> Array<String>
    #   resp.data.connector_configurations['key'].connector_metadata.snowflake #=> Types::SnowflakeMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.snowflake.supported_regions #=> Array<String>
    #   resp.data.connector_configurations['key'].connector_metadata.snowflake.supported_regions[0] #=> String
    #   resp.data.connector_configurations['key'].connector_metadata.trendmicro #=> Types::TrendmicroMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.veeva #=> Types::VeevaMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.zendesk #=> Types::ZendeskMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.zendesk.o_auth_scopes #=> Array<String>
    #   resp.data.connector_configurations['key'].connector_metadata.event_bridge #=> Types::EventBridgeMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.upsolver #=> Types::UpsolverMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.customer_profiles #=> Types::CustomerProfilesMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.honeycode #=> Types::HoneycodeMetadata
    #   resp.data.connector_configurations['key'].connector_metadata.honeycode.o_auth_scopes #=> Array<String>
    #   resp.data.connector_configurations['key'].connector_metadata.sapo_data #=> Types::SAPODataMetadata
    #   resp.data.connector_configurations['key'].connector_type #=> String, one of ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #   resp.data.connector_configurations['key'].connector_label #=> String
    #   resp.data.connector_configurations['key'].connector_description #=> String
    #   resp.data.connector_configurations['key'].connector_owner #=> String
    #   resp.data.connector_configurations['key'].connector_name #=> String
    #   resp.data.connector_configurations['key'].connector_version #=> String
    #   resp.data.connector_configurations['key'].connector_arn #=> String
    #   resp.data.connector_configurations['key'].connector_modes #=> Array<String>
    #   resp.data.connector_configurations['key'].connector_modes[0] #=> String
    #   resp.data.connector_configurations['key'].authentication_config #=> Types::AuthenticationConfig
    #   resp.data.connector_configurations['key'].authentication_config.is_basic_auth_supported #=> Boolean
    #   resp.data.connector_configurations['key'].authentication_config.is_api_key_auth_supported #=> Boolean
    #   resp.data.connector_configurations['key'].authentication_config.is_o_auth2_supported #=> Boolean
    #   resp.data.connector_configurations['key'].authentication_config.is_custom_auth_supported #=> Boolean
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults #=> Types::OAuth2Defaults
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.oauth_scopes #=> Array<String>
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.token_urls #=> Array<String>
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.token_urls[0] #=> String
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.auth_code_urls #=> Array<String>
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.auth_code_urls[0] #=> String
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.oauth2_grant_types_supported #=> Array<String>
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.oauth2_grant_types_supported[0] #=> String, one of ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE"]
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.oauth2_custom_properties #=> Array<OAuth2CustomParameter>
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.oauth2_custom_properties[0] #=> Types::OAuth2CustomParameter
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.oauth2_custom_properties[0].key #=> String
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.oauth2_custom_properties[0].is_required #=> Boolean
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.oauth2_custom_properties[0].label #=> String
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.oauth2_custom_properties[0].description #=> String
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.oauth2_custom_properties[0].is_sensitive_field #=> Boolean
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.oauth2_custom_properties[0].connector_supplied_values #=> Array<String>
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.oauth2_custom_properties[0].connector_supplied_values[0] #=> String
    #   resp.data.connector_configurations['key'].authentication_config.o_auth2_defaults.oauth2_custom_properties[0].type #=> String, one of ["TOKEN_URL", "AUTH_URL"]
    #   resp.data.connector_configurations['key'].authentication_config.custom_auth_configs #=> Array<CustomAuthConfig>
    #   resp.data.connector_configurations['key'].authentication_config.custom_auth_configs[0] #=> Types::CustomAuthConfig
    #   resp.data.connector_configurations['key'].authentication_config.custom_auth_configs[0].custom_authentication_type #=> String
    #   resp.data.connector_configurations['key'].authentication_config.custom_auth_configs[0].auth_parameters #=> Array<AuthParameter>
    #   resp.data.connector_configurations['key'].authentication_config.custom_auth_configs[0].auth_parameters[0] #=> Types::AuthParameter
    #   resp.data.connector_configurations['key'].authentication_config.custom_auth_configs[0].auth_parameters[0].key #=> String
    #   resp.data.connector_configurations['key'].authentication_config.custom_auth_configs[0].auth_parameters[0].is_required #=> Boolean
    #   resp.data.connector_configurations['key'].authentication_config.custom_auth_configs[0].auth_parameters[0].label #=> String
    #   resp.data.connector_configurations['key'].authentication_config.custom_auth_configs[0].auth_parameters[0].description #=> String
    #   resp.data.connector_configurations['key'].authentication_config.custom_auth_configs[0].auth_parameters[0].is_sensitive_field #=> Boolean
    #   resp.data.connector_configurations['key'].authentication_config.custom_auth_configs[0].auth_parameters[0].connector_supplied_values #=> Array<String>
    #   resp.data.connector_configurations['key'].connector_runtime_settings #=> Array<ConnectorRuntimeSetting>
    #   resp.data.connector_configurations['key'].connector_runtime_settings[0] #=> Types::ConnectorRuntimeSetting
    #   resp.data.connector_configurations['key'].connector_runtime_settings[0].key #=> String
    #   resp.data.connector_configurations['key'].connector_runtime_settings[0].data_type #=> String
    #   resp.data.connector_configurations['key'].connector_runtime_settings[0].is_required #=> Boolean
    #   resp.data.connector_configurations['key'].connector_runtime_settings[0].label #=> String
    #   resp.data.connector_configurations['key'].connector_runtime_settings[0].description #=> String
    #   resp.data.connector_configurations['key'].connector_runtime_settings[0].scope #=> String
    #   resp.data.connector_configurations['key'].connector_runtime_settings[0].connector_supplied_value_options #=> Array<String>
    #   resp.data.connector_configurations['key'].connector_runtime_settings[0].connector_supplied_value_options[0] #=> String
    #   resp.data.connector_configurations['key'].supported_api_versions #=> Array<String>
    #   resp.data.connector_configurations['key'].supported_api_versions[0] #=> String
    #   resp.data.connector_configurations['key'].supported_operators #=> Array<String>
    #   resp.data.connector_configurations['key'].supported_operators[0] #=> String, one of ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.connector_configurations['key'].supported_write_operations #=> Array<String>
    #   resp.data.connector_configurations['key'].supported_write_operations[0] #=> String, one of ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #   resp.data.connector_configurations['key'].connector_provisioning_type #=> String, one of ["LAMBDA"]
    #   resp.data.connector_configurations['key'].connector_provisioning_config #=> Types::ConnectorProvisioningConfig
    #   resp.data.connector_configurations['key'].connector_provisioning_config.lambda #=> Types::LambdaConnectorProvisioningConfig
    #   resp.data.connector_configurations['key'].connector_provisioning_config.lambda.lambda_arn #=> String
    #   resp.data.connector_configurations['key'].logo_url #=> String
    #   resp.data.connector_configurations['key'].registered_at #=> Time
    #   resp.data.connector_configurations['key'].registered_by #=> String
    #   resp.data.connectors #=> Array<ConnectorDetail>
    #   resp.data.connectors[0] #=> Types::ConnectorDetail
    #   resp.data.connectors[0].connector_description #=> String
    #   resp.data.connectors[0].connector_name #=> String
    #   resp.data.connectors[0].connector_owner #=> String
    #   resp.data.connectors[0].connector_version #=> String
    #   resp.data.connectors[0].application_type #=> String
    #   resp.data.connectors[0].connector_type #=> String, one of ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #   resp.data.connectors[0].connector_label #=> String
    #   resp.data.connectors[0].registered_at #=> Time
    #   resp.data.connectors[0].registered_by #=> String
    #   resp.data.connectors[0].connector_provisioning_type #=> String, one of ["LAMBDA"]
    #   resp.data.connectors[0].connector_modes #=> Array<String>
    #   resp.data.next_token #=> String
    #
    def describe_connectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConnectorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConnectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConnectors
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeConnectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConnectors,
        stubs: @stubs,
        params_class: Params::DescribeConnectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_connectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Provides a description of the specified flow. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFlowInput}.
    #
    # @option params [String] :flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    # @return [Types::DescribeFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_flow(
    #     flow_name: 'flowName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFlowOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.description #=> String
    #   resp.data.flow_name #=> String
    #   resp.data.kms_arn #=> String
    #   resp.data.flow_status #=> String, one of ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"]
    #   resp.data.flow_status_message #=> String
    #   resp.data.source_flow_config #=> Types::SourceFlowConfig
    #   resp.data.source_flow_config.connector_type #=> String, one of ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #   resp.data.source_flow_config.api_version #=> String
    #   resp.data.source_flow_config.connector_profile_name #=> String
    #   resp.data.source_flow_config.source_connector_properties #=> Types::SourceConnectorProperties
    #   resp.data.source_flow_config.source_connector_properties.amplitude #=> Types::AmplitudeSourceProperties
    #   resp.data.source_flow_config.source_connector_properties.amplitude.object #=> String
    #   resp.data.source_flow_config.source_connector_properties.datadog #=> Types::DatadogSourceProperties
    #   resp.data.source_flow_config.source_connector_properties.datadog.object #=> String
    #   resp.data.source_flow_config.source_connector_properties.dynatrace #=> Types::DynatraceSourceProperties
    #   resp.data.source_flow_config.source_connector_properties.dynatrace.object #=> String
    #   resp.data.source_flow_config.source_connector_properties.google_analytics #=> Types::GoogleAnalyticsSourceProperties
    #   resp.data.source_flow_config.source_connector_properties.google_analytics.object #=> String
    #   resp.data.source_flow_config.source_connector_properties.infor_nexus #=> Types::InforNexusSourceProperties
    #   resp.data.source_flow_config.source_connector_properties.infor_nexus.object #=> String
    #   resp.data.source_flow_config.source_connector_properties.marketo #=> Types::MarketoSourceProperties
    #   resp.data.source_flow_config.source_connector_properties.marketo.object #=> String
    #   resp.data.source_flow_config.source_connector_properties.s3 #=> Types::S3SourceProperties
    #   resp.data.source_flow_config.source_connector_properties.s3.bucket_name #=> String
    #   resp.data.source_flow_config.source_connector_properties.s3.bucket_prefix #=> String
    #   resp.data.source_flow_config.source_connector_properties.s3.s3_input_format_config #=> Types::S3InputFormatConfig
    #   resp.data.source_flow_config.source_connector_properties.s3.s3_input_format_config.s3_input_file_type #=> String, one of ["CSV", "JSON"]
    #   resp.data.source_flow_config.source_connector_properties.salesforce #=> Types::SalesforceSourceProperties
    #   resp.data.source_flow_config.source_connector_properties.salesforce.object #=> String
    #   resp.data.source_flow_config.source_connector_properties.salesforce.enable_dynamic_field_update #=> Boolean
    #   resp.data.source_flow_config.source_connector_properties.salesforce.include_deleted_records #=> Boolean
    #   resp.data.source_flow_config.source_connector_properties.service_now #=> Types::ServiceNowSourceProperties
    #   resp.data.source_flow_config.source_connector_properties.service_now.object #=> String
    #   resp.data.source_flow_config.source_connector_properties.singular #=> Types::SingularSourceProperties
    #   resp.data.source_flow_config.source_connector_properties.singular.object #=> String
    #   resp.data.source_flow_config.source_connector_properties.slack #=> Types::SlackSourceProperties
    #   resp.data.source_flow_config.source_connector_properties.slack.object #=> String
    #   resp.data.source_flow_config.source_connector_properties.trendmicro #=> Types::TrendmicroSourceProperties
    #   resp.data.source_flow_config.source_connector_properties.trendmicro.object #=> String
    #   resp.data.source_flow_config.source_connector_properties.veeva #=> Types::VeevaSourceProperties
    #   resp.data.source_flow_config.source_connector_properties.veeva.object #=> String
    #   resp.data.source_flow_config.source_connector_properties.veeva.document_type #=> String
    #   resp.data.source_flow_config.source_connector_properties.veeva.include_source_files #=> Boolean
    #   resp.data.source_flow_config.source_connector_properties.veeva.include_renditions #=> Boolean
    #   resp.data.source_flow_config.source_connector_properties.veeva.include_all_versions #=> Boolean
    #   resp.data.source_flow_config.source_connector_properties.zendesk #=> Types::ZendeskSourceProperties
    #   resp.data.source_flow_config.source_connector_properties.zendesk.object #=> String
    #   resp.data.source_flow_config.source_connector_properties.sapo_data #=> Types::SAPODataSourceProperties
    #   resp.data.source_flow_config.source_connector_properties.sapo_data.object_path #=> String
    #   resp.data.source_flow_config.source_connector_properties.custom_connector #=> Types::CustomConnectorSourceProperties
    #   resp.data.source_flow_config.source_connector_properties.custom_connector.entity_name #=> String
    #   resp.data.source_flow_config.source_connector_properties.custom_connector.custom_properties #=> Hash<String, String>
    #   resp.data.source_flow_config.source_connector_properties.custom_connector.custom_properties['key'] #=> String
    #   resp.data.source_flow_config.incremental_pull_config #=> Types::IncrementalPullConfig
    #   resp.data.source_flow_config.incremental_pull_config.datetime_type_field_name #=> String
    #   resp.data.destination_flow_config_list #=> Array<DestinationFlowConfig>
    #   resp.data.destination_flow_config_list[0] #=> Types::DestinationFlowConfig
    #   resp.data.destination_flow_config_list[0].connector_type #=> String, one of ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #   resp.data.destination_flow_config_list[0].api_version #=> String
    #   resp.data.destination_flow_config_list[0].connector_profile_name #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties #=> Types::DestinationConnectorProperties
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.redshift #=> Types::RedshiftDestinationProperties
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.redshift.object #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.redshift.intermediate_bucket_name #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.redshift.bucket_prefix #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.redshift.error_handling_config #=> Types::ErrorHandlingConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.redshift.error_handling_config.fail_on_first_destination_error #=> Boolean
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.redshift.error_handling_config.bucket_prefix #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.redshift.error_handling_config.bucket_name #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.s3 #=> Types::S3DestinationProperties
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.s3.bucket_name #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.s3.bucket_prefix #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config #=> Types::S3OutputFormatConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config.file_type #=> String, one of ["CSV", "JSON", "PARQUET"]
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config.prefix_config #=> Types::PrefixConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config.prefix_config.prefix_type #=> String, one of ["FILENAME", "PATH", "PATH_AND_FILENAME"]
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config.prefix_config.prefix_format #=> String, one of ["YEAR", "MONTH", "DAY", "HOUR", "MINUTE"]
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config.aggregation_config #=> Types::AggregationConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config.aggregation_config.aggregation_type #=> String, one of ["None", "SingleFile"]
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.s3.s3_output_format_config.preserve_source_data_typing #=> Boolean
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.salesforce #=> Types::SalesforceDestinationProperties
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.salesforce.object #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.salesforce.id_field_names #=> Array<String>
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.salesforce.id_field_names[0] #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.salesforce.error_handling_config #=> Types::ErrorHandlingConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.salesforce.write_operation_type #=> String, one of ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.snowflake #=> Types::SnowflakeDestinationProperties
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.snowflake.object #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.snowflake.intermediate_bucket_name #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.snowflake.bucket_prefix #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.snowflake.error_handling_config #=> Types::ErrorHandlingConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.event_bridge #=> Types::EventBridgeDestinationProperties
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.event_bridge.object #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.event_bridge.error_handling_config #=> Types::ErrorHandlingConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.lookout_metrics #=> Types::LookoutMetricsDestinationProperties
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.upsolver #=> Types::UpsolverDestinationProperties
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.upsolver.bucket_name #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.upsolver.bucket_prefix #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.upsolver.s3_output_format_config #=> Types::UpsolverS3OutputFormatConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.upsolver.s3_output_format_config.file_type #=> String, one of ["CSV", "JSON", "PARQUET"]
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.upsolver.s3_output_format_config.prefix_config #=> Types::PrefixConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.upsolver.s3_output_format_config.aggregation_config #=> Types::AggregationConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.honeycode #=> Types::HoneycodeDestinationProperties
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.honeycode.object #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.honeycode.error_handling_config #=> Types::ErrorHandlingConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.customer_profiles #=> Types::CustomerProfilesDestinationProperties
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.customer_profiles.domain_name #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.customer_profiles.object_type_name #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.zendesk #=> Types::ZendeskDestinationProperties
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.zendesk.object #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.zendesk.id_field_names #=> Array<String>
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.zendesk.error_handling_config #=> Types::ErrorHandlingConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.zendesk.write_operation_type #=> String, one of ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.marketo #=> Types::MarketoDestinationProperties
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.marketo.object #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.marketo.error_handling_config #=> Types::ErrorHandlingConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.custom_connector #=> Types::CustomConnectorDestinationProperties
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.custom_connector.entity_name #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.custom_connector.error_handling_config #=> Types::ErrorHandlingConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.custom_connector.write_operation_type #=> String, one of ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.custom_connector.id_field_names #=> Array<String>
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.custom_connector.custom_properties #=> Hash<String, String>
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.sapo_data #=> Types::SAPODataDestinationProperties
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.sapo_data.object_path #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.sapo_data.success_response_handling_config #=> Types::SuccessResponseHandlingConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.sapo_data.success_response_handling_config.bucket_prefix #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.sapo_data.success_response_handling_config.bucket_name #=> String
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.sapo_data.id_field_names #=> Array<String>
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.sapo_data.error_handling_config #=> Types::ErrorHandlingConfig
    #   resp.data.destination_flow_config_list[0].destination_connector_properties.sapo_data.write_operation_type #=> String, one of ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #   resp.data.last_run_execution_details #=> Types::ExecutionDetails
    #   resp.data.last_run_execution_details.most_recent_execution_message #=> String
    #   resp.data.last_run_execution_details.most_recent_execution_time #=> Time
    #   resp.data.last_run_execution_details.most_recent_execution_status #=> String, one of ["InProgress", "Successful", "Error"]
    #   resp.data.trigger_config #=> Types::TriggerConfig
    #   resp.data.trigger_config.trigger_type #=> String, one of ["Scheduled", "Event", "OnDemand"]
    #   resp.data.trigger_config.trigger_properties #=> Types::TriggerProperties
    #   resp.data.trigger_config.trigger_properties.scheduled #=> Types::ScheduledTriggerProperties
    #   resp.data.trigger_config.trigger_properties.scheduled.schedule_expression #=> String
    #   resp.data.trigger_config.trigger_properties.scheduled.data_pull_mode #=> String, one of ["Incremental", "Complete"]
    #   resp.data.trigger_config.trigger_properties.scheduled.schedule_start_time #=> Time
    #   resp.data.trigger_config.trigger_properties.scheduled.schedule_end_time #=> Time
    #   resp.data.trigger_config.trigger_properties.scheduled.timezone #=> String
    #   resp.data.trigger_config.trigger_properties.scheduled.schedule_offset #=> Integer
    #   resp.data.trigger_config.trigger_properties.scheduled.first_execution_from #=> Time
    #   resp.data.trigger_config.trigger_properties.scheduled.flow_error_deactivation_threshold #=> Integer
    #   resp.data.tasks #=> Array<Task>
    #   resp.data.tasks[0] #=> Types::Task
    #   resp.data.tasks[0].source_fields #=> Array<String>
    #   resp.data.tasks[0].source_fields[0] #=> String
    #   resp.data.tasks[0].connector_operator #=> Types::ConnectorOperator
    #   resp.data.tasks[0].connector_operator.amplitude #=> String, one of ["BETWEEN"]
    #   resp.data.tasks[0].connector_operator.datadog #=> String, one of ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.tasks[0].connector_operator.dynatrace #=> String, one of ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.tasks[0].connector_operator.google_analytics #=> String, one of ["PROJECTION", "BETWEEN"]
    #   resp.data.tasks[0].connector_operator.infor_nexus #=> String, one of ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.tasks[0].connector_operator.marketo #=> String, one of ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.tasks[0].connector_operator.s3 #=> String, one of ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.tasks[0].connector_operator.salesforce #=> String, one of ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.tasks[0].connector_operator.service_now #=> String, one of ["PROJECTION", "CONTAINS", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.tasks[0].connector_operator.singular #=> String, one of ["PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.tasks[0].connector_operator.slack #=> String, one of ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.tasks[0].connector_operator.trendmicro #=> String, one of ["PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.tasks[0].connector_operator.veeva #=> String, one of ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.tasks[0].connector_operator.zendesk #=> String, one of ["PROJECTION", "GREATER_THAN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.tasks[0].connector_operator.sapo_data #=> String, one of ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.tasks[0].connector_operator.custom_connector #=> String, one of ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #   resp.data.tasks[0].destination_field #=> String
    #   resp.data.tasks[0].task_type #=> String, one of ["Arithmetic", "Filter", "Map", "Map_all", "Mask", "Merge", "Passthrough", "Truncate", "Validate"]
    #   resp.data.tasks[0].task_properties #=> Hash<String, String>
    #   resp.data.tasks[0].task_properties['key'] #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.created_by #=> String
    #   resp.data.last_updated_by #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFlow,
        stubs: @stubs,
        params_class: Params::DescribeFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Fetches the execution history of the flow. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFlowExecutionRecordsInput}.
    #
    # @option params [String] :flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of items that should be returned in the result set. The
    #         default for <code>maxResults</code> is 20 (for all paginated API operations). </p>
    #
    # @option params [String] :next_token
    #   <p> The pagination token for the next page of data. </p>
    #
    # @return [Types::DescribeFlowExecutionRecordsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_flow_execution_records(
    #     flow_name: 'flowName', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFlowExecutionRecordsOutput
    #   resp.data.flow_executions #=> Array<ExecutionRecord>
    #   resp.data.flow_executions[0] #=> Types::ExecutionRecord
    #   resp.data.flow_executions[0].execution_id #=> String
    #   resp.data.flow_executions[0].execution_status #=> String, one of ["InProgress", "Successful", "Error"]
    #   resp.data.flow_executions[0].execution_result #=> Types::ExecutionResult
    #   resp.data.flow_executions[0].execution_result.error_info #=> Types::ErrorInfo
    #   resp.data.flow_executions[0].execution_result.error_info.put_failures_count #=> Integer
    #   resp.data.flow_executions[0].execution_result.error_info.execution_message #=> String
    #   resp.data.flow_executions[0].execution_result.bytes_processed #=> Integer
    #   resp.data.flow_executions[0].execution_result.bytes_written #=> Integer
    #   resp.data.flow_executions[0].execution_result.records_processed #=> Integer
    #   resp.data.flow_executions[0].started_at #=> Time
    #   resp.data.flow_executions[0].last_updated_at #=> Time
    #   resp.data.flow_executions[0].data_pull_start_time #=> Time
    #   resp.data.flow_executions[0].data_pull_end_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_flow_execution_records(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFlowExecutionRecordsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFlowExecutionRecordsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFlowExecutionRecords
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeFlowExecutionRecords
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFlowExecutionRecords,
        stubs: @stubs,
        params_class: Params::DescribeFlowExecutionRecordsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_flow_execution_records
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the list of available connector entities supported by Amazon AppFlow. For
    #       example, you can query Salesforce for <i>Account</i> and
    #         <i>Opportunity</i> entities, or query ServiceNow for the
    #         <i>Incident</i> entity. </p>
    #
    # @param [Hash] params
    #   See {Types::ListConnectorEntitiesInput}.
    #
    # @option params [String] :connector_profile_name
    #   <p> The name of the connector profile. The name is unique for each
    #           <code>ConnectorProfile</code> in the Amazon Web Services account, and is used to query the
    #         downstream connector. </p>
    #
    # @option params [String] :connector_type
    #   <p> The type of connector, such as Salesforce, Amplitude, and so on. </p>
    #
    # @option params [String] :entities_path
    #   <p> This optional parameter is specific to connector implementation. Some connectors support
    #         multiple levels or categories of entities. You can find out the list of roots for such
    #         providers by sending a request without the <code>entitiesPath</code> parameter. If the
    #         connector supports entities at different roots, this initial request returns the list of
    #         roots. Otherwise, this request returns all entities supported by the provider. </p>
    #
    # @option params [String] :api_version
    #   <p>The version of the API that's used by the connector.</p>
    #
    # @return [Types::ListConnectorEntitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connector_entities(
    #     connector_profile_name: 'connectorProfileName',
    #     connector_type: 'Salesforce', # accepts ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #     entities_path: 'entitiesPath',
    #     api_version: 'apiVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConnectorEntitiesOutput
    #   resp.data.connector_entity_map #=> Hash<String, Array<ConnectorEntity>>
    #   resp.data.connector_entity_map['key'] #=> Array<ConnectorEntity>
    #   resp.data.connector_entity_map['key'][0] #=> Types::ConnectorEntity
    #   resp.data.connector_entity_map['key'][0].name #=> String
    #   resp.data.connector_entity_map['key'][0].label #=> String
    #   resp.data.connector_entity_map['key'][0].has_nested_entities #=> Boolean
    #
    def list_connector_entities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConnectorEntitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConnectorEntitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConnectorEntities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ConnectorServerException, Errors::ValidationException, Errors::ConnectorAuthenticationException]),
        data_parser: Parsers::ListConnectorEntities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConnectorEntities,
        stubs: @stubs,
        params_class: Params::ListConnectorEntitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_connector_entities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the list of all registered custom connectors in your Amazon Web Services account.
    #       This API lists only custom connectors registered in this account, not the Amazon Web Services
    #       authored connectors. </p>
    #
    # @param [Hash] params
    #   See {Types::ListConnectorsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of items that should be returned in the result set. The
    #         default for <code>maxResults</code> is 20 (for all paginated API operations).</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token for the next page of data.</p>
    #
    # @return [Types::ListConnectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connectors(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConnectorsOutput
    #   resp.data.connectors #=> Array<ConnectorDetail>
    #   resp.data.connectors[0] #=> Types::ConnectorDetail
    #   resp.data.connectors[0].connector_description #=> String
    #   resp.data.connectors[0].connector_name #=> String
    #   resp.data.connectors[0].connector_owner #=> String
    #   resp.data.connectors[0].connector_version #=> String
    #   resp.data.connectors[0].application_type #=> String
    #   resp.data.connectors[0].connector_type #=> String, one of ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #   resp.data.connectors[0].connector_label #=> String
    #   resp.data.connectors[0].registered_at #=> Time
    #   resp.data.connectors[0].registered_by #=> String
    #   resp.data.connectors[0].connector_provisioning_type #=> String, one of ["LAMBDA"]
    #   resp.data.connectors[0].connector_modes #=> Array<String>
    #   resp.data.connectors[0].connector_modes[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_connectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConnectorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConnectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConnectors
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListConnectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConnectors,
        stubs: @stubs,
        params_class: Params::ListConnectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_connectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Lists all of the flows associated with your account. </p>
    #
    # @param [Hash] params
    #   See {Types::ListFlowsInput}.
    #
    # @option params [Integer] :max_results
    #   <p> Specifies the maximum number of items that should be returned in the result set. </p>
    #
    # @option params [String] :next_token
    #   <p> The pagination token for next page of data. </p>
    #
    # @return [Types::ListFlowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_flows(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFlowsOutput
    #   resp.data.flows #=> Array<FlowDefinition>
    #   resp.data.flows[0] #=> Types::FlowDefinition
    #   resp.data.flows[0].flow_arn #=> String
    #   resp.data.flows[0].description #=> String
    #   resp.data.flows[0].flow_name #=> String
    #   resp.data.flows[0].flow_status #=> String, one of ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"]
    #   resp.data.flows[0].source_connector_type #=> String, one of ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #   resp.data.flows[0].source_connector_label #=> String
    #   resp.data.flows[0].destination_connector_type #=> String, one of ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #   resp.data.flows[0].destination_connector_label #=> String
    #   resp.data.flows[0].trigger_type #=> String, one of ["Scheduled", "Event", "OnDemand"]
    #   resp.data.flows[0].created_at #=> Time
    #   resp.data.flows[0].last_updated_at #=> Time
    #   resp.data.flows[0].created_by #=> String
    #   resp.data.flows[0].last_updated_by #=> String
    #   resp.data.flows[0].tags #=> Hash<String, String>
    #   resp.data.flows[0].tags['key'] #=> String
    #   resp.data.flows[0].last_run_execution_details #=> Types::ExecutionDetails
    #   resp.data.flows[0].last_run_execution_details.most_recent_execution_message #=> String
    #   resp.data.flows[0].last_run_execution_details.most_recent_execution_time #=> Time
    #   resp.data.flows[0].last_run_execution_details.most_recent_execution_status #=> String, one of ["InProgress", "Successful", "Error"]
    #   resp.data.next_token #=> String
    #
    def list_flows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFlowsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFlowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFlows
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListFlows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFlows,
        stubs: @stubs,
        params_class: Params::ListFlowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_flows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Retrieves the tags that are associated with a specified flow. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the specified flow. </p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Registers a new connector with your Amazon Web Services account. Before you can register
    #       the connector, you must deploy lambda in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterConnectorInput}.
    #
    # @option params [String] :connector_label
    #   <p> The name of the connector. The name is unique for each <code>ConnectorRegistration</code>
    #         in your Amazon Web Services account.</p>
    #
    # @option params [String] :description
    #   <p>A description about the connector that's being registered.</p>
    #
    # @option params [String] :connector_provisioning_type
    #   <p>The provisioning type of the connector. Currently the only supported value is LAMBDA.
    #       </p>
    #
    # @option params [ConnectorProvisioningConfig] :connector_provisioning_config
    #   <p>The provisioning type of the connector. Currently the only supported value is
    #         LAMBDA.</p>
    #
    # @return [Types::RegisterConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_connector(
    #     connector_label: 'connectorLabel',
    #     description: 'description',
    #     connector_provisioning_type: 'LAMBDA', # accepts ["LAMBDA"]
    #     connector_provisioning_config: {
    #       lambda: {
    #         lambda_arn: 'lambdaArn' # required
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterConnectorOutput
    #   resp.data.connector_arn #=> String
    #
    def register_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterConnector
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ConflictException, Errors::ServiceQuotaExceededException, Errors::ConnectorServerException, Errors::ValidationException, Errors::ConnectorAuthenticationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::RegisterConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterConnector,
        stubs: @stubs,
        params_class: Params::RegisterConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Activates an existing flow. For on-demand flows, this operation runs the flow
    #       immediately. For schedule and event-triggered flows, this operation activates the flow. </p>
    #
    # @param [Hash] params
    #   See {Types::StartFlowInput}.
    #
    # @option params [String] :flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    # @return [Types::StartFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_flow(
    #     flow_name: 'flowName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartFlowOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.flow_status #=> String, one of ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"]
    #   resp.data.execution_id #=> String
    #
    def start_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ConflictException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::StartFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartFlow,
        stubs: @stubs,
        params_class: Params::StartFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deactivates the existing flow. For on-demand flows, this operation returns an
    #         <code>unsupportedOperationException</code> error message. For schedule and event-triggered
    #       flows, this operation deactivates the flow. </p>
    #
    # @param [Hash] params
    #   See {Types::StopFlowInput}.
    #
    # @option params [String] :flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    # @return [Types::StopFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_flow(
    #     flow_name: 'flowName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopFlowOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.flow_status #=> String, one of ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"]
    #
    def stop_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::StopFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopFlow,
        stubs: @stubs,
        params_class: Params::StopFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Applies a tag to the specified flow. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to tag. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> The tags used to organize, track, or control access for your flow. </p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Unregisters the custom connector registered in your account that matches the
    #       connectorLabel provided in the request.</p>
    #
    # @param [Hash] params
    #   See {Types::UnregisterConnectorInput}.
    #
    # @option params [String] :connector_label
    #   <p>The label of the connector. The label is unique for each
    #           <code>ConnectorRegistration</code> in your Amazon Web Services account.</p>
    #
    # @option params [Boolean] :force_delete
    #   <p>Indicates whether Amazon AppFlow should unregister the connector, even if it is
    #         currently in use in one or more connector profiles. The default value is false.</p>
    #
    # @return [Types::UnregisterConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unregister_connector(
    #     connector_label: 'connectorLabel', # required
    #     force_delete: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UnregisterConnectorOutput
    #
    def unregister_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UnregisterConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UnregisterConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UnregisterConnector
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::UnregisterConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UnregisterConnector,
        stubs: @stubs,
        params_class: Params::UnregisterConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :unregister_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Removes a tag from the specified flow. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to untag. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p> The tag keys associated with the tag that you want to remove from your flow. </p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p> Updates a given connector profile associated with your account. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConnectorProfileInput}.
    #
    # @option params [String] :connector_profile_name
    #   <p> The name of the connector profile and is unique for each <code>ConnectorProfile</code> in
    #         the Amazon Web Services account. </p>
    #
    # @option params [String] :connection_mode
    #   <p> Indicates the connection mode and if it is public or private. </p>
    #
    # @option params [ConnectorProfileConfig] :connector_profile_config
    #   <p> Defines the connector-specific profile configuration and credentials. </p>
    #
    # @return [Types::UpdateConnectorProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connector_profile(
    #     connector_profile_name: 'connectorProfileName', # required
    #     connection_mode: 'Public', # required - accepts ["Public", "Private"]
    #     connector_profile_config: {
    #       connector_profile_properties: {
    #         amplitude: { },
    #         datadog: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         dynatrace: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         google_analytics: { },
    #         honeycode: { },
    #         infor_nexus: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         marketo: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         redshift: {
    #           database_url: 'databaseUrl', # required
    #           bucket_name: 'bucketName', # required
    #           bucket_prefix: 'bucketPrefix',
    #           role_arn: 'roleArn' # required
    #         },
    #         salesforce: {
    #           instance_url: 'instanceUrl',
    #           is_sandbox_environment: false
    #         },
    #         service_now: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         singular: { },
    #         slack: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         snowflake: {
    #           warehouse: 'warehouse', # required
    #           stage: 'stage', # required
    #           bucket_name: 'bucketName', # required
    #           bucket_prefix: 'bucketPrefix',
    #           private_link_service_name: 'privateLinkServiceName',
    #           account_name: 'accountName',
    #           region: 'region'
    #         },
    #         trendmicro: { },
    #         veeva: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         zendesk: {
    #           instance_url: 'instanceUrl' # required
    #         },
    #         sapo_data: {
    #           application_host_url: 'applicationHostUrl', # required
    #           application_service_path: 'applicationServicePath', # required
    #           port_number: 1, # required
    #           client_number: 'clientNumber', # required
    #           logon_language: 'logonLanguage',
    #           private_link_service_name: 'privateLinkServiceName',
    #           o_auth_properties: {
    #             token_url: 'tokenUrl', # required
    #             auth_code_url: 'authCodeUrl', # required
    #             o_auth_scopes: [
    #               'member'
    #             ] # required
    #           }
    #         },
    #         custom_connector: {
    #           profile_properties: {
    #             'key' => 'value'
    #           },
    #           o_auth2_properties: {
    #             token_url: 'tokenUrl', # required
    #             o_auth2_grant_type: 'CLIENT_CREDENTIALS', # required - accepts ["CLIENT_CREDENTIALS", "AUTHORIZATION_CODE"]
    #             token_url_custom_properties: {
    #               'key' => 'value'
    #             }
    #           }
    #         }
    #       }, # required
    #       connector_profile_credentials: {
    #         amplitude: {
    #           api_key: 'apiKey', # required
    #           secret_key: 'secretKey' # required
    #         },
    #         datadog: {
    #           api_key: 'apiKey', # required
    #           application_key: 'applicationKey' # required
    #         },
    #         dynatrace: {
    #           api_token: 'apiToken' # required
    #         },
    #         google_analytics: {
    #           client_id: 'clientId', # required
    #           client_secret: 'clientSecret', # required
    #           access_token: 'accessToken',
    #           refresh_token: 'refreshToken',
    #           o_auth_request: {
    #             auth_code: 'authCode',
    #             redirect_uri: 'redirectUri'
    #           }
    #         },
    #         honeycode: {
    #           access_token: 'accessToken',
    #           refresh_token: 'refreshToken',
    #         },
    #         infor_nexus: {
    #           access_key_id: 'accessKeyId', # required
    #           user_id: 'userId', # required
    #           secret_access_key: 'secretAccessKey', # required
    #           datakey: 'datakey' # required
    #         },
    #         marketo: {
    #           client_id: 'clientId', # required
    #           client_secret: 'clientSecret', # required
    #           access_token: 'accessToken',
    #         },
    #         redshift: {
    #           username: 'username', # required
    #           password: 'password' # required
    #         },
    #         salesforce: {
    #           access_token: 'accessToken',
    #           refresh_token: 'refreshToken',
    #           client_credentials_arn: 'clientCredentialsArn'
    #         },
    #         service_now: {
    #           username: 'username', # required
    #           password: 'password' # required
    #         },
    #         singular: {
    #           api_key: 'apiKey' # required
    #         },
    #         slack: {
    #           client_id: 'clientId', # required
    #           client_secret: 'clientSecret', # required
    #           access_token: 'accessToken',
    #         },
    #         snowflake: {
    #           username: 'username', # required
    #           password: 'password' # required
    #         },
    #         trendmicro: {
    #           api_secret_key: 'apiSecretKey' # required
    #         },
    #         veeva: {
    #           username: 'username', # required
    #           password: 'password' # required
    #         },
    #         zendesk: {
    #           client_id: 'clientId', # required
    #           client_secret: 'clientSecret', # required
    #           access_token: 'accessToken',
    #         },
    #         sapo_data: {
    #           basic_auth_credentials: {
    #             username: 'username', # required
    #             password: 'password' # required
    #           },
    #           o_auth_credentials: {
    #             client_id: 'clientId', # required
    #             client_secret: 'clientSecret', # required
    #             access_token: 'accessToken',
    #             refresh_token: 'refreshToken',
    #           }
    #         },
    #         custom_connector: {
    #           authentication_type: 'OAUTH2', # required - accepts ["OAUTH2", "APIKEY", "BASIC", "CUSTOM"]
    #           oauth2: {
    #             client_id: 'clientId',
    #             client_secret: 'clientSecret',
    #             access_token: 'accessToken',
    #             refresh_token: 'refreshToken',
    #           },
    #           api_key: {
    #             api_key: 'apiKey', # required
    #             api_secret_key: 'apiSecretKey'
    #           },
    #           custom: {
    #             custom_authentication_type: 'customAuthenticationType', # required
    #             credentials_map: {
    #               'key' => 'value'
    #             }
    #           }
    #         }
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConnectorProfileOutput
    #   resp.data.connector_profile_arn #=> String
    #
    def update_connector_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConnectorProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConnectorProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConnectorProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ConflictException, Errors::ValidationException, Errors::ConnectorAuthenticationException]),
        data_parser: Parsers::UpdateConnectorProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConnectorProfile,
        stubs: @stubs,
        params_class: Params::UpdateConnectorProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_connector_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates an existing flow. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFlowInput}.
    #
    # @option params [String] :flow_name
    #   <p> The specified name of the flow. Spaces are not allowed. Use underscores (_) or hyphens
    #         (-) only. </p>
    #
    # @option params [String] :description
    #   <p> A description of the flow. </p>
    #
    # @option params [TriggerConfig] :trigger_config
    #   <p> The trigger settings that determine how and when the flow runs. </p>
    #
    # @option params [SourceFlowConfig] :source_flow_config
    #   <p> Contains information about the configuration of the source connector used in the flow.
    #       </p>
    #
    # @option params [Array<DestinationFlowConfig>] :destination_flow_config_list
    #   <p> The configuration that controls how Amazon AppFlow transfers data to the
    #         destination connector. </p>
    #
    # @option params [Array<Task>] :tasks
    #   <p> A list of tasks that Amazon AppFlow performs while transferring the data in the
    #         flow run. </p>
    #
    # @return [Types::UpdateFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow(
    #     flow_name: 'flowName', # required
    #     description: 'description',
    #     trigger_config: {
    #       trigger_type: 'Scheduled', # required - accepts ["Scheduled", "Event", "OnDemand"]
    #       trigger_properties: {
    #         scheduled: {
    #           schedule_expression: 'scheduleExpression', # required
    #           data_pull_mode: 'Incremental', # accepts ["Incremental", "Complete"]
    #           schedule_start_time: Time.now,
    #           schedule_end_time: Time.now,
    #           timezone: 'timezone',
    #           schedule_offset: 1,
    #           first_execution_from: Time.now,
    #           flow_error_deactivation_threshold: 1
    #         }
    #       }
    #     }, # required
    #     source_flow_config: {
    #       connector_type: 'Salesforce', # required - accepts ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #       api_version: 'apiVersion',
    #       connector_profile_name: 'connectorProfileName',
    #       source_connector_properties: {
    #         amplitude: {
    #           object: 'object' # required
    #         },
    #         datadog: {
    #           object: 'object' # required
    #         },
    #         dynatrace: {
    #           object: 'object' # required
    #         },
    #         google_analytics: {
    #           object: 'object' # required
    #         },
    #         infor_nexus: {
    #           object: 'object' # required
    #         },
    #         marketo: {
    #           object: 'object' # required
    #         },
    #         s3: {
    #           bucket_name: 'bucketName', # required
    #           bucket_prefix: 'bucketPrefix',
    #           s3_input_format_config: {
    #             s3_input_file_type: 'CSV' # accepts ["CSV", "JSON"]
    #           }
    #         },
    #         salesforce: {
    #           object: 'object', # required
    #           enable_dynamic_field_update: false,
    #           include_deleted_records: false
    #         },
    #         service_now: {
    #           object: 'object' # required
    #         },
    #         singular: {
    #           object: 'object' # required
    #         },
    #         slack: {
    #           object: 'object' # required
    #         },
    #         trendmicro: {
    #           object: 'object' # required
    #         },
    #         veeva: {
    #           object: 'object', # required
    #           document_type: 'documentType',
    #           include_source_files: false,
    #           include_renditions: false,
    #           include_all_versions: false
    #         },
    #         zendesk: {
    #           object: 'object' # required
    #         },
    #         sapo_data: {
    #           object_path: 'objectPath'
    #         },
    #         custom_connector: {
    #           entity_name: 'entityName', # required
    #           custom_properties: {
    #             'key' => 'value'
    #           }
    #         }
    #       }, # required
    #       incremental_pull_config: {
    #         datetime_type_field_name: 'datetimeTypeFieldName'
    #       }
    #     }, # required
    #     destination_flow_config_list: [
    #       {
    #         connector_type: 'Salesforce', # required - accepts ["Salesforce", "Singular", "Slack", "Redshift", "S3", "Marketo", "Googleanalytics", "Zendesk", "Servicenow", "Datadog", "Trendmicro", "Snowflake", "Dynatrace", "Infornexus", "Amplitude", "Veeva", "EventBridge", "LookoutMetrics", "Upsolver", "Honeycode", "CustomerProfiles", "SAPOData", "CustomConnector"]
    #         api_version: 'apiVersion',
    #         connector_profile_name: 'connectorProfileName',
    #         destination_connector_properties: {
    #           redshift: {
    #             object: 'object', # required
    #             intermediate_bucket_name: 'intermediateBucketName', # required
    #             bucket_prefix: 'bucketPrefix',
    #             error_handling_config: {
    #               fail_on_first_destination_error: false,
    #               bucket_prefix: 'bucketPrefix',
    #               bucket_name: 'bucketName'
    #             }
    #           },
    #           s3: {
    #             bucket_name: 'bucketName', # required
    #             bucket_prefix: 'bucketPrefix',
    #             s3_output_format_config: {
    #               file_type: 'CSV', # accepts ["CSV", "JSON", "PARQUET"]
    #               prefix_config: {
    #                 prefix_type: 'FILENAME', # accepts ["FILENAME", "PATH", "PATH_AND_FILENAME"]
    #                 prefix_format: 'YEAR' # accepts ["YEAR", "MONTH", "DAY", "HOUR", "MINUTE"]
    #               },
    #               aggregation_config: {
    #                 aggregation_type: 'None' # accepts ["None", "SingleFile"]
    #               },
    #               preserve_source_data_typing: false
    #             }
    #           },
    #           salesforce: {
    #             object: 'object', # required
    #             id_field_names: [
    #               'member'
    #             ],
    #             write_operation_type: 'INSERT' # accepts ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #           },
    #           snowflake: {
    #             object: 'object', # required
    #             intermediate_bucket_name: 'intermediateBucketName', # required
    #             bucket_prefix: 'bucketPrefix',
    #           },
    #           event_bridge: {
    #             object: 'object', # required
    #           },
    #           lookout_metrics: { },
    #           upsolver: {
    #             bucket_name: 'bucketName', # required
    #             bucket_prefix: 'bucketPrefix',
    #             s3_output_format_config: {
    #               file_type: 'CSV', # accepts ["CSV", "JSON", "PARQUET"]
    #             } # required
    #           },
    #           honeycode: {
    #             object: 'object', # required
    #           },
    #           customer_profiles: {
    #             domain_name: 'domainName', # required
    #             object_type_name: 'objectTypeName'
    #           },
    #           zendesk: {
    #             object: 'object', # required
    #             write_operation_type: 'INSERT' # accepts ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #           },
    #           marketo: {
    #             object: 'object', # required
    #           },
    #           custom_connector: {
    #             entity_name: 'entityName', # required
    #             write_operation_type: 'INSERT', # accepts ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #           },
    #           sapo_data: {
    #             object_path: 'objectPath', # required
    #             success_response_handling_config: {
    #               bucket_prefix: 'bucketPrefix',
    #               bucket_name: 'bucketName'
    #             },
    #             write_operation_type: 'INSERT' # accepts ["INSERT", "UPSERT", "UPDATE", "DELETE"]
    #           }
    #         } # required
    #       }
    #     ], # required
    #     tasks: [
    #       {
    #         source_fields: [
    #           'member'
    #         ], # required
    #         connector_operator: {
    #           amplitude: 'BETWEEN', # accepts ["BETWEEN"]
    #           datadog: 'PROJECTION', # accepts ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           dynatrace: 'PROJECTION', # accepts ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           google_analytics: 'PROJECTION', # accepts ["PROJECTION", "BETWEEN"]
    #           infor_nexus: 'PROJECTION', # accepts ["PROJECTION", "BETWEEN", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           marketo: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           s3: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           salesforce: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           service_now: 'PROJECTION', # accepts ["PROJECTION", "CONTAINS", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           singular: 'PROJECTION', # accepts ["PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           slack: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           trendmicro: 'PROJECTION', # accepts ["PROJECTION", "EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           veeva: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           zendesk: 'PROJECTION', # accepts ["PROJECTION", "GREATER_THAN", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           sapo_data: 'PROJECTION', # accepts ["PROJECTION", "LESS_THAN", "CONTAINS", "GREATER_THAN", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #           custom_connector: 'PROJECTION' # accepts ["PROJECTION", "LESS_THAN", "GREATER_THAN", "CONTAINS", "BETWEEN", "LESS_THAN_OR_EQUAL_TO", "GREATER_THAN_OR_EQUAL_TO", "EQUAL_TO", "NOT_EQUAL_TO", "ADDITION", "MULTIPLICATION", "DIVISION", "SUBTRACTION", "MASK_ALL", "MASK_FIRST_N", "MASK_LAST_N", "VALIDATE_NON_NULL", "VALIDATE_NON_ZERO", "VALIDATE_NON_NEGATIVE", "VALIDATE_NUMERIC", "NO_OP"]
    #         },
    #         destination_field: 'destinationField',
    #         task_type: 'Arithmetic', # required - accepts ["Arithmetic", "Filter", "Map", "Map_all", "Mask", "Merge", "Passthrough", "Truncate", "Validate"]
    #         task_properties: {
    #           'key' => 'value'
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFlowOutput
    #   resp.data.flow_status #=> String, one of ["Active", "Deprecated", "Deleted", "Draft", "Errored", "Suspended"]
    #
    def update_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ConflictException, Errors::ServiceQuotaExceededException, Errors::ConnectorServerException, Errors::ValidationException, Errors::ConnectorAuthenticationException]),
        data_parser: Parsers::UpdateFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFlow,
        stubs: @stubs,
        params_class: Params::UpdateFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_flow
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
