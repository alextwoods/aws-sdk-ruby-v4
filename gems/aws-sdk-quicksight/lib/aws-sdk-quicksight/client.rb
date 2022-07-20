# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::QuickSight
  # An API client for QuickSight_20180401
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon QuickSight API Reference</fullname>
  #         <p>Amazon QuickSight is a fully managed, serverless business intelligence service for the
  #             Amazon Web Services Cloud that makes it easy to extend data and insights to every user in your
  #             organization. This API reference contains documentation for a programming interface that
  #             you can use to manage Amazon QuickSight. </p>
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
    def initialize(config = AWS::SDK::QuickSight::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Cancels an ongoing ingestion of data into SPICE.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelIngestionInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :data_set_id
    #   <p>The ID of the dataset used in the ingestion.</p>
    #
    # @option params [String] :ingestion_id
    #   <p>An ID for the ingestion.</p>
    #
    # @return [Types::CancelIngestionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_ingestion(
    #     aws_account_id: 'AwsAccountId', # required
    #     data_set_id: 'DataSetId', # required
    #     ingestion_id: 'IngestionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelIngestionOutput
    #   resp.data.arn #=> String
    #   resp.data.ingestion_id #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def cancel_ingestion(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelIngestionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelIngestionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelIngestion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::CancelIngestion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelIngestion,
        stubs: @stubs,
        params_class: Params::CancelIngestionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_ingestion
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates Amazon QuickSight customizations the current Amazon Web Services Region. Currently, you can
    #             add a custom default theme by using the <code>CreateAccountCustomization</code> or
    #                 <code>UpdateAccountCustomization</code> API operation. To further customize
    #             Amazon QuickSight by removing Amazon QuickSight sample assets and videos for all new users, see <a href="https://docs.aws.amazon.com/quicksight/latest/user/customizing-quicksight.html">Customizing Amazon QuickSight</a> in the <i>Amazon QuickSight User
    #                 Guide.</i>
    #          </p>
    #         <p>You can create customizations for your Amazon Web Services account or, if you specify a namespace, for
    #             a QuickSight namespace instead. Customizations that apply to a namespace always override
    #             customizations that apply to an Amazon Web Services account. To find out which customizations apply, use
    #             the <code>DescribeAccountCustomization</code> API operation.</p>
    #         <p>Before you use the <code>CreateAccountCustomization</code> API operation to add a theme
    #             as the namespace default, make sure that you first share the theme with the namespace.
    #             If you don't share it with the namespace, the theme isn't visible to your users
    #             even if you make it the default theme.
    #             To check if the theme is shared, view the current permissions by using the
    #             <code>
    #                <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeThemePermissions.html">DescribeThemePermissions</a>
    #             </code>
    #             API operation.
    #             To share the theme, grant permissions by using the
    #             <code>
    #                <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateThemePermissions.html">UpdateThemePermissions</a>
    #             </code>
    #             API operation. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateAccountCustomizationInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that you want to customize Amazon QuickSight for.</p>
    #
    # @option params [String] :namespace
    #   <p>The Amazon QuickSight namespace that you want to add customizations to.</p>
    #
    # @option params [AccountCustomization] :account_customization
    #   <p>The Amazon QuickSight customizations you're adding in the current Amazon Web Services Region. You can add
    #               these to an Amazon Web Services account and a QuickSight namespace. </p>
    #           <p>For example, you can add a default theme by setting <code>AccountCustomization</code>
    #               to the midnight theme: <code>"AccountCustomization": { "DefaultTheme":
    #                   "arn:aws:quicksight::aws:theme/MIDNIGHT" }</code>. Or, you can add a custom theme by
    #               specifying <code>"AccountCustomization": { "DefaultTheme":
    #                   "arn:aws:quicksight:us-west-2:111122223333:theme/bdb844d0-0fe9-4d9d-b520-0fe602d93639"
    #                   }</code>. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of the tags that you want to attach to this resource.</p>
    #
    # @return [Types::CreateAccountCustomizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account_customization(
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace',
    #     account_customization: {
    #       default_theme: 'DefaultTheme',
    #       default_email_customization_template: 'DefaultEmailCustomizationTemplate'
    #     }, # required
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
    #   resp.data #=> Types::CreateAccountCustomizationOutput
    #   resp.data.arn #=> String
    #   resp.data.aws_account_id #=> String
    #   resp.data.namespace #=> String
    #   resp.data.account_customization #=> Types::AccountCustomization
    #   resp.data.account_customization.default_theme #=> String
    #   resp.data.account_customization.default_email_customization_template #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def create_account_customization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAccountCustomizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAccountCustomizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAccountCustomization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateAccountCustomization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAccountCustomization,
        stubs: @stubs,
        params_class: Params::CreateAccountCustomizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_account_customization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an analysis in Amazon QuickSight.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAnalysisInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account where you are creating an analysis.</p>
    #
    # @option params [String] :analysis_id
    #   <p>The ID for the analysis that you're creating. This ID displays in the URL of the
    #               analysis.</p>
    #
    # @option params [String] :name
    #   <p>A descriptive name for the analysis that you're creating. This name displays for the
    #               analysis in the Amazon QuickSight console. </p>
    #
    # @option params [Parameters] :parameters
    #   <p>The parameter names and override values that you want to use. An analysis can have
    #               any parameter type, and some parameters might accept multiple values. </p>
    #
    # @option params [Array<ResourcePermission>] :permissions
    #   <p>A structure that describes the principals and the resource-level permissions on an
    #               analysis. You can use the <code>Permissions</code> structure to grant permissions by
    #               providing a list of Identity and Access Management (IAM) action information for each
    #               principal listed by Amazon Resource Name (ARN). </p>
    #
    #           <p>To specify no permissions, omit <code>Permissions</code>.</p>
    #
    # @option params [AnalysisSourceEntity] :source_entity
    #   <p>A source entity to use for the analysis that you're creating. This metadata structure
    #               contains details that describe a source template and one or more datasets.</p>
    #
    # @option params [String] :theme_arn
    #   <p>The ARN for the theme to apply to the analysis that you're creating. To see the theme
    #               in the Amazon QuickSight console, make sure that you have access to it.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the
    #               analysis.</p>
    #
    # @return [Types::CreateAnalysisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_analysis(
    #     aws_account_id: 'AwsAccountId', # required
    #     analysis_id: 'AnalysisId', # required
    #     name: 'Name', # required
    #     parameters: {
    #       string_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             'member'
    #           ] # required
    #         }
    #       ],
    #       integer_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             1
    #           ] # required
    #         }
    #       ],
    #       decimal_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             1.0
    #           ] # required
    #         }
    #       ],
    #       date_time_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             Time.now
    #           ] # required
    #         }
    #       ]
    #     },
    #     permissions: [
    #       {
    #         principal: 'Principal', # required
    #         actions: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     source_entity: {
    #       source_template: {
    #         data_set_references: [
    #           {
    #             data_set_placeholder: 'DataSetPlaceholder', # required
    #             data_set_arn: 'DataSetArn' # required
    #           }
    #         ], # required
    #         arn: 'Arn' # required
    #       }
    #     }, # required
    #     theme_arn: 'ThemeArn',
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
    #   resp.data #=> Types::CreateAnalysisOutput
    #   resp.data.arn #=> String
    #   resp.data.analysis_id #=> String
    #   resp.data.creation_status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def create_analysis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAnalysisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAnalysisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAnalysis
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateAnalysis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAnalysis,
        stubs: @stubs,
        params_class: Params::CreateAnalysisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_analysis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a dashboard from a template. To first create a template, see the
    #         <code>
    #                <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>
    #             </code>
    #             API operation.</p>
    #         <p>A dashboard is an entity in Amazon QuickSight that identifies Amazon QuickSight reports, created
    #             from analyses. You can share Amazon QuickSight dashboards. With the right permissions, you can
    #             create scheduled email reports from them. If you have the correct permissions, you can
    #             create a dashboard from a template that exists in a different Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDashboardInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account where you want to create the dashboard.</p>
    #
    # @option params [String] :dashboard_id
    #   <p>The ID for the dashboard, also added to the IAM policy.</p>
    #
    # @option params [String] :name
    #   <p>The display name of the dashboard.</p>
    #
    # @option params [Parameters] :parameters
    #   <p>The parameters for the creation of the dashboard, which you want to use to override
    #               the default settings. A dashboard can have any type of parameters, and some parameters
    #               might accept multiple values. </p>
    #
    # @option params [Array<ResourcePermission>] :permissions
    #   <p>A structure that contains the permissions of the dashboard. You can use this structure
    #               for granting permissions by providing a list of IAM action information for each
    #               principal ARN. </p>
    #
    #           <p>To specify no permissions, omit the permissions list.</p>
    #
    # @option params [DashboardSourceEntity] :source_entity
    #   <p>The entity that you are using as a source when you create the dashboard. In
    #               <code>SourceEntity</code>, you specify the type of object you're using as source. You
    #               can only create a dashboard from a template, so you use a <code>SourceTemplate</code>
    #               entity. If you need to create a dashboard from an analysis, first convert the analysis
    #               to a template by using the <code>
    #                  <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>
    #               </code>
    #               API operation. For
    #               <code>SourceTemplate</code>, specify the Amazon Resource Name (ARN) of the source
    #               template. The <code>SourceTemplate</code>ARN can contain any Amazon Web Services account and any
    #               Amazon QuickSight-supported Amazon Web Services Region. </p>
    #           <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> to
    #               list the replacement datasets for the placeholders listed in the original. The schema in
    #               each dataset must match its placeholder. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the
    #               dashboard.</p>
    #
    # @option params [String] :version_description
    #   <p>A description for the first version of the dashboard being created.</p>
    #
    # @option params [DashboardPublishOptions] :dashboard_publish_options
    #   <p>Options for publishing the dashboard when you create it:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>AvailabilityStatus</code> for <code>AdHocFilteringOption</code> - This
    #                       status can be either <code>ENABLED</code> or <code>DISABLED</code>. When this is
    #                       set to <code>DISABLED</code>, Amazon QuickSight disables the left filter pane on the
    #                       published dashboard, which can be used for ad hoc (one-time) filtering. This
    #                       option is <code>ENABLED</code> by default. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>AvailabilityStatus</code> for <code>ExportToCSVOption</code> - This
    #                       status can be either <code>ENABLED</code> or <code>DISABLED</code>. The visual
    #                       option to export data to .CSV format isn't enabled when this is set to
    #                       <code>DISABLED</code>. This option is <code>ENABLED</code> by default. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>VisibilityState</code> for <code>SheetControlsOption</code> - This
    #                       visibility state can be either <code>COLLAPSED</code> or <code>EXPANDED</code>.
    #                       This option is <code>COLLAPSED</code> by default. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :theme_arn
    #   <p>The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. If
    #               you add a value for this field, it overrides the value that is used in the source
    #               entity. The theme ARN must exist in the same Amazon Web Services account where you create the
    #               dashboard.</p>
    #
    # @return [Types::CreateDashboardOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dashboard(
    #     aws_account_id: 'AwsAccountId', # required
    #     dashboard_id: 'DashboardId', # required
    #     name: 'Name', # required
    #     parameters: {
    #       string_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             'member'
    #           ] # required
    #         }
    #       ],
    #       integer_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             1
    #           ] # required
    #         }
    #       ],
    #       decimal_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             1.0
    #           ] # required
    #         }
    #       ],
    #       date_time_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             Time.now
    #           ] # required
    #         }
    #       ]
    #     },
    #     permissions: [
    #       {
    #         principal: 'Principal', # required
    #         actions: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     source_entity: {
    #       source_template: {
    #         data_set_references: [
    #           {
    #             data_set_placeholder: 'DataSetPlaceholder', # required
    #             data_set_arn: 'DataSetArn' # required
    #           }
    #         ], # required
    #         arn: 'Arn' # required
    #       }
    #     }, # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     version_description: 'VersionDescription',
    #     dashboard_publish_options: {
    #       ad_hoc_filtering_option: {
    #         availability_status: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #       },
    #       export_to_csv_option: {
    #         availability_status: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #       },
    #       sheet_controls_option: {
    #         visibility_state: 'EXPANDED' # accepts ["EXPANDED", "COLLAPSED"]
    #       }
    #     },
    #     theme_arn: 'ThemeArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDashboardOutput
    #   resp.data.arn #=> String
    #   resp.data.version_arn #=> String
    #   resp.data.dashboard_id #=> String
    #   resp.data.creation_status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def create_dashboard(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDashboardInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDashboardInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDashboard
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateDashboard
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDashboard,
        stubs: @stubs,
        params_class: Params::CreateDashboardOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_dashboard
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a dataset. This operation doesn't support datasets that include uploaded files as a source.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDataSetInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :data_set_id
    #   <p>An ID for the dataset that you want to create. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    # @option params [String] :name
    #   <p>The display name for the dataset.</p>
    #
    # @option params [Hash<String, PhysicalTable>] :physical_table_map
    #   <p>Declares the physical tables that are available in the underlying data sources.</p>
    #
    # @option params [Hash<String, LogicalTable>] :logical_table_map
    #   <p>Configures the combination and transformation of the data from the physical tables.</p>
    #
    # @option params [String] :import_mode
    #   <p>Indicates whether you want to import the data into SPICE.</p>
    #
    # @option params [Array<ColumnGroup>] :column_groups
    #   <p>Groupings of columns that work together in certain Amazon QuickSight features. Currently, only geospatial hierarchy is supported.</p>
    #
    # @option params [Hash<String, FieldFolder>] :field_folders
    #   <p>The folder that contains fields and nested subfolders for your dataset.</p>
    #
    # @option params [Array<ResourcePermission>] :permissions
    #   <p>A list of resource permissions on the dataset.</p>
    #
    # @option params [RowLevelPermissionDataSet] :row_level_permission_data_set
    #   <p>The row-level security configuration for the data that you want to create.</p>
    #
    # @option params [RowLevelPermissionTagConfiguration] :row_level_permission_tag_configuration
    #   <p>The configuration of tags on a dataset to set row-level security. Row-level security tags are currently supported for anonymous embedding only.</p>
    #
    # @option params [Array<ColumnLevelPermissionRule>] :column_level_permission_rules
    #   <p>A set of one or more definitions of a <code>
    #                  <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ColumnLevelPermissionRule.html">ColumnLevelPermissionRule</a>
    #               </code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the dataset.</p>
    #
    # @option params [DataSetUsageConfiguration] :data_set_usage_configuration
    #   <p>The usage configuration to apply to child datasets that reference this dataset as a source.</p>
    #
    # @return [Types::CreateDataSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_set(
    #     aws_account_id: 'AwsAccountId', # required
    #     data_set_id: 'DataSetId', # required
    #     name: 'Name', # required
    #     physical_table_map: {
    #       'key' => {
    #         # One of:
    #         relational_table: {
    #           data_source_arn: 'DataSourceArn', # required
    #           catalog: 'Catalog',
    #           schema: 'Schema',
    #           name: 'Name', # required
    #           input_columns: [
    #             {
    #               name: 'Name', # required
    #               type: 'STRING' # required - accepts ["STRING", "INTEGER", "DECIMAL", "DATETIME", "BIT", "BOOLEAN", "JSON"]
    #             }
    #           ] # required
    #         },
    #         custom_sql: {
    #           data_source_arn: 'DataSourceArn', # required
    #           name: 'Name', # required
    #           sql_query: 'SqlQuery', # required
    #         },
    #         s3_source: {
    #           data_source_arn: 'DataSourceArn', # required
    #           upload_settings: {
    #             format: 'CSV', # accepts ["CSV", "TSV", "CLF", "ELF", "XLSX", "JSON"]
    #             start_from_row: 1,
    #             contains_header: false,
    #             text_qualifier: 'DOUBLE_QUOTE', # accepts ["DOUBLE_QUOTE", "SINGLE_QUOTE"]
    #             delimiter: 'Delimiter'
    #           },
    #         }
    #       }
    #     }, # required
    #     logical_table_map: {
    #       'key' => {
    #         alias: 'Alias', # required
    #         data_transforms: [
    #           {
    #             # One of:
    #             project_operation: {
    #               projected_columns: [
    #                 'member'
    #               ] # required
    #             },
    #             filter_operation: {
    #               condition_expression: 'ConditionExpression' # required
    #             },
    #             create_columns_operation: {
    #               columns: [
    #                 {
    #                   column_name: 'ColumnName', # required
    #                   column_id: 'ColumnId', # required
    #                   expression: 'Expression' # required
    #                 }
    #               ] # required
    #             },
    #             rename_column_operation: {
    #               column_name: 'ColumnName', # required
    #               new_column_name: 'NewColumnName' # required
    #             },
    #             cast_column_type_operation: {
    #               column_name: 'ColumnName', # required
    #               new_column_type: 'STRING', # required - accepts ["STRING", "INTEGER", "DECIMAL", "DATETIME"]
    #               format: 'Format'
    #             },
    #             tag_column_operation: {
    #               column_name: 'ColumnName', # required
    #               tags: [
    #                 {
    #                   column_geographic_role: 'COUNTRY', # accepts ["COUNTRY", "STATE", "COUNTY", "CITY", "POSTCODE", "LONGITUDE", "LATITUDE"]
    #                   column_description: {
    #                     text: 'Text'
    #                   }
    #                 }
    #               ] # required
    #             },
    #             untag_column_operation: {
    #               column_name: 'ColumnName', # required
    #               tag_names: [
    #                 'COLUMN_GEOGRAPHIC_ROLE' # accepts ["COLUMN_GEOGRAPHIC_ROLE", "COLUMN_DESCRIPTION"]
    #               ] # required
    #             }
    #           }
    #         ],
    #         source: {
    #           join_instruction: {
    #             left_operand: 'LeftOperand', # required
    #             right_operand: 'RightOperand', # required
    #             left_join_key_properties: {
    #               unique_key: false
    #             },
    #             type: 'INNER', # required - accepts ["INNER", "OUTER", "LEFT", "RIGHT"]
    #             on_clause: 'OnClause' # required
    #           },
    #           physical_table_id: 'PhysicalTableId',
    #           data_set_arn: 'DataSetArn'
    #         } # required
    #       }
    #     },
    #     import_mode: 'SPICE', # required - accepts ["SPICE", "DIRECT_QUERY"]
    #     column_groups: [
    #       {
    #         geo_spatial_column_group: {
    #           name: 'Name', # required
    #           country_code: 'US', # required - accepts ["US"]
    #           columns: [
    #             'member'
    #           ] # required
    #         }
    #       }
    #     ],
    #     field_folders: {
    #       'key' => {
    #         description: 'description',
    #         columns: [
    #           'member'
    #         ]
    #       }
    #     },
    #     permissions: [
    #       {
    #         principal: 'Principal', # required
    #         actions: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     row_level_permission_data_set: {
    #       namespace: 'Namespace',
    #       arn: 'Arn', # required
    #       permission_policy: 'GRANT_ACCESS', # required - accepts ["GRANT_ACCESS", "DENY_ACCESS"]
    #       format_version: 'VERSION_1', # accepts ["VERSION_1", "VERSION_2"]
    #       status: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #     },
    #     row_level_permission_tag_configuration: {
    #       status: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #       tag_rules: [
    #         {
    #           tag_key: 'TagKey', # required
    #           column_name: 'ColumnName', # required
    #           tag_multi_value_delimiter: 'TagMultiValueDelimiter',
    #           match_all_value: 'MatchAllValue'
    #         }
    #       ] # required
    #     },
    #     column_level_permission_rules: [
    #       {
    #         principals: [
    #           'member'
    #         ],
    #         column_names: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     data_set_usage_configuration: {
    #       disable_use_as_direct_query_source: false,
    #       disable_use_as_imported_source: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDataSetOutput
    #   resp.data.arn #=> String
    #   resp.data.data_set_id #=> String
    #   resp.data.ingestion_arn #=> String
    #   resp.data.ingestion_id #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def create_data_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateDataSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataSet,
        stubs: @stubs,
        params_class: Params::CreateDataSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_data_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a data source.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDataSourceInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :data_source_id
    #   <p>An ID for the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account. </p>
    #
    # @option params [String] :name
    #   <p>A display name for the data source.</p>
    #
    # @option params [String] :type
    #   <p>The type of the data source. To return a
    #   			list of all data sources, use <code>ListDataSources</code>.</p>
    #   		       <p>Use <code>AMAZON_ELASTICSEARCH</code> for Amazon OpenSearch Service.</p>
    #
    # @option params [DataSourceParameters] :data_source_parameters
    #   <p>The parameters that Amazon QuickSight uses to connect to your underlying source.</p>
    #
    # @option params [DataSourceCredentials] :credentials
    #   <p>The credentials Amazon QuickSight that uses to connect to your underlying source. Currently, only
    #   			credentials based on user name and password are supported.</p>
    #
    # @option params [Array<ResourcePermission>] :permissions
    #   <p>A list of resource permissions on the data source.</p>
    #
    # @option params [VpcConnectionProperties] :vpc_connection_properties
    #   <p>Use this parameter only when you want Amazon QuickSight to use a VPC connection when connecting to
    #   			your underlying source.</p>
    #
    # @option params [SslProperties] :ssl_properties
    #   <p>Secure Socket Layer (SSL) properties that apply when Amazon QuickSight connects to your underlying source.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the data source.</p>
    #
    # @return [Types::CreateDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source(
    #     aws_account_id: 'AwsAccountId', # required
    #     data_source_id: 'DataSourceId', # required
    #     name: 'Name', # required
    #     type: 'ADOBE_ANALYTICS', # required - accepts ["ADOBE_ANALYTICS", "AMAZON_ELASTICSEARCH", "ATHENA", "AURORA", "AURORA_POSTGRESQL", "AWS_IOT_ANALYTICS", "GITHUB", "JIRA", "MARIADB", "MYSQL", "ORACLE", "POSTGRESQL", "PRESTO", "REDSHIFT", "S3", "SALESFORCE", "SERVICENOW", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "TWITTER", "TIMESTREAM", "AMAZON_OPENSEARCH", "EXASOL"]
    #     data_source_parameters: {
    #       # One of:
    #       amazon_elasticsearch_parameters: {
    #         domain: 'Domain' # required
    #       },
    #       athena_parameters: {
    #         work_group: 'WorkGroup'
    #       },
    #       aurora_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       aurora_postgre_sql_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       aws_iot_analytics_parameters: {
    #         data_set_name: 'DataSetName' # required
    #       },
    #       jira_parameters: {
    #         site_base_url: 'SiteBaseUrl' # required
    #       },
    #       maria_db_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       my_sql_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       oracle_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       postgre_sql_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       presto_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         catalog: 'Catalog' # required
    #       },
    #       rds_parameters: {
    #         instance_id: 'InstanceId', # required
    #         database: 'Database' # required
    #       },
    #       redshift_parameters: {
    #         host: 'Host',
    #         port: 1,
    #         database: 'Database', # required
    #         cluster_id: 'ClusterId'
    #       },
    #       s3_parameters: {
    #         manifest_file_location: {
    #           bucket: 'Bucket', # required
    #           key: 'Key' # required
    #         } # required
    #       },
    #       service_now_parameters: {
    #         site_base_url: 'SiteBaseUrl' # required
    #       },
    #       snowflake_parameters: {
    #         host: 'Host', # required
    #         database: 'Database', # required
    #         warehouse: 'Warehouse' # required
    #       },
    #       spark_parameters: {
    #         host: 'Host', # required
    #         port: 1 # required
    #       },
    #       sql_server_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       teradata_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       twitter_parameters: {
    #         query: 'Query', # required
    #         max_rows: 1 # required
    #       },
    #       amazon_open_search_parameters: {
    #         domain: 'Domain' # required
    #       },
    #       exasol_parameters: {
    #         host: 'Host', # required
    #         port: 1 # required
    #       }
    #     },
    #     credentials: {
    #       credential_pair: {
    #         username: 'Username', # required
    #         password: 'Password', # required
    #       },
    #       copy_source_arn: 'CopySourceArn'
    #     },
    #     permissions: [
    #       {
    #         principal: 'Principal', # required
    #         actions: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     vpc_connection_properties: {
    #       vpc_connection_arn: 'VpcConnectionArn' # required
    #     },
    #     ssl_properties: {
    #       disable_ssl: false
    #     },
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
    #   resp.data #=> Types::CreateDataSourceOutput
    #   resp.data.arn #=> String
    #   resp.data.data_source_id #=> String
    #   resp.data.creation_status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def create_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataSource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataSource,
        stubs: @stubs,
        params_class: Params::CreateDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an empty shared folder.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFolderInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account where you want to create the folder.</p>
    #
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    #
    # @option params [String] :name
    #   <p>The name of the folder.</p>
    #
    # @option params [String] :folder_type
    #   <p>The type of folder. By default, <code>folderType</code> is <code>SHARED</code>.</p>
    #
    # @option params [String] :parent_folder_arn
    #   <p>The Amazon Resource Name (ARN) for the parent folder.</p>
    #           <p>
    #               <code>ParentFolderArn</code> can be null. An empty <code>parentFolderArn</code> creates a root-level folder.</p>
    #
    # @option params [Array<ResourcePermission>] :permissions
    #   <p>A structure that describes the principals and the resource-level permissions of a folder.</p>
    #           <p>To specify no permissions, omit <code>Permissions</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags for the folder.</p>
    #
    # @return [Types::CreateFolderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_folder(
    #     aws_account_id: 'AwsAccountId', # required
    #     folder_id: 'FolderId', # required
    #     name: 'Name',
    #     folder_type: 'SHARED', # accepts ["SHARED"]
    #     parent_folder_arn: 'ParentFolderArn',
    #     permissions: [
    #       {
    #         principal: 'Principal', # required
    #         actions: [
    #           'member'
    #         ] # required
    #       }
    #     ],
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
    #   resp.data #=> Types::CreateFolderOutput
    #   resp.data.status #=> Integer
    #   resp.data.arn #=> String
    #   resp.data.folder_id #=> String
    #   resp.data.request_id #=> String
    #
    def create_folder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFolderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFolderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFolder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateFolder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFolder,
        stubs: @stubs,
        params_class: Params::CreateFolderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_folder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds an asset, such as a dashboard, analysis, or dataset into a folder.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFolderMembershipInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    #
    # @option params [String] :member_id
    #   <p>The ID of the asset (the dashboard, analysis, or dataset).</p>
    #
    # @option params [String] :member_type
    #   <p>The type of the member, including <code>DASHBOARD</code>, <code>ANALYSIS</code>, and <code>DATASET</code>.</p>
    #
    # @return [Types::CreateFolderMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_folder_membership(
    #     aws_account_id: 'AwsAccountId', # required
    #     folder_id: 'FolderId', # required
    #     member_id: 'MemberId', # required
    #     member_type: 'DASHBOARD' # required - accepts ["DASHBOARD", "ANALYSIS", "DATASET"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFolderMembershipOutput
    #   resp.data.status #=> Integer
    #   resp.data.folder_member #=> Types::FolderMember
    #   resp.data.folder_member.member_id #=> String
    #   resp.data.folder_member.member_type #=> String, one of ["DASHBOARD", "ANALYSIS", "DATASET"]
    #   resp.data.request_id #=> String
    #
    def create_folder_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFolderMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFolderMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFolderMembership
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateFolderMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFolderMembership,
        stubs: @stubs,
        params_class: Params::CreateFolderMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_folder_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon QuickSight group.</p>
    # 		       <p>The permissions resource is
    # 					<code>arn:aws:quicksight:<your-region>:<i><relevant-aws-account-id></i>:group/default/<i><group-name></i>
    #             </code>.</p>
    # 		       <p>The response is a group object.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>A name for the group that you want to create.</p>
    #
    # @option params [String] :description
    #   <p>A description for the group that you want to create.</p>
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace that you want the group to be a part of.</p>
    #
    # @return [Types::CreateGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group(
    #     group_name: 'GroupName', # required
    #     description: 'Description',
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGroupOutput
    #   resp.data.group #=> Types::Group
    #   resp.data.group.arn #=> String
    #   resp.data.group.group_name #=> String
    #   resp.data.group.description #=> String
    #   resp.data.group.principal_id #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def create_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::AccessDeniedException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::CreateGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGroup,
        stubs: @stubs,
        params_class: Params::CreateGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds an Amazon QuickSight user to an Amazon QuickSight group. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateGroupMembershipInput}.
    #
    # @option params [String] :member_name
    #   <p>The name of the user that you want to add to the group membership.</p>
    #
    # @option params [String] :group_name
    #   <p>The name of the group that you want to add the user to.</p>
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace that you want the user to be a part of.</p>
    #
    # @return [Types::CreateGroupMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group_membership(
    #     member_name: 'MemberName', # required
    #     group_name: 'GroupName', # required
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGroupMembershipOutput
    #   resp.data.group_member #=> Types::GroupMember
    #   resp.data.group_member.arn #=> String
    #   resp.data.group_member.member_name #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def create_group_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGroupMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGroupMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGroupMembership
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::CreateGroupMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGroupMembership,
        stubs: @stubs,
        params_class: Params::CreateGroupMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_group_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an assignment with one specified IAM policy, identified by its Amazon Resource Name
    # 			(ARN). This policy assignment is attached to the specified groups or users of Amazon QuickSight.
    # 			Assignment names are unique per Amazon Web Services account. To avoid overwriting rules in other namespaces,
    # 			use assignment names that are unique.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateIAMPolicyAssignmentInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account where you want to assign an IAM policy to Amazon QuickSight users or
    #   			groups.</p>
    #
    # @option params [String] :assignment_name
    #   <p>The name of the assignment, also called a rule. It must be unique within an Amazon Web Services account.</p>
    #
    # @option params [String] :assignment_status
    #   <p>The status of the assignment. Possible values are as follows:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - Anything specified in this assignment is used when creating the data
    #   					source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - This assignment isn't used when creating the data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DRAFT</code> - This assignment is an unfinished draft and isn't used when creating the
    #   					data source.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :policy_arn
    #   <p>The ARN for the IAM policy to apply to the Amazon QuickSight users and groups
    #   			specified in this assignment.</p>
    #
    # @option params [Hash<String, Array<String>>] :identities
    #   <p>The Amazon QuickSight users, groups, or both that you want to assign the policy to.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace that contains the assignment.</p>
    #
    # @return [Types::CreateIAMPolicyAssignmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_iam_policy_assignment(
    #     aws_account_id: 'AwsAccountId', # required
    #     assignment_name: 'AssignmentName', # required
    #     assignment_status: 'ENABLED', # required - accepts ["ENABLED", "DRAFT", "DISABLED"]
    #     policy_arn: 'PolicyArn',
    #     identities: {
    #       'key' => [
    #         'member'
    #       ]
    #     },
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIAMPolicyAssignmentOutput
    #   resp.data.assignment_name #=> String
    #   resp.data.assignment_id #=> String
    #   resp.data.assignment_status #=> String, one of ["ENABLED", "DRAFT", "DISABLED"]
    #   resp.data.policy_arn #=> String
    #   resp.data.identities #=> Hash<String, Array<String>>
    #   resp.data.identities['key'] #=> Array<String>
    #   resp.data.identities['key'][0] #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def create_iam_policy_assignment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIAMPolicyAssignmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIAMPolicyAssignmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIAMPolicyAssignment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConcurrentUpdatingException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateIAMPolicyAssignment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIAMPolicyAssignment,
        stubs: @stubs,
        params_class: Params::CreateIAMPolicyAssignmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_iam_policy_assignment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates and starts a new SPICE ingestion for a dataset. You can manually refresh datasets in
    # 			an Enterprise edition account 32 times in a 24-hour period. You can manually refresh
    # 			datasets in a Standard edition account 8 times in a 24-hour period. Each 24-hour period
    # 			is measured starting 24 hours before the current date and time.</p>
    # 		
    # 		       <p>Any ingestions operating on tagged datasets inherit the same tags automatically for use in
    # 			access control. For an example, see <a href="http://aws.amazon.com/premiumsupport/knowledge-center/iam-ec2-resource-tags/">How do I create an IAM policy to control access to Amazon EC2 resources using
    # 				tags?</a> in the Amazon Web Services Knowledge Center. Tags are visible on the tagged dataset, but not on the ingestion resource.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateIngestionInput}.
    #
    # @option params [String] :data_set_id
    #   <p>The ID of the dataset used in the ingestion.</p>
    #
    # @option params [String] :ingestion_id
    #   <p>An ID for the ingestion.</p>
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :ingestion_type
    #   <p>The type of ingestion that you want to create.</p>
    #
    # @return [Types::CreateIngestionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ingestion(
    #     data_set_id: 'DataSetId', # required
    #     ingestion_id: 'IngestionId', # required
    #     aws_account_id: 'AwsAccountId', # required
    #     ingestion_type: 'INCREMENTAL_REFRESH' # accepts ["INCREMENTAL_REFRESH", "FULL_REFRESH"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIngestionOutput
    #   resp.data.arn #=> String
    #   resp.data.ingestion_id #=> String
    #   resp.data.ingestion_status #=> String, one of ["INITIALIZED", "QUEUED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"]
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def create_ingestion(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIngestionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIngestionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIngestion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::AccessDeniedException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateIngestion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIngestion,
        stubs: @stubs,
        params_class: Params::CreateIngestionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_ingestion
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>(Enterprise edition only) Creates a new namespace for you to use with Amazon QuickSight.</p>
    #         <p>A namespace allows you to isolate the Amazon QuickSight users and groups that are registered
    #             for that namespace. Users that access the namespace can share assets only with other
    #             users or groups in the same namespace. They can't see users and groups in other
    #             namespaces. You can create a namespace after your Amazon Web Services account is subscribed to
    #             Amazon QuickSight. The namespace must be unique within the Amazon Web Services account. By default, there is a
    #             limit of 100 namespaces per Amazon Web Services account. To increase your limit, create a ticket with
    #             Amazon Web Services Support. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateNamespaceInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that you want to create the Amazon QuickSight namespace in.</p>
    #
    # @option params [String] :namespace
    #   <p>The name that you want to use to describe the new namespace.</p>
    #
    # @option params [String] :identity_store
    #   <p>Specifies the type of your user identity directory. Currently, this supports users
    #               with an identity type of <code>QUICKSIGHT</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags that you want to associate with the namespace that you're creating.</p>
    #
    # @return [Types::CreateNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_namespace(
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace', # required
    #     identity_store: 'QUICKSIGHT', # required - accepts ["QUICKSIGHT"]
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
    #   resp.data #=> Types::CreateNamespaceOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.capacity_region #=> String
    #   resp.data.creation_status #=> String, one of ["CREATED", "CREATING", "DELETING", "RETRYABLE_FAILURE", "NON_RETRYABLE_FAILURE"]
    #   resp.data.identity_store #=> String, one of ["QUICKSIGHT"]
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def create_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateNamespaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateNamespace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::CreateNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateNamespace,
        stubs: @stubs,
        params_class: Params::CreateNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a template from an existing Amazon QuickSight analysis or template. You can use the resulting
    # 			template to create a dashboard.</p>
    # 		       <p>A <i>template</i> is an entity in Amazon QuickSight that encapsulates the metadata
    # 			required to create an analysis and that you can use to create s dashboard. A template adds
    # 			a layer of abstraction by using placeholders to replace the dataset associated with the
    # 			analysis. You can use templates to create dashboards by replacing dataset placeholders
    # 			with datasets that follow the same schema that was used to create the source analysis
    # 			and template.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTemplateInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. You use the ID for the Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :template_id
    #   <p>An ID for the template that you want to create. This template is unique per Amazon Web Services Region; in
    #   			each Amazon Web Services account.</p>
    #
    # @option params [String] :name
    #   <p>A display name for the template.</p>
    #
    # @option params [Array<ResourcePermission>] :permissions
    #   <p>A list of resource permissions to be set on the template. </p>
    #
    # @option params [TemplateSourceEntity] :source_entity
    #   <p>The entity that you are using as a source when you create the template. In
    #   			<code>SourceEntity</code>, you specify the type of object you're using as source:
    #   			<code>SourceTemplate</code> for a template or <code>SourceAnalysis</code> for an
    #   			analysis. Both of these require an Amazon Resource Name (ARN). For
    #   			<code>SourceTemplate</code>, specify the ARN of the source template. For
    #   			<code>SourceAnalysis</code>, specify the ARN of the source analysis. The <code>SourceTemplate</code>
    #   			ARN can contain any Amazon Web Services account and any Amazon QuickSight-supported Amazon Web Services Region. </p>
    #   		       <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> or
    #   			<code>SourceAnalysis</code> to list the replacement datasets for the placeholders listed
    #   			in the original. The schema in each dataset must match its placeholder. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the resource.</p>
    #
    # @option params [String] :version_description
    #   <p>A description of the current template version being created. This API operation creates the
    #   			first version of the template. Every time <code>UpdateTemplate</code> is called, a new
    #   			version is created. Each version of the template maintains a description of the version
    #   			in the <code>VersionDescription</code> field.</p>
    #
    # @return [Types::CreateTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template(
    #     aws_account_id: 'AwsAccountId', # required
    #     template_id: 'TemplateId', # required
    #     name: 'Name',
    #     permissions: [
    #       {
    #         principal: 'Principal', # required
    #         actions: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     source_entity: {
    #       source_analysis: {
    #         arn: 'Arn', # required
    #         data_set_references: [
    #           {
    #             data_set_placeholder: 'DataSetPlaceholder', # required
    #             data_set_arn: 'DataSetArn' # required
    #           }
    #         ] # required
    #       },
    #       source_template: {
    #         arn: 'Arn' # required
    #       }
    #     }, # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     version_description: 'VersionDescription'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTemplateOutput
    #   resp.data.arn #=> String
    #   resp.data.version_arn #=> String
    #   resp.data.template_id #=> String
    #   resp.data.creation_status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def create_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTemplate,
        stubs: @stubs,
        params_class: Params::CreateTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a template alias for a template.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTemplateAliasInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template that you creating an alias for.</p>
    #
    # @option params [String] :template_id
    #   <p>An ID for the template.</p>
    #
    # @option params [String] :alias_name
    #   <p>The name that you want to give to the template alias that you're creating. Don't start the
    #   			alias name with the <code>$</code> character. Alias names that start with <code>$</code>
    #   			are reserved by Amazon QuickSight. </p>
    #
    # @option params [Integer] :template_version_number
    #   <p>The version number of the template.</p>
    #
    # @return [Types::CreateTemplateAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template_alias(
    #     aws_account_id: 'AwsAccountId', # required
    #     template_id: 'TemplateId', # required
    #     alias_name: 'AliasName', # required
    #     template_version_number: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTemplateAliasOutput
    #   resp.data.template_alias #=> Types::TemplateAlias
    #   resp.data.template_alias.alias_name #=> String
    #   resp.data.template_alias.arn #=> String
    #   resp.data.template_alias.template_version_number #=> Integer
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def create_template_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTemplateAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTemplateAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTemplateAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateTemplateAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTemplateAlias,
        stubs: @stubs,
        params_class: Params::CreateTemplateAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_template_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a theme.</p>
    # 		       <p>A <i>theme</i> is set of configuration options for color and layout.
    # 			Themes apply to analyses and dashboards. For more information, see <a href="https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html">Using
    # 			Themes in Amazon QuickSight</a> in the <i>Amazon QuickSight User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateThemeInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account where you want to store the new theme. </p>
    #
    # @option params [String] :theme_id
    #   <p>An ID for the theme that you want to create. The theme ID is unique per Amazon Web Services Region in
    #   			each Amazon Web Services account.</p>
    #
    # @option params [String] :name
    #   <p>A display name for the theme.</p>
    #
    # @option params [String] :base_theme_id
    #   <p>The ID of the theme that a custom theme will inherit from. All themes inherit from one of
    #   			the starting themes defined by Amazon QuickSight. For a list of the starting themes, use
    #   				<code>ListThemes</code> or choose <b>Themes</b> from
    #   			within an analysis. </p>
    #
    # @option params [String] :version_description
    #   <p>A description of the first version of the theme that you're creating. Every time
    #   				<code>UpdateTheme</code> is called, a new version is created. Each version of the
    #   			theme has a description of the version in the <code>VersionDescription</code>
    #   			field.</p>
    #
    # @option params [ThemeConfiguration] :configuration
    #   <p>The theme configuration, which contains the theme display properties.</p>
    #
    # @option params [Array<ResourcePermission>] :permissions
    #   <p>A valid grouping of resource permissions to apply to the new theme.
    #   			</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A map of the key-value pairs for the resource tag or tags that you want to add to the
    #   			resource.</p>
    #
    # @return [Types::CreateThemeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_theme(
    #     aws_account_id: 'AwsAccountId', # required
    #     theme_id: 'ThemeId', # required
    #     name: 'Name', # required
    #     base_theme_id: 'BaseThemeId', # required
    #     version_description: 'VersionDescription',
    #     configuration: {
    #       data_color_palette: {
    #         colors: [
    #           'member'
    #         ],
    #         empty_fill_color: 'EmptyFillColor'
    #       },
    #       ui_color_palette: {
    #         primary_foreground: 'PrimaryForeground',
    #         primary_background: 'PrimaryBackground',
    #         secondary_foreground: 'SecondaryForeground',
    #         secondary_background: 'SecondaryBackground',
    #         accent: 'Accent',
    #         accent_foreground: 'AccentForeground',
    #         danger: 'Danger',
    #         danger_foreground: 'DangerForeground',
    #         warning: 'Warning',
    #         warning_foreground: 'WarningForeground',
    #         success: 'Success',
    #         success_foreground: 'SuccessForeground',
    #         dimension: 'Dimension',
    #         dimension_foreground: 'DimensionForeground',
    #         measure: 'Measure',
    #         measure_foreground: 'MeasureForeground'
    #       },
    #       sheet: {
    #         tile: {
    #           border: {
    #             show: false
    #           }
    #         },
    #         tile_layout: {
    #           gutter: {
    #             show: false
    #           },
    #           margin: {
    #             show: false
    #           }
    #         }
    #       }
    #     }, # required
    #     permissions: [
    #       {
    #         principal: 'Principal', # required
    #         actions: [
    #           'member'
    #         ] # required
    #       }
    #     ],
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
    #   resp.data #=> Types::CreateThemeOutput
    #   resp.data.arn #=> String
    #   resp.data.version_arn #=> String
    #   resp.data.theme_id #=> String
    #   resp.data.creation_status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def create_theme(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateThemeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateThemeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTheme
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateTheme
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTheme,
        stubs: @stubs,
        params_class: Params::CreateThemeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_theme
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a theme alias for a theme.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateThemeAliasInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme for the new theme alias.</p>
    #
    # @option params [String] :theme_id
    #   <p>An ID for the theme alias.</p>
    #
    # @option params [String] :alias_name
    #   <p>The name that you want to give to the theme alias that you are creating. The
    #   			alias name can't begin with a <code>$</code>. Alias names that start with <code>$</code>
    #   			are reserved by Amazon QuickSight. </p>
    #
    # @option params [Integer] :theme_version_number
    #   <p>The version number of the theme.</p>
    #
    # @return [Types::CreateThemeAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_theme_alias(
    #     aws_account_id: 'AwsAccountId', # required
    #     theme_id: 'ThemeId', # required
    #     alias_name: 'AliasName', # required
    #     theme_version_number: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateThemeAliasOutput
    #   resp.data.theme_alias #=> Types::ThemeAlias
    #   resp.data.theme_alias.arn #=> String
    #   resp.data.theme_alias.alias_name #=> String
    #   resp.data.theme_alias.theme_version_number #=> Integer
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def create_theme_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateThemeAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateThemeAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateThemeAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateThemeAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateThemeAlias,
        stubs: @stubs,
        params_class: Params::CreateThemeAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_theme_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes all Amazon QuickSight customizations in this Amazon Web Services Region for the specified
    #             Amazon Web Services account and Amazon QuickSight namespace.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccountCustomizationInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that you want to delete Amazon QuickSight customizations from in
    #               this Amazon Web Services Region.</p>
    #
    # @option params [String] :namespace
    #   <p>The Amazon QuickSight namespace that you're deleting the customizations from.</p>
    #
    # @return [Types::DeleteAccountCustomizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_customization(
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccountCustomizationOutput
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def delete_account_customization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccountCustomizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccountCustomizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccountCustomization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteAccountCustomization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccountCustomization,
        stubs: @stubs,
        params_class: Params::DeleteAccountCustomizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_account_customization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an analysis from Amazon QuickSight. You can optionally include a recovery window during
    #             which you can restore the analysis. If you don't specify a recovery window value, the
    #             operation defaults to 30 days. Amazon QuickSight attaches a <code>DeletionTime</code> stamp to
    #             the response that specifies the end of the recovery window. At the end of the recovery
    #             window, Amazon QuickSight deletes the analysis permanently.</p>
    #         <p>At any time before recovery window ends, you can use the <code>RestoreAnalysis</code>
    #             API operation to remove the <code>DeletionTime</code> stamp and cancel the deletion of
    #             the analysis. The analysis remains visible in the API until it's deleted, so you can
    #             describe it but you can't make a template from it.</p>
    #         <p>An analysis that's scheduled for deletion isn't accessible in the Amazon QuickSight console.
    #             To access it in the console, restore it. Deleting an analysis doesn't delete the
    #             dashboards that you publish from it.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAnalysisInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account where you want to delete an analysis.</p>
    #
    # @option params [String] :analysis_id
    #   <p>The ID of the analysis that you're deleting.</p>
    #
    # @option params [Integer] :recovery_window_in_days
    #   <p>A value that specifies the number of days that Amazon QuickSight waits before it deletes the
    #               analysis. You can't use this parameter with the <code>ForceDeleteWithoutRecovery</code>
    #               option in the same API call. The default value is 30.</p>
    #
    # @option params [Boolean] :force_delete_without_recovery
    #   <p>This option defaults to the value <code>NoForceDeleteWithoutRecovery</code>. To
    #               immediately delete the analysis, add the <code>ForceDeleteWithoutRecovery</code> option.
    #               You can't restore an analysis after it's deleted. </p>
    #
    # @return [Types::DeleteAnalysisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_analysis(
    #     aws_account_id: 'AwsAccountId', # required
    #     analysis_id: 'AnalysisId', # required
    #     recovery_window_in_days: 1,
    #     force_delete_without_recovery: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAnalysisOutput
    #   resp.data.status #=> Integer
    #   resp.data.arn #=> String
    #   resp.data.analysis_id #=> String
    #   resp.data.deletion_time #=> Time
    #   resp.data.request_id #=> String
    #
    def delete_analysis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAnalysisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAnalysisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAnalysis
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteAnalysis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAnalysis,
        stubs: @stubs,
        params_class: Params::DeleteAnalysisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_analysis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a dashboard.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDashboardInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboard that you're
    #               deleting.</p>
    #
    # @option params [String] :dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    # @option params [Integer] :version_number
    #   <p>The version number of the dashboard. If the version number property is provided, only
    #               the specified version of the dashboard is deleted.</p>
    #
    # @return [Types::DeleteDashboardOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dashboard(
    #     aws_account_id: 'AwsAccountId', # required
    #     dashboard_id: 'DashboardId', # required
    #     version_number: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDashboardOutput
    #   resp.data.status #=> Integer
    #   resp.data.arn #=> String
    #   resp.data.dashboard_id #=> String
    #   resp.data.request_id #=> String
    #
    def delete_dashboard(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDashboardInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDashboardInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDashboard
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteDashboard
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDashboard,
        stubs: @stubs,
        params_class: Params::DeleteDashboardOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_dashboard
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDataSetInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :data_set_id
    #   <p>The ID for the dataset that you want to create. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    # @return [Types::DeleteDataSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_set(
    #     aws_account_id: 'AwsAccountId', # required
    #     data_set_id: 'DataSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDataSetOutput
    #   resp.data.arn #=> String
    #   resp.data.data_set_id #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def delete_data_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDataSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDataSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteDataSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataSet,
        stubs: @stubs,
        params_class: Params::DeleteDataSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_data_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the data source permanently. This operation breaks
    # 			all the datasets that reference the deleted data source.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDataSourceInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    # @return [Types::DeleteDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source(
    #     aws_account_id: 'AwsAccountId', # required
    #     data_source_id: 'DataSourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDataSourceOutput
    #   resp.data.arn #=> String
    #   resp.data.data_source_id #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def delete_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDataSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataSource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataSource,
        stubs: @stubs,
        params_class: Params::DeleteDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an empty folder.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFolderInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    #
    # @return [Types::DeleteFolderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_folder(
    #     aws_account_id: 'AwsAccountId', # required
    #     folder_id: 'FolderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFolderOutput
    #   resp.data.status #=> Integer
    #   resp.data.arn #=> String
    #   resp.data.folder_id #=> String
    #   resp.data.request_id #=> String
    #
    def delete_folder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFolderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFolderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFolder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::DeleteFolder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFolder,
        stubs: @stubs,
        params_class: Params::DeleteFolderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_folder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an asset, such as a dashboard, analysis, or dataset, from a folder.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFolderMembershipInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    # @option params [String] :folder_id
    #   <p>The Folder ID.</p>
    #
    # @option params [String] :member_id
    #   <p>The ID of the asset (the dashboard, analysis, or dataset) that you want to delete.</p>
    #
    # @option params [String] :member_type
    #   <p>The type of the member, including <code>DASHBOARD</code>, <code>ANALYSIS</code>, and <code>DATASET</code>
    #            </p>
    #
    # @return [Types::DeleteFolderMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_folder_membership(
    #     aws_account_id: 'AwsAccountId', # required
    #     folder_id: 'FolderId', # required
    #     member_id: 'MemberId', # required
    #     member_type: 'DASHBOARD' # required - accepts ["DASHBOARD", "ANALYSIS", "DATASET"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFolderMembershipOutput
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def delete_folder_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFolderMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFolderMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFolderMembership
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteFolderMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFolderMembership,
        stubs: @stubs,
        params_class: Params::DeleteFolderMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_folder_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a user group from Amazon QuickSight. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the group that you want to delete.</p>
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace of the group that you want to delete.</p>
    #
    # @return [Types::DeleteGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group(
    #     group_name: 'GroupName', # required
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGroupOutput
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def delete_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::DeleteGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGroup,
        stubs: @stubs,
        params_class: Params::DeleteGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a user from a group so that the user is no longer a member of the group.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGroupMembershipInput}.
    #
    # @option params [String] :member_name
    #   <p>The name of the user that you want to delete from the group membership.</p>
    #
    # @option params [String] :group_name
    #   <p>The name of the group that you want to delete the user from.</p>
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace of the group that you want to remove a user from.</p>
    #
    # @return [Types::DeleteGroupMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group_membership(
    #     member_name: 'MemberName', # required
    #     group_name: 'GroupName', # required
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGroupMembershipOutput
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def delete_group_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGroupMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGroupMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGroupMembership
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::DeleteGroupMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGroupMembership,
        stubs: @stubs,
        params_class: Params::DeleteGroupMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_group_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing IAM policy assignment.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIAMPolicyAssignmentInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID where you want to delete the IAM policy assignment.</p>
    #
    # @option params [String] :assignment_name
    #   <p>The name of the assignment. </p>
    #
    # @option params [String] :namespace
    #   <p>The namespace that contains the assignment.</p>
    #
    # @return [Types::DeleteIAMPolicyAssignmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_iam_policy_assignment(
    #     aws_account_id: 'AwsAccountId', # required
    #     assignment_name: 'AssignmentName', # required
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIAMPolicyAssignmentOutput
    #   resp.data.assignment_name #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def delete_iam_policy_assignment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIAMPolicyAssignmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIAMPolicyAssignmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIAMPolicyAssignment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConcurrentUpdatingException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteIAMPolicyAssignment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIAMPolicyAssignment,
        stubs: @stubs,
        params_class: Params::DeleteIAMPolicyAssignmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_iam_policy_assignment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a namespace and the users and groups that are associated with the namespace.
    #         This is an asynchronous process. Assets including dashboards, analyses, datasets and data sources are not
    #         deleted. To delete these assets, you use the API operations for the relevant asset. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteNamespaceInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that you want to delete the Amazon QuickSight namespace from.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace that you want to delete.</p>
    #
    # @return [Types::DeleteNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_namespace(
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteNamespaceOutput
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def delete_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteNamespaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteNamespace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::DeleteNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteNamespace,
        stubs: @stubs,
        params_class: Params::DeleteNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a template.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTemplateInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template that you're deleting.</p>
    #
    # @option params [String] :template_id
    #   <p>An ID for the template you want to delete.</p>
    #
    # @option params [Integer] :version_number
    #   <p>Specifies the version of the template that you want to delete.
    #   			If you don't provide a version number, <code>DeleteTemplate</code> deletes all versions of the template.
    #   	 </p>
    #
    # @return [Types::DeleteTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template(
    #     aws_account_id: 'AwsAccountId', # required
    #     template_id: 'TemplateId', # required
    #     version_number: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTemplateOutput
    #   resp.data.request_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.template_id #=> String
    #   resp.data.status #=> Integer
    #
    def delete_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTemplate,
        stubs: @stubs,
        params_class: Params::DeleteTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the item that the specified template alias points to. If you provide a specific
    # 			alias, you delete the version of the template that the alias points to.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTemplateAliasInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the item to delete.</p>
    #
    # @option params [String] :template_id
    #   <p>The ID for the template that the specified alias is for.</p>
    #
    # @option params [String] :alias_name
    #   <p>The name for the template alias. To delete a specific alias, you delete the version that the
    #   			alias points to. You can specify the alias name, or specify the latest version of the
    #   			template by providing the keyword <code>$LATEST</code> in the <code>AliasName</code>
    #   			parameter. </p>
    #
    # @return [Types::DeleteTemplateAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template_alias(
    #     aws_account_id: 'AwsAccountId', # required
    #     template_id: 'TemplateId', # required
    #     alias_name: 'AliasName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTemplateAliasOutput
    #   resp.data.status #=> Integer
    #   resp.data.template_id #=> String
    #   resp.data.alias_name #=> String
    #   resp.data.arn #=> String
    #   resp.data.request_id #=> String
    #
    def delete_template_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTemplateAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTemplateAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTemplateAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteTemplateAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTemplateAlias,
        stubs: @stubs,
        params_class: Params::DeleteTemplateAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_template_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a theme.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteThemeInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme that you're deleting.</p>
    #
    # @option params [String] :theme_id
    #   <p>An ID for the theme that you want to delete.</p>
    #
    # @option params [Integer] :version_number
    #   <p>The version of the theme that you want to delete. </p>
    #   		       <p>
    #               <b>Note:</b> If you don't provide a version number, you're
    #   			using this call to <code>DeleteTheme</code> to delete all versions of the theme.</p>
    #
    # @return [Types::DeleteThemeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_theme(
    #     aws_account_id: 'AwsAccountId', # required
    #     theme_id: 'ThemeId', # required
    #     version_number: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteThemeOutput
    #   resp.data.arn #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #   resp.data.theme_id #=> String
    #
    def delete_theme(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteThemeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteThemeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTheme
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteTheme
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTheme,
        stubs: @stubs,
        params_class: Params::DeleteThemeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_theme
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the version of the theme that the specified theme alias points to.
    # 			If you provide a specific alias, you delete the version of the theme
    # 			that the alias points to.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteThemeAliasInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme alias to delete.</p>
    #
    # @option params [String] :theme_id
    #   <p>The ID for the theme that the specified alias is for.</p>
    #
    # @option params [String] :alias_name
    #   <p>The unique name for the theme alias to delete.</p>
    #
    # @return [Types::DeleteThemeAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_theme_alias(
    #     aws_account_id: 'AwsAccountId', # required
    #     theme_id: 'ThemeId', # required
    #     alias_name: 'AliasName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteThemeAliasOutput
    #   resp.data.alias_name #=> String
    #   resp.data.arn #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #   resp.data.theme_id #=> String
    #
    def delete_theme_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteThemeAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteThemeAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteThemeAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteThemeAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteThemeAlias,
        stubs: @stubs,
        params_class: Params::DeleteThemeAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_theme_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the Amazon QuickSight user that is associated with the identity of the
    # 			Identity and Access Management (IAM) user or role that's making the call. The IAM user
    # 			isn't deleted as a result of this call. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user that you want to delete.</p>
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the user is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace. Currently, you should set this to <code>default</code>.</p>
    #
    # @return [Types::DeleteUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user(
    #     user_name: 'UserName', # required
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserOutput
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def delete_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
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

    # <p>Deletes a user identified by its principal ID. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserByPrincipalIdInput}.
    #
    # @option params [String] :principal_id
    #   <p>The principal ID of the user.</p>
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the user is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace. Currently, you should set this to <code>default</code>.</p>
    #
    # @return [Types::DeleteUserByPrincipalIdOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_by_principal_id(
    #     principal_id: 'PrincipalId', # required
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserByPrincipalIdOutput
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def delete_user_by_principal_id(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserByPrincipalIdInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserByPrincipalIdInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUserByPrincipalId
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::DeleteUserByPrincipalId
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUserByPrincipalId,
        stubs: @stubs,
        params_class: Params::DeleteUserByPrincipalIdOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user_by_principal_id
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the customizations associated with the provided Amazon Web Services account and Amazon
    #             Amazon QuickSight namespace in an Amazon Web Services Region. The Amazon QuickSight console evaluates which
    #             customizations to apply by running this API operation with the <code>Resolved</code> flag
    #             included. </p>
    #         <p>To determine what customizations display when you run this command, it can help to
    #             visualize the relationship of the entities involved. </p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>Amazon Web Services account</code> - The Amazon Web Services account exists at the top of the hierarchy.
    #                     It has the potential to use all of the Amazon Web Services Regions and Amazon Web Services Services. When you
    #                     subscribe to Amazon QuickSight, you choose one Amazon Web Services Region to use as your home Region.
    #                     That's where your free SPICE capacity is located. You can use Amazon QuickSight in any
    #                     supported Amazon Web Services Region. </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Amazon Web Services Region</code> - In each Amazon Web Services Region where you sign in to Amazon QuickSight
    #                     at least once, Amazon QuickSight acts as a separate instance of the same service. If
    #                     you have a user directory, it resides in us-east-1, which is the US East (N.
    #                     Virginia). Generally speaking, these users have access to Amazon QuickSight in any
    #                     Amazon Web Services Region, unless they are constrained to a namespace. </p>
    #                 <p>To run the command in a different Amazon Web Services Region, you change your Region settings.
    #                     If you're using the CLI, you can use one of the following options:</p>
    #                 <ul>
    #                   <li>
    #                         <p>Use <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html">command line options</a>. </p>
    #                     </li>
    #                   <li>
    #                         <p>Use <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html">named profiles</a>. </p>
    #                     </li>
    #                   <li>
    #                         <p>Run <code>aws configure</code> to change your default Amazon Web Services Region. Use
    #                             Enter to key the same settings for your keys. For more information, see
    #                             <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html">Configuring the CLI</a>.</p>
    #                     </li>
    #                </ul>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Namespace</code> - A QuickSight namespace is a partition that contains
    #                     users and assets (data sources, datasets, dashboards, and so on). To access
    #                     assets that are in a specific namespace, users and groups must also be part of
    #                     the same namespace. People who share a namespace are completely isolated from
    #                     users and assets in other namespaces, even if they are in the same Amazon Web Services account
    #                     and Amazon Web Services Region.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Applied customizations</code> -  Within an Amazon Web Services Region, a set of
    #                     Amazon QuickSight customizations can apply to an Amazon Web Services account or to a namespace.
    #                     Settings that you apply to a namespace override settings that you apply to an
    #                     Amazon Web Services account. All settings are isolated to a single Amazon Web Services Region. To apply them in
    #                     other Amazon Web Services Regions, run the <code>CreateAccountCustomization</code> command in
    #                     each Amazon Web Services Region where you want to apply the same customizations. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountCustomizationInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that you want to describe Amazon QuickSight customizations
    #               for.</p>
    #
    # @option params [String] :namespace
    #   <p>The Amazon QuickSight namespace that you want to describe Amazon QuickSight customizations
    #               for.</p>
    #
    # @option params [Boolean] :resolved
    #   <p>The <code>Resolved</code> flag works with the other parameters to determine which view
    #               of Amazon QuickSight customizations is returned. You can add this flag to your command to use
    #               the same view that Amazon QuickSight uses to identify which customizations to apply to the
    #               console. Omit this flag, or set it to <code>no-resolved</code>, to reveal customizations
    #               that are configured at different levels. </p>
    #
    # @return [Types::DescribeAccountCustomizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_customization(
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace',
    #     resolved: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountCustomizationOutput
    #   resp.data.arn #=> String
    #   resp.data.aws_account_id #=> String
    #   resp.data.namespace #=> String
    #   resp.data.account_customization #=> Types::AccountCustomization
    #   resp.data.account_customization.default_theme #=> String
    #   resp.data.account_customization.default_email_customization_template #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def describe_account_customization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountCustomizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountCustomizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountCustomization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeAccountCustomization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountCustomization,
        stubs: @stubs,
        params_class: Params::DescribeAccountCustomizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_customization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the settings that were used when your Amazon QuickSight subscription was first
    #             created in this Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountSettingsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the settings that you want to list.</p>
    #
    # @return [Types::DescribeAccountSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_settings(
    #     aws_account_id: 'AwsAccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountSettingsOutput
    #   resp.data.account_settings #=> Types::AccountSettings
    #   resp.data.account_settings.account_name #=> String
    #   resp.data.account_settings.edition #=> String, one of ["STANDARD", "ENTERPRISE"]
    #   resp.data.account_settings.default_namespace #=> String
    #   resp.data.account_settings.notification_email #=> String
    #   resp.data.account_settings.public_sharing_enabled #=> Boolean
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def describe_account_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeAccountSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountSettings,
        stubs: @stubs,
        params_class: Params::DescribeAccountSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a summary of the metadata for an analysis.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAnalysisInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the analysis. You must be using the
    #               Amazon Web Services account that the analysis is in.</p>
    #
    # @option params [String] :analysis_id
    #   <p>The ID of the analysis that you're describing. The ID is part of the URL of the
    #               analysis.</p>
    #
    # @return [Types::DescribeAnalysisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_analysis(
    #     aws_account_id: 'AwsAccountId', # required
    #     analysis_id: 'AnalysisId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAnalysisOutput
    #   resp.data.analysis #=> Types::Analysis
    #   resp.data.analysis.analysis_id #=> String
    #   resp.data.analysis.arn #=> String
    #   resp.data.analysis.name #=> String
    #   resp.data.analysis.status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.analysis.errors #=> Array<AnalysisError>
    #   resp.data.analysis.errors[0] #=> Types::AnalysisError
    #   resp.data.analysis.errors[0].type #=> String, one of ["ACCESS_DENIED", "SOURCE_NOT_FOUND", "DATA_SET_NOT_FOUND", "INTERNAL_FAILURE", "PARAMETER_VALUE_INCOMPATIBLE", "PARAMETER_TYPE_INVALID", "PARAMETER_NOT_FOUND", "COLUMN_TYPE_MISMATCH", "COLUMN_GEOGRAPHIC_ROLE_MISMATCH", "COLUMN_REPLACEMENT_MISSING"]
    #   resp.data.analysis.errors[0].message #=> String
    #   resp.data.analysis.data_set_arns #=> Array<String>
    #   resp.data.analysis.data_set_arns[0] #=> String
    #   resp.data.analysis.theme_arn #=> String
    #   resp.data.analysis.created_time #=> Time
    #   resp.data.analysis.last_updated_time #=> Time
    #   resp.data.analysis.sheets #=> Array<Sheet>
    #   resp.data.analysis.sheets[0] #=> Types::Sheet
    #   resp.data.analysis.sheets[0].sheet_id #=> String
    #   resp.data.analysis.sheets[0].name #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def describe_analysis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAnalysisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAnalysisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAnalysis
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeAnalysis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAnalysis,
        stubs: @stubs,
        params_class: Params::DescribeAnalysisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_analysis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides the read and write permissions for an analysis.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAnalysisPermissionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the analysis whose permissions you're
    #               describing. You must be using the Amazon Web Services account that the analysis is in.</p>
    #
    # @option params [String] :analysis_id
    #   <p>The ID of the analysis whose permissions you're describing. The ID is part of the
    #               analysis URL.</p>
    #
    # @return [Types::DescribeAnalysisPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_analysis_permissions(
    #     aws_account_id: 'AwsAccountId', # required
    #     analysis_id: 'AnalysisId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAnalysisPermissionsOutput
    #   resp.data.analysis_id #=> String
    #   resp.data.analysis_arn #=> String
    #   resp.data.permissions #=> Array<ResourcePermission>
    #   resp.data.permissions[0] #=> Types::ResourcePermission
    #   resp.data.permissions[0].principal #=> String
    #   resp.data.permissions[0].actions #=> Array<String>
    #   resp.data.permissions[0].actions[0] #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def describe_analysis_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAnalysisPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAnalysisPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAnalysisPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeAnalysisPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAnalysisPermissions,
        stubs: @stubs,
        params_class: Params::DescribeAnalysisPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_analysis_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a summary for a dashboard.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDashboardInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboard that you're
    #               describing.</p>
    #
    # @option params [String] :dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    # @option params [Integer] :version_number
    #   <p>The version number for the dashboard. If a version number isn't passed, the
    #               latest published dashboard version is described. </p>
    #
    # @option params [String] :alias_name
    #   <p>The alias name.</p>
    #
    # @return [Types::DescribeDashboardOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard(
    #     aws_account_id: 'AwsAccountId', # required
    #     dashboard_id: 'DashboardId', # required
    #     version_number: 1,
    #     alias_name: 'AliasName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDashboardOutput
    #   resp.data.dashboard #=> Types::Dashboard
    #   resp.data.dashboard.dashboard_id #=> String
    #   resp.data.dashboard.arn #=> String
    #   resp.data.dashboard.name #=> String
    #   resp.data.dashboard.version #=> Types::DashboardVersion
    #   resp.data.dashboard.version.created_time #=> Time
    #   resp.data.dashboard.version.errors #=> Array<DashboardError>
    #   resp.data.dashboard.version.errors[0] #=> Types::DashboardError
    #   resp.data.dashboard.version.errors[0].type #=> String, one of ["ACCESS_DENIED", "SOURCE_NOT_FOUND", "DATA_SET_NOT_FOUND", "INTERNAL_FAILURE", "PARAMETER_VALUE_INCOMPATIBLE", "PARAMETER_TYPE_INVALID", "PARAMETER_NOT_FOUND", "COLUMN_TYPE_MISMATCH", "COLUMN_GEOGRAPHIC_ROLE_MISMATCH", "COLUMN_REPLACEMENT_MISSING"]
    #   resp.data.dashboard.version.errors[0].message #=> String
    #   resp.data.dashboard.version.version_number #=> Integer
    #   resp.data.dashboard.version.status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.dashboard.version.arn #=> String
    #   resp.data.dashboard.version.source_entity_arn #=> String
    #   resp.data.dashboard.version.data_set_arns #=> Array<String>
    #   resp.data.dashboard.version.data_set_arns[0] #=> String
    #   resp.data.dashboard.version.description #=> String
    #   resp.data.dashboard.version.theme_arn #=> String
    #   resp.data.dashboard.version.sheets #=> Array<Sheet>
    #   resp.data.dashboard.version.sheets[0] #=> Types::Sheet
    #   resp.data.dashboard.version.sheets[0].sheet_id #=> String
    #   resp.data.dashboard.version.sheets[0].name #=> String
    #   resp.data.dashboard.created_time #=> Time
    #   resp.data.dashboard.last_published_time #=> Time
    #   resp.data.dashboard.last_updated_time #=> Time
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def describe_dashboard(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDashboardInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDashboardInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDashboard
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeDashboard
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDashboard,
        stubs: @stubs,
        params_class: Params::DescribeDashboardOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_dashboard
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes read and write permissions for a dashboard.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDashboardPermissionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboard that you're describing
    #               permissions for.</p>
    #
    # @option params [String] :dashboard_id
    #   <p>The ID for the dashboard, also added to the IAM policy.</p>
    #
    # @return [Types::DescribeDashboardPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard_permissions(
    #     aws_account_id: 'AwsAccountId', # required
    #     dashboard_id: 'DashboardId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDashboardPermissionsOutput
    #   resp.data.dashboard_id #=> String
    #   resp.data.dashboard_arn #=> String
    #   resp.data.permissions #=> Array<ResourcePermission>
    #   resp.data.permissions[0] #=> Types::ResourcePermission
    #   resp.data.permissions[0].principal #=> String
    #   resp.data.permissions[0].actions #=> Array<String>
    #   resp.data.permissions[0].actions[0] #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #   resp.data.link_sharing_configuration #=> Types::LinkSharingConfiguration
    #   resp.data.link_sharing_configuration.permissions #=> Array<ResourcePermission>
    #
    def describe_dashboard_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDashboardPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDashboardPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDashboardPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeDashboardPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDashboardPermissions,
        stubs: @stubs,
        params_class: Params::DescribeDashboardPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_dashboard_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a dataset. This operation doesn't support datasets that include uploaded files as a source.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDataSetInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :data_set_id
    #   <p>The ID for the dataset that you want to create. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    # @return [Types::DescribeDataSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_set(
    #     aws_account_id: 'AwsAccountId', # required
    #     data_set_id: 'DataSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDataSetOutput
    #   resp.data.data_set #=> Types::DataSet
    #   resp.data.data_set.arn #=> String
    #   resp.data.data_set.data_set_id #=> String
    #   resp.data.data_set.name #=> String
    #   resp.data.data_set.created_time #=> Time
    #   resp.data.data_set.last_updated_time #=> Time
    #   resp.data.data_set.physical_table_map #=> Hash<String, PhysicalTable>
    #   resp.data.data_set.physical_table_map['key'] #=> Types::PhysicalTable, one of [RelationalTable, CustomSql, S3Source]
    #   resp.data.data_set.physical_table_map['key'].relational_table #=> Types::RelationalTable
    #   resp.data.data_set.physical_table_map['key'].relational_table.data_source_arn #=> String
    #   resp.data.data_set.physical_table_map['key'].relational_table.catalog #=> String
    #   resp.data.data_set.physical_table_map['key'].relational_table.schema #=> String
    #   resp.data.data_set.physical_table_map['key'].relational_table.name #=> String
    #   resp.data.data_set.physical_table_map['key'].relational_table.input_columns #=> Array<InputColumn>
    #   resp.data.data_set.physical_table_map['key'].relational_table.input_columns[0] #=> Types::InputColumn
    #   resp.data.data_set.physical_table_map['key'].relational_table.input_columns[0].name #=> String
    #   resp.data.data_set.physical_table_map['key'].relational_table.input_columns[0].type #=> String, one of ["STRING", "INTEGER", "DECIMAL", "DATETIME", "BIT", "BOOLEAN", "JSON"]
    #   resp.data.data_set.physical_table_map['key'].custom_sql #=> Types::CustomSql
    #   resp.data.data_set.physical_table_map['key'].custom_sql.data_source_arn #=> String
    #   resp.data.data_set.physical_table_map['key'].custom_sql.name #=> String
    #   resp.data.data_set.physical_table_map['key'].custom_sql.sql_query #=> String
    #   resp.data.data_set.physical_table_map['key'].custom_sql.columns #=> Array<InputColumn>
    #   resp.data.data_set.physical_table_map['key'].s3_source #=> Types::S3Source
    #   resp.data.data_set.physical_table_map['key'].s3_source.data_source_arn #=> String
    #   resp.data.data_set.physical_table_map['key'].s3_source.upload_settings #=> Types::UploadSettings
    #   resp.data.data_set.physical_table_map['key'].s3_source.upload_settings.format #=> String, one of ["CSV", "TSV", "CLF", "ELF", "XLSX", "JSON"]
    #   resp.data.data_set.physical_table_map['key'].s3_source.upload_settings.start_from_row #=> Integer
    #   resp.data.data_set.physical_table_map['key'].s3_source.upload_settings.contains_header #=> Boolean
    #   resp.data.data_set.physical_table_map['key'].s3_source.upload_settings.text_qualifier #=> String, one of ["DOUBLE_QUOTE", "SINGLE_QUOTE"]
    #   resp.data.data_set.physical_table_map['key'].s3_source.upload_settings.delimiter #=> String
    #   resp.data.data_set.physical_table_map['key'].s3_source.input_columns #=> Array<InputColumn>
    #   resp.data.data_set.logical_table_map #=> Hash<String, LogicalTable>
    #   resp.data.data_set.logical_table_map['key'] #=> Types::LogicalTable
    #   resp.data.data_set.logical_table_map['key'].alias #=> String
    #   resp.data.data_set.logical_table_map['key'].data_transforms #=> Array<TransformOperation>
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0] #=> Types::TransformOperation, one of [ProjectOperation, FilterOperation, CreateColumnsOperation, RenameColumnOperation, CastColumnTypeOperation, TagColumnOperation, UntagColumnOperation]
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].project_operation #=> Types::ProjectOperation
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].project_operation.projected_columns #=> Array<String>
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].project_operation.projected_columns[0] #=> String
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].filter_operation #=> Types::FilterOperation
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].filter_operation.condition_expression #=> String
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].create_columns_operation #=> Types::CreateColumnsOperation
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].create_columns_operation.columns #=> Array<CalculatedColumn>
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].create_columns_operation.columns[0] #=> Types::CalculatedColumn
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].create_columns_operation.columns[0].column_name #=> String
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].create_columns_operation.columns[0].column_id #=> String
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].create_columns_operation.columns[0].expression #=> String
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].rename_column_operation #=> Types::RenameColumnOperation
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].rename_column_operation.column_name #=> String
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].rename_column_operation.new_column_name #=> String
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].cast_column_type_operation #=> Types::CastColumnTypeOperation
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].cast_column_type_operation.column_name #=> String
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].cast_column_type_operation.new_column_type #=> String, one of ["STRING", "INTEGER", "DECIMAL", "DATETIME"]
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].cast_column_type_operation.format #=> String
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].tag_column_operation #=> Types::TagColumnOperation
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].tag_column_operation.column_name #=> String
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].tag_column_operation.tags #=> Array<ColumnTag>
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].tag_column_operation.tags[0] #=> Types::ColumnTag
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].tag_column_operation.tags[0].column_geographic_role #=> String, one of ["COUNTRY", "STATE", "COUNTY", "CITY", "POSTCODE", "LONGITUDE", "LATITUDE"]
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].tag_column_operation.tags[0].column_description #=> Types::ColumnDescription
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].tag_column_operation.tags[0].column_description.text #=> String
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].untag_column_operation #=> Types::UntagColumnOperation
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].untag_column_operation.column_name #=> String
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].untag_column_operation.tag_names #=> Array<String>
    #   resp.data.data_set.logical_table_map['key'].data_transforms[0].untag_column_operation.tag_names[0] #=> String, one of ["COLUMN_GEOGRAPHIC_ROLE", "COLUMN_DESCRIPTION"]
    #   resp.data.data_set.logical_table_map['key'].source #=> Types::LogicalTableSource
    #   resp.data.data_set.logical_table_map['key'].source.join_instruction #=> Types::JoinInstruction
    #   resp.data.data_set.logical_table_map['key'].source.join_instruction.left_operand #=> String
    #   resp.data.data_set.logical_table_map['key'].source.join_instruction.right_operand #=> String
    #   resp.data.data_set.logical_table_map['key'].source.join_instruction.left_join_key_properties #=> Types::JoinKeyProperties
    #   resp.data.data_set.logical_table_map['key'].source.join_instruction.left_join_key_properties.unique_key #=> Boolean
    #   resp.data.data_set.logical_table_map['key'].source.join_instruction.right_join_key_properties #=> Types::JoinKeyProperties
    #   resp.data.data_set.logical_table_map['key'].source.join_instruction.type #=> String, one of ["INNER", "OUTER", "LEFT", "RIGHT"]
    #   resp.data.data_set.logical_table_map['key'].source.join_instruction.on_clause #=> String
    #   resp.data.data_set.logical_table_map['key'].source.physical_table_id #=> String
    #   resp.data.data_set.logical_table_map['key'].source.data_set_arn #=> String
    #   resp.data.data_set.output_columns #=> Array<OutputColumn>
    #   resp.data.data_set.output_columns[0] #=> Types::OutputColumn
    #   resp.data.data_set.output_columns[0].name #=> String
    #   resp.data.data_set.output_columns[0].description #=> String
    #   resp.data.data_set.output_columns[0].type #=> String, one of ["STRING", "INTEGER", "DECIMAL", "DATETIME"]
    #   resp.data.data_set.import_mode #=> String, one of ["SPICE", "DIRECT_QUERY"]
    #   resp.data.data_set.consumed_spice_capacity_in_bytes #=> Integer
    #   resp.data.data_set.column_groups #=> Array<ColumnGroup>
    #   resp.data.data_set.column_groups[0] #=> Types::ColumnGroup
    #   resp.data.data_set.column_groups[0].geo_spatial_column_group #=> Types::GeoSpatialColumnGroup
    #   resp.data.data_set.column_groups[0].geo_spatial_column_group.name #=> String
    #   resp.data.data_set.column_groups[0].geo_spatial_column_group.country_code #=> String, one of ["US"]
    #   resp.data.data_set.column_groups[0].geo_spatial_column_group.columns #=> Array<String>
    #   resp.data.data_set.column_groups[0].geo_spatial_column_group.columns[0] #=> String
    #   resp.data.data_set.field_folders #=> Hash<String, FieldFolder>
    #   resp.data.data_set.field_folders['key'] #=> Types::FieldFolder
    #   resp.data.data_set.field_folders['key'].description #=> String
    #   resp.data.data_set.field_folders['key'].columns #=> Array<String>
    #   resp.data.data_set.field_folders['key'].columns[0] #=> String
    #   resp.data.data_set.row_level_permission_data_set #=> Types::RowLevelPermissionDataSet
    #   resp.data.data_set.row_level_permission_data_set.namespace #=> String
    #   resp.data.data_set.row_level_permission_data_set.arn #=> String
    #   resp.data.data_set.row_level_permission_data_set.permission_policy #=> String, one of ["GRANT_ACCESS", "DENY_ACCESS"]
    #   resp.data.data_set.row_level_permission_data_set.format_version #=> String, one of ["VERSION_1", "VERSION_2"]
    #   resp.data.data_set.row_level_permission_data_set.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.data_set.row_level_permission_tag_configuration #=> Types::RowLevelPermissionTagConfiguration
    #   resp.data.data_set.row_level_permission_tag_configuration.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.data_set.row_level_permission_tag_configuration.tag_rules #=> Array<RowLevelPermissionTagRule>
    #   resp.data.data_set.row_level_permission_tag_configuration.tag_rules[0] #=> Types::RowLevelPermissionTagRule
    #   resp.data.data_set.row_level_permission_tag_configuration.tag_rules[0].tag_key #=> String
    #   resp.data.data_set.row_level_permission_tag_configuration.tag_rules[0].column_name #=> String
    #   resp.data.data_set.row_level_permission_tag_configuration.tag_rules[0].tag_multi_value_delimiter #=> String
    #   resp.data.data_set.row_level_permission_tag_configuration.tag_rules[0].match_all_value #=> String
    #   resp.data.data_set.column_level_permission_rules #=> Array<ColumnLevelPermissionRule>
    #   resp.data.data_set.column_level_permission_rules[0] #=> Types::ColumnLevelPermissionRule
    #   resp.data.data_set.column_level_permission_rules[0].principals #=> Array<String>
    #   resp.data.data_set.column_level_permission_rules[0].principals[0] #=> String
    #   resp.data.data_set.column_level_permission_rules[0].column_names #=> Array<String>
    #   resp.data.data_set.column_level_permission_rules[0].column_names[0] #=> String
    #   resp.data.data_set.data_set_usage_configuration #=> Types::DataSetUsageConfiguration
    #   resp.data.data_set.data_set_usage_configuration.disable_use_as_direct_query_source #=> Boolean
    #   resp.data.data_set.data_set_usage_configuration.disable_use_as_imported_source #=> Boolean
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def describe_data_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDataSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDataSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeDataSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataSet,
        stubs: @stubs,
        params_class: Params::DescribeDataSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_data_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the permissions on a dataset.</p>
    # 		       <p>The permissions resource is <code>arn:aws:quicksight:region:aws-account-id:dataset/data-set-id</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDataSetPermissionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :data_set_id
    #   <p>The ID for the dataset that you want to create. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    # @return [Types::DescribeDataSetPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_set_permissions(
    #     aws_account_id: 'AwsAccountId', # required
    #     data_set_id: 'DataSetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDataSetPermissionsOutput
    #   resp.data.data_set_arn #=> String
    #   resp.data.data_set_id #=> String
    #   resp.data.permissions #=> Array<ResourcePermission>
    #   resp.data.permissions[0] #=> Types::ResourcePermission
    #   resp.data.permissions[0].principal #=> String
    #   resp.data.permissions[0].actions #=> Array<String>
    #   resp.data.permissions[0].actions[0] #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def describe_data_set_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDataSetPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDataSetPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataSetPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeDataSetPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataSetPermissions,
        stubs: @stubs,
        params_class: Params::DescribeDataSetPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_data_set_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a data source.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDataSourceInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    # @return [Types::DescribeDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_source(
    #     aws_account_id: 'AwsAccountId', # required
    #     data_source_id: 'DataSourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDataSourceOutput
    #   resp.data.data_source #=> Types::DataSource
    #   resp.data.data_source.arn #=> String
    #   resp.data.data_source.data_source_id #=> String
    #   resp.data.data_source.name #=> String
    #   resp.data.data_source.type #=> String, one of ["ADOBE_ANALYTICS", "AMAZON_ELASTICSEARCH", "ATHENA", "AURORA", "AURORA_POSTGRESQL", "AWS_IOT_ANALYTICS", "GITHUB", "JIRA", "MARIADB", "MYSQL", "ORACLE", "POSTGRESQL", "PRESTO", "REDSHIFT", "S3", "SALESFORCE", "SERVICENOW", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "TWITTER", "TIMESTREAM", "AMAZON_OPENSEARCH", "EXASOL"]
    #   resp.data.data_source.status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.data_source.created_time #=> Time
    #   resp.data.data_source.last_updated_time #=> Time
    #   resp.data.data_source.data_source_parameters #=> Types::DataSourceParameters, one of [AmazonElasticsearchParameters, AthenaParameters, AuroraParameters, AuroraPostgreSqlParameters, AwsIotAnalyticsParameters, JiraParameters, MariaDbParameters, MySqlParameters, OracleParameters, PostgreSqlParameters, PrestoParameters, RdsParameters, RedshiftParameters, S3Parameters, ServiceNowParameters, SnowflakeParameters, SparkParameters, SqlServerParameters, TeradataParameters, TwitterParameters, AmazonOpenSearchParameters, ExasolParameters]
    #   resp.data.data_source.data_source_parameters.amazon_elasticsearch_parameters #=> Types::AmazonElasticsearchParameters
    #   resp.data.data_source.data_source_parameters.amazon_elasticsearch_parameters.domain #=> String
    #   resp.data.data_source.data_source_parameters.athena_parameters #=> Types::AthenaParameters
    #   resp.data.data_source.data_source_parameters.athena_parameters.work_group #=> String
    #   resp.data.data_source.data_source_parameters.aurora_parameters #=> Types::AuroraParameters
    #   resp.data.data_source.data_source_parameters.aurora_parameters.host #=> String
    #   resp.data.data_source.data_source_parameters.aurora_parameters.port #=> Integer
    #   resp.data.data_source.data_source_parameters.aurora_parameters.database #=> String
    #   resp.data.data_source.data_source_parameters.aurora_postgre_sql_parameters #=> Types::AuroraPostgreSqlParameters
    #   resp.data.data_source.data_source_parameters.aurora_postgre_sql_parameters.host #=> String
    #   resp.data.data_source.data_source_parameters.aurora_postgre_sql_parameters.port #=> Integer
    #   resp.data.data_source.data_source_parameters.aurora_postgre_sql_parameters.database #=> String
    #   resp.data.data_source.data_source_parameters.aws_iot_analytics_parameters #=> Types::AwsIotAnalyticsParameters
    #   resp.data.data_source.data_source_parameters.aws_iot_analytics_parameters.data_set_name #=> String
    #   resp.data.data_source.data_source_parameters.jira_parameters #=> Types::JiraParameters
    #   resp.data.data_source.data_source_parameters.jira_parameters.site_base_url #=> String
    #   resp.data.data_source.data_source_parameters.maria_db_parameters #=> Types::MariaDbParameters
    #   resp.data.data_source.data_source_parameters.maria_db_parameters.host #=> String
    #   resp.data.data_source.data_source_parameters.maria_db_parameters.port #=> Integer
    #   resp.data.data_source.data_source_parameters.maria_db_parameters.database #=> String
    #   resp.data.data_source.data_source_parameters.my_sql_parameters #=> Types::MySqlParameters
    #   resp.data.data_source.data_source_parameters.my_sql_parameters.host #=> String
    #   resp.data.data_source.data_source_parameters.my_sql_parameters.port #=> Integer
    #   resp.data.data_source.data_source_parameters.my_sql_parameters.database #=> String
    #   resp.data.data_source.data_source_parameters.oracle_parameters #=> Types::OracleParameters
    #   resp.data.data_source.data_source_parameters.oracle_parameters.host #=> String
    #   resp.data.data_source.data_source_parameters.oracle_parameters.port #=> Integer
    #   resp.data.data_source.data_source_parameters.oracle_parameters.database #=> String
    #   resp.data.data_source.data_source_parameters.postgre_sql_parameters #=> Types::PostgreSqlParameters
    #   resp.data.data_source.data_source_parameters.postgre_sql_parameters.host #=> String
    #   resp.data.data_source.data_source_parameters.postgre_sql_parameters.port #=> Integer
    #   resp.data.data_source.data_source_parameters.postgre_sql_parameters.database #=> String
    #   resp.data.data_source.data_source_parameters.presto_parameters #=> Types::PrestoParameters
    #   resp.data.data_source.data_source_parameters.presto_parameters.host #=> String
    #   resp.data.data_source.data_source_parameters.presto_parameters.port #=> Integer
    #   resp.data.data_source.data_source_parameters.presto_parameters.catalog #=> String
    #   resp.data.data_source.data_source_parameters.rds_parameters #=> Types::RdsParameters
    #   resp.data.data_source.data_source_parameters.rds_parameters.instance_id #=> String
    #   resp.data.data_source.data_source_parameters.rds_parameters.database #=> String
    #   resp.data.data_source.data_source_parameters.redshift_parameters #=> Types::RedshiftParameters
    #   resp.data.data_source.data_source_parameters.redshift_parameters.host #=> String
    #   resp.data.data_source.data_source_parameters.redshift_parameters.port #=> Integer
    #   resp.data.data_source.data_source_parameters.redshift_parameters.database #=> String
    #   resp.data.data_source.data_source_parameters.redshift_parameters.cluster_id #=> String
    #   resp.data.data_source.data_source_parameters.s3_parameters #=> Types::S3Parameters
    #   resp.data.data_source.data_source_parameters.s3_parameters.manifest_file_location #=> Types::ManifestFileLocation
    #   resp.data.data_source.data_source_parameters.s3_parameters.manifest_file_location.bucket #=> String
    #   resp.data.data_source.data_source_parameters.s3_parameters.manifest_file_location.key #=> String
    #   resp.data.data_source.data_source_parameters.service_now_parameters #=> Types::ServiceNowParameters
    #   resp.data.data_source.data_source_parameters.service_now_parameters.site_base_url #=> String
    #   resp.data.data_source.data_source_parameters.snowflake_parameters #=> Types::SnowflakeParameters
    #   resp.data.data_source.data_source_parameters.snowflake_parameters.host #=> String
    #   resp.data.data_source.data_source_parameters.snowflake_parameters.database #=> String
    #   resp.data.data_source.data_source_parameters.snowflake_parameters.warehouse #=> String
    #   resp.data.data_source.data_source_parameters.spark_parameters #=> Types::SparkParameters
    #   resp.data.data_source.data_source_parameters.spark_parameters.host #=> String
    #   resp.data.data_source.data_source_parameters.spark_parameters.port #=> Integer
    #   resp.data.data_source.data_source_parameters.sql_server_parameters #=> Types::SqlServerParameters
    #   resp.data.data_source.data_source_parameters.sql_server_parameters.host #=> String
    #   resp.data.data_source.data_source_parameters.sql_server_parameters.port #=> Integer
    #   resp.data.data_source.data_source_parameters.sql_server_parameters.database #=> String
    #   resp.data.data_source.data_source_parameters.teradata_parameters #=> Types::TeradataParameters
    #   resp.data.data_source.data_source_parameters.teradata_parameters.host #=> String
    #   resp.data.data_source.data_source_parameters.teradata_parameters.port #=> Integer
    #   resp.data.data_source.data_source_parameters.teradata_parameters.database #=> String
    #   resp.data.data_source.data_source_parameters.twitter_parameters #=> Types::TwitterParameters
    #   resp.data.data_source.data_source_parameters.twitter_parameters.query #=> String
    #   resp.data.data_source.data_source_parameters.twitter_parameters.max_rows #=> Integer
    #   resp.data.data_source.data_source_parameters.amazon_open_search_parameters #=> Types::AmazonOpenSearchParameters
    #   resp.data.data_source.data_source_parameters.amazon_open_search_parameters.domain #=> String
    #   resp.data.data_source.data_source_parameters.exasol_parameters #=> Types::ExasolParameters
    #   resp.data.data_source.data_source_parameters.exasol_parameters.host #=> String
    #   resp.data.data_source.data_source_parameters.exasol_parameters.port #=> Integer
    #   resp.data.data_source.alternate_data_source_parameters #=> Array<DataSourceParameters>
    #   resp.data.data_source.vpc_connection_properties #=> Types::VpcConnectionProperties
    #   resp.data.data_source.vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data.data_source.ssl_properties #=> Types::SslProperties
    #   resp.data.data_source.ssl_properties.disable_ssl #=> Boolean
    #   resp.data.data_source.error_info #=> Types::DataSourceErrorInfo
    #   resp.data.data_source.error_info.type #=> String, one of ["ACCESS_DENIED", "COPY_SOURCE_NOT_FOUND", "TIMEOUT", "ENGINE_VERSION_NOT_SUPPORTED", "UNKNOWN_HOST", "GENERIC_SQL_FAILURE", "CONFLICT", "UNKNOWN"]
    #   resp.data.data_source.error_info.message #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def describe_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDataSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataSource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataSource,
        stubs: @stubs,
        params_class: Params::DescribeDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the resource permissions for a data source.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDataSourcePermissionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    # @return [Types::DescribeDataSourcePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_source_permissions(
    #     aws_account_id: 'AwsAccountId', # required
    #     data_source_id: 'DataSourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDataSourcePermissionsOutput
    #   resp.data.data_source_arn #=> String
    #   resp.data.data_source_id #=> String
    #   resp.data.permissions #=> Array<ResourcePermission>
    #   resp.data.permissions[0] #=> Types::ResourcePermission
    #   resp.data.permissions[0].principal #=> String
    #   resp.data.permissions[0].actions #=> Array<String>
    #   resp.data.permissions[0].actions[0] #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def describe_data_source_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDataSourcePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDataSourcePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataSourcePermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeDataSourcePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataSourcePermissions,
        stubs: @stubs,
        params_class: Params::DescribeDataSourcePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_data_source_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a folder.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFolderInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    #
    # @return [Types::DescribeFolderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_folder(
    #     aws_account_id: 'AwsAccountId', # required
    #     folder_id: 'FolderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFolderOutput
    #   resp.data.status #=> Integer
    #   resp.data.folder #=> Types::Folder
    #   resp.data.folder.folder_id #=> String
    #   resp.data.folder.arn #=> String
    #   resp.data.folder.name #=> String
    #   resp.data.folder.folder_type #=> String, one of ["SHARED"]
    #   resp.data.folder.folder_path #=> Array<String>
    #   resp.data.folder.folder_path[0] #=> String
    #   resp.data.folder.created_time #=> Time
    #   resp.data.folder.last_updated_time #=> Time
    #   resp.data.request_id #=> String
    #
    def describe_folder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFolderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFolderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFolder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeFolder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFolder,
        stubs: @stubs,
        params_class: Params::DescribeFolderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_folder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes permissions for a folder.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFolderPermissionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    #
    # @return [Types::DescribeFolderPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_folder_permissions(
    #     aws_account_id: 'AwsAccountId', # required
    #     folder_id: 'FolderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFolderPermissionsOutput
    #   resp.data.status #=> Integer
    #   resp.data.folder_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.permissions #=> Array<ResourcePermission>
    #   resp.data.permissions[0] #=> Types::ResourcePermission
    #   resp.data.permissions[0].principal #=> String
    #   resp.data.permissions[0].actions #=> Array<String>
    #   resp.data.permissions[0].actions[0] #=> String
    #   resp.data.request_id #=> String
    #
    def describe_folder_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFolderPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFolderPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFolderPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeFolderPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFolderPermissions,
        stubs: @stubs,
        params_class: Params::DescribeFolderPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_folder_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the folder resolved permissions. Permissions consists of both folder direct permissions and the inherited permissions from the ancestor folders.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFolderResolvedPermissionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    #
    # @return [Types::DescribeFolderResolvedPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_folder_resolved_permissions(
    #     aws_account_id: 'AwsAccountId', # required
    #     folder_id: 'FolderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFolderResolvedPermissionsOutput
    #   resp.data.status #=> Integer
    #   resp.data.folder_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.permissions #=> Array<ResourcePermission>
    #   resp.data.permissions[0] #=> Types::ResourcePermission
    #   resp.data.permissions[0].principal #=> String
    #   resp.data.permissions[0].actions #=> Array<String>
    #   resp.data.permissions[0].actions[0] #=> String
    #   resp.data.request_id #=> String
    #
    def describe_folder_resolved_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFolderResolvedPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFolderResolvedPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFolderResolvedPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeFolderResolvedPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFolderResolvedPermissions,
        stubs: @stubs,
        params_class: Params::DescribeFolderResolvedPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_folder_resolved_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an Amazon QuickSight group's description and Amazon Resource Name (ARN). </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the group that you want to describe.</p>
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace of the group that you want described.</p>
    #
    # @return [Types::DescribeGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_group(
    #     group_name: 'GroupName', # required
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGroupOutput
    #   resp.data.group #=> Types::Group
    #   resp.data.group.arn #=> String
    #   resp.data.group.group_name #=> String
    #   resp.data.group.description #=> String
    #   resp.data.group.principal_id #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def describe_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::DescribeGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGroup,
        stubs: @stubs,
        params_class: Params::DescribeGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use the <code>DescribeGroupMembership</code> operation to determine if a user is a
    # 			member of the specified group. If the user exists and is a member of the specified
    # 			group, an associated <code>GroupMember</code> object is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGroupMembershipInput}.
    #
    # @option params [String] :member_name
    #   <p>The user name of the user that you want to search for.</p>
    #
    # @option params [String] :group_name
    #   <p>The name of the group that you want to search.</p>
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #            Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace that includes the group you are searching within.</p>
    #
    # @return [Types::DescribeGroupMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_group_membership(
    #     member_name: 'MemberName', # required
    #     group_name: 'GroupName', # required
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGroupMembershipOutput
    #   resp.data.group_member #=> Types::GroupMember
    #   resp.data.group_member.arn #=> String
    #   resp.data.group_member.member_name #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def describe_group_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGroupMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGroupMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGroupMembership
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::DescribeGroupMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGroupMembership,
        stubs: @stubs,
        params_class: Params::DescribeGroupMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_group_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an existing IAM policy assignment, as specified by the assignment name.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeIAMPolicyAssignmentInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the assignment that you want to describe.</p>
    #
    # @option params [String] :assignment_name
    #   <p>The name of the assignment, also called a rule.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace that contains the assignment.</p>
    #
    # @return [Types::DescribeIAMPolicyAssignmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_iam_policy_assignment(
    #     aws_account_id: 'AwsAccountId', # required
    #     assignment_name: 'AssignmentName', # required
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeIAMPolicyAssignmentOutput
    #   resp.data.iam_policy_assignment #=> Types::IAMPolicyAssignment
    #   resp.data.iam_policy_assignment.aws_account_id #=> String
    #   resp.data.iam_policy_assignment.assignment_id #=> String
    #   resp.data.iam_policy_assignment.assignment_name #=> String
    #   resp.data.iam_policy_assignment.policy_arn #=> String
    #   resp.data.iam_policy_assignment.identities #=> Hash<String, Array<String>>
    #   resp.data.iam_policy_assignment.identities['key'] #=> Array<String>
    #   resp.data.iam_policy_assignment.identities['key'][0] #=> String
    #   resp.data.iam_policy_assignment.assignment_status #=> String, one of ["ENABLED", "DRAFT", "DISABLED"]
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def describe_iam_policy_assignment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeIAMPolicyAssignmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeIAMPolicyAssignmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeIAMPolicyAssignment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeIAMPolicyAssignment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeIAMPolicyAssignment,
        stubs: @stubs,
        params_class: Params::DescribeIAMPolicyAssignmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_iam_policy_assignment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a SPICE ingestion.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeIngestionInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :data_set_id
    #   <p>The ID of the dataset used in the ingestion.</p>
    #
    # @option params [String] :ingestion_id
    #   <p>An ID for the ingestion.</p>
    #
    # @return [Types::DescribeIngestionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ingestion(
    #     aws_account_id: 'AwsAccountId', # required
    #     data_set_id: 'DataSetId', # required
    #     ingestion_id: 'IngestionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeIngestionOutput
    #   resp.data.ingestion #=> Types::Ingestion
    #   resp.data.ingestion.arn #=> String
    #   resp.data.ingestion.ingestion_id #=> String
    #   resp.data.ingestion.ingestion_status #=> String, one of ["INITIALIZED", "QUEUED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"]
    #   resp.data.ingestion.error_info #=> Types::ErrorInfo
    #   resp.data.ingestion.error_info.type #=> String, one of ["FAILURE_TO_ASSUME_ROLE", "INGESTION_SUPERSEDED", "INGESTION_CANCELED", "DATA_SET_DELETED", "DATA_SET_NOT_SPICE", "S3_UPLOADED_FILE_DELETED", "S3_MANIFEST_ERROR", "DATA_TOLERANCE_EXCEPTION", "SPICE_TABLE_NOT_FOUND", "DATA_SET_SIZE_LIMIT_EXCEEDED", "ROW_SIZE_LIMIT_EXCEEDED", "ACCOUNT_CAPACITY_LIMIT_EXCEEDED", "CUSTOMER_ERROR", "DATA_SOURCE_NOT_FOUND", "IAM_ROLE_NOT_AVAILABLE", "CONNECTION_FAILURE", "SQL_TABLE_NOT_FOUND", "PERMISSION_DENIED", "SSL_CERTIFICATE_VALIDATION_FAILURE", "OAUTH_TOKEN_FAILURE", "SOURCE_API_LIMIT_EXCEEDED_FAILURE", "PASSWORD_AUTHENTICATION_FAILURE", "SQL_SCHEMA_MISMATCH_ERROR", "INVALID_DATE_FORMAT", "INVALID_DATAPREP_SYNTAX", "SOURCE_RESOURCE_LIMIT_EXCEEDED", "SQL_INVALID_PARAMETER_VALUE", "QUERY_TIMEOUT", "SQL_NUMERIC_OVERFLOW", "UNRESOLVABLE_HOST", "UNROUTABLE_HOST", "SQL_EXCEPTION", "S3_FILE_INACCESSIBLE", "IOT_FILE_NOT_FOUND", "IOT_DATA_SET_FILE_EMPTY", "INVALID_DATA_SOURCE_CONFIG", "DATA_SOURCE_AUTH_FAILED", "DATA_SOURCE_CONNECTION_FAILED", "FAILURE_TO_PROCESS_JSON_FILE", "INTERNAL_SERVICE_ERROR", "REFRESH_SUPPRESSED_BY_EDIT", "PERMISSION_NOT_FOUND", "ELASTICSEARCH_CURSOR_NOT_ENABLED", "CURSOR_NOT_ENABLED"]
    #   resp.data.ingestion.error_info.message #=> String
    #   resp.data.ingestion.row_info #=> Types::RowInfo
    #   resp.data.ingestion.row_info.rows_ingested #=> Integer
    #   resp.data.ingestion.row_info.rows_dropped #=> Integer
    #   resp.data.ingestion.row_info.total_rows_in_dataset #=> Integer
    #   resp.data.ingestion.queue_info #=> Types::QueueInfo
    #   resp.data.ingestion.queue_info.waiting_on_ingestion #=> String
    #   resp.data.ingestion.queue_info.queued_ingestion #=> String
    #   resp.data.ingestion.created_time #=> Time
    #   resp.data.ingestion.ingestion_time_in_seconds #=> Integer
    #   resp.data.ingestion.ingestion_size_in_bytes #=> Integer
    #   resp.data.ingestion.request_source #=> String, one of ["MANUAL", "SCHEDULED"]
    #   resp.data.ingestion.request_type #=> String, one of ["INITIAL_INGESTION", "EDIT", "INCREMENTAL_REFRESH", "FULL_REFRESH"]
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def describe_ingestion(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeIngestionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeIngestionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeIngestion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeIngestion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeIngestion,
        stubs: @stubs,
        params_class: Params::DescribeIngestionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_ingestion
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a summary and status of IP rules.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeIpRestrictionInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the IP rules.</p>
    #
    # @return [Types::DescribeIpRestrictionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ip_restriction(
    #     aws_account_id: 'AwsAccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeIpRestrictionOutput
    #   resp.data.aws_account_id #=> String
    #   resp.data.ip_restriction_rule_map #=> Hash<String, String>
    #   resp.data.ip_restriction_rule_map['key'] #=> String
    #   resp.data.enabled #=> Boolean
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def describe_ip_restriction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeIpRestrictionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeIpRestrictionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeIpRestriction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeIpRestriction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeIpRestriction,
        stubs: @stubs,
        params_class: Params::DescribeIpRestrictionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_ip_restriction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the current namespace.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeNamespaceInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the Amazon QuickSight namespace that you want to describe.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace that you want to describe.</p>
    #
    # @return [Types::DescribeNamespaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_namespace(
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeNamespaceOutput
    #   resp.data.namespace #=> Types::NamespaceInfoV2
    #   resp.data.namespace.name #=> String
    #   resp.data.namespace.arn #=> String
    #   resp.data.namespace.capacity_region #=> String
    #   resp.data.namespace.creation_status #=> String, one of ["CREATED", "CREATING", "DELETING", "RETRYABLE_FAILURE", "NON_RETRYABLE_FAILURE"]
    #   resp.data.namespace.identity_store #=> String, one of ["QUICKSIGHT"]
    #   resp.data.namespace.namespace_error #=> Types::NamespaceError
    #   resp.data.namespace.namespace_error.type #=> String, one of ["PERMISSION_DENIED", "INTERNAL_SERVICE_ERROR"]
    #   resp.data.namespace.namespace_error.message #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def describe_namespace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeNamespaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeNamespaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeNamespace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeNamespace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeNamespace,
        stubs: @stubs,
        params_class: Params::DescribeNamespaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_namespace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a template's metadata.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTemplateInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template that you're describing.</p>
    #
    # @option params [String] :template_id
    #   <p>The ID for the template.</p>
    #
    # @option params [Integer] :version_number
    #   <p>(Optional) The number for the version to describe. If a <code>VersionNumber</code> parameter
    #   			value isn't provided, the latest version of the template is described.</p>
    #
    # @option params [String] :alias_name
    #   <p>The alias of the template that you want to describe. If you name a specific alias, you
    #   			describe the version that the alias points to. You can specify the latest version of the
    #   			template by providing the keyword <code>$LATEST</code> in the <code>AliasName</code>
    #   			parameter. The keyword <code>$PUBLISHED</code> doesn't apply to templates.</p>
    #
    # @return [Types::DescribeTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_template(
    #     aws_account_id: 'AwsAccountId', # required
    #     template_id: 'TemplateId', # required
    #     version_number: 1,
    #     alias_name: 'AliasName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTemplateOutput
    #   resp.data.template #=> Types::Template
    #   resp.data.template.arn #=> String
    #   resp.data.template.name #=> String
    #   resp.data.template.version #=> Types::TemplateVersion
    #   resp.data.template.version.created_time #=> Time
    #   resp.data.template.version.errors #=> Array<TemplateError>
    #   resp.data.template.version.errors[0] #=> Types::TemplateError
    #   resp.data.template.version.errors[0].type #=> String, one of ["SOURCE_NOT_FOUND", "DATA_SET_NOT_FOUND", "INTERNAL_FAILURE", "ACCESS_DENIED"]
    #   resp.data.template.version.errors[0].message #=> String
    #   resp.data.template.version.version_number #=> Integer
    #   resp.data.template.version.status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.template.version.data_set_configurations #=> Array<DataSetConfiguration>
    #   resp.data.template.version.data_set_configurations[0] #=> Types::DataSetConfiguration
    #   resp.data.template.version.data_set_configurations[0].placeholder #=> String
    #   resp.data.template.version.data_set_configurations[0].data_set_schema #=> Types::DataSetSchema
    #   resp.data.template.version.data_set_configurations[0].data_set_schema.column_schema_list #=> Array<ColumnSchema>
    #   resp.data.template.version.data_set_configurations[0].data_set_schema.column_schema_list[0] #=> Types::ColumnSchema
    #   resp.data.template.version.data_set_configurations[0].data_set_schema.column_schema_list[0].name #=> String
    #   resp.data.template.version.data_set_configurations[0].data_set_schema.column_schema_list[0].data_type #=> String
    #   resp.data.template.version.data_set_configurations[0].data_set_schema.column_schema_list[0].geographic_role #=> String
    #   resp.data.template.version.data_set_configurations[0].column_group_schema_list #=> Array<ColumnGroupSchema>
    #   resp.data.template.version.data_set_configurations[0].column_group_schema_list[0] #=> Types::ColumnGroupSchema
    #   resp.data.template.version.data_set_configurations[0].column_group_schema_list[0].name #=> String
    #   resp.data.template.version.data_set_configurations[0].column_group_schema_list[0].column_group_column_schema_list #=> Array<ColumnGroupColumnSchema>
    #   resp.data.template.version.data_set_configurations[0].column_group_schema_list[0].column_group_column_schema_list[0] #=> Types::ColumnGroupColumnSchema
    #   resp.data.template.version.data_set_configurations[0].column_group_schema_list[0].column_group_column_schema_list[0].name #=> String
    #   resp.data.template.version.description #=> String
    #   resp.data.template.version.source_entity_arn #=> String
    #   resp.data.template.version.theme_arn #=> String
    #   resp.data.template.version.sheets #=> Array<Sheet>
    #   resp.data.template.version.sheets[0] #=> Types::Sheet
    #   resp.data.template.version.sheets[0].sheet_id #=> String
    #   resp.data.template.version.sheets[0].name #=> String
    #   resp.data.template.template_id #=> String
    #   resp.data.template.last_updated_time #=> Time
    #   resp.data.template.created_time #=> Time
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def describe_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTemplate,
        stubs: @stubs,
        params_class: Params::DescribeTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the template alias for a template.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTemplateAliasInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template alias that you're
    #   			describing.</p>
    #
    # @option params [String] :template_id
    #   <p>The ID for the template.</p>
    #
    # @option params [String] :alias_name
    #   <p>The name of the template alias that you want to describe. If you name a specific alias, you
    #   			describe the version that the alias points to. You can specify the latest version of the
    #   			template by providing the keyword <code>$LATEST</code> in the <code>AliasName</code>
    #   			parameter. The keyword <code>$PUBLISHED</code> doesn't apply to templates.</p>
    #
    # @return [Types::DescribeTemplateAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_template_alias(
    #     aws_account_id: 'AwsAccountId', # required
    #     template_id: 'TemplateId', # required
    #     alias_name: 'AliasName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTemplateAliasOutput
    #   resp.data.template_alias #=> Types::TemplateAlias
    #   resp.data.template_alias.alias_name #=> String
    #   resp.data.template_alias.arn #=> String
    #   resp.data.template_alias.template_version_number #=> Integer
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def describe_template_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTemplateAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTemplateAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTemplateAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeTemplateAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTemplateAlias,
        stubs: @stubs,
        params_class: Params::DescribeTemplateAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_template_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes read and write permissions on a template.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTemplatePermissionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template that you're describing.</p>
    #
    # @option params [String] :template_id
    #   <p>The ID for the template.</p>
    #
    # @return [Types::DescribeTemplatePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_template_permissions(
    #     aws_account_id: 'AwsAccountId', # required
    #     template_id: 'TemplateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTemplatePermissionsOutput
    #   resp.data.template_id #=> String
    #   resp.data.template_arn #=> String
    #   resp.data.permissions #=> Array<ResourcePermission>
    #   resp.data.permissions[0] #=> Types::ResourcePermission
    #   resp.data.permissions[0].principal #=> String
    #   resp.data.permissions[0].actions #=> Array<String>
    #   resp.data.permissions[0].actions[0] #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def describe_template_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTemplatePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTemplatePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTemplatePermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeTemplatePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTemplatePermissions,
        stubs: @stubs,
        params_class: Params::DescribeTemplatePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_template_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a theme.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeThemeInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme that you're describing.</p>
    #
    # @option params [String] :theme_id
    #   <p>The ID for the theme.</p>
    #
    # @option params [Integer] :version_number
    #   <p>The version number for the version to describe. If a <code>VersionNumber</code> parameter
    #   			value isn't provided, the latest version of the theme is described.</p>
    #
    # @option params [String] :alias_name
    #   <p>The alias of the theme that you want to describe. If you name a specific alias, you
    #   			describe the version that the alias points to. You can specify the latest version of the
    #   			theme by providing the keyword <code>$LATEST</code> in the <code>AliasName</code>
    #   			parameter. The keyword <code>$PUBLISHED</code> doesn't apply to themes.</p>
    #
    # @return [Types::DescribeThemeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_theme(
    #     aws_account_id: 'AwsAccountId', # required
    #     theme_id: 'ThemeId', # required
    #     version_number: 1,
    #     alias_name: 'AliasName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeThemeOutput
    #   resp.data.theme #=> Types::Theme
    #   resp.data.theme.arn #=> String
    #   resp.data.theme.name #=> String
    #   resp.data.theme.theme_id #=> String
    #   resp.data.theme.version #=> Types::ThemeVersion
    #   resp.data.theme.version.version_number #=> Integer
    #   resp.data.theme.version.arn #=> String
    #   resp.data.theme.version.description #=> String
    #   resp.data.theme.version.base_theme_id #=> String
    #   resp.data.theme.version.created_time #=> Time
    #   resp.data.theme.version.configuration #=> Types::ThemeConfiguration
    #   resp.data.theme.version.configuration.data_color_palette #=> Types::DataColorPalette
    #   resp.data.theme.version.configuration.data_color_palette.colors #=> Array<String>
    #   resp.data.theme.version.configuration.data_color_palette.colors[0] #=> String
    #   resp.data.theme.version.configuration.data_color_palette.min_max_gradient #=> Array<String>
    #   resp.data.theme.version.configuration.data_color_palette.empty_fill_color #=> String
    #   resp.data.theme.version.configuration.ui_color_palette #=> Types::UIColorPalette
    #   resp.data.theme.version.configuration.ui_color_palette.primary_foreground #=> String
    #   resp.data.theme.version.configuration.ui_color_palette.primary_background #=> String
    #   resp.data.theme.version.configuration.ui_color_palette.secondary_foreground #=> String
    #   resp.data.theme.version.configuration.ui_color_palette.secondary_background #=> String
    #   resp.data.theme.version.configuration.ui_color_palette.accent #=> String
    #   resp.data.theme.version.configuration.ui_color_palette.accent_foreground #=> String
    #   resp.data.theme.version.configuration.ui_color_palette.danger #=> String
    #   resp.data.theme.version.configuration.ui_color_palette.danger_foreground #=> String
    #   resp.data.theme.version.configuration.ui_color_palette.warning #=> String
    #   resp.data.theme.version.configuration.ui_color_palette.warning_foreground #=> String
    #   resp.data.theme.version.configuration.ui_color_palette.success #=> String
    #   resp.data.theme.version.configuration.ui_color_palette.success_foreground #=> String
    #   resp.data.theme.version.configuration.ui_color_palette.dimension #=> String
    #   resp.data.theme.version.configuration.ui_color_palette.dimension_foreground #=> String
    #   resp.data.theme.version.configuration.ui_color_palette.measure #=> String
    #   resp.data.theme.version.configuration.ui_color_palette.measure_foreground #=> String
    #   resp.data.theme.version.configuration.sheet #=> Types::SheetStyle
    #   resp.data.theme.version.configuration.sheet.tile #=> Types::TileStyle
    #   resp.data.theme.version.configuration.sheet.tile.border #=> Types::BorderStyle
    #   resp.data.theme.version.configuration.sheet.tile.border.show #=> Boolean
    #   resp.data.theme.version.configuration.sheet.tile_layout #=> Types::TileLayoutStyle
    #   resp.data.theme.version.configuration.sheet.tile_layout.gutter #=> Types::GutterStyle
    #   resp.data.theme.version.configuration.sheet.tile_layout.gutter.show #=> Boolean
    #   resp.data.theme.version.configuration.sheet.tile_layout.margin #=> Types::MarginStyle
    #   resp.data.theme.version.configuration.sheet.tile_layout.margin.show #=> Boolean
    #   resp.data.theme.version.errors #=> Array<ThemeError>
    #   resp.data.theme.version.errors[0] #=> Types::ThemeError
    #   resp.data.theme.version.errors[0].type #=> String, one of ["INTERNAL_FAILURE"]
    #   resp.data.theme.version.errors[0].message #=> String
    #   resp.data.theme.version.status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.theme.created_time #=> Time
    #   resp.data.theme.last_updated_time #=> Time
    #   resp.data.theme.type #=> String, one of ["QUICKSIGHT", "CUSTOM", "ALL"]
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def describe_theme(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeThemeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeThemeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTheme
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeTheme
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTheme,
        stubs: @stubs,
        params_class: Params::DescribeThemeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_theme
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the alias for a theme.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeThemeAliasInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme alias that you're
    #   			describing.</p>
    #
    # @option params [String] :theme_id
    #   <p>The ID for the theme.</p>
    #
    # @option params [String] :alias_name
    #   <p>The name of the theme alias that you want to describe.</p>
    #
    # @return [Types::DescribeThemeAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_theme_alias(
    #     aws_account_id: 'AwsAccountId', # required
    #     theme_id: 'ThemeId', # required
    #     alias_name: 'AliasName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeThemeAliasOutput
    #   resp.data.theme_alias #=> Types::ThemeAlias
    #   resp.data.theme_alias.arn #=> String
    #   resp.data.theme_alias.alias_name #=> String
    #   resp.data.theme_alias.theme_version_number #=> Integer
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def describe_theme_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeThemeAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeThemeAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeThemeAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeThemeAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeThemeAlias,
        stubs: @stubs,
        params_class: Params::DescribeThemeAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_theme_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the read and write permissions for a theme.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeThemePermissionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme that you're describing.</p>
    #
    # @option params [String] :theme_id
    #   <p>The ID for the theme that you want to describe permissions for.</p>
    #
    # @return [Types::DescribeThemePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_theme_permissions(
    #     aws_account_id: 'AwsAccountId', # required
    #     theme_id: 'ThemeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeThemePermissionsOutput
    #   resp.data.theme_id #=> String
    #   resp.data.theme_arn #=> String
    #   resp.data.permissions #=> Array<ResourcePermission>
    #   resp.data.permissions[0] #=> Types::ResourcePermission
    #   resp.data.permissions[0].principal #=> String
    #   resp.data.permissions[0].actions #=> Array<String>
    #   resp.data.permissions[0].actions[0] #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def describe_theme_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeThemePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeThemePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeThemePermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeThemePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeThemePermissions,
        stubs: @stubs,
        params_class: Params::DescribeThemePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_theme_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a user, given the user name. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user that you want to describe.</p>
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the user is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace. Currently, you should set this to <code>default</code>.</p>
    #
    # @return [Types::DescribeUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user(
    #     user_name: 'UserName', # required
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.arn #=> String
    #   resp.data.user.user_name #=> String
    #   resp.data.user.email #=> String
    #   resp.data.user.role #=> String, one of ["ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"]
    #   resp.data.user.identity_type #=> String, one of ["IAM", "QUICKSIGHT"]
    #   resp.data.user.active #=> Boolean
    #   resp.data.user.principal_id #=> String
    #   resp.data.user.custom_permissions_name #=> String
    #   resp.data.user.external_login_federation_provider_type #=> String
    #   resp.data.user.external_login_federation_provider_url #=> String
    #   resp.data.user.external_login_id #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def describe_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::DescribeUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUser,
        stubs: @stubs,
        params_class: Params::DescribeUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates an embed URL that you can use to embed an Amazon QuickSight dashboard in your website, without having to register any reader users. Before you use this action, make sure that you have configured the dashboards and permissions.</p>
    #         <p>The following rules apply to the generated URL:</p>
    #         <ul>
    #             <li>
    #                 <p>It contains a temporary bearer token. It is valid for 5 minutes after it is generated. Once redeemed within this period, it cannot be re-used again.</p>
    #             </li>
    #             <li>
    #                 <p>The URL validity period should not be confused with the actual session lifetime
    #         that can be customized using the <code>
    #                      <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_GenerateEmbedUrlForAnonymousUser.html#QS-GenerateEmbedUrlForAnonymousUser-request-SessionLifetimeInMinutes">SessionLifetimeInMinutes</a>
    #                   </code> parameter.</p>
    #                 <p>The resulting user session is valid for 15 minutes (minimum) to 10 hours (maximum). The default session duration is 10 hours. </p>
    #             </li>
    #             <li>
    #                 <p>You are charged only when the URL is used or there is interaction with Amazon QuickSight.</p>
    #             </li>
    #          </ul>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html">Embedded Analytics</a> in the <i>Amazon QuickSight User
    #             Guide</i>.</p>
    #         <p>For more information about the high-level steps for embedding and for an interactive demo of the ways you can customize embedding, visit the <a href="https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html">Amazon QuickSight Developer Portal</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GenerateEmbedUrlForAnonymousUserInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the dashboard that you're embedding.</p>
    #
    # @option params [Integer] :session_lifetime_in_minutes
    #   <p>How many minutes the session is valid. The session lifetime must be in [15-600] minutes range.</p>
    #
    # @option params [String] :namespace
    #   <p>The Amazon QuickSight namespace that the anonymous user virtually belongs to. If you are not using an Amazon QuickSight custom namespace, set this to <code>default</code>.</p>
    #
    # @option params [Array<SessionTag>] :session_tags
    #   <p>The session tags used for row-level security. Before you use this parameter, make sure that
    #     you have configured the relevant datasets using the <code>DataSet$RowLevelPermissionTagConfiguration</code> parameter so that session tags can be used to provide row-level security.</p>
    #           <p>These are not the tags used for the Amazon Web Services resource tagging feature. For more information, see <a href="https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-rls-tags.html">Using Row-Level Security (RLS) with Tags</a>.</p>
    #
    # @option params [Array<String>] :authorized_resource_arns
    #   <p>The Amazon Resource Names for the Amazon QuickSight resources that the user is authorized to access during the lifetime of the session. If you choose <code>Dashboard</code> embedding experience, pass the list of dashboard ARNs in the account that you want the user to be able to view. Currently, you can pass up to 25 dashboard ARNs in each API call.</p>
    #
    # @option params [AnonymousUserEmbeddingExperienceConfiguration] :experience_configuration
    #   <p>The configuration of the experience you are embedding.</p>
    #
    # @return [Types::GenerateEmbedUrlForAnonymousUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_embed_url_for_anonymous_user(
    #     aws_account_id: 'AwsAccountId', # required
    #     session_lifetime_in_minutes: 1,
    #     namespace: 'Namespace', # required
    #     session_tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     authorized_resource_arns: [
    #       'member'
    #     ], # required
    #     experience_configuration: {
    #       dashboard: {
    #         initial_dashboard_id: 'InitialDashboardId' # required
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GenerateEmbedUrlForAnonymousUserOutput
    #   resp.data.embed_url #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def generate_embed_url_for_anonymous_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GenerateEmbedUrlForAnonymousUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GenerateEmbedUrlForAnonymousUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GenerateEmbedUrlForAnonymousUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::SessionLifetimeInMinutesInvalidException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException, Errors::UnsupportedPricingPlanException]),
        data_parser: Parsers::GenerateEmbedUrlForAnonymousUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GenerateEmbedUrlForAnonymousUser,
        stubs: @stubs,
        params_class: Params::GenerateEmbedUrlForAnonymousUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :generate_embed_url_for_anonymous_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates an embed URL that you can use to embed an Amazon QuickSight experience in your website. This action can be used for any type of user registered in an Amazon QuickSight account. Before you use this action, make sure that you have configured the relevant Amazon QuickSight resource and permissions.</p>
    #         <p>The following rules apply to the generated URL:</p>
    #         <ul>
    #             <li>
    #                 <p>It contains a temporary bearer token. It is valid for 5 minutes after it is generated. Once redeemed within this period, it cannot be re-used again.</p>
    #             </li>
    #             <li>
    #                 <p>The URL validity period should not be confused with the actual session lifetime
    #         that can be customized using the <code>
    #                      <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_GenerateEmbedUrlForRegisteredUser.html#QS-GenerateEmbedUrlForRegisteredUser-request-SessionLifetimeInMinutes">SessionLifetimeInMinutes</a>
    #                   </code> parameter.</p>
    #                 <p>The resulting user session is valid for 15 minutes (minimum) to 10 hours (maximum). The default session duration is 10 hours.</p>
    #             </li>
    #             <li>
    #                 <p>You are charged only when the URL is used or there is interaction with Amazon QuickSight.</p>
    #             </li>
    #          </ul>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html">Embedded Analytics</a> in the <i>Amazon QuickSight User
    #             Guide</i>.</p>
    #             <p>For more information about the high-level steps for embedding and for an interactive demo of the ways you can customize embedding, visit the <a href="https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html">Amazon QuickSight Developer Portal</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GenerateEmbedUrlForRegisteredUserInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the dashboard that you're embedding.</p>
    #
    # @option params [Integer] :session_lifetime_in_minutes
    #   <p>How many minutes the session is valid. The session lifetime must be in [15-600] minutes range.</p>
    #
    # @option params [String] :user_arn
    #   <p>The Amazon Resource Name for the registered user.</p>
    #
    # @option params [RegisteredUserEmbeddingExperienceConfiguration] :experience_configuration
    #   <p>The experience you are embedding. For registered users, you can embed Amazon QuickSight dashboards or the entire Amazon QuickSight console.</p>
    #
    # @return [Types::GenerateEmbedUrlForRegisteredUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_embed_url_for_registered_user(
    #     aws_account_id: 'AwsAccountId', # required
    #     session_lifetime_in_minutes: 1,
    #     user_arn: 'UserArn', # required
    #     experience_configuration: {
    #       dashboard: {
    #         initial_dashboard_id: 'InitialDashboardId' # required
    #       },
    #       quick_sight_console: {
    #         initial_path: 'InitialPath'
    #       },
    #       q_search_bar: {
    #         initial_topic_id: 'InitialTopicId'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GenerateEmbedUrlForRegisteredUserOutput
    #   resp.data.embed_url #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def generate_embed_url_for_registered_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GenerateEmbedUrlForRegisteredUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GenerateEmbedUrlForRegisteredUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GenerateEmbedUrlForRegisteredUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::QuickSightUserNotFoundException, Errors::SessionLifetimeInMinutesInvalidException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException, Errors::UnsupportedPricingPlanException]),
        data_parser: Parsers::GenerateEmbedUrlForRegisteredUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GenerateEmbedUrlForRegisteredUser,
        stubs: @stubs,
        params_class: Params::GenerateEmbedUrlForRegisteredUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :generate_embed_url_for_registered_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a session URL and authorization code that you can use to embed an Amazon
    #             Amazon QuickSight read-only dashboard in your web server code. Before you use this command,
    #             make sure that you have configured the dashboards and permissions. </p>
    #         <p>Currently, you can use <code>GetDashboardEmbedURL</code> only from the server, not
    #             from the user's browser. The following rules apply to the combination of URL and
    #             authorization code:</p>
    #         <ul>
    #             <li>
    #                 <p>They must be used together.</p>
    #             </li>
    #             <li>
    #                 <p>They can be used one time only.</p>
    #             </li>
    #             <li>
    #                 <p>They are valid for 5 minutes after you run this command.</p>
    #             </li>
    #             <li>
    #                 <p>The resulting user session is valid for 10 hours.</p>
    #             </li>
    #          </ul>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics-deprecated.html">Embedding Analytics Using GetDashboardEmbedUrl</a> in the <i>Amazon QuickSight User
    #             Guide</i>.</p>
    #             <p>For more information about the high-level steps for embedding and for an interactive demo of the ways you can customize embedding, visit the <a href="https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html">Amazon QuickSight Developer Portal</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDashboardEmbedUrlInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the dashboard that you're embedding.</p>
    #
    # @option params [String] :dashboard_id
    #   <p>The ID for the dashboard, also added to the Identity and Access Management (IAM)
    #               policy.</p>
    #
    # @option params [String] :identity_type
    #   <p>The authentication method that the user uses to sign in.</p>
    #
    # @option params [Integer] :session_lifetime_in_minutes
    #   <p>How many minutes the session is valid. The session lifetime must be 15-600 minutes.</p>
    #
    # @option params [Boolean] :undo_redo_disabled
    #   <p>Remove the undo/redo button on the embedded dashboard. The default is FALSE, which enables
    #   			the undo/redo button.</p>
    #
    # @option params [Boolean] :reset_disabled
    #   <p>Remove the reset button on the embedded dashboard. The default is FALSE, which enables the
    #   			reset button.</p>
    #
    # @option params [Boolean] :state_persistence_enabled
    #   <p>Adds persistence of state for the user session in an embedded dashboard. Persistence
    #               applies to the sheet and the parameter settings. These are control settings that the
    #               dashboard subscriber (Amazon QuickSight reader) chooses while viewing the dashboard. If this is
    #               set to <code>TRUE</code>, the settings are the same when the subscriber reopens the same
    #               dashboard URL. The state is stored in Amazon QuickSight, not in a browser cookie. If this is
    #               set to FALSE, the state of the user session is not persisted. The default is
    #                   <code>FALSE</code>.</p>
    #
    # @option params [String] :user_arn
    #   <p>The Amazon QuickSight user's Amazon Resource Name (ARN), for use with <code>QUICKSIGHT</code> identity type.
    #   			You can use this for any Amazon QuickSight users in your account (readers, authors, or
    #   			admins) authenticated as one of the following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>Active Directory (AD) users or group members</p>
    #   			         </li>
    #               <li>
    #   				           <p>Invited nonfederated users</p>
    #   			         </li>
    #               <li>
    #   				           <p>IAM users and IAM role-based sessions authenticated through Federated Single Sign-On using
    #   					SAML, OpenID Connect, or IAM federation.</p>
    #   			         </li>
    #            </ul>
    #            <p>Omit this parameter for users in the third group – IAM users and IAM
    #               role-based sessions.</p>
    #
    # @option params [String] :namespace
    #   <p>The Amazon QuickSight namespace that contains the dashboard IDs in this request.
    #       	   If you're not using a custom namespace, set <code>Namespace = default</code>.</p>
    #
    # @option params [Array<String>] :additional_dashboard_ids
    #   <p>A list of one or more dashboard IDs that you want to add to a session that includes
    #               anonymous users. The <code>IdentityType</code> parameter must be set to
    #                   <code>ANONYMOUS</code> for this to work, because other identity types authenticate
    #               as Amazon QuickSight or IAM users. For example, if you set "<code>--dashboard-id dash_id1
    #                   --dashboard-id dash_id2 dash_id3 identity-type ANONYMOUS</code>", the session
    #               can access all three dashboards. </p>
    #
    # @return [Types::GetDashboardEmbedUrlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dashboard_embed_url(
    #     aws_account_id: 'AwsAccountId', # required
    #     dashboard_id: 'DashboardId', # required
    #     identity_type: 'IAM', # required - accepts ["IAM", "QUICKSIGHT", "ANONYMOUS"]
    #     session_lifetime_in_minutes: 1,
    #     undo_redo_disabled: false,
    #     reset_disabled: false,
    #     state_persistence_enabled: false,
    #     user_arn: 'UserArn',
    #     namespace: 'Namespace',
    #     additional_dashboard_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDashboardEmbedUrlOutput
    #   resp.data.embed_url #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def get_dashboard_embed_url(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDashboardEmbedUrlInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDashboardEmbedUrlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDashboardEmbedUrl
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdentityTypeNotSupportedException, Errors::UnsupportedUserEditionException, Errors::QuickSightUserNotFoundException, Errors::DomainNotWhitelistedException, Errors::ResourceExistsException, Errors::SessionLifetimeInMinutesInvalidException, Errors::ThrottlingException, Errors::InternalFailureException, Errors::UnsupportedPricingPlanException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetDashboardEmbedUrl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDashboardEmbedUrl,
        stubs: @stubs,
        params_class: Params::GetDashboardEmbedUrlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_dashboard_embed_url
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a session URL and authorization code that you can use to embed the Amazon
    #             Amazon QuickSight console in your web server code. Use <code>GetSessionEmbedUrl</code> where
    #             you want to provide an authoring portal that allows users to create data sources,
    #             datasets, analyses, and dashboards. The users who access an embedded Amazon QuickSight console
    #             need belong to the author or admin security cohort. If you want to restrict permissions
    #             to some of these features, add a custom permissions profile to the user with the
    #             <code>
    #                <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateUser.html">UpdateUser</a>
    #             </code> API operation. Use <code>
    #                <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RegisterUser.html">RegisterUser</a>
    #             </code>
    #             API operation to add a new user with a custom permission profile attached. For more
    #             information, see the following sections in the <i>Amazon QuickSight User
    #             Guide</i>:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html">Embedding Analytics</a>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html">Customizing Access to the Amazon QuickSight Console</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetSessionEmbedUrlInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account associated with your Amazon QuickSight subscription.</p>
    #
    # @option params [String] :entry_point
    #   <p>The URL you use to access the embedded session. The entry point URL is constrained to
    #             the following paths:</p>
    #            <ul>
    #               <li>
    #                   <p>
    #                     <code>/start</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>/start/analyses</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>/start/dashboards</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>/start/favorites</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>/dashboards/<i>DashboardId</i>
    #                     </code> - where <code>DashboardId</code> is the actual ID key from the Amazon QuickSight console URL of the dashboard</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>/analyses/<i>AnalysisId</i>
    #                     </code> - where <code>AnalysisId</code> is the actual ID key from the Amazon QuickSight console URL of the analysis</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :session_lifetime_in_minutes
    #   <p>How many minutes the session is valid. The session lifetime must be 15-600 minutes.</p>
    #
    # @option params [String] :user_arn
    #   <p>The Amazon QuickSight user's Amazon Resource Name (ARN), for use with <code>QUICKSIGHT</code> identity type.
    #   			You can use this for any type of Amazon QuickSight users in your account (readers, authors, or
    #   			admins). They need to be authenticated as one of the following:</p>
    #   		       <ol>
    #               <li>
    #   				           <p>Active Directory (AD) users or group members</p>
    #   			         </li>
    #               <li>
    #   				           <p>Invited nonfederated users</p>
    #   			         </li>
    #               <li>
    #   				           <p>Identity and Access Management (IAM) users and IAM role-based sessions authenticated
    #                       through Federated Single Sign-On using SAML, OpenID Connect, or IAM
    #                       federation</p>
    #   			         </li>
    #            </ol>
    #            <p>Omit this parameter for users in the third group, IAM users and IAM role-based
    #               sessions.</p>
    #
    # @return [Types::GetSessionEmbedUrlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session_embed_url(
    #     aws_account_id: 'AwsAccountId', # required
    #     entry_point: 'EntryPoint',
    #     session_lifetime_in_minutes: 1,
    #     user_arn: 'UserArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSessionEmbedUrlOutput
    #   resp.data.embed_url #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def get_session_embed_url(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSessionEmbedUrlInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSessionEmbedUrlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSessionEmbedUrl
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::QuickSightUserNotFoundException, Errors::ResourceExistsException, Errors::SessionLifetimeInMinutesInvalidException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::GetSessionEmbedUrl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSessionEmbedUrl,
        stubs: @stubs,
        params_class: Params::GetSessionEmbedUrlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_session_embed_url
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists Amazon QuickSight analyses that exist in the specified Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAnalysesInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the analyses.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @return [Types::ListAnalysesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_analyses(
    #     aws_account_id: 'AwsAccountId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAnalysesOutput
    #   resp.data.analysis_summary_list #=> Array<AnalysisSummary>
    #   resp.data.analysis_summary_list[0] #=> Types::AnalysisSummary
    #   resp.data.analysis_summary_list[0].arn #=> String
    #   resp.data.analysis_summary_list[0].analysis_id #=> String
    #   resp.data.analysis_summary_list[0].name #=> String
    #   resp.data.analysis_summary_list[0].status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.analysis_summary_list[0].created_time #=> Time
    #   resp.data.analysis_summary_list[0].last_updated_time #=> Time
    #   resp.data.next_token #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def list_analyses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAnalysesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAnalysesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAnalyses
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::UnsupportedUserEditionException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::ListAnalyses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAnalyses,
        stubs: @stubs,
        params_class: Params::ListAnalysesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_analyses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the versions of the dashboards in the Amazon QuickSight subscription.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDashboardVersionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboard that you're listing versions
    #               for.</p>
    #
    # @option params [String] :dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListDashboardVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dashboard_versions(
    #     aws_account_id: 'AwsAccountId', # required
    #     dashboard_id: 'DashboardId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDashboardVersionsOutput
    #   resp.data.dashboard_version_summary_list #=> Array<DashboardVersionSummary>
    #   resp.data.dashboard_version_summary_list[0] #=> Types::DashboardVersionSummary
    #   resp.data.dashboard_version_summary_list[0].arn #=> String
    #   resp.data.dashboard_version_summary_list[0].created_time #=> Time
    #   resp.data.dashboard_version_summary_list[0].version_number #=> Integer
    #   resp.data.dashboard_version_summary_list[0].status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.dashboard_version_summary_list[0].source_entity_arn #=> String
    #   resp.data.dashboard_version_summary_list[0].description #=> String
    #   resp.data.next_token #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def list_dashboard_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDashboardVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDashboardVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDashboardVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::ListDashboardVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDashboardVersions,
        stubs: @stubs,
        params_class: Params::ListDashboardVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_dashboard_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists dashboards in an Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDashboardsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboards that you're
    #               listing.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListDashboardsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dashboards(
    #     aws_account_id: 'AwsAccountId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDashboardsOutput
    #   resp.data.dashboard_summary_list #=> Array<DashboardSummary>
    #   resp.data.dashboard_summary_list[0] #=> Types::DashboardSummary
    #   resp.data.dashboard_summary_list[0].arn #=> String
    #   resp.data.dashboard_summary_list[0].dashboard_id #=> String
    #   resp.data.dashboard_summary_list[0].name #=> String
    #   resp.data.dashboard_summary_list[0].created_time #=> Time
    #   resp.data.dashboard_summary_list[0].last_updated_time #=> Time
    #   resp.data.dashboard_summary_list[0].published_version_number #=> Integer
    #   resp.data.dashboard_summary_list[0].last_published_time #=> Time
    #   resp.data.next_token #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def list_dashboards(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDashboardsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDashboardsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDashboards
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::UnsupportedUserEditionException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::ListDashboards
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDashboards,
        stubs: @stubs,
        params_class: Params::ListDashboardsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_dashboards
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the datasets belonging to the current Amazon Web Services account in an Amazon Web Services Region.</p>
    # 		       <p>The permissions resource is <code>arn:aws:quicksight:region:aws-account-id:dataset/*</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDataSetsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListDataSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sets(
    #     aws_account_id: 'AwsAccountId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataSetsOutput
    #   resp.data.data_set_summaries #=> Array<DataSetSummary>
    #   resp.data.data_set_summaries[0] #=> Types::DataSetSummary
    #   resp.data.data_set_summaries[0].arn #=> String
    #   resp.data.data_set_summaries[0].data_set_id #=> String
    #   resp.data.data_set_summaries[0].name #=> String
    #   resp.data.data_set_summaries[0].created_time #=> Time
    #   resp.data.data_set_summaries[0].last_updated_time #=> Time
    #   resp.data.data_set_summaries[0].import_mode #=> String, one of ["SPICE", "DIRECT_QUERY"]
    #   resp.data.data_set_summaries[0].row_level_permission_data_set #=> Types::RowLevelPermissionDataSet
    #   resp.data.data_set_summaries[0].row_level_permission_data_set.namespace #=> String
    #   resp.data.data_set_summaries[0].row_level_permission_data_set.arn #=> String
    #   resp.data.data_set_summaries[0].row_level_permission_data_set.permission_policy #=> String, one of ["GRANT_ACCESS", "DENY_ACCESS"]
    #   resp.data.data_set_summaries[0].row_level_permission_data_set.format_version #=> String, one of ["VERSION_1", "VERSION_2"]
    #   resp.data.data_set_summaries[0].row_level_permission_data_set.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.data_set_summaries[0].row_level_permission_tag_configuration_applied #=> Boolean
    #   resp.data.data_set_summaries[0].column_level_permission_rules_applied #=> Boolean
    #   resp.data.next_token #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def list_data_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::ListDataSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataSets,
        stubs: @stubs,
        params_class: Params::ListDataSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_data_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists data sources in current Amazon Web Services Region that belong to this Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDataSourcesInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListDataSourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sources(
    #     aws_account_id: 'AwsAccountId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataSourcesOutput
    #   resp.data.data_sources #=> Array<DataSource>
    #   resp.data.data_sources[0] #=> Types::DataSource
    #   resp.data.data_sources[0].arn #=> String
    #   resp.data.data_sources[0].data_source_id #=> String
    #   resp.data.data_sources[0].name #=> String
    #   resp.data.data_sources[0].type #=> String, one of ["ADOBE_ANALYTICS", "AMAZON_ELASTICSEARCH", "ATHENA", "AURORA", "AURORA_POSTGRESQL", "AWS_IOT_ANALYTICS", "GITHUB", "JIRA", "MARIADB", "MYSQL", "ORACLE", "POSTGRESQL", "PRESTO", "REDSHIFT", "S3", "SALESFORCE", "SERVICENOW", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "TWITTER", "TIMESTREAM", "AMAZON_OPENSEARCH", "EXASOL"]
    #   resp.data.data_sources[0].status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.data_sources[0].created_time #=> Time
    #   resp.data.data_sources[0].last_updated_time #=> Time
    #   resp.data.data_sources[0].data_source_parameters #=> Types::DataSourceParameters, one of [AmazonElasticsearchParameters, AthenaParameters, AuroraParameters, AuroraPostgreSqlParameters, AwsIotAnalyticsParameters, JiraParameters, MariaDbParameters, MySqlParameters, OracleParameters, PostgreSqlParameters, PrestoParameters, RdsParameters, RedshiftParameters, S3Parameters, ServiceNowParameters, SnowflakeParameters, SparkParameters, SqlServerParameters, TeradataParameters, TwitterParameters, AmazonOpenSearchParameters, ExasolParameters]
    #   resp.data.data_sources[0].data_source_parameters.amazon_elasticsearch_parameters #=> Types::AmazonElasticsearchParameters
    #   resp.data.data_sources[0].data_source_parameters.amazon_elasticsearch_parameters.domain #=> String
    #   resp.data.data_sources[0].data_source_parameters.athena_parameters #=> Types::AthenaParameters
    #   resp.data.data_sources[0].data_source_parameters.athena_parameters.work_group #=> String
    #   resp.data.data_sources[0].data_source_parameters.aurora_parameters #=> Types::AuroraParameters
    #   resp.data.data_sources[0].data_source_parameters.aurora_parameters.host #=> String
    #   resp.data.data_sources[0].data_source_parameters.aurora_parameters.port #=> Integer
    #   resp.data.data_sources[0].data_source_parameters.aurora_parameters.database #=> String
    #   resp.data.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters #=> Types::AuroraPostgreSqlParameters
    #   resp.data.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.host #=> String
    #   resp.data.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.port #=> Integer
    #   resp.data.data_sources[0].data_source_parameters.aurora_postgre_sql_parameters.database #=> String
    #   resp.data.data_sources[0].data_source_parameters.aws_iot_analytics_parameters #=> Types::AwsIotAnalyticsParameters
    #   resp.data.data_sources[0].data_source_parameters.aws_iot_analytics_parameters.data_set_name #=> String
    #   resp.data.data_sources[0].data_source_parameters.jira_parameters #=> Types::JiraParameters
    #   resp.data.data_sources[0].data_source_parameters.jira_parameters.site_base_url #=> String
    #   resp.data.data_sources[0].data_source_parameters.maria_db_parameters #=> Types::MariaDbParameters
    #   resp.data.data_sources[0].data_source_parameters.maria_db_parameters.host #=> String
    #   resp.data.data_sources[0].data_source_parameters.maria_db_parameters.port #=> Integer
    #   resp.data.data_sources[0].data_source_parameters.maria_db_parameters.database #=> String
    #   resp.data.data_sources[0].data_source_parameters.my_sql_parameters #=> Types::MySqlParameters
    #   resp.data.data_sources[0].data_source_parameters.my_sql_parameters.host #=> String
    #   resp.data.data_sources[0].data_source_parameters.my_sql_parameters.port #=> Integer
    #   resp.data.data_sources[0].data_source_parameters.my_sql_parameters.database #=> String
    #   resp.data.data_sources[0].data_source_parameters.oracle_parameters #=> Types::OracleParameters
    #   resp.data.data_sources[0].data_source_parameters.oracle_parameters.host #=> String
    #   resp.data.data_sources[0].data_source_parameters.oracle_parameters.port #=> Integer
    #   resp.data.data_sources[0].data_source_parameters.oracle_parameters.database #=> String
    #   resp.data.data_sources[0].data_source_parameters.postgre_sql_parameters #=> Types::PostgreSqlParameters
    #   resp.data.data_sources[0].data_source_parameters.postgre_sql_parameters.host #=> String
    #   resp.data.data_sources[0].data_source_parameters.postgre_sql_parameters.port #=> Integer
    #   resp.data.data_sources[0].data_source_parameters.postgre_sql_parameters.database #=> String
    #   resp.data.data_sources[0].data_source_parameters.presto_parameters #=> Types::PrestoParameters
    #   resp.data.data_sources[0].data_source_parameters.presto_parameters.host #=> String
    #   resp.data.data_sources[0].data_source_parameters.presto_parameters.port #=> Integer
    #   resp.data.data_sources[0].data_source_parameters.presto_parameters.catalog #=> String
    #   resp.data.data_sources[0].data_source_parameters.rds_parameters #=> Types::RdsParameters
    #   resp.data.data_sources[0].data_source_parameters.rds_parameters.instance_id #=> String
    #   resp.data.data_sources[0].data_source_parameters.rds_parameters.database #=> String
    #   resp.data.data_sources[0].data_source_parameters.redshift_parameters #=> Types::RedshiftParameters
    #   resp.data.data_sources[0].data_source_parameters.redshift_parameters.host #=> String
    #   resp.data.data_sources[0].data_source_parameters.redshift_parameters.port #=> Integer
    #   resp.data.data_sources[0].data_source_parameters.redshift_parameters.database #=> String
    #   resp.data.data_sources[0].data_source_parameters.redshift_parameters.cluster_id #=> String
    #   resp.data.data_sources[0].data_source_parameters.s3_parameters #=> Types::S3Parameters
    #   resp.data.data_sources[0].data_source_parameters.s3_parameters.manifest_file_location #=> Types::ManifestFileLocation
    #   resp.data.data_sources[0].data_source_parameters.s3_parameters.manifest_file_location.bucket #=> String
    #   resp.data.data_sources[0].data_source_parameters.s3_parameters.manifest_file_location.key #=> String
    #   resp.data.data_sources[0].data_source_parameters.service_now_parameters #=> Types::ServiceNowParameters
    #   resp.data.data_sources[0].data_source_parameters.service_now_parameters.site_base_url #=> String
    #   resp.data.data_sources[0].data_source_parameters.snowflake_parameters #=> Types::SnowflakeParameters
    #   resp.data.data_sources[0].data_source_parameters.snowflake_parameters.host #=> String
    #   resp.data.data_sources[0].data_source_parameters.snowflake_parameters.database #=> String
    #   resp.data.data_sources[0].data_source_parameters.snowflake_parameters.warehouse #=> String
    #   resp.data.data_sources[0].data_source_parameters.spark_parameters #=> Types::SparkParameters
    #   resp.data.data_sources[0].data_source_parameters.spark_parameters.host #=> String
    #   resp.data.data_sources[0].data_source_parameters.spark_parameters.port #=> Integer
    #   resp.data.data_sources[0].data_source_parameters.sql_server_parameters #=> Types::SqlServerParameters
    #   resp.data.data_sources[0].data_source_parameters.sql_server_parameters.host #=> String
    #   resp.data.data_sources[0].data_source_parameters.sql_server_parameters.port #=> Integer
    #   resp.data.data_sources[0].data_source_parameters.sql_server_parameters.database #=> String
    #   resp.data.data_sources[0].data_source_parameters.teradata_parameters #=> Types::TeradataParameters
    #   resp.data.data_sources[0].data_source_parameters.teradata_parameters.host #=> String
    #   resp.data.data_sources[0].data_source_parameters.teradata_parameters.port #=> Integer
    #   resp.data.data_sources[0].data_source_parameters.teradata_parameters.database #=> String
    #   resp.data.data_sources[0].data_source_parameters.twitter_parameters #=> Types::TwitterParameters
    #   resp.data.data_sources[0].data_source_parameters.twitter_parameters.query #=> String
    #   resp.data.data_sources[0].data_source_parameters.twitter_parameters.max_rows #=> Integer
    #   resp.data.data_sources[0].data_source_parameters.amazon_open_search_parameters #=> Types::AmazonOpenSearchParameters
    #   resp.data.data_sources[0].data_source_parameters.amazon_open_search_parameters.domain #=> String
    #   resp.data.data_sources[0].data_source_parameters.exasol_parameters #=> Types::ExasolParameters
    #   resp.data.data_sources[0].data_source_parameters.exasol_parameters.host #=> String
    #   resp.data.data_sources[0].data_source_parameters.exasol_parameters.port #=> Integer
    #   resp.data.data_sources[0].alternate_data_source_parameters #=> Array<DataSourceParameters>
    #   resp.data.data_sources[0].vpc_connection_properties #=> Types::VpcConnectionProperties
    #   resp.data.data_sources[0].vpc_connection_properties.vpc_connection_arn #=> String
    #   resp.data.data_sources[0].ssl_properties #=> Types::SslProperties
    #   resp.data.data_sources[0].ssl_properties.disable_ssl #=> Boolean
    #   resp.data.data_sources[0].error_info #=> Types::DataSourceErrorInfo
    #   resp.data.data_sources[0].error_info.type #=> String, one of ["ACCESS_DENIED", "COPY_SOURCE_NOT_FOUND", "TIMEOUT", "ENGINE_VERSION_NOT_SUPPORTED", "UNKNOWN_HOST", "GENERIC_SQL_FAILURE", "CONFLICT", "UNKNOWN"]
    #   resp.data.data_sources[0].error_info.message #=> String
    #   resp.data.next_token #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def list_data_sources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataSourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataSourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataSources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::ListDataSources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataSources,
        stubs: @stubs,
        params_class: Params::ListDataSourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_data_sources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all assets (<code>DASHBOARD</code>, <code>ANALYSIS</code>, and <code>DATASET</code>) in a folder. </p>
    #
    # @param [Hash] params
    #   See {Types::ListFolderMembersInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListFolderMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_folder_members(
    #     aws_account_id: 'AwsAccountId', # required
    #     folder_id: 'FolderId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFolderMembersOutput
    #   resp.data.status #=> Integer
    #   resp.data.folder_member_list #=> Array<MemberIdArnPair>
    #   resp.data.folder_member_list[0] #=> Types::MemberIdArnPair
    #   resp.data.folder_member_list[0].member_id #=> String
    #   resp.data.folder_member_list[0].member_arn #=> String
    #   resp.data.next_token #=> String
    #   resp.data.request_id #=> String
    #
    def list_folder_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFolderMembersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFolderMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFolderMembers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::ListFolderMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFolderMembers,
        stubs: @stubs,
        params_class: Params::ListFolderMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_folder_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all folders in an account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFoldersInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListFoldersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_folders(
    #     aws_account_id: 'AwsAccountId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFoldersOutput
    #   resp.data.status #=> Integer
    #   resp.data.folder_summary_list #=> Array<FolderSummary>
    #   resp.data.folder_summary_list[0] #=> Types::FolderSummary
    #   resp.data.folder_summary_list[0].arn #=> String
    #   resp.data.folder_summary_list[0].folder_id #=> String
    #   resp.data.folder_summary_list[0].name #=> String
    #   resp.data.folder_summary_list[0].folder_type #=> String, one of ["SHARED"]
    #   resp.data.folder_summary_list[0].created_time #=> Time
    #   resp.data.folder_summary_list[0].last_updated_time #=> Time
    #   resp.data.next_token #=> String
    #   resp.data.request_id #=> String
    #
    def list_folders(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFoldersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFoldersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFolders
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::ListFolders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFolders,
        stubs: @stubs,
        params_class: Params::ListFoldersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_folders
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists member users in a group.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGroupMembershipsInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the group that you want to see a membership list of.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return from this request.</p>
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace of the group that you want a list of users from.</p>
    #
    # @return [Types::ListGroupMembershipsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_memberships(
    #     group_name: 'GroupName', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroupMembershipsOutput
    #   resp.data.group_member_list #=> Array<GroupMember>
    #   resp.data.group_member_list[0] #=> Types::GroupMember
    #   resp.data.group_member_list[0].arn #=> String
    #   resp.data.group_member_list[0].member_name #=> String
    #   resp.data.next_token #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def list_group_memberships(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGroupMembershipsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGroupMembershipsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGroupMemberships
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::ListGroupMemberships
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGroupMemberships,
        stubs: @stubs,
        params_class: Params::ListGroupMembershipsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_group_memberships
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all user groups in Amazon QuickSight. </p>
    #
    # @param [Hash] params
    #   See {Types::ListGroupsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace that you want a list of groups from.</p>
    #
    # @return [Types::ListGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups(
    #     aws_account_id: 'AwsAccountId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroupsOutput
    #   resp.data.group_list #=> Array<Group>
    #   resp.data.group_list[0] #=> Types::Group
    #   resp.data.group_list[0].arn #=> String
    #   resp.data.group_list[0].group_name #=> String
    #   resp.data.group_list[0].description #=> String
    #   resp.data.group_list[0].principal_id #=> String
    #   resp.data.next_token #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def list_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::ListGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGroups,
        stubs: @stubs,
        params_class: Params::ListGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists IAM policy assignments in the current Amazon QuickSight account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIAMPolicyAssignmentsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains these IAM policy assignments.</p>
    #
    # @option params [String] :assignment_status
    #   <p>The status of the assignments.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace for the assignments.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListIAMPolicyAssignmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_iam_policy_assignments(
    #     aws_account_id: 'AwsAccountId', # required
    #     assignment_status: 'ENABLED', # accepts ["ENABLED", "DRAFT", "DISABLED"]
    #     namespace: 'Namespace', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIAMPolicyAssignmentsOutput
    #   resp.data.iam_policy_assignments #=> Array<IAMPolicyAssignmentSummary>
    #   resp.data.iam_policy_assignments[0] #=> Types::IAMPolicyAssignmentSummary
    #   resp.data.iam_policy_assignments[0].assignment_name #=> String
    #   resp.data.iam_policy_assignments[0].assignment_status #=> String, one of ["ENABLED", "DRAFT", "DISABLED"]
    #   resp.data.next_token #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def list_iam_policy_assignments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIAMPolicyAssignmentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIAMPolicyAssignmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIAMPolicyAssignments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::ListIAMPolicyAssignments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIAMPolicyAssignments,
        stubs: @stubs,
        params_class: Params::ListIAMPolicyAssignmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_iam_policy_assignments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the IAM policy assignments, including the Amazon Resource Names (ARNs) for the IAM
    # 			policies assigned to the specified user and group or groups that the user belongs
    # 			to.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIAMPolicyAssignmentsForUserInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the assignments.</p>
    #
    # @option params [String] :user_name
    #   <p>The name of the user.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace of the assignment.</p>
    #
    # @return [Types::ListIAMPolicyAssignmentsForUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_iam_policy_assignments_for_user(
    #     aws_account_id: 'AwsAccountId', # required
    #     user_name: 'UserName', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIAMPolicyAssignmentsForUserOutput
    #   resp.data.active_assignments #=> Array<ActiveIAMPolicyAssignment>
    #   resp.data.active_assignments[0] #=> Types::ActiveIAMPolicyAssignment
    #   resp.data.active_assignments[0].assignment_name #=> String
    #   resp.data.active_assignments[0].policy_arn #=> String
    #   resp.data.request_id #=> String
    #   resp.data.next_token #=> String
    #   resp.data.status #=> Integer
    #
    def list_iam_policy_assignments_for_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIAMPolicyAssignmentsForUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIAMPolicyAssignmentsForUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIAMPolicyAssignmentsForUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConcurrentUpdatingException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::ListIAMPolicyAssignmentsForUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIAMPolicyAssignmentsForUser,
        stubs: @stubs,
        params_class: Params::ListIAMPolicyAssignmentsForUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_iam_policy_assignments_for_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the history of SPICE ingestions for a dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIngestionsInput}.
    #
    # @option params [String] :data_set_id
    #   <p>The ID of the dataset used in the ingestion.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListIngestionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ingestions(
    #     data_set_id: 'DataSetId', # required
    #     next_token: 'NextToken',
    #     aws_account_id: 'AwsAccountId', # required
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIngestionsOutput
    #   resp.data.ingestions #=> Array<Ingestion>
    #   resp.data.ingestions[0] #=> Types::Ingestion
    #   resp.data.ingestions[0].arn #=> String
    #   resp.data.ingestions[0].ingestion_id #=> String
    #   resp.data.ingestions[0].ingestion_status #=> String, one of ["INITIALIZED", "QUEUED", "RUNNING", "FAILED", "COMPLETED", "CANCELLED"]
    #   resp.data.ingestions[0].error_info #=> Types::ErrorInfo
    #   resp.data.ingestions[0].error_info.type #=> String, one of ["FAILURE_TO_ASSUME_ROLE", "INGESTION_SUPERSEDED", "INGESTION_CANCELED", "DATA_SET_DELETED", "DATA_SET_NOT_SPICE", "S3_UPLOADED_FILE_DELETED", "S3_MANIFEST_ERROR", "DATA_TOLERANCE_EXCEPTION", "SPICE_TABLE_NOT_FOUND", "DATA_SET_SIZE_LIMIT_EXCEEDED", "ROW_SIZE_LIMIT_EXCEEDED", "ACCOUNT_CAPACITY_LIMIT_EXCEEDED", "CUSTOMER_ERROR", "DATA_SOURCE_NOT_FOUND", "IAM_ROLE_NOT_AVAILABLE", "CONNECTION_FAILURE", "SQL_TABLE_NOT_FOUND", "PERMISSION_DENIED", "SSL_CERTIFICATE_VALIDATION_FAILURE", "OAUTH_TOKEN_FAILURE", "SOURCE_API_LIMIT_EXCEEDED_FAILURE", "PASSWORD_AUTHENTICATION_FAILURE", "SQL_SCHEMA_MISMATCH_ERROR", "INVALID_DATE_FORMAT", "INVALID_DATAPREP_SYNTAX", "SOURCE_RESOURCE_LIMIT_EXCEEDED", "SQL_INVALID_PARAMETER_VALUE", "QUERY_TIMEOUT", "SQL_NUMERIC_OVERFLOW", "UNRESOLVABLE_HOST", "UNROUTABLE_HOST", "SQL_EXCEPTION", "S3_FILE_INACCESSIBLE", "IOT_FILE_NOT_FOUND", "IOT_DATA_SET_FILE_EMPTY", "INVALID_DATA_SOURCE_CONFIG", "DATA_SOURCE_AUTH_FAILED", "DATA_SOURCE_CONNECTION_FAILED", "FAILURE_TO_PROCESS_JSON_FILE", "INTERNAL_SERVICE_ERROR", "REFRESH_SUPPRESSED_BY_EDIT", "PERMISSION_NOT_FOUND", "ELASTICSEARCH_CURSOR_NOT_ENABLED", "CURSOR_NOT_ENABLED"]
    #   resp.data.ingestions[0].error_info.message #=> String
    #   resp.data.ingestions[0].row_info #=> Types::RowInfo
    #   resp.data.ingestions[0].row_info.rows_ingested #=> Integer
    #   resp.data.ingestions[0].row_info.rows_dropped #=> Integer
    #   resp.data.ingestions[0].row_info.total_rows_in_dataset #=> Integer
    #   resp.data.ingestions[0].queue_info #=> Types::QueueInfo
    #   resp.data.ingestions[0].queue_info.waiting_on_ingestion #=> String
    #   resp.data.ingestions[0].queue_info.queued_ingestion #=> String
    #   resp.data.ingestions[0].created_time #=> Time
    #   resp.data.ingestions[0].ingestion_time_in_seconds #=> Integer
    #   resp.data.ingestions[0].ingestion_size_in_bytes #=> Integer
    #   resp.data.ingestions[0].request_source #=> String, one of ["MANUAL", "SCHEDULED"]
    #   resp.data.ingestions[0].request_type #=> String, one of ["INITIAL_INGESTION", "EDIT", "INCREMENTAL_REFRESH", "FULL_REFRESH"]
    #   resp.data.next_token #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def list_ingestions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIngestionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIngestionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIngestions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::ListIngestions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIngestions,
        stubs: @stubs,
        params_class: Params::ListIngestionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_ingestions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the namespaces for the specified Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNamespacesInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the Amazon QuickSight namespaces that you want to list.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @return [Types::ListNamespacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_namespaces(
    #     aws_account_id: 'AwsAccountId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNamespacesOutput
    #   resp.data.namespaces #=> Array<NamespaceInfoV2>
    #   resp.data.namespaces[0] #=> Types::NamespaceInfoV2
    #   resp.data.namespaces[0].name #=> String
    #   resp.data.namespaces[0].arn #=> String
    #   resp.data.namespaces[0].capacity_region #=> String
    #   resp.data.namespaces[0].creation_status #=> String, one of ["CREATED", "CREATING", "DELETING", "RETRYABLE_FAILURE", "NON_RETRYABLE_FAILURE"]
    #   resp.data.namespaces[0].identity_store #=> String, one of ["QUICKSIGHT"]
    #   resp.data.namespaces[0].namespace_error #=> Types::NamespaceError
    #   resp.data.namespaces[0].namespace_error.type #=> String, one of ["PERMISSION_DENIED", "INTERNAL_SERVICE_ERROR"]
    #   resp.data.namespaces[0].namespace_error.message #=> String
    #   resp.data.next_token #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def list_namespaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNamespacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNamespacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNamespaces
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::ListNamespaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNamespaces,
        stubs: @stubs,
        params_class: Params::ListNamespacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_namespaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags assigned to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want a list of tags for.</p>
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
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
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

    # <p>Lists all the aliases of a template.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTemplateAliasesInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template aliases that you're listing.</p>
    #
    # @option params [String] :template_id
    #   <p>The ID for the template.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListTemplateAliasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_template_aliases(
    #     aws_account_id: 'AwsAccountId', # required
    #     template_id: 'TemplateId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTemplateAliasesOutput
    #   resp.data.template_alias_list #=> Array<TemplateAlias>
    #   resp.data.template_alias_list[0] #=> Types::TemplateAlias
    #   resp.data.template_alias_list[0].alias_name #=> String
    #   resp.data.template_alias_list[0].arn #=> String
    #   resp.data.template_alias_list[0].template_version_number #=> Integer
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_template_aliases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTemplateAliasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTemplateAliasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTemplateAliases
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::ListTemplateAliases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTemplateAliases,
        stubs: @stubs,
        params_class: Params::ListTemplateAliasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_template_aliases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the versions of the templates in the current Amazon QuickSight account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTemplateVersionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the templates that you're listing.</p>
    #
    # @option params [String] :template_id
    #   <p>The ID for the template.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListTemplateVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_template_versions(
    #     aws_account_id: 'AwsAccountId', # required
    #     template_id: 'TemplateId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTemplateVersionsOutput
    #   resp.data.template_version_summary_list #=> Array<TemplateVersionSummary>
    #   resp.data.template_version_summary_list[0] #=> Types::TemplateVersionSummary
    #   resp.data.template_version_summary_list[0].arn #=> String
    #   resp.data.template_version_summary_list[0].version_number #=> Integer
    #   resp.data.template_version_summary_list[0].created_time #=> Time
    #   resp.data.template_version_summary_list[0].status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.template_version_summary_list[0].description #=> String
    #   resp.data.next_token #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def list_template_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTemplateVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTemplateVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTemplateVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::ListTemplateVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTemplateVersions,
        stubs: @stubs,
        params_class: Params::ListTemplateVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_template_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the templates in the current Amazon QuickSight account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTemplatesInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the templates that you're listing.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_templates(
    #     aws_account_id: 'AwsAccountId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTemplatesOutput
    #   resp.data.template_summary_list #=> Array<TemplateSummary>
    #   resp.data.template_summary_list[0] #=> Types::TemplateSummary
    #   resp.data.template_summary_list[0].arn #=> String
    #   resp.data.template_summary_list[0].template_id #=> String
    #   resp.data.template_summary_list[0].name #=> String
    #   resp.data.template_summary_list[0].latest_version_number #=> Integer
    #   resp.data.template_summary_list[0].created_time #=> Time
    #   resp.data.template_summary_list[0].last_updated_time #=> Time
    #   resp.data.next_token #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def list_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTemplatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTemplates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::ListTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTemplates,
        stubs: @stubs,
        params_class: Params::ListTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the aliases of a theme.</p>
    #
    # @param [Hash] params
    #   See {Types::ListThemeAliasesInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme aliases that you're listing.</p>
    #
    # @option params [String] :theme_id
    #   <p>The ID for the theme.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListThemeAliasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_theme_aliases(
    #     aws_account_id: 'AwsAccountId', # required
    #     theme_id: 'ThemeId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThemeAliasesOutput
    #   resp.data.theme_alias_list #=> Array<ThemeAlias>
    #   resp.data.theme_alias_list[0] #=> Types::ThemeAlias
    #   resp.data.theme_alias_list[0].arn #=> String
    #   resp.data.theme_alias_list[0].alias_name #=> String
    #   resp.data.theme_alias_list[0].theme_version_number #=> Integer
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_theme_aliases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThemeAliasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThemeAliasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThemeAliases
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::ListThemeAliases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThemeAliases,
        stubs: @stubs,
        params_class: Params::ListThemeAliasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_theme_aliases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the versions of the themes in the current Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListThemeVersionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the themes that you're listing.</p>
    #
    # @option params [String] :theme_id
    #   <p>The ID for the theme.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListThemeVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_theme_versions(
    #     aws_account_id: 'AwsAccountId', # required
    #     theme_id: 'ThemeId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThemeVersionsOutput
    #   resp.data.theme_version_summary_list #=> Array<ThemeVersionSummary>
    #   resp.data.theme_version_summary_list[0] #=> Types::ThemeVersionSummary
    #   resp.data.theme_version_summary_list[0].version_number #=> Integer
    #   resp.data.theme_version_summary_list[0].arn #=> String
    #   resp.data.theme_version_summary_list[0].description #=> String
    #   resp.data.theme_version_summary_list[0].created_time #=> Time
    #   resp.data.theme_version_summary_list[0].status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.next_token #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def list_theme_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThemeVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThemeVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThemeVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::ListThemeVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThemeVersions,
        stubs: @stubs,
        params_class: Params::ListThemeVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_theme_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the themes in the current Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListThemesInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the themes that you're listing.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @option params [String] :type
    #   <p>The type of themes that you want to list. Valid options include the following:</p>
    #       	    <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL (default)</code>- Display all existing themes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM</code> - Display only the themes created by people using Amazon QuickSight.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>QUICKSIGHT</code> - Display only the starting themes defined by Amazon QuickSight.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListThemesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_themes(
    #     aws_account_id: 'AwsAccountId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     type: 'QUICKSIGHT' # accepts ["QUICKSIGHT", "CUSTOM", "ALL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThemesOutput
    #   resp.data.theme_summary_list #=> Array<ThemeSummary>
    #   resp.data.theme_summary_list[0] #=> Types::ThemeSummary
    #   resp.data.theme_summary_list[0].arn #=> String
    #   resp.data.theme_summary_list[0].name #=> String
    #   resp.data.theme_summary_list[0].theme_id #=> String
    #   resp.data.theme_summary_list[0].latest_version_number #=> Integer
    #   resp.data.theme_summary_list[0].created_time #=> Time
    #   resp.data.theme_summary_list[0].last_updated_time #=> Time
    #   resp.data.next_token #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def list_themes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThemesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThemesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThemes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::ListThemes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThemes,
        stubs: @stubs,
        params_class: Params::ListThemesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_themes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Amazon QuickSight groups that an Amazon QuickSight user is a member of.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUserGroupsInput}.
    #
    # @option params [String] :user_name
    #   <p>The Amazon QuickSight user name that you want to list group memberships for.</p>
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID that the user is in. Currently, you use the ID for the Amazon Web Services account
    #   			that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace. Currently, you should set this to <code>default</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return from this request.</p>
    #
    # @return [Types::ListUserGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_groups(
    #     user_name: 'UserName', # required
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUserGroupsOutput
    #   resp.data.group_list #=> Array<Group>
    #   resp.data.group_list[0] #=> Types::Group
    #   resp.data.group_list[0].arn #=> String
    #   resp.data.group_list[0].group_name #=> String
    #   resp.data.group_list[0].description #=> String
    #   resp.data.group_list[0].principal_id #=> String
    #   resp.data.next_token #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def list_user_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUserGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUserGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUserGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::ListUserGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUserGroups,
        stubs: @stubs,
        params_class: Params::ListUserGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_user_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all of the Amazon QuickSight users belonging to this account. </p>
    #
    # @param [Hash] params
    #   See {Types::ListUsersInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the user is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return from this request.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace. Currently, you should set this to <code>default</code>.</p>
    #
    # @return [Types::ListUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users(
    #     aws_account_id: 'AwsAccountId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUsersOutput
    #   resp.data.user_list #=> Array<User>
    #   resp.data.user_list[0] #=> Types::User
    #   resp.data.user_list[0].arn #=> String
    #   resp.data.user_list[0].user_name #=> String
    #   resp.data.user_list[0].email #=> String
    #   resp.data.user_list[0].role #=> String, one of ["ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"]
    #   resp.data.user_list[0].identity_type #=> String, one of ["IAM", "QUICKSIGHT"]
    #   resp.data.user_list[0].active #=> Boolean
    #   resp.data.user_list[0].principal_id #=> String
    #   resp.data.user_list[0].custom_permissions_name #=> String
    #   resp.data.user_list[0].external_login_federation_provider_type #=> String
    #   resp.data.user_list[0].external_login_federation_provider_url #=> String
    #   resp.data.user_list[0].external_login_id #=> String
    #   resp.data.next_token #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
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

    # <p>Creates an Amazon QuickSight user, whose identity is associated with the Identity and Access Management (IAM) identity or role specified in the request. </p>
    #
    # @param [Hash] params
    #   See {Types::RegisterUserInput}.
    #
    # @option params [String] :identity_type
    #   <p>Amazon QuickSight supports several ways of managing the identity of users. This
    #   			parameter accepts two values:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>IAM</code>: A user whose identity maps to an existing IAM user or role.
    #   				</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>QUICKSIGHT</code>: A user whose identity is owned and managed internally by
    #   					Amazon QuickSight. </p>
    #   			         </li>
    #            </ul>
    #
    # @option params [String] :email
    #   <p>The email address of the user that you want to register.</p>
    #
    # @option params [String] :user_role
    #   <p>The Amazon QuickSight role for the user. The user role can be one of the
    #   			following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>READER</code>: A user who has read-only access to dashboards.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>AUTHOR</code>: A user who can create data sources, datasets, analyses, and
    #   					dashboards.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>ADMIN</code>: A user who is an author, who can also manage Amazon QuickSight
    #   					settings.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>RESTRICTED_READER</code>: This role isn't currently available for
    #   					use.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>RESTRICTED_AUTHOR</code>: This role isn't currently available for
    #   					use.</p>
    #   			         </li>
    #            </ul>
    #
    # @option params [String] :iam_arn
    #   <p>The ARN of the IAM user or role that you are registering with Amazon QuickSight. </p>
    #
    # @option params [String] :session_name
    #   <p>You need to use this parameter only when you register one or more users using an assumed
    #   			IAM role. You don't need to provide the session name for other scenarios, for example when
    #   			you are registering an IAM user or an Amazon QuickSight user. You can register multiple
    #   			users using the same IAM role if each user has a different session name. For more
    #   			information on assuming IAM roles, see <a href="https://docs.aws.amazon.com/cli/latest/reference/sts/assume-role.html">
    #                  <code>assume-role</code>
    #               </a> in the <i>CLI Reference.</i>
    #            </p>
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the user is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace. Currently, you should set this to <code>default</code>.</p>
    #
    # @option params [String] :user_name
    #   <p>The Amazon QuickSight user name that you want to create for the user you are
    #   			registering.</p>
    #
    # @option params [String] :custom_permissions_name
    #   <p>(Enterprise edition only) The name of the custom permissions profile that you want to
    #               assign to this user. Customized permissions allows you to control a user's access by
    #               restricting access the following operations:</p>
    #           <ul>
    #               <li>
    #                   <p>Create and update data sources</p>
    #               </li>
    #               <li>
    #                   <p>Create and update datasets</p>
    #               </li>
    #               <li>
    #                   <p>Create and update email reports</p>
    #               </li>
    #               <li>
    #                   <p>Subscribe to email reports</p>
    #               </li>
    #            </ul>
    #           <p>To add custom permissions to an existing user, use <code>
    #                  <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateUser.html">UpdateUser</a>
    #               </code> instead.</p>
    #           <p>A set of custom permissions includes any combination of these restrictions. Currently,
    #               you need to create the profile names for custom permission sets by using the Amazon QuickSight
    #               console. Then, you use the <code>RegisterUser</code> API operation to assign the named set of
    #               permissions to a Amazon QuickSight user. </p>
    #           <p>Amazon QuickSight custom permissions are applied through IAM policies. Therefore, they
    #               override the permissions typically granted by assigning Amazon QuickSight users to one of the
    #               default security cohorts in Amazon QuickSight (admin, author, reader).</p>
    #           <p>This feature is available only to Amazon QuickSight Enterprise edition subscriptions.</p>
    #
    # @option params [String] :external_login_federation_provider_type
    #   <p>The type of supported external login provider that provides identity to let a user federate into Amazon QuickSight with an associated Identity and Access Management(IAM) role. The type of supported external login provider can be one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COGNITO</code>: Amazon Cognito. The provider URL is cognito-identity.amazonaws.com. When choosing the <code>COGNITO</code> provider type, don’t use the "CustomFederationProviderUrl" parameter which is only needed when the external provider is custom.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_OIDC</code>: Custom OpenID Connect (OIDC) provider. When choosing <code>CUSTOM_OIDC</code> type, use the <code>CustomFederationProviderUrl</code> parameter to provide the custom OIDC provider URL.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :custom_federation_provider_url
    #   <p>The URL of the custom OpenID Connect (OIDC) provider that provides identity to let a user federate
    #            into Amazon QuickSight with an associated Identity and Access Management(IAM) role. This parameter should
    #            only be used when <code>ExternalLoginFederationProviderType</code> parameter is set to <code>CUSTOM_OIDC</code>.</p>
    #
    # @option params [String] :external_login_id
    #   <p>The identity ID for a user in the external login provider.</p>
    #
    # @return [Types::RegisterUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_user(
    #     identity_type: 'IAM', # required - accepts ["IAM", "QUICKSIGHT"]
    #     email: 'Email', # required
    #     user_role: 'ADMIN', # required - accepts ["ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"]
    #     iam_arn: 'IamArn',
    #     session_name: 'SessionName',
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace', # required
    #     user_name: 'UserName',
    #     custom_permissions_name: 'CustomPermissionsName',
    #     external_login_federation_provider_type: 'ExternalLoginFederationProviderType',
    #     custom_federation_provider_url: 'CustomFederationProviderUrl',
    #     external_login_id: 'ExternalLoginId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.arn #=> String
    #   resp.data.user.user_name #=> String
    #   resp.data.user.email #=> String
    #   resp.data.user.role #=> String, one of ["ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"]
    #   resp.data.user.identity_type #=> String, one of ["IAM", "QUICKSIGHT"]
    #   resp.data.user.active #=> Boolean
    #   resp.data.user.principal_id #=> String
    #   resp.data.user.custom_permissions_name #=> String
    #   resp.data.user.external_login_federation_provider_type #=> String
    #   resp.data.user.external_login_federation_provider_url #=> String
    #   resp.data.user.external_login_id #=> String
    #   resp.data.user_invitation_url #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def register_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::AccessDeniedException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::RegisterUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterUser,
        stubs: @stubs,
        params_class: Params::RegisterUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Restores an analysis.</p>
    #
    # @param [Hash] params
    #   See {Types::RestoreAnalysisInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the analysis.</p>
    #
    # @option params [String] :analysis_id
    #   <p>The ID of the analysis that you're restoring.</p>
    #
    # @return [Types::RestoreAnalysisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_analysis(
    #     aws_account_id: 'AwsAccountId', # required
    #     analysis_id: 'AnalysisId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreAnalysisOutput
    #   resp.data.status #=> Integer
    #   resp.data.arn #=> String
    #   resp.data.analysis_id #=> String
    #   resp.data.request_id #=> String
    #
    def restore_analysis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreAnalysisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreAnalysisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreAnalysis
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::RestoreAnalysis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreAnalysis,
        stubs: @stubs,
        params_class: Params::RestoreAnalysisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_analysis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches for analyses that belong to the user specified in the filter.</p>
    #         <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::SearchAnalysesInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the analyses that you're searching
    #               for.</p>
    #
    # @option params [Array<AnalysisSearchFilter>] :filters
    #   <p>The structure for the search filters that you want to apply to your search. </p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @return [Types::SearchAnalysesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_analyses(
    #     aws_account_id: 'AwsAccountId', # required
    #     filters: [
    #       {
    #         operator: 'StringEquals', # accepts ["StringEquals"]
    #         name: 'QUICKSIGHT_USER', # accepts ["QUICKSIGHT_USER"]
    #         value: 'Value'
    #       }
    #     ], # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchAnalysesOutput
    #   resp.data.analysis_summary_list #=> Array<AnalysisSummary>
    #   resp.data.analysis_summary_list[0] #=> Types::AnalysisSummary
    #   resp.data.analysis_summary_list[0].arn #=> String
    #   resp.data.analysis_summary_list[0].analysis_id #=> String
    #   resp.data.analysis_summary_list[0].name #=> String
    #   resp.data.analysis_summary_list[0].status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.analysis_summary_list[0].created_time #=> Time
    #   resp.data.analysis_summary_list[0].last_updated_time #=> Time
    #   resp.data.next_token #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def search_analyses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchAnalysesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchAnalysesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchAnalyses
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::SearchAnalyses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchAnalyses,
        stubs: @stubs,
        params_class: Params::SearchAnalysesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_analyses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches for dashboards that belong to a user. </p>
    #         <note>
    #             <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::SearchDashboardsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the user whose dashboards you're searching
    #               for. </p>
    #
    # @option params [Array<DashboardSearchFilter>] :filters
    #   <p>The filters to apply to the search. Currently, you can search only by user name, for
    #               example, <code>"Filters": [ { "Name": "QUICKSIGHT_USER", "Operator": "StringEquals",
    #               "Value": "arn:aws:quicksight:us-east-1:1:user/default/UserName1" } ]</code>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::SearchDashboardsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_dashboards(
    #     aws_account_id: 'AwsAccountId', # required
    #     filters: [
    #       {
    #         operator: 'StringEquals', # required - accepts ["StringEquals"]
    #         name: 'QUICKSIGHT_USER', # accepts ["QUICKSIGHT_USER"]
    #         value: 'Value'
    #       }
    #     ], # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchDashboardsOutput
    #   resp.data.dashboard_summary_list #=> Array<DashboardSummary>
    #   resp.data.dashboard_summary_list[0] #=> Types::DashboardSummary
    #   resp.data.dashboard_summary_list[0].arn #=> String
    #   resp.data.dashboard_summary_list[0].dashboard_id #=> String
    #   resp.data.dashboard_summary_list[0].name #=> String
    #   resp.data.dashboard_summary_list[0].created_time #=> Time
    #   resp.data.dashboard_summary_list[0].last_updated_time #=> Time
    #   resp.data.dashboard_summary_list[0].published_version_number #=> Integer
    #   resp.data.dashboard_summary_list[0].last_published_time #=> Time
    #   resp.data.next_token #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def search_dashboards(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchDashboardsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchDashboardsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchDashboards
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::SearchDashboards
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchDashboards,
        stubs: @stubs,
        params_class: Params::SearchDashboardsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_dashboards
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches the subfolders in a folder.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchFoldersInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder.</p>
    #
    # @option params [Array<FolderSearchFilter>] :filters
    #   <p>The filters to apply to the search. Currently, you can search only by the parent folder ARN. For example, <code>"Filters": [ { "Name": "PARENT_FOLDER_ARN", "Operator": "StringEquals", "Value": "arn:aws:quicksight:us-east-1:1:folder/folderId" } ]</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or null if there are no more results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::SearchFoldersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_folders(
    #     aws_account_id: 'AwsAccountId', # required
    #     filters: [
    #       {
    #         operator: 'StringEquals', # accepts ["StringEquals"]
    #         name: 'PARENT_FOLDER_ARN', # accepts ["PARENT_FOLDER_ARN"]
    #         value: 'Value'
    #       }
    #     ], # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchFoldersOutput
    #   resp.data.status #=> Integer
    #   resp.data.folder_summary_list #=> Array<FolderSummary>
    #   resp.data.folder_summary_list[0] #=> Types::FolderSummary
    #   resp.data.folder_summary_list[0].arn #=> String
    #   resp.data.folder_summary_list[0].folder_id #=> String
    #   resp.data.folder_summary_list[0].name #=> String
    #   resp.data.folder_summary_list[0].folder_type #=> String, one of ["SHARED"]
    #   resp.data.folder_summary_list[0].created_time #=> Time
    #   resp.data.folder_summary_list[0].last_updated_time #=> Time
    #   resp.data.next_token #=> String
    #   resp.data.request_id #=> String
    #
    def search_folders(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchFoldersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchFoldersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchFolders
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::SearchFolders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchFolders,
        stubs: @stubs,
        params_class: Params::SearchFoldersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_folders
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use the <code>SearchGroups</code> operation to search groups in a specified Amazon QuickSight namespace using the supplied filters.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchGroupsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #             Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return from this request.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace that you want to search.</p>
    #
    # @option params [Array<GroupSearchFilter>] :filters
    #   <p>The structure for the search filters that you want to apply to your search.</p>
    #
    # @return [Types::SearchGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_groups(
    #     aws_account_id: 'AwsAccountId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     namespace: 'Namespace', # required
    #     filters: [
    #       {
    #         operator: 'StartsWith', # required - accepts ["StartsWith"]
    #         name: 'GROUP_NAME', # required - accepts ["GROUP_NAME"]
    #         value: 'Value' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchGroupsOutput
    #   resp.data.group_list #=> Array<Group>
    #   resp.data.group_list[0] #=> Types::Group
    #   resp.data.group_list[0].arn #=> String
    #   resp.data.group_list[0].group_name #=> String
    #   resp.data.group_list[0].description #=> String
    #   resp.data.group_list[0].principal_id #=> String
    #   resp.data.next_token #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def search_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::SearchGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchGroups,
        stubs: @stubs,
        params_class: Params::SearchGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified Amazon QuickSight resource. </p>
    # 		       <p>Tags can help you organize and categorize your resources. You can also use them to
    # 			scope user permissions, by granting a user permission to access or change only resources
    # 			with certain tag values. You can use the <code>TagResource</code> operation with a
    # 			resource that already has tags. If you specify a new tag key for the resource, this tag
    # 			is appended to the list of tags associated with the resource. If you specify a tag key
    # 			that is already associated with the resource, the new tag value that you specify
    # 			replaces the previous value for that tag.</p>
    # 		       <p>You can associate as many as 50 tags with a resource. Amazon QuickSight supports tagging on data
    # 			set, data source, dashboard, and template. </p>
    # 		       <p>Tagging for Amazon QuickSight works in a similar way to tagging for other Amazon Web Services services, except for
    # 			the following:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>You can't use tags to track costs for Amazon QuickSight. This isn't
    # 				possible because you can't tag the resources that Amazon QuickSight costs are based
    # 				on, for example Amazon QuickSight storage capacity (SPICE), number of users, type
    # 				of users, and usage metrics.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Amazon QuickSight doesn't currently support the tag editor for Resource Groups.</p>
    # 				        </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the resource.</p>
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
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
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

    # <p>Removes a tag or tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the key-value pairs for the resource tag or tags assigned to the resource.</p>
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
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
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

    # <p>Updates Amazon QuickSight customizations the current Amazon Web Services Region. Currently, the only
    #             customization you can use is a theme.</p>
    #         <p>You can use customizations for your Amazon Web Services account or, if you specify a namespace, for a
    #             Amazon QuickSight namespace instead. Customizations that apply to a namespace override
    #             customizations that apply to an Amazon Web Services account. To find out which customizations apply, use
    #             the <code>DescribeAccountCustomization</code> API operation. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAccountCustomizationInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that you want to update Amazon QuickSight customizations
    #               for.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace that you want to update Amazon QuickSight customizations for.</p>
    #
    # @option params [AccountCustomization] :account_customization
    #   <p>The Amazon QuickSight customizations you're updating in the current Amazon Web Services Region. </p>
    #
    # @return [Types::UpdateAccountCustomizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_customization(
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace',
    #     account_customization: {
    #       default_theme: 'DefaultTheme',
    #       default_email_customization_template: 'DefaultEmailCustomizationTemplate'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAccountCustomizationOutput
    #   resp.data.arn #=> String
    #   resp.data.aws_account_id #=> String
    #   resp.data.namespace #=> String
    #   resp.data.account_customization #=> Types::AccountCustomization
    #   resp.data.account_customization.default_theme #=> String
    #   resp.data.account_customization.default_email_customization_template #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def update_account_customization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAccountCustomizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAccountCustomizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAccountCustomization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateAccountCustomization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAccountCustomization,
        stubs: @stubs,
        params_class: Params::UpdateAccountCustomizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_account_customization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the Amazon QuickSight settings in your Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAccountSettingsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the Amazon QuickSight settings that you want to
    #               list.</p>
    #
    # @option params [String] :default_namespace
    #   <p>The default namespace for this Amazon Web Services account. Currently, the default is
    #                   <code>default</code>. Identity and Access Management (IAM) users that register
    #               for the first time with Amazon QuickSight provide an email that becomes associated with the
    #               default namespace.</p>
    #
    # @option params [String] :notification_email
    #   <p>The email address that you want Amazon QuickSight to send notifications to regarding your
    #               Amazon Web Services account or Amazon QuickSight subscription.</p>
    #
    # @return [Types::UpdateAccountSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_settings(
    #     aws_account_id: 'AwsAccountId', # required
    #     default_namespace: 'DefaultNamespace', # required
    #     notification_email: 'NotificationEmail'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAccountSettingsOutput
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def update_account_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAccountSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAccountSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAccountSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateAccountSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAccountSettings,
        stubs: @stubs,
        params_class: Params::UpdateAccountSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_account_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an analysis in Amazon QuickSight</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAnalysisInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the analysis that you're updating.</p>
    #
    # @option params [String] :analysis_id
    #   <p>The ID for the analysis that you're updating. This ID displays in the URL of the
    #               analysis.</p>
    #
    # @option params [String] :name
    #   <p>A descriptive name for the analysis that you're updating. This name displays for the
    #               analysis in the Amazon QuickSight console.</p>
    #
    # @option params [Parameters] :parameters
    #   <p>The parameter names and override values that you want to use. An analysis can have
    #               any parameter type, and some parameters might accept multiple values. </p>
    #
    # @option params [AnalysisSourceEntity] :source_entity
    #   <p>A source entity to use for the analysis that you're updating. This metadata structure
    #               contains details that describe a source template and one or more datasets.</p>
    #
    # @option params [String] :theme_arn
    #   <p>The Amazon Resource Name (ARN) for the theme to apply to the analysis that you're
    #               creating. To see the theme in the Amazon QuickSight console, make sure that you have access to
    #               it.</p>
    #
    # @return [Types::UpdateAnalysisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_analysis(
    #     aws_account_id: 'AwsAccountId', # required
    #     analysis_id: 'AnalysisId', # required
    #     name: 'Name', # required
    #     parameters: {
    #       string_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             'member'
    #           ] # required
    #         }
    #       ],
    #       integer_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             1
    #           ] # required
    #         }
    #       ],
    #       decimal_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             1.0
    #           ] # required
    #         }
    #       ],
    #       date_time_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             Time.now
    #           ] # required
    #         }
    #       ]
    #     },
    #     source_entity: {
    #       source_template: {
    #         data_set_references: [
    #           {
    #             data_set_placeholder: 'DataSetPlaceholder', # required
    #             data_set_arn: 'DataSetArn' # required
    #           }
    #         ], # required
    #         arn: 'Arn' # required
    #       }
    #     }, # required
    #     theme_arn: 'ThemeArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAnalysisOutput
    #   resp.data.arn #=> String
    #   resp.data.analysis_id #=> String
    #   resp.data.update_status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def update_analysis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAnalysisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAnalysisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAnalysis
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateAnalysis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAnalysis,
        stubs: @stubs,
        params_class: Params::UpdateAnalysisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_analysis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the read and write permissions for an analysis.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAnalysisPermissionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the analysis whose permissions you're
    #               updating. You must be using the Amazon Web Services account that the analysis is in.</p>
    #
    # @option params [String] :analysis_id
    #   <p>The ID of the analysis whose permissions you're updating. The ID is part of the
    #               analysis URL.</p>
    #
    # @option params [Array<ResourcePermission>] :grant_permissions
    #   <p>A structure that describes the permissions to add and the principal to add them
    #               to.</p>
    #
    # @option params [Array<ResourcePermission>] :revoke_permissions
    #   <p>A structure that describes the permissions to remove and the principal to remove them
    #               from.</p>
    #
    # @return [Types::UpdateAnalysisPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_analysis_permissions(
    #     aws_account_id: 'AwsAccountId', # required
    #     analysis_id: 'AnalysisId', # required
    #     grant_permissions: [
    #       {
    #         principal: 'Principal', # required
    #         actions: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAnalysisPermissionsOutput
    #   resp.data.analysis_arn #=> String
    #   resp.data.analysis_id #=> String
    #   resp.data.permissions #=> Array<ResourcePermission>
    #   resp.data.permissions[0] #=> Types::ResourcePermission
    #   resp.data.permissions[0].principal #=> String
    #   resp.data.permissions[0].actions #=> Array<String>
    #   resp.data.permissions[0].actions[0] #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def update_analysis_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAnalysisPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAnalysisPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAnalysisPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateAnalysisPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAnalysisPermissions,
        stubs: @stubs,
        params_class: Params::UpdateAnalysisPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_analysis_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a dashboard in an Amazon Web Services account.</p>
    #         <note>
    #             <p>Updating a Dashboard creates a new dashboard version but does not immediately publish
    #                 the new version.  You can update the published version of a dashboard by
    #                 using the <code>
    #                   <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateDashboardPublishedVersion.html">UpdateDashboardPublishedVersion</a>
    #                </code> API operation.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateDashboardInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboard that you're
    #               updating.</p>
    #
    # @option params [String] :dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    # @option params [String] :name
    #   <p>The display name of the dashboard.</p>
    #
    # @option params [DashboardSourceEntity] :source_entity
    #   <p>The entity that you are using as a source when you update the dashboard. In
    #               <code>SourceEntity</code>, you specify the type of object you're using as source. You
    #               can only update a dashboard from a template, so you use a <code>SourceTemplate</code>
    #               entity. If you need to update a dashboard from an analysis, first convert the analysis
    #               to a template by using the <code>
    #                  <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateTemplate.html">CreateTemplate</a>
    #               </code> API operation. For
    #               <code>SourceTemplate</code>, specify the Amazon Resource Name (ARN) of the source
    #               template. The <code>SourceTemplate</code> ARN can contain any Amazon Web Services account and any
    #               Amazon QuickSight-supported Amazon Web Services Region. </p>
    #           <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> to
    #               list the replacement datasets for the placeholders listed in the original. The schema in
    #               each dataset must match its placeholder. </p>
    #
    # @option params [Parameters] :parameters
    #   <p>A structure that contains the parameters of the dashboard. These are parameter
    #               overrides for a dashboard. A dashboard can have any type of parameters, and some
    #               parameters might accept multiple values.</p>
    #
    # @option params [String] :version_description
    #   <p>A description for the first version of the dashboard being created.</p>
    #
    # @option params [DashboardPublishOptions] :dashboard_publish_options
    #   <p>Options for publishing the dashboard when you create it:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>AvailabilityStatus</code> for <code>AdHocFilteringOption</code> - This
    #                       status can be either <code>ENABLED</code> or <code>DISABLED</code>. When this is
    #                       set to <code>DISABLED</code>, Amazon QuickSight disables the left filter pane on the
    #                       published dashboard, which can be used for ad hoc (one-time) filtering. This
    #                       option is <code>ENABLED</code> by default. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>AvailabilityStatus</code> for <code>ExportToCSVOption</code> - This
    #                       status can be either <code>ENABLED</code> or <code>DISABLED</code>. The visual
    #                       option to export data to .CSV format isn't enabled when this is set to
    #                       <code>DISABLED</code>. This option is <code>ENABLED</code> by default. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>VisibilityState</code> for <code>SheetControlsOption</code> - This
    #                       visibility state can be either <code>COLLAPSED</code> or <code>EXPANDED</code>.
    #                       This option is <code>COLLAPSED</code> by default. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :theme_arn
    #   <p>The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. If
    #               you add a value for this field, it overrides the value that was originally associated
    #               with the entity. The theme ARN must exist in the same Amazon Web Services account where you create the
    #               dashboard.</p>
    #
    # @return [Types::UpdateDashboardOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard(
    #     aws_account_id: 'AwsAccountId', # required
    #     dashboard_id: 'DashboardId', # required
    #     name: 'Name', # required
    #     source_entity: {
    #       source_template: {
    #         data_set_references: [
    #           {
    #             data_set_placeholder: 'DataSetPlaceholder', # required
    #             data_set_arn: 'DataSetArn' # required
    #           }
    #         ], # required
    #         arn: 'Arn' # required
    #       }
    #     }, # required
    #     parameters: {
    #       string_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             'member'
    #           ] # required
    #         }
    #       ],
    #       integer_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             1
    #           ] # required
    #         }
    #       ],
    #       decimal_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             1.0
    #           ] # required
    #         }
    #       ],
    #       date_time_parameters: [
    #         {
    #           name: 'Name', # required
    #           values: [
    #             Time.now
    #           ] # required
    #         }
    #       ]
    #     },
    #     version_description: 'VersionDescription',
    #     dashboard_publish_options: {
    #       ad_hoc_filtering_option: {
    #         availability_status: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #       },
    #       export_to_csv_option: {
    #         availability_status: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #       },
    #       sheet_controls_option: {
    #         visibility_state: 'EXPANDED' # accepts ["EXPANDED", "COLLAPSED"]
    #       }
    #     },
    #     theme_arn: 'ThemeArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDashboardOutput
    #   resp.data.arn #=> String
    #   resp.data.version_arn #=> String
    #   resp.data.dashboard_id #=> String
    #   resp.data.creation_status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def update_dashboard(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDashboardInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDashboardInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDashboard
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateDashboard
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDashboard,
        stubs: @stubs,
        params_class: Params::UpdateDashboardOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_dashboard
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates read and write permissions on a dashboard.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDashboardPermissionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboard whose permissions you're
    #               updating.</p>
    #
    # @option params [String] :dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    # @option params [Array<ResourcePermission>] :grant_permissions
    #   <p>The permissions that you want to grant on this resource.</p>
    #
    # @option params [Array<ResourcePermission>] :revoke_permissions
    #   <p>The permissions that you want to revoke from this resource.</p>
    #
    # @option params [Array<ResourcePermission>] :grant_link_permissions
    #   <p>Grants link permissions to all users in a defined namespace.</p>
    #
    # @option params [Array<ResourcePermission>] :revoke_link_permissions
    #   <p>Revokes link permissions from all users in a defined namespace.</p>
    #
    # @return [Types::UpdateDashboardPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard_permissions(
    #     aws_account_id: 'AwsAccountId', # required
    #     dashboard_id: 'DashboardId', # required
    #     grant_permissions: [
    #       {
    #         principal: 'Principal', # required
    #         actions: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDashboardPermissionsOutput
    #   resp.data.dashboard_arn #=> String
    #   resp.data.dashboard_id #=> String
    #   resp.data.permissions #=> Array<ResourcePermission>
    #   resp.data.permissions[0] #=> Types::ResourcePermission
    #   resp.data.permissions[0].principal #=> String
    #   resp.data.permissions[0].actions #=> Array<String>
    #   resp.data.permissions[0].actions[0] #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #   resp.data.link_sharing_configuration #=> Types::LinkSharingConfiguration
    #   resp.data.link_sharing_configuration.permissions #=> Array<ResourcePermission>
    #
    def update_dashboard_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDashboardPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDashboardPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDashboardPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateDashboardPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDashboardPermissions,
        stubs: @stubs,
        params_class: Params::UpdateDashboardPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_dashboard_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the published version of a dashboard.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDashboardPublishedVersionInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the dashboard that you're
    #               updating.</p>
    #
    # @option params [String] :dashboard_id
    #   <p>The ID for the dashboard.</p>
    #
    # @option params [Integer] :version_number
    #   <p>The version number of the dashboard.</p>
    #
    # @return [Types::UpdateDashboardPublishedVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard_published_version(
    #     aws_account_id: 'AwsAccountId', # required
    #     dashboard_id: 'DashboardId', # required
    #     version_number: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDashboardPublishedVersionOutput
    #   resp.data.dashboard_id #=> String
    #   resp.data.dashboard_arn #=> String
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def update_dashboard_published_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDashboardPublishedVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDashboardPublishedVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDashboardPublishedVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateDashboardPublishedVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDashboardPublishedVersion,
        stubs: @stubs,
        params_class: Params::UpdateDashboardPublishedVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_dashboard_published_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a dataset. This operation doesn't support datasets that include uploaded files as a source.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDataSetInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :data_set_id
    #   <p>The ID for the dataset that you want to update. This ID is unique per Amazon Web Services Region for each
    #   			Amazon Web Services account.</p>
    #
    # @option params [String] :name
    #   <p>The display name for the dataset.</p>
    #
    # @option params [Hash<String, PhysicalTable>] :physical_table_map
    #   <p>Declares the physical tables that are available in the underlying data sources.</p>
    #
    # @option params [Hash<String, LogicalTable>] :logical_table_map
    #   <p>Configures the combination and transformation of the data from the physical tables.</p>
    #
    # @option params [String] :import_mode
    #   <p>Indicates whether you want to import the data into SPICE.</p>
    #
    # @option params [Array<ColumnGroup>] :column_groups
    #   <p>Groupings of columns that work together in certain Amazon QuickSight features. Currently, only geospatial hierarchy is supported.</p>
    #
    # @option params [Hash<String, FieldFolder>] :field_folders
    #   <p>The folder that contains fields and nested subfolders for your dataset.</p>
    #
    # @option params [RowLevelPermissionDataSet] :row_level_permission_data_set
    #   <p>The row-level security configuration for the data you want to create.</p>
    #
    # @option params [RowLevelPermissionTagConfiguration] :row_level_permission_tag_configuration
    #   <p>The configuration of tags on a dataset to set row-level security. Row-level security tags are currently supported for anonymous embedding only.</p>
    #
    # @option params [Array<ColumnLevelPermissionRule>] :column_level_permission_rules
    #   <p>A set of one or more definitions of a <code>
    #                  <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ColumnLevelPermissionRule.html">ColumnLevelPermissionRule</a>
    #               </code>.</p>
    #
    # @option params [DataSetUsageConfiguration] :data_set_usage_configuration
    #   <p>The usage configuration to apply to child datasets that reference this dataset as a source.</p>
    #
    # @return [Types::UpdateDataSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_set(
    #     aws_account_id: 'AwsAccountId', # required
    #     data_set_id: 'DataSetId', # required
    #     name: 'Name', # required
    #     physical_table_map: {
    #       'key' => {
    #         # One of:
    #         relational_table: {
    #           data_source_arn: 'DataSourceArn', # required
    #           catalog: 'Catalog',
    #           schema: 'Schema',
    #           name: 'Name', # required
    #           input_columns: [
    #             {
    #               name: 'Name', # required
    #               type: 'STRING' # required - accepts ["STRING", "INTEGER", "DECIMAL", "DATETIME", "BIT", "BOOLEAN", "JSON"]
    #             }
    #           ] # required
    #         },
    #         custom_sql: {
    #           data_source_arn: 'DataSourceArn', # required
    #           name: 'Name', # required
    #           sql_query: 'SqlQuery', # required
    #         },
    #         s3_source: {
    #           data_source_arn: 'DataSourceArn', # required
    #           upload_settings: {
    #             format: 'CSV', # accepts ["CSV", "TSV", "CLF", "ELF", "XLSX", "JSON"]
    #             start_from_row: 1,
    #             contains_header: false,
    #             text_qualifier: 'DOUBLE_QUOTE', # accepts ["DOUBLE_QUOTE", "SINGLE_QUOTE"]
    #             delimiter: 'Delimiter'
    #           },
    #         }
    #       }
    #     }, # required
    #     logical_table_map: {
    #       'key' => {
    #         alias: 'Alias', # required
    #         data_transforms: [
    #           {
    #             # One of:
    #             project_operation: {
    #               projected_columns: [
    #                 'member'
    #               ] # required
    #             },
    #             filter_operation: {
    #               condition_expression: 'ConditionExpression' # required
    #             },
    #             create_columns_operation: {
    #               columns: [
    #                 {
    #                   column_name: 'ColumnName', # required
    #                   column_id: 'ColumnId', # required
    #                   expression: 'Expression' # required
    #                 }
    #               ] # required
    #             },
    #             rename_column_operation: {
    #               column_name: 'ColumnName', # required
    #               new_column_name: 'NewColumnName' # required
    #             },
    #             cast_column_type_operation: {
    #               column_name: 'ColumnName', # required
    #               new_column_type: 'STRING', # required - accepts ["STRING", "INTEGER", "DECIMAL", "DATETIME"]
    #               format: 'Format'
    #             },
    #             tag_column_operation: {
    #               column_name: 'ColumnName', # required
    #               tags: [
    #                 {
    #                   column_geographic_role: 'COUNTRY', # accepts ["COUNTRY", "STATE", "COUNTY", "CITY", "POSTCODE", "LONGITUDE", "LATITUDE"]
    #                   column_description: {
    #                     text: 'Text'
    #                   }
    #                 }
    #               ] # required
    #             },
    #             untag_column_operation: {
    #               column_name: 'ColumnName', # required
    #               tag_names: [
    #                 'COLUMN_GEOGRAPHIC_ROLE' # accepts ["COLUMN_GEOGRAPHIC_ROLE", "COLUMN_DESCRIPTION"]
    #               ] # required
    #             }
    #           }
    #         ],
    #         source: {
    #           join_instruction: {
    #             left_operand: 'LeftOperand', # required
    #             right_operand: 'RightOperand', # required
    #             left_join_key_properties: {
    #               unique_key: false
    #             },
    #             type: 'INNER', # required - accepts ["INNER", "OUTER", "LEFT", "RIGHT"]
    #             on_clause: 'OnClause' # required
    #           },
    #           physical_table_id: 'PhysicalTableId',
    #           data_set_arn: 'DataSetArn'
    #         } # required
    #       }
    #     },
    #     import_mode: 'SPICE', # required - accepts ["SPICE", "DIRECT_QUERY"]
    #     column_groups: [
    #       {
    #         geo_spatial_column_group: {
    #           name: 'Name', # required
    #           country_code: 'US', # required - accepts ["US"]
    #           columns: [
    #             'member'
    #           ] # required
    #         }
    #       }
    #     ],
    #     field_folders: {
    #       'key' => {
    #         description: 'description',
    #         columns: [
    #           'member'
    #         ]
    #       }
    #     },
    #     row_level_permission_data_set: {
    #       namespace: 'Namespace',
    #       arn: 'Arn', # required
    #       permission_policy: 'GRANT_ACCESS', # required - accepts ["GRANT_ACCESS", "DENY_ACCESS"]
    #       format_version: 'VERSION_1', # accepts ["VERSION_1", "VERSION_2"]
    #       status: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #     },
    #     row_level_permission_tag_configuration: {
    #       status: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #       tag_rules: [
    #         {
    #           tag_key: 'TagKey', # required
    #           column_name: 'ColumnName', # required
    #           tag_multi_value_delimiter: 'TagMultiValueDelimiter',
    #           match_all_value: 'MatchAllValue'
    #         }
    #       ] # required
    #     },
    #     column_level_permission_rules: [
    #       {
    #         principals: [
    #           'member'
    #         ],
    #         column_names: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     data_set_usage_configuration: {
    #       disable_use_as_direct_query_source: false,
    #       disable_use_as_imported_source: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDataSetOutput
    #   resp.data.arn #=> String
    #   resp.data.data_set_id #=> String
    #   resp.data.ingestion_arn #=> String
    #   resp.data.ingestion_id #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def update_data_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDataSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDataSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDataSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateDataSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDataSet,
        stubs: @stubs,
        params_class: Params::UpdateDataSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_data_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the permissions on a dataset.</p>
    # 		       <p>The permissions resource is <code>arn:aws:quicksight:region:aws-account-id:dataset/data-set-id</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDataSetPermissionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :data_set_id
    #   <p>The ID for the dataset whose permissions you want to update. This ID is unique per
    #   			Amazon Web Services Region for each Amazon Web Services account.</p>
    #
    # @option params [Array<ResourcePermission>] :grant_permissions
    #   <p>The resource permissions that you want to grant to the dataset.</p>
    #
    # @option params [Array<ResourcePermission>] :revoke_permissions
    #   <p>The resource permissions that you want to revoke from the dataset.</p>
    #
    # @return [Types::UpdateDataSetPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_set_permissions(
    #     aws_account_id: 'AwsAccountId', # required
    #     data_set_id: 'DataSetId', # required
    #     grant_permissions: [
    #       {
    #         principal: 'Principal', # required
    #         actions: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDataSetPermissionsOutput
    #   resp.data.data_set_arn #=> String
    #   resp.data.data_set_id #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def update_data_set_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDataSetPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDataSetPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDataSetPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateDataSetPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDataSetPermissions,
        stubs: @stubs,
        params_class: Params::UpdateDataSetPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_data_set_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a data source.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDataSourceInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account. </p>
    #
    # @option params [String] :name
    #   <p>A display name for the data source.</p>
    #
    # @option params [DataSourceParameters] :data_source_parameters
    #   <p>The parameters that Amazon QuickSight uses to connect to your underlying source.</p>
    #
    # @option params [DataSourceCredentials] :credentials
    #   <p>The credentials that Amazon QuickSight that uses to connect to your underlying source. Currently,
    #   			only credentials based on user name and password are supported.</p>
    #
    # @option params [VpcConnectionProperties] :vpc_connection_properties
    #   <p>Use this parameter only when you want Amazon QuickSight to use a VPC connection when connecting to
    #   			your underlying source.</p>
    #
    # @option params [SslProperties] :ssl_properties
    #   <p>Secure Socket Layer (SSL) properties that apply when Amazon QuickSight connects to your underlying
    #   			source.</p>
    #
    # @return [Types::UpdateDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source(
    #     aws_account_id: 'AwsAccountId', # required
    #     data_source_id: 'DataSourceId', # required
    #     name: 'Name', # required
    #     data_source_parameters: {
    #       # One of:
    #       amazon_elasticsearch_parameters: {
    #         domain: 'Domain' # required
    #       },
    #       athena_parameters: {
    #         work_group: 'WorkGroup'
    #       },
    #       aurora_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       aurora_postgre_sql_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       aws_iot_analytics_parameters: {
    #         data_set_name: 'DataSetName' # required
    #       },
    #       jira_parameters: {
    #         site_base_url: 'SiteBaseUrl' # required
    #       },
    #       maria_db_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       my_sql_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       oracle_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       postgre_sql_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       presto_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         catalog: 'Catalog' # required
    #       },
    #       rds_parameters: {
    #         instance_id: 'InstanceId', # required
    #         database: 'Database' # required
    #       },
    #       redshift_parameters: {
    #         host: 'Host',
    #         port: 1,
    #         database: 'Database', # required
    #         cluster_id: 'ClusterId'
    #       },
    #       s3_parameters: {
    #         manifest_file_location: {
    #           bucket: 'Bucket', # required
    #           key: 'Key' # required
    #         } # required
    #       },
    #       service_now_parameters: {
    #         site_base_url: 'SiteBaseUrl' # required
    #       },
    #       snowflake_parameters: {
    #         host: 'Host', # required
    #         database: 'Database', # required
    #         warehouse: 'Warehouse' # required
    #       },
    #       spark_parameters: {
    #         host: 'Host', # required
    #         port: 1 # required
    #       },
    #       sql_server_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       teradata_parameters: {
    #         host: 'Host', # required
    #         port: 1, # required
    #         database: 'Database' # required
    #       },
    #       twitter_parameters: {
    #         query: 'Query', # required
    #         max_rows: 1 # required
    #       },
    #       amazon_open_search_parameters: {
    #         domain: 'Domain' # required
    #       },
    #       exasol_parameters: {
    #         host: 'Host', # required
    #         port: 1 # required
    #       }
    #     },
    #     credentials: {
    #       credential_pair: {
    #         username: 'Username', # required
    #         password: 'Password', # required
    #       },
    #       copy_source_arn: 'CopySourceArn'
    #     },
    #     vpc_connection_properties: {
    #       vpc_connection_arn: 'VpcConnectionArn' # required
    #     },
    #     ssl_properties: {
    #       disable_ssl: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDataSourceOutput
    #   resp.data.arn #=> String
    #   resp.data.data_source_id #=> String
    #   resp.data.update_status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def update_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDataSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDataSource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDataSource,
        stubs: @stubs,
        params_class: Params::UpdateDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the permissions to a data source.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDataSourcePermissionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :data_source_id
    #   <p>The ID of the data source. This ID is unique per Amazon Web Services Region for each Amazon Web Services account. </p>
    #
    # @option params [Array<ResourcePermission>] :grant_permissions
    #   <p>A list of resource permissions that you want to grant on the data source.</p>
    #
    # @option params [Array<ResourcePermission>] :revoke_permissions
    #   <p>A list of resource permissions that you want to revoke on the data source.</p>
    #
    # @return [Types::UpdateDataSourcePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source_permissions(
    #     aws_account_id: 'AwsAccountId', # required
    #     data_source_id: 'DataSourceId', # required
    #     grant_permissions: [
    #       {
    #         principal: 'Principal', # required
    #         actions: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDataSourcePermissionsOutput
    #   resp.data.data_source_arn #=> String
    #   resp.data.data_source_id #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def update_data_source_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDataSourcePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDataSourcePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDataSourcePermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateDataSourcePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDataSourcePermissions,
        stubs: @stubs,
        params_class: Params::UpdateDataSourcePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_data_source_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the name of a folder.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFolderInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder to update.</p>
    #
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    #
    # @option params [String] :name
    #   <p>The name of the folder.</p>
    #
    # @return [Types::UpdateFolderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_folder(
    #     aws_account_id: 'AwsAccountId', # required
    #     folder_id: 'FolderId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFolderOutput
    #   resp.data.status #=> Integer
    #   resp.data.arn #=> String
    #   resp.data.folder_id #=> String
    #   resp.data.request_id #=> String
    #
    def update_folder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFolderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFolderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFolder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateFolder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFolder,
        stubs: @stubs,
        params_class: Params::UpdateFolderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_folder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates permissions of a folder.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFolderPermissionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that contains the folder to update.</p>
    #
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    #
    # @option params [Array<ResourcePermission>] :grant_permissions
    #   <p>The permissions that you want to grant on a resource.</p>
    #
    # @option params [Array<ResourcePermission>] :revoke_permissions
    #   <p>The permissions that you want to revoke from a resource.</p>
    #
    # @return [Types::UpdateFolderPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_folder_permissions(
    #     aws_account_id: 'AwsAccountId', # required
    #     folder_id: 'FolderId', # required
    #     grant_permissions: [
    #       {
    #         principal: 'Principal', # required
    #         actions: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFolderPermissionsOutput
    #   resp.data.status #=> Integer
    #   resp.data.arn #=> String
    #   resp.data.folder_id #=> String
    #   resp.data.permissions #=> Array<ResourcePermission>
    #   resp.data.permissions[0] #=> Types::ResourcePermission
    #   resp.data.permissions[0].principal #=> String
    #   resp.data.permissions[0].actions #=> Array<String>
    #   resp.data.permissions[0].actions[0] #=> String
    #   resp.data.request_id #=> String
    #
    def update_folder_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFolderPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFolderPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFolderPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateFolderPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFolderPermissions,
        stubs: @stubs,
        params_class: Params::UpdateFolderPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_folder_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes a group description. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the group that you want to update.</p>
    #
    # @option params [String] :description
    #   <p>The description for the group that you want to update.</p>
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the group is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace of the group that you want to update.</p>
    #
    # @return [Types::UpdateGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group(
    #     group_name: 'GroupName', # required
    #     description: 'Description',
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGroupOutput
    #   resp.data.group #=> Types::Group
    #   resp.data.group.arn #=> String
    #   resp.data.group.group_name #=> String
    #   resp.data.group.description #=> String
    #   resp.data.group.principal_id #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def update_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
        data_parser: Parsers::UpdateGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGroup,
        stubs: @stubs,
        params_class: Params::UpdateGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing IAM policy assignment. This operation updates only the optional
    # 			parameter or parameters that are specified in the request.
    # 		    This overwrites all of the users included in <code>Identities</code>.
    # 		</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIAMPolicyAssignmentInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the IAM policy assignment. </p>
    #
    # @option params [String] :assignment_name
    #   <p>The name of the assignment, also called a rule. This name must be unique within an Amazon Web Services account.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace of the assignment.</p>
    #
    # @option params [String] :assignment_status
    #   <p>The status of the assignment. Possible values are as follows:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - Anything specified in this assignment is used when creating the data
    #   				source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - This assignment isn't used when creating the data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DRAFT</code> - This assignment is an unfinished draft and isn't used when creating the
    #   				data source.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :policy_arn
    #   <p>The ARN for the IAM policy to apply to the Amazon QuickSight users and groups
    #   			specified in this assignment.</p>
    #
    # @option params [Hash<String, Array<String>>] :identities
    #   <p>The Amazon QuickSight users, groups, or both that you want to assign the policy to.</p>
    #
    # @return [Types::UpdateIAMPolicyAssignmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_iam_policy_assignment(
    #     aws_account_id: 'AwsAccountId', # required
    #     assignment_name: 'AssignmentName', # required
    #     namespace: 'Namespace', # required
    #     assignment_status: 'ENABLED', # accepts ["ENABLED", "DRAFT", "DISABLED"]
    #     policy_arn: 'PolicyArn',
    #     identities: {
    #       'key' => [
    #         'member'
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIAMPolicyAssignmentOutput
    #   resp.data.assignment_name #=> String
    #   resp.data.assignment_id #=> String
    #   resp.data.policy_arn #=> String
    #   resp.data.identities #=> Hash<String, Array<String>>
    #   resp.data.identities['key'] #=> Array<String>
    #   resp.data.identities['key'][0] #=> String
    #   resp.data.assignment_status #=> String, one of ["ENABLED", "DRAFT", "DISABLED"]
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def update_iam_policy_assignment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateIAMPolicyAssignmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateIAMPolicyAssignmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateIAMPolicyAssignment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConcurrentUpdatingException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateIAMPolicyAssignment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateIAMPolicyAssignment,
        stubs: @stubs,
        params_class: Params::UpdateIAMPolicyAssignmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_iam_policy_assignment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the content and status of IP rules. To use this operation, you need to provide the entire map of rules. You can use the <code>DescribeIpRestriction</code> operation to get the current rule map.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIpRestrictionInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the IP rules.</p>
    #
    # @option params [Hash<String, String>] :ip_restriction_rule_map
    #   <p>A map that describes the updated IP rules with CIDR ranges and descriptions.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>A value that specifies whether IP rules are turned on.</p>
    #
    # @return [Types::UpdateIpRestrictionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ip_restriction(
    #     aws_account_id: 'AwsAccountId', # required
    #     ip_restriction_rule_map: {
    #       'key' => 'value'
    #     },
    #     enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIpRestrictionOutput
    #   resp.data.aws_account_id #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def update_ip_restriction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateIpRestrictionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateIpRestrictionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateIpRestriction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateIpRestriction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateIpRestriction,
        stubs: @stubs,
        params_class: Params::UpdateIpRestrictionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_ip_restriction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use the UpdatePublicSharingSettings operation to enable or disable the public sharing settings of an Amazon QuickSight dashboard.</p>
    #          <p>To use this operation, enable session capacity pricing on your Amazon QuickSight account.</p>
    #          <p>Before you can enable public sharing on your account, you need to allow public sharing permissions to an administrative user in the IAM console. For more information on using IAM with Amazon QuickSight, see <a href="https://docs.aws.amazon.com/quicksight/latest/user/security_iam_service-with-iam.html">Using Amazon QuickSight with IAM</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePublicSharingSettingsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID associated with your Amazon QuickSight subscription.</p>
    #
    # @option params [Boolean] :public_sharing_enabled
    #   <p>A boolean that indicates whether or not public sharing is enabled on a Amazon QuickSight account.</p>
    #
    # @return [Types::UpdatePublicSharingSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_public_sharing_settings(
    #     aws_account_id: 'AwsAccountId', # required
    #     public_sharing_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePublicSharingSettingsOutput
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def update_public_sharing_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePublicSharingSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePublicSharingSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePublicSharingSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException, Errors::UnsupportedPricingPlanException]),
        data_parser: Parsers::UpdatePublicSharingSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePublicSharingSettings,
        stubs: @stubs,
        params_class: Params::UpdatePublicSharingSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_public_sharing_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a template from an existing Amazon QuickSight analysis or another template.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTemplateInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template that you're updating.</p>
    #
    # @option params [String] :template_id
    #   <p>The ID for the template.</p>
    #
    # @option params [TemplateSourceEntity] :source_entity
    #   <p>The entity that you are using as a source when you update the template. In
    #   			<code>SourceEntity</code>, you specify the type of object you're using as source:
    #   			<code>SourceTemplate</code> for a template or <code>SourceAnalysis</code> for an
    #   			analysis. Both of these require an Amazon Resource Name (ARN). For
    #   			<code>SourceTemplate</code>, specify the ARN of the source template. For
    #   			<code>SourceAnalysis</code>, specify the ARN of the source analysis. The <code>SourceTemplate</code>
    #   			ARN can contain any Amazon Web Services account and any Amazon QuickSight-supported Amazon Web Services Region;. </p>
    #   		       <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> or
    #   			<code>SourceAnalysis</code> to list the replacement datasets for the placeholders listed
    #   			in the original. The schema in each dataset must match its placeholder. </p>
    #
    # @option params [String] :version_description
    #   <p>A description of the current template version that is being updated. Every time you call
    #   				<code>UpdateTemplate</code>, you create a new version of the template. Each version
    #   			of the template maintains a description of the version in the
    #   				<code>VersionDescription</code> field.</p>
    #
    # @option params [String] :name
    #   <p>The name for the template.</p>
    #
    # @return [Types::UpdateTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template(
    #     aws_account_id: 'AwsAccountId', # required
    #     template_id: 'TemplateId', # required
    #     source_entity: {
    #       source_analysis: {
    #         arn: 'Arn', # required
    #         data_set_references: [
    #           {
    #             data_set_placeholder: 'DataSetPlaceholder', # required
    #             data_set_arn: 'DataSetArn' # required
    #           }
    #         ] # required
    #       },
    #       source_template: {
    #         arn: 'Arn' # required
    #       }
    #     }, # required
    #     version_description: 'VersionDescription',
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTemplateOutput
    #   resp.data.template_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.version_arn #=> String
    #   resp.data.creation_status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def update_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTemplate,
        stubs: @stubs,
        params_class: Params::UpdateTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the template alias of a template.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTemplateAliasInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template alias that you're updating.</p>
    #
    # @option params [String] :template_id
    #   <p>The ID for the template.</p>
    #
    # @option params [String] :alias_name
    #   <p>The alias of the template that you want to update. If you name a specific alias, you update
    #   			the version that the alias points to. You can specify the latest version of the template
    #   			by providing the keyword <code>$LATEST</code> in the <code>AliasName</code> parameter.
    #   			The keyword <code>$PUBLISHED</code> doesn't apply to templates.</p>
    #
    # @option params [Integer] :template_version_number
    #   <p>The version number of the template.</p>
    #
    # @return [Types::UpdateTemplateAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template_alias(
    #     aws_account_id: 'AwsAccountId', # required
    #     template_id: 'TemplateId', # required
    #     alias_name: 'AliasName', # required
    #     template_version_number: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTemplateAliasOutput
    #   resp.data.template_alias #=> Types::TemplateAlias
    #   resp.data.template_alias.alias_name #=> String
    #   resp.data.template_alias.arn #=> String
    #   resp.data.template_alias.template_version_number #=> Integer
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def update_template_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTemplateAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTemplateAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTemplateAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ThrottlingException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateTemplateAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTemplateAlias,
        stubs: @stubs,
        params_class: Params::UpdateTemplateAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_template_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the resource permissions for a template.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTemplatePermissionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the template.</p>
    #
    # @option params [String] :template_id
    #   <p>The ID for the template.</p>
    #
    # @option params [Array<ResourcePermission>] :grant_permissions
    #   <p>A list of resource permissions to be granted on the template. </p>
    #
    # @option params [Array<ResourcePermission>] :revoke_permissions
    #   <p>A list of resource permissions to be revoked from the template. </p>
    #
    # @return [Types::UpdateTemplatePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template_permissions(
    #     aws_account_id: 'AwsAccountId', # required
    #     template_id: 'TemplateId', # required
    #     grant_permissions: [
    #       {
    #         principal: 'Principal', # required
    #         actions: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTemplatePermissionsOutput
    #   resp.data.template_id #=> String
    #   resp.data.template_arn #=> String
    #   resp.data.permissions #=> Array<ResourcePermission>
    #   resp.data.permissions[0] #=> Types::ResourcePermission
    #   resp.data.permissions[0].principal #=> String
    #   resp.data.permissions[0].actions #=> Array<String>
    #   resp.data.permissions[0].actions[0] #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def update_template_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTemplatePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTemplatePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTemplatePermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateTemplatePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTemplatePermissions,
        stubs: @stubs,
        params_class: Params::UpdateTemplatePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_template_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a theme.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateThemeInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme that you're updating.</p>
    #
    # @option params [String] :theme_id
    #   <p>The ID for the theme.</p>
    #
    # @option params [String] :name
    #   <p>The name for the theme.</p>
    #
    # @option params [String] :base_theme_id
    #   <p>The theme ID, defined by Amazon QuickSight, that a custom theme inherits from.
    #   		All themes initially inherit from a default Amazon QuickSight theme.</p>
    #
    # @option params [String] :version_description
    #   <p>A description of the theme version that you're updating Every time that you call
    #   				<code>UpdateTheme</code>, you create a new version of the theme. Each version of the
    #   			theme maintains a description of the version in <code>VersionDescription</code>.</p>
    #
    # @option params [ThemeConfiguration] :configuration
    #   <p>The theme configuration, which contains the theme display properties.</p>
    #
    # @return [Types::UpdateThemeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_theme(
    #     aws_account_id: 'AwsAccountId', # required
    #     theme_id: 'ThemeId', # required
    #     name: 'Name',
    #     base_theme_id: 'BaseThemeId', # required
    #     version_description: 'VersionDescription',
    #     configuration: {
    #       data_color_palette: {
    #         colors: [
    #           'member'
    #         ],
    #         empty_fill_color: 'EmptyFillColor'
    #       },
    #       ui_color_palette: {
    #         primary_foreground: 'PrimaryForeground',
    #         primary_background: 'PrimaryBackground',
    #         secondary_foreground: 'SecondaryForeground',
    #         secondary_background: 'SecondaryBackground',
    #         accent: 'Accent',
    #         accent_foreground: 'AccentForeground',
    #         danger: 'Danger',
    #         danger_foreground: 'DangerForeground',
    #         warning: 'Warning',
    #         warning_foreground: 'WarningForeground',
    #         success: 'Success',
    #         success_foreground: 'SuccessForeground',
    #         dimension: 'Dimension',
    #         dimension_foreground: 'DimensionForeground',
    #         measure: 'Measure',
    #         measure_foreground: 'MeasureForeground'
    #       },
    #       sheet: {
    #         tile: {
    #           border: {
    #             show: false
    #           }
    #         },
    #         tile_layout: {
    #           gutter: {
    #             show: false
    #           },
    #           margin: {
    #             show: false
    #           }
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateThemeOutput
    #   resp.data.theme_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.version_arn #=> String
    #   resp.data.creation_status #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_SUCCESSFUL", "CREATION_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_SUCCESSFUL", "UPDATE_FAILED", "DELETED"]
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def update_theme(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateThemeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateThemeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTheme
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::LimitExceededException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateTheme
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTheme,
        stubs: @stubs,
        params_class: Params::UpdateThemeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_theme
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an alias of a theme.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateThemeAliasInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme alias that you're updating.</p>
    #
    # @option params [String] :theme_id
    #   <p>The ID for the theme.</p>
    #
    # @option params [String] :alias_name
    #   <p>The name of the theme alias that you want to update.</p>
    #
    # @option params [Integer] :theme_version_number
    #   <p>The version number of the theme that the alias should reference.</p>
    #
    # @return [Types::UpdateThemeAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_theme_alias(
    #     aws_account_id: 'AwsAccountId', # required
    #     theme_id: 'ThemeId', # required
    #     alias_name: 'AliasName', # required
    #     theme_version_number: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateThemeAliasOutput
    #   resp.data.theme_alias #=> Types::ThemeAlias
    #   resp.data.theme_alias.arn #=> String
    #   resp.data.theme_alias.alias_name #=> String
    #   resp.data.theme_alias.theme_version_number #=> Integer
    #   resp.data.status #=> Integer
    #   resp.data.request_id #=> String
    #
    def update_theme_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateThemeAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateThemeAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateThemeAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::ConflictException, Errors::ResourceExistsException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateThemeAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateThemeAlias,
        stubs: @stubs,
        params_class: Params::UpdateThemeAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_theme_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the resource permissions for a theme. Permissions apply to the action to grant or
    # 			revoke permissions on, for example <code>"quicksight:DescribeTheme"</code>.</p>
    # 		       <p>Theme permissions apply in groupings. Valid groupings include the following for the three
    # 			levels of permissions, which are user, owner, or no permissions: </p>
    # 			      <ul>
    #             <li>
    #                <p>User</p>
    # 					          <ul>
    #                   <li>
    #                      <p>
    #                         <code>"quicksight:DescribeTheme"</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"quicksight:DescribeThemeAlias"</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"quicksight:ListThemeAliases"</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"quicksight:ListThemeVersions"</code>
    #                      </p>
    #                   </li>
    #                </ul>
    # 				        </li>
    #             <li>
    #                <p>Owner</p>
    # 					          <ul>
    #                   <li>
    #                      <p>
    #                         <code>"quicksight:DescribeTheme"</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"quicksight:DescribeThemeAlias"</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"quicksight:ListThemeAliases"</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"quicksight:ListThemeVersions"</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"quicksight:DeleteTheme"</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"quicksight:UpdateTheme"</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"quicksight:CreateThemeAlias"</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"quicksight:DeleteThemeAlias"</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"quicksight:UpdateThemeAlias"</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"quicksight:UpdateThemePermissions"</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>"quicksight:DescribeThemePermissions"</code>
    #                      </p>
    #                   </li>
    #                </ul>
    # 				        </li>
    #             <li>
    #                <p>To specify no permissions, omit the permissions list.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UpdateThemePermissionsInput}.
    #
    # @option params [String] :aws_account_id
    #   <p>The ID of the Amazon Web Services account that contains the theme.</p>
    #
    # @option params [String] :theme_id
    #   <p>The ID for the theme.</p>
    #
    # @option params [Array<ResourcePermission>] :grant_permissions
    #   <p>A list of resource permissions to be granted for the theme.</p>
    #
    # @option params [Array<ResourcePermission>] :revoke_permissions
    #   <p>A list of resource permissions to be revoked from the theme.</p>
    #
    # @return [Types::UpdateThemePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_theme_permissions(
    #     aws_account_id: 'AwsAccountId', # required
    #     theme_id: 'ThemeId', # required
    #     grant_permissions: [
    #       {
    #         principal: 'Principal', # required
    #         actions: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateThemePermissionsOutput
    #   resp.data.theme_id #=> String
    #   resp.data.theme_arn #=> String
    #   resp.data.permissions #=> Array<ResourcePermission>
    #   resp.data.permissions[0] #=> Types::ResourcePermission
    #   resp.data.permissions[0].principal #=> String
    #   resp.data.permissions[0].actions #=> Array<String>
    #   resp.data.permissions[0].actions[0] #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
    #
    def update_theme_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateThemePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateThemePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateThemePermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UnsupportedUserEditionException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::InternalFailureException]),
        data_parser: Parsers::UpdateThemePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateThemePermissions,
        stubs: @stubs,
        params_class: Params::UpdateThemePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_theme_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an Amazon QuickSight user.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserInput}.
    #
    # @option params [String] :user_name
    #   <p>The Amazon QuickSight user name that you want to update.</p>
    #
    # @option params [String] :aws_account_id
    #   <p>The ID for the Amazon Web Services account that the user is in. Currently, you use the ID for the
    #   			Amazon Web Services account that contains your Amazon QuickSight account.</p>
    #
    # @option params [String] :namespace
    #   <p>The namespace. Currently, you should set this to <code>default</code>.</p>
    #
    # @option params [String] :email
    #   <p>The email address of the user that you want to update.</p>
    #
    # @option params [String] :role
    #   <p>The Amazon QuickSight role of the user. The role can be one of the
    #   			following default security cohorts:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>READER</code>: A user who has read-only access to dashboards.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>AUTHOR</code>: A user who can create data sources, datasets, analyses, and
    #   					dashboards.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>ADMIN</code>: A user who is an author, who can also manage Amazon QuickSight
    #   					settings.</p>
    #   			         </li>
    #            </ul>
    #   	        <p>The name of the Amazon QuickSight role is invisible to the user except for the console
    #   	        screens dealing with permissions.</p>
    #
    # @option params [String] :custom_permissions_name
    #   <p>(Enterprise edition only) The name of the custom permissions profile that you want to
    #               assign to this user. Customized permissions allows you to control a user's access by
    #               restricting access the following operations:</p>
    #           <ul>
    #               <li>
    #                   <p>Create and update data sources</p>
    #               </li>
    #               <li>
    #                   <p>Create and update datasets</p>
    #               </li>
    #               <li>
    #                   <p>Create and update email reports</p>
    #               </li>
    #               <li>
    #                   <p>Subscribe to email reports</p>
    #               </li>
    #            </ul>
    #           <p>A set of custom permissions includes any combination of these restrictions. Currently,
    #               you need to create the profile names for custom permission sets by using the Amazon QuickSight
    #               console. Then, you use the <code>RegisterUser</code> API operation to assign the named set of
    #               permissions to a Amazon QuickSight user. </p>
    #           <p>Amazon QuickSight custom permissions are applied through IAM policies. Therefore, they
    #               override the permissions typically granted by assigning Amazon QuickSight users to one of the
    #               default security cohorts in Amazon QuickSight (admin, author, reader).</p>
    #           <p>This feature is available only to Amazon QuickSight Enterprise edition subscriptions.</p>
    #
    # @option params [Boolean] :unapply_custom_permissions
    #   <p>A flag that you use to indicate that you want to remove all custom permissions
    #               from this user. Using this parameter resets the user to the state
    #               it was in before a custom permissions profile was applied. This parameter defaults to
    #               NULL and it doesn't accept any other value.</p>
    #
    # @option params [String] :external_login_federation_provider_type
    #   <p>The type of supported external login provider that provides identity to let a user federate into Amazon QuickSight with an associated Identity and Access Management(IAM) role. The type of supported external login provider can be one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COGNITO</code>: Amazon Cognito. The provider URL is cognito-identity.amazonaws.com. When choosing the <code>COGNITO</code> provider type, don’t use the "CustomFederationProviderUrl" parameter which is only needed when the external provider is custom.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_OIDC</code>: Custom OpenID Connect (OIDC) provider. When choosing <code>CUSTOM_OIDC</code> type, use the <code>CustomFederationProviderUrl</code> parameter to provide the custom OIDC provider URL.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: This clears all the previously saved external login information for a user. Use the
    #             <code>
    #                        <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeUser.html">DescribeUser</a>
    #                     </code>
    #             API operation to check the external login information.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :custom_federation_provider_url
    #   <p>The URL of the custom OpenID Connect (OIDC) provider that provides identity to let a user federate
    #            into Amazon QuickSight with an associated Identity and Access Management(IAM) role. This parameter should
    #            only be used when <code>ExternalLoginFederationProviderType</code> parameter is set to <code>CUSTOM_OIDC</code>.</p>
    #
    # @option params [String] :external_login_id
    #   <p>The identity ID for a user in the external login provider.</p>
    #
    # @return [Types::UpdateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user(
    #     user_name: 'UserName', # required
    #     aws_account_id: 'AwsAccountId', # required
    #     namespace: 'Namespace', # required
    #     email: 'Email', # required
    #     role: 'ADMIN', # required - accepts ["ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"]
    #     custom_permissions_name: 'CustomPermissionsName',
    #     unapply_custom_permissions: false,
    #     external_login_federation_provider_type: 'ExternalLoginFederationProviderType',
    #     custom_federation_provider_url: 'CustomFederationProviderUrl',
    #     external_login_id: 'ExternalLoginId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.arn #=> String
    #   resp.data.user.user_name #=> String
    #   resp.data.user.email #=> String
    #   resp.data.user.role #=> String, one of ["ADMIN", "AUTHOR", "READER", "RESTRICTED_AUTHOR", "RESTRICTED_READER"]
    #   resp.data.user.identity_type #=> String, one of ["IAM", "QUICKSIGHT"]
    #   resp.data.user.active #=> Boolean
    #   resp.data.user.principal_id #=> String
    #   resp.data.user.custom_permissions_name #=> String
    #   resp.data.user.external_login_federation_provider_type #=> String
    #   resp.data.user.external_login_federation_provider_url #=> String
    #   resp.data.user.external_login_id #=> String
    #   resp.data.request_id #=> String
    #   resp.data.status #=> Integer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InvalidParameterValueException, Errors::ResourceUnavailableException, Errors::InternalFailureException, Errors::PreconditionNotMetException]),
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
