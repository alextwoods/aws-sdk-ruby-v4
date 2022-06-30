# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::CloudSearch
  # An API client for A9SearchCloudConfigService2013
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon CloudSearch Configuration Service</fullname>
  #     <p>You use the Amazon CloudSearch configuration service to create, configure, and manage search domains.
  #       Configuration service  requests are submitted using the AWS Query protocol. AWS Query requests
  #       are HTTP or HTTPS requests submitted via HTTP GET or POST with a query parameter named Action.</p>
  #     <p>The endpoint for configuration service requests is region-specific: cloudsearch.<i>region</i>.amazonaws.com.
  #       For example, cloudsearch.us-east-1.amazonaws.com. For a current list of supported regions and endpoints,
  #       see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region" target="_blank">Regions and Endpoints</a>.</p>
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
    def initialize(config = AWS::SDK::CloudSearch::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Indexes the search suggestions. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html#configuring-suggesters">Configuring Suggesters</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::BuildSuggestersInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @return [Types::BuildSuggestersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.build_suggesters(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BuildSuggestersOutput
    #   resp.data.field_names #=> Array<String>
    #   resp.data.field_names[0] #=> String
    #
    def build_suggesters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BuildSuggestersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BuildSuggestersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BuildSuggesters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException]),
        data_parser: Parsers::BuildSuggesters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BuildSuggesters,
        stubs: @stubs,
        params_class: Params::BuildSuggestersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :build_suggesters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new search domain. For more information,
    #       see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/creating-domains.html" target="_blank">Creating a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>A name for the domain you are creating. Allowed characters are a-z (lower-case letters), 0-9, and hyphen (-). Domain names must start with a letter or number and be at least 3 and no more than 28 characters long.</p>
    #
    # @return [Types::CreateDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDomainOutput
    #   resp.data.domain_status #=> Types::DomainStatus
    #   resp.data.domain_status.domain_id #=> String
    #   resp.data.domain_status.domain_name #=> String
    #   resp.data.domain_status.arn #=> String
    #   resp.data.domain_status.created #=> Boolean
    #   resp.data.domain_status.deleted #=> Boolean
    #   resp.data.domain_status.doc_service #=> Types::ServiceEndpoint
    #   resp.data.domain_status.doc_service.endpoint #=> String
    #   resp.data.domain_status.search_service #=> Types::ServiceEndpoint
    #   resp.data.domain_status.requires_index_documents #=> Boolean
    #   resp.data.domain_status.processing #=> Boolean
    #   resp.data.domain_status.search_instance_type #=> String
    #   resp.data.domain_status.search_partition_count #=> Integer
    #   resp.data.domain_status.search_instance_count #=> Integer
    #   resp.data.domain_status.limits #=> Types::Limits
    #   resp.data.domain_status.limits.maximum_replication_count #=> Integer
    #   resp.data.domain_status.limits.maximum_partition_count #=> Integer
    #
    def create_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDomainInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::LimitExceededException, Errors::InternalException, Errors::BaseException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDomain,
        stubs: @stubs,
        params_class: Params::CreateDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures an analysis scheme that can be applied to a <code>text</code> or <code>text-array</code> field to define language-specific text processing options. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html" target="_blank">Configuring Analysis Schemes</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DefineAnalysisSchemeInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @option params [AnalysisScheme] :analysis_scheme
    #   <p>Configuration information for an analysis scheme. Each analysis scheme has a unique name and specifies the language of the text to be processed. The following options can be configured for an analysis scheme: <code>Synonyms</code>, <code>Stopwords</code>, <code>StemmingDictionary</code>, <code>JapaneseTokenizationDictionary</code> and <code>AlgorithmicStemming</code>.</p>
    #
    # @return [Types::DefineAnalysisSchemeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.define_analysis_scheme(
    #     domain_name: 'DomainName', # required
    #     analysis_scheme: {
    #       analysis_scheme_name: 'AnalysisSchemeName', # required
    #       analysis_scheme_language: 'ar', # required - accepts ["ar", "bg", "ca", "cs", "da", "de", "el", "en", "es", "eu", "fa", "fi", "fr", "ga", "gl", "he", "hi", "hu", "hy", "id", "it", "ja", "ko", "lv", "mul", "nl", "no", "pt", "ro", "ru", "sv", "th", "tr", "zh-Hans", "zh-Hant"]
    #       analysis_options: {
    #         synonyms: 'Synonyms',
    #         stopwords: 'Stopwords',
    #         stemming_dictionary: 'StemmingDictionary',
    #         japanese_tokenization_dictionary: 'JapaneseTokenizationDictionary',
    #         algorithmic_stemming: 'none' # accepts ["none", "minimal", "light", "full"]
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DefineAnalysisSchemeOutput
    #   resp.data.analysis_scheme #=> Types::AnalysisSchemeStatus
    #   resp.data.analysis_scheme.options #=> Types::AnalysisScheme
    #   resp.data.analysis_scheme.options.analysis_scheme_name #=> String
    #   resp.data.analysis_scheme.options.analysis_scheme_language #=> String, one of ["ar", "bg", "ca", "cs", "da", "de", "el", "en", "es", "eu", "fa", "fi", "fr", "ga", "gl", "he", "hi", "hu", "hy", "id", "it", "ja", "ko", "lv", "mul", "nl", "no", "pt", "ro", "ru", "sv", "th", "tr", "zh-Hans", "zh-Hant"]
    #   resp.data.analysis_scheme.options.analysis_options #=> Types::AnalysisOptions
    #   resp.data.analysis_scheme.options.analysis_options.synonyms #=> String
    #   resp.data.analysis_scheme.options.analysis_options.stopwords #=> String
    #   resp.data.analysis_scheme.options.analysis_options.stemming_dictionary #=> String
    #   resp.data.analysis_scheme.options.analysis_options.japanese_tokenization_dictionary #=> String
    #   resp.data.analysis_scheme.options.analysis_options.algorithmic_stemming #=> String, one of ["none", "minimal", "light", "full"]
    #   resp.data.analysis_scheme.status #=> Types::OptionStatus
    #   resp.data.analysis_scheme.status.creation_date #=> Time
    #   resp.data.analysis_scheme.status.update_date #=> Time
    #   resp.data.analysis_scheme.status.update_version #=> Integer
    #   resp.data.analysis_scheme.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.analysis_scheme.status.pending_deletion #=> Boolean
    #
    def define_analysis_scheme(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DefineAnalysisSchemeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DefineAnalysisSchemeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DefineAnalysisScheme
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException, Errors::InvalidTypeException]),
        data_parser: Parsers::DefineAnalysisScheme
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DefineAnalysisScheme,
        stubs: @stubs,
        params_class: Params::DefineAnalysisSchemeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :define_analysis_scheme
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures an <code><a>Expression</a></code> for the search domain. Used to create new expressions and modify existing ones.  If the expression exists, the new configuration replaces the old one. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html" target="_blank">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DefineExpressionInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @option params [Expression] :expression
    #   <p>A named expression that can be evaluated at search time. Can be used to sort the search results, define other expressions, or return computed information in the search results.  </p>
    #
    # @return [Types::DefineExpressionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.define_expression(
    #     domain_name: 'DomainName', # required
    #     expression: {
    #       expression_name: 'ExpressionName', # required
    #       expression_value: 'ExpressionValue' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DefineExpressionOutput
    #   resp.data.expression #=> Types::ExpressionStatus
    #   resp.data.expression.options #=> Types::Expression
    #   resp.data.expression.options.expression_name #=> String
    #   resp.data.expression.options.expression_value #=> String
    #   resp.data.expression.status #=> Types::OptionStatus
    #   resp.data.expression.status.creation_date #=> Time
    #   resp.data.expression.status.update_date #=> Time
    #   resp.data.expression.status.update_version #=> Integer
    #   resp.data.expression.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.expression.status.pending_deletion #=> Boolean
    #
    def define_expression(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DefineExpressionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DefineExpressionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DefineExpression
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException, Errors::InvalidTypeException]),
        data_parser: Parsers::DefineExpression
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DefineExpression,
        stubs: @stubs,
        params_class: Params::DefineExpressionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :define_expression
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures an <code><a>IndexField</a></code> for the search domain. Used to create new fields and modify existing ones. You must specify the name of the domain you are configuring and an index field configuration. The index field configuration specifies a unique name, the index field type, and the options you want to configure for the field. The options you can specify depend on the <code><a>IndexFieldType</a></code>. If the field exists, the new configuration replaces the old one. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html" target="_blank">Configuring Index Fields</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::DefineIndexFieldInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @option params [IndexField] :index_field
    #   <p>The index field and field options you want to configure. </p>
    #
    # @return [Types::DefineIndexFieldOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.define_index_field(
    #     domain_name: 'DomainName', # required
    #     index_field: {
    #       index_field_name: 'IndexFieldName', # required
    #       index_field_type: 'int', # required - accepts ["int", "double", "literal", "text", "date", "latlon", "int-array", "double-array", "literal-array", "text-array", "date-array"]
    #       int_options: {
    #         default_value: 1,
    #         source_field: 'SourceField',
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #         sort_enabled: false
    #       },
    #       double_options: {
    #         default_value: 1.0,
    #         source_field: 'SourceField',
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #         sort_enabled: false
    #       },
    #       literal_options: {
    #         default_value: 'DefaultValue',
    #         source_field: 'SourceField',
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #         sort_enabled: false
    #       },
    #       text_options: {
    #         default_value: 'DefaultValue',
    #         source_field: 'SourceField',
    #         return_enabled: false,
    #         sort_enabled: false,
    #         highlight_enabled: false,
    #         analysis_scheme: 'AnalysisScheme'
    #       },
    #       date_options: {
    #         default_value: 'DefaultValue',
    #         source_field: 'SourceField',
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #         sort_enabled: false
    #       },
    #       lat_lon_options: {
    #         default_value: 'DefaultValue',
    #         source_field: 'SourceField',
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #         sort_enabled: false
    #       },
    #       int_array_options: {
    #         default_value: 1,
    #         source_fields: 'SourceFields',
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false
    #       },
    #       double_array_options: {
    #         default_value: 1.0,
    #         source_fields: 'SourceFields',
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false
    #       },
    #       literal_array_options: {
    #         default_value: 'DefaultValue',
    #         source_fields: 'SourceFields',
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false
    #       },
    #       text_array_options: {
    #         default_value: 'DefaultValue',
    #         source_fields: 'SourceFields',
    #         return_enabled: false,
    #         highlight_enabled: false,
    #         analysis_scheme: 'AnalysisScheme'
    #       },
    #       date_array_options: {
    #         default_value: 'DefaultValue',
    #         source_fields: 'SourceFields',
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DefineIndexFieldOutput
    #   resp.data.index_field #=> Types::IndexFieldStatus
    #   resp.data.index_field.options #=> Types::IndexField
    #   resp.data.index_field.options.index_field_name #=> String
    #   resp.data.index_field.options.index_field_type #=> String, one of ["int", "double", "literal", "text", "date", "latlon", "int-array", "double-array", "literal-array", "text-array", "date-array"]
    #   resp.data.index_field.options.int_options #=> Types::IntOptions
    #   resp.data.index_field.options.int_options.default_value #=> Integer
    #   resp.data.index_field.options.int_options.source_field #=> String
    #   resp.data.index_field.options.int_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.int_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.int_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.int_options.sort_enabled #=> Boolean
    #   resp.data.index_field.options.double_options #=> Types::DoubleOptions
    #   resp.data.index_field.options.double_options.default_value #=> Float
    #   resp.data.index_field.options.double_options.source_field #=> String
    #   resp.data.index_field.options.double_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.double_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.double_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.double_options.sort_enabled #=> Boolean
    #   resp.data.index_field.options.literal_options #=> Types::LiteralOptions
    #   resp.data.index_field.options.literal_options.default_value #=> String
    #   resp.data.index_field.options.literal_options.source_field #=> String
    #   resp.data.index_field.options.literal_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.literal_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.literal_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.literal_options.sort_enabled #=> Boolean
    #   resp.data.index_field.options.text_options #=> Types::TextOptions
    #   resp.data.index_field.options.text_options.default_value #=> String
    #   resp.data.index_field.options.text_options.source_field #=> String
    #   resp.data.index_field.options.text_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.text_options.sort_enabled #=> Boolean
    #   resp.data.index_field.options.text_options.highlight_enabled #=> Boolean
    #   resp.data.index_field.options.text_options.analysis_scheme #=> String
    #   resp.data.index_field.options.date_options #=> Types::DateOptions
    #   resp.data.index_field.options.date_options.default_value #=> String
    #   resp.data.index_field.options.date_options.source_field #=> String
    #   resp.data.index_field.options.date_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.date_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.date_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.date_options.sort_enabled #=> Boolean
    #   resp.data.index_field.options.lat_lon_options #=> Types::LatLonOptions
    #   resp.data.index_field.options.lat_lon_options.default_value #=> String
    #   resp.data.index_field.options.lat_lon_options.source_field #=> String
    #   resp.data.index_field.options.lat_lon_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.lat_lon_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.lat_lon_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.lat_lon_options.sort_enabled #=> Boolean
    #   resp.data.index_field.options.int_array_options #=> Types::IntArrayOptions
    #   resp.data.index_field.options.int_array_options.default_value #=> Integer
    #   resp.data.index_field.options.int_array_options.source_fields #=> String
    #   resp.data.index_field.options.int_array_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.int_array_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.int_array_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.double_array_options #=> Types::DoubleArrayOptions
    #   resp.data.index_field.options.double_array_options.default_value #=> Float
    #   resp.data.index_field.options.double_array_options.source_fields #=> String
    #   resp.data.index_field.options.double_array_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.double_array_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.double_array_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.literal_array_options #=> Types::LiteralArrayOptions
    #   resp.data.index_field.options.literal_array_options.default_value #=> String
    #   resp.data.index_field.options.literal_array_options.source_fields #=> String
    #   resp.data.index_field.options.literal_array_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.literal_array_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.literal_array_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.text_array_options #=> Types::TextArrayOptions
    #   resp.data.index_field.options.text_array_options.default_value #=> String
    #   resp.data.index_field.options.text_array_options.source_fields #=> String
    #   resp.data.index_field.options.text_array_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.text_array_options.highlight_enabled #=> Boolean
    #   resp.data.index_field.options.text_array_options.analysis_scheme #=> String
    #   resp.data.index_field.options.date_array_options #=> Types::DateArrayOptions
    #   resp.data.index_field.options.date_array_options.default_value #=> String
    #   resp.data.index_field.options.date_array_options.source_fields #=> String
    #   resp.data.index_field.options.date_array_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.date_array_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.date_array_options.return_enabled #=> Boolean
    #   resp.data.index_field.status #=> Types::OptionStatus
    #   resp.data.index_field.status.creation_date #=> Time
    #   resp.data.index_field.status.update_date #=> Time
    #   resp.data.index_field.status.update_version #=> Integer
    #   resp.data.index_field.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.index_field.status.pending_deletion #=> Boolean
    #
    def define_index_field(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DefineIndexFieldInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DefineIndexFieldInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DefineIndexField
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException, Errors::InvalidTypeException]),
        data_parser: Parsers::DefineIndexField
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DefineIndexField,
        stubs: @stubs,
        params_class: Params::DefineIndexFieldOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :define_index_field
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures a suggester for a domain. A suggester enables you to display possible matches before users finish typing their queries. When you configure a suggester, you must specify the name of the text field you want to search for possible matches and a unique name for the suggester. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html" target="_blank">Getting Search Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DefineSuggesterInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @option params [Suggester] :suggester
    #   <p>Configuration information for a search suggester. Each suggester has a unique name and specifies the text field you want to use for suggestions. The following options can be configured for a suggester: <code>FuzzyMatching</code>, <code>SortExpression</code>. </p>
    #
    # @return [Types::DefineSuggesterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.define_suggester(
    #     domain_name: 'DomainName', # required
    #     suggester: {
    #       suggester_name: 'SuggesterName', # required
    #       document_suggester_options: {
    #         source_field: 'SourceField', # required
    #         fuzzy_matching: 'none', # accepts ["none", "low", "high"]
    #         sort_expression: 'SortExpression'
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DefineSuggesterOutput
    #   resp.data.suggester #=> Types::SuggesterStatus
    #   resp.data.suggester.options #=> Types::Suggester
    #   resp.data.suggester.options.suggester_name #=> String
    #   resp.data.suggester.options.document_suggester_options #=> Types::DocumentSuggesterOptions
    #   resp.data.suggester.options.document_suggester_options.source_field #=> String
    #   resp.data.suggester.options.document_suggester_options.fuzzy_matching #=> String, one of ["none", "low", "high"]
    #   resp.data.suggester.options.document_suggester_options.sort_expression #=> String
    #   resp.data.suggester.status #=> Types::OptionStatus
    #   resp.data.suggester.status.creation_date #=> Time
    #   resp.data.suggester.status.update_date #=> Time
    #   resp.data.suggester.status.update_version #=> Integer
    #   resp.data.suggester.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.suggester.status.pending_deletion #=> Boolean
    #
    def define_suggester(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DefineSuggesterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DefineSuggesterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DefineSuggester
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException, Errors::InvalidTypeException]),
        data_parser: Parsers::DefineSuggester
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DefineSuggester,
        stubs: @stubs,
        params_class: Params::DefineSuggesterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :define_suggester
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an analysis scheme. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html" target="_blank">Configuring Analysis Schemes</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAnalysisSchemeInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @option params [String] :analysis_scheme_name
    #   <p>The name of the analysis scheme you want to delete.</p>
    #
    # @return [Types::DeleteAnalysisSchemeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_analysis_scheme(
    #     domain_name: 'DomainName', # required
    #     analysis_scheme_name: 'AnalysisSchemeName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAnalysisSchemeOutput
    #   resp.data.analysis_scheme #=> Types::AnalysisSchemeStatus
    #   resp.data.analysis_scheme.options #=> Types::AnalysisScheme
    #   resp.data.analysis_scheme.options.analysis_scheme_name #=> String
    #   resp.data.analysis_scheme.options.analysis_scheme_language #=> String, one of ["ar", "bg", "ca", "cs", "da", "de", "el", "en", "es", "eu", "fa", "fi", "fr", "ga", "gl", "he", "hi", "hu", "hy", "id", "it", "ja", "ko", "lv", "mul", "nl", "no", "pt", "ro", "ru", "sv", "th", "tr", "zh-Hans", "zh-Hant"]
    #   resp.data.analysis_scheme.options.analysis_options #=> Types::AnalysisOptions
    #   resp.data.analysis_scheme.options.analysis_options.synonyms #=> String
    #   resp.data.analysis_scheme.options.analysis_options.stopwords #=> String
    #   resp.data.analysis_scheme.options.analysis_options.stemming_dictionary #=> String
    #   resp.data.analysis_scheme.options.analysis_options.japanese_tokenization_dictionary #=> String
    #   resp.data.analysis_scheme.options.analysis_options.algorithmic_stemming #=> String, one of ["none", "minimal", "light", "full"]
    #   resp.data.analysis_scheme.status #=> Types::OptionStatus
    #   resp.data.analysis_scheme.status.creation_date #=> Time
    #   resp.data.analysis_scheme.status.update_date #=> Time
    #   resp.data.analysis_scheme.status.update_version #=> Integer
    #   resp.data.analysis_scheme.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.analysis_scheme.status.pending_deletion #=> Boolean
    #
    def delete_analysis_scheme(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAnalysisSchemeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAnalysisSchemeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAnalysisScheme
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException, Errors::InvalidTypeException]),
        data_parser: Parsers::DeleteAnalysisScheme
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAnalysisScheme,
        stubs: @stubs,
        params_class: Params::DeleteAnalysisSchemeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_analysis_scheme
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Permanently deletes a search domain and all of its data. Once a domain has been deleted, it cannot be recovered. For more information,
    #       see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/deleting-domains.html" target="_blank">Deleting a Search  Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDomainInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to permanently delete.</p>
    #
    # @return [Types::DeleteDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDomainOutput
    #   resp.data.domain_status #=> Types::DomainStatus
    #   resp.data.domain_status.domain_id #=> String
    #   resp.data.domain_status.domain_name #=> String
    #   resp.data.domain_status.arn #=> String
    #   resp.data.domain_status.created #=> Boolean
    #   resp.data.domain_status.deleted #=> Boolean
    #   resp.data.domain_status.doc_service #=> Types::ServiceEndpoint
    #   resp.data.domain_status.doc_service.endpoint #=> String
    #   resp.data.domain_status.search_service #=> Types::ServiceEndpoint
    #   resp.data.domain_status.requires_index_documents #=> Boolean
    #   resp.data.domain_status.processing #=> Boolean
    #   resp.data.domain_status.search_instance_type #=> String
    #   resp.data.domain_status.search_partition_count #=> Integer
    #   resp.data.domain_status.search_instance_count #=> Integer
    #   resp.data.domain_status.limits #=> Types::Limits
    #   resp.data.domain_status.limits.maximum_replication_count #=> Integer
    #   resp.data.domain_status.limits.maximum_partition_count #=> Integer
    #
    def delete_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDomainInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::BaseException]),
        data_parser: Parsers::DeleteDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDomain,
        stubs: @stubs,
        params_class: Params::DeleteDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an <code><a>Expression</a></code> from the search domain. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html" target="_blank">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteExpressionInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @option params [String] :expression_name
    #   <p>The name of the <code><a>Expression</a></code> to delete.</p>
    #
    # @return [Types::DeleteExpressionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_expression(
    #     domain_name: 'DomainName', # required
    #     expression_name: 'ExpressionName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteExpressionOutput
    #   resp.data.expression #=> Types::ExpressionStatus
    #   resp.data.expression.options #=> Types::Expression
    #   resp.data.expression.options.expression_name #=> String
    #   resp.data.expression.options.expression_value #=> String
    #   resp.data.expression.status #=> Types::OptionStatus
    #   resp.data.expression.status.creation_date #=> Time
    #   resp.data.expression.status.update_date #=> Time
    #   resp.data.expression.status.update_version #=> Integer
    #   resp.data.expression.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.expression.status.pending_deletion #=> Boolean
    #
    def delete_expression(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteExpressionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteExpressionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteExpression
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException, Errors::InvalidTypeException]),
        data_parser: Parsers::DeleteExpression
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteExpression,
        stubs: @stubs,
        params_class: Params::DeleteExpressionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_expression
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an <code><a>IndexField</a></code> from the search domain. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html" target="_blank">Configuring Index Fields</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIndexFieldInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @option params [String] :index_field_name
    #   <p>The name of the index field your want to remove from the domain's indexing options.</p>
    #
    # @return [Types::DeleteIndexFieldOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_index_field(
    #     domain_name: 'DomainName', # required
    #     index_field_name: 'IndexFieldName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIndexFieldOutput
    #   resp.data.index_field #=> Types::IndexFieldStatus
    #   resp.data.index_field.options #=> Types::IndexField
    #   resp.data.index_field.options.index_field_name #=> String
    #   resp.data.index_field.options.index_field_type #=> String, one of ["int", "double", "literal", "text", "date", "latlon", "int-array", "double-array", "literal-array", "text-array", "date-array"]
    #   resp.data.index_field.options.int_options #=> Types::IntOptions
    #   resp.data.index_field.options.int_options.default_value #=> Integer
    #   resp.data.index_field.options.int_options.source_field #=> String
    #   resp.data.index_field.options.int_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.int_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.int_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.int_options.sort_enabled #=> Boolean
    #   resp.data.index_field.options.double_options #=> Types::DoubleOptions
    #   resp.data.index_field.options.double_options.default_value #=> Float
    #   resp.data.index_field.options.double_options.source_field #=> String
    #   resp.data.index_field.options.double_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.double_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.double_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.double_options.sort_enabled #=> Boolean
    #   resp.data.index_field.options.literal_options #=> Types::LiteralOptions
    #   resp.data.index_field.options.literal_options.default_value #=> String
    #   resp.data.index_field.options.literal_options.source_field #=> String
    #   resp.data.index_field.options.literal_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.literal_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.literal_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.literal_options.sort_enabled #=> Boolean
    #   resp.data.index_field.options.text_options #=> Types::TextOptions
    #   resp.data.index_field.options.text_options.default_value #=> String
    #   resp.data.index_field.options.text_options.source_field #=> String
    #   resp.data.index_field.options.text_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.text_options.sort_enabled #=> Boolean
    #   resp.data.index_field.options.text_options.highlight_enabled #=> Boolean
    #   resp.data.index_field.options.text_options.analysis_scheme #=> String
    #   resp.data.index_field.options.date_options #=> Types::DateOptions
    #   resp.data.index_field.options.date_options.default_value #=> String
    #   resp.data.index_field.options.date_options.source_field #=> String
    #   resp.data.index_field.options.date_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.date_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.date_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.date_options.sort_enabled #=> Boolean
    #   resp.data.index_field.options.lat_lon_options #=> Types::LatLonOptions
    #   resp.data.index_field.options.lat_lon_options.default_value #=> String
    #   resp.data.index_field.options.lat_lon_options.source_field #=> String
    #   resp.data.index_field.options.lat_lon_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.lat_lon_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.lat_lon_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.lat_lon_options.sort_enabled #=> Boolean
    #   resp.data.index_field.options.int_array_options #=> Types::IntArrayOptions
    #   resp.data.index_field.options.int_array_options.default_value #=> Integer
    #   resp.data.index_field.options.int_array_options.source_fields #=> String
    #   resp.data.index_field.options.int_array_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.int_array_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.int_array_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.double_array_options #=> Types::DoubleArrayOptions
    #   resp.data.index_field.options.double_array_options.default_value #=> Float
    #   resp.data.index_field.options.double_array_options.source_fields #=> String
    #   resp.data.index_field.options.double_array_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.double_array_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.double_array_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.literal_array_options #=> Types::LiteralArrayOptions
    #   resp.data.index_field.options.literal_array_options.default_value #=> String
    #   resp.data.index_field.options.literal_array_options.source_fields #=> String
    #   resp.data.index_field.options.literal_array_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.literal_array_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.literal_array_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.text_array_options #=> Types::TextArrayOptions
    #   resp.data.index_field.options.text_array_options.default_value #=> String
    #   resp.data.index_field.options.text_array_options.source_fields #=> String
    #   resp.data.index_field.options.text_array_options.return_enabled #=> Boolean
    #   resp.data.index_field.options.text_array_options.highlight_enabled #=> Boolean
    #   resp.data.index_field.options.text_array_options.analysis_scheme #=> String
    #   resp.data.index_field.options.date_array_options #=> Types::DateArrayOptions
    #   resp.data.index_field.options.date_array_options.default_value #=> String
    #   resp.data.index_field.options.date_array_options.source_fields #=> String
    #   resp.data.index_field.options.date_array_options.facet_enabled #=> Boolean
    #   resp.data.index_field.options.date_array_options.search_enabled #=> Boolean
    #   resp.data.index_field.options.date_array_options.return_enabled #=> Boolean
    #   resp.data.index_field.status #=> Types::OptionStatus
    #   resp.data.index_field.status.creation_date #=> Time
    #   resp.data.index_field.status.update_date #=> Time
    #   resp.data.index_field.status.update_version #=> Integer
    #   resp.data.index_field.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.index_field.status.pending_deletion #=> Boolean
    #
    def delete_index_field(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIndexFieldInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIndexFieldInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIndexField
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException, Errors::InvalidTypeException]),
        data_parser: Parsers::DeleteIndexField
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIndexField,
        stubs: @stubs,
        params_class: Params::DeleteIndexFieldOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_index_field
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a suggester. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html" target="_blank">Getting Search Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSuggesterInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @option params [String] :suggester_name
    #   <p>Specifies the name of the suggester you want to delete.</p>
    #
    # @return [Types::DeleteSuggesterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_suggester(
    #     domain_name: 'DomainName', # required
    #     suggester_name: 'SuggesterName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSuggesterOutput
    #   resp.data.suggester #=> Types::SuggesterStatus
    #   resp.data.suggester.options #=> Types::Suggester
    #   resp.data.suggester.options.suggester_name #=> String
    #   resp.data.suggester.options.document_suggester_options #=> Types::DocumentSuggesterOptions
    #   resp.data.suggester.options.document_suggester_options.source_field #=> String
    #   resp.data.suggester.options.document_suggester_options.fuzzy_matching #=> String, one of ["none", "low", "high"]
    #   resp.data.suggester.options.document_suggester_options.sort_expression #=> String
    #   resp.data.suggester.status #=> Types::OptionStatus
    #   resp.data.suggester.status.creation_date #=> Time
    #   resp.data.suggester.status.update_date #=> Time
    #   resp.data.suggester.status.update_version #=> Integer
    #   resp.data.suggester.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.suggester.status.pending_deletion #=> Boolean
    #
    def delete_suggester(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSuggesterInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSuggesterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSuggester
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException, Errors::InvalidTypeException]),
        data_parser: Parsers::DeleteSuggester
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSuggester,
        stubs: @stubs,
        params_class: Params::DeleteSuggesterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_suggester
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the analysis schemes configured for a domain. An analysis scheme defines language-specific text processing options for a <code>text</code> field. Can be limited to specific analysis schemes by name.  By default, shows all analysis schemes and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes.  For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html" target="_blank">Configuring Analysis Schemes</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAnalysisSchemesInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to describe.</p>
    #
    # @option params [Array<String>] :analysis_scheme_names
    #   <p>The analysis schemes you want to describe.</p>
    #
    # @option params [Boolean] :deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    #
    # @return [Types::DescribeAnalysisSchemesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_analysis_schemes(
    #     domain_name: 'DomainName', # required
    #     analysis_scheme_names: [
    #       'member'
    #     ],
    #     deployed: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAnalysisSchemesOutput
    #   resp.data.analysis_schemes #=> Array<AnalysisSchemeStatus>
    #   resp.data.analysis_schemes[0] #=> Types::AnalysisSchemeStatus
    #   resp.data.analysis_schemes[0].options #=> Types::AnalysisScheme
    #   resp.data.analysis_schemes[0].options.analysis_scheme_name #=> String
    #   resp.data.analysis_schemes[0].options.analysis_scheme_language #=> String, one of ["ar", "bg", "ca", "cs", "da", "de", "el", "en", "es", "eu", "fa", "fi", "fr", "ga", "gl", "he", "hi", "hu", "hy", "id", "it", "ja", "ko", "lv", "mul", "nl", "no", "pt", "ro", "ru", "sv", "th", "tr", "zh-Hans", "zh-Hant"]
    #   resp.data.analysis_schemes[0].options.analysis_options #=> Types::AnalysisOptions
    #   resp.data.analysis_schemes[0].options.analysis_options.synonyms #=> String
    #   resp.data.analysis_schemes[0].options.analysis_options.stopwords #=> String
    #   resp.data.analysis_schemes[0].options.analysis_options.stemming_dictionary #=> String
    #   resp.data.analysis_schemes[0].options.analysis_options.japanese_tokenization_dictionary #=> String
    #   resp.data.analysis_schemes[0].options.analysis_options.algorithmic_stemming #=> String, one of ["none", "minimal", "light", "full"]
    #   resp.data.analysis_schemes[0].status #=> Types::OptionStatus
    #   resp.data.analysis_schemes[0].status.creation_date #=> Time
    #   resp.data.analysis_schemes[0].status.update_date #=> Time
    #   resp.data.analysis_schemes[0].status.update_version #=> Integer
    #   resp.data.analysis_schemes[0].status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.analysis_schemes[0].status.pending_deletion #=> Boolean
    #
    def describe_analysis_schemes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAnalysisSchemesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAnalysisSchemesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAnalysisSchemes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException]),
        data_parser: Parsers::DescribeAnalysisSchemes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAnalysisSchemes,
        stubs: @stubs,
        params_class: Params::DescribeAnalysisSchemesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_analysis_schemes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see  <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html" target="_blank">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAvailabilityOptionsInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to describe.</p>
    #
    # @option params [Boolean] :deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    #
    # @return [Types::DescribeAvailabilityOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_availability_options(
    #     domain_name: 'DomainName', # required
    #     deployed: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAvailabilityOptionsOutput
    #   resp.data.availability_options #=> Types::AvailabilityOptionsStatus
    #   resp.data.availability_options.options #=> Boolean
    #   resp.data.availability_options.status #=> Types::OptionStatus
    #   resp.data.availability_options.status.creation_date #=> Time
    #   resp.data.availability_options.status.update_date #=> Time
    #   resp.data.availability_options.status.update_version #=> Integer
    #   resp.data.availability_options.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.availability_options.status.pending_deletion #=> Boolean
    #
    def describe_availability_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAvailabilityOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAvailabilityOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAvailabilityOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::DisabledOperationException, Errors::InternalException, Errors::BaseException, Errors::InvalidTypeException]),
        data_parser: Parsers::DescribeAvailabilityOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAvailabilityOptions,
        stubs: @stubs,
        params_class: Params::DescribeAvailabilityOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_availability_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the domain's endpoint options, specifically whether all requests to the domain must arrive over HTTPS. For more information, see  <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html" target="_blank">Configuring Domain Endpoint Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDomainEndpointOptionsInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain.</p>
    #
    # @option params [Boolean] :deployed
    #   <p>Whether to retrieve the latest configuration (which might be in a Processing state) or the current, active configuration. Defaults to <code>false</code>.</p>
    #
    # @return [Types::DescribeDomainEndpointOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_endpoint_options(
    #     domain_name: 'DomainName', # required
    #     deployed: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDomainEndpointOptionsOutput
    #   resp.data.domain_endpoint_options #=> Types::DomainEndpointOptionsStatus
    #   resp.data.domain_endpoint_options.options #=> Types::DomainEndpointOptions
    #   resp.data.domain_endpoint_options.options.enforce_https #=> Boolean
    #   resp.data.domain_endpoint_options.options.tls_security_policy #=> String, one of ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #   resp.data.domain_endpoint_options.status #=> Types::OptionStatus
    #   resp.data.domain_endpoint_options.status.creation_date #=> Time
    #   resp.data.domain_endpoint_options.status.update_date #=> Time
    #   resp.data.domain_endpoint_options.status.update_version #=> Integer
    #   resp.data.domain_endpoint_options.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.domain_endpoint_options.status.pending_deletion #=> Boolean
    #
    def describe_domain_endpoint_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDomainEndpointOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDomainEndpointOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDomainEndpointOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::DisabledOperationException, Errors::InternalException, Errors::BaseException]),
        data_parser: Parsers::DescribeDomainEndpointOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDomainEndpointOptions,
        stubs: @stubs,
        params_class: Params::DescribeDomainEndpointOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_domain_endpoint_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the search domains owned by this account. Can be limited to specific domains. Shows
    #       all domains by default. To get the number of searchable documents in a domain, use the console or submit a <code>matchall</code> request to your domain's search endpoint: <code>q=matchall&amp;q.parser=structured&amp;size=0</code>. For more information,
    #       see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html" target="_blank">Getting Information about a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDomainsInput}.
    #
    # @option params [Array<String>] :domain_names
    #   <p>The names of the domains you want to include in the response.</p>
    #
    # @return [Types::DescribeDomainsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domains(
    #     domain_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDomainsOutput
    #   resp.data.domain_status_list #=> Array<DomainStatus>
    #   resp.data.domain_status_list[0] #=> Types::DomainStatus
    #   resp.data.domain_status_list[0].domain_id #=> String
    #   resp.data.domain_status_list[0].domain_name #=> String
    #   resp.data.domain_status_list[0].arn #=> String
    #   resp.data.domain_status_list[0].created #=> Boolean
    #   resp.data.domain_status_list[0].deleted #=> Boolean
    #   resp.data.domain_status_list[0].doc_service #=> Types::ServiceEndpoint
    #   resp.data.domain_status_list[0].doc_service.endpoint #=> String
    #   resp.data.domain_status_list[0].search_service #=> Types::ServiceEndpoint
    #   resp.data.domain_status_list[0].requires_index_documents #=> Boolean
    #   resp.data.domain_status_list[0].processing #=> Boolean
    #   resp.data.domain_status_list[0].search_instance_type #=> String
    #   resp.data.domain_status_list[0].search_partition_count #=> Integer
    #   resp.data.domain_status_list[0].search_instance_count #=> Integer
    #   resp.data.domain_status_list[0].limits #=> Types::Limits
    #   resp.data.domain_status_list[0].limits.maximum_replication_count #=> Integer
    #   resp.data.domain_status_list[0].limits.maximum_partition_count #=> Integer
    #
    def describe_domains(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDomainsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDomainsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDomains
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::BaseException]),
        data_parser: Parsers::DescribeDomains
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDomains,
        stubs: @stubs,
        params_class: Params::DescribeDomainsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_domains
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the expressions configured for the search domain. Can be limited to specific expressions by name. By default, shows all expressions and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see  <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html" target="_blank">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeExpressionsInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to describe.</p>
    #
    # @option params [Array<String>] :expression_names
    #   <p>Limits the <code><a>DescribeExpressions</a></code> response to the specified expressions. If not specified, all expressions are shown.</p>
    #
    # @option params [Boolean] :deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    #
    # @return [Types::DescribeExpressionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_expressions(
    #     domain_name: 'DomainName', # required
    #     expression_names: [
    #       'member'
    #     ],
    #     deployed: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeExpressionsOutput
    #   resp.data.expressions #=> Array<ExpressionStatus>
    #   resp.data.expressions[0] #=> Types::ExpressionStatus
    #   resp.data.expressions[0].options #=> Types::Expression
    #   resp.data.expressions[0].options.expression_name #=> String
    #   resp.data.expressions[0].options.expression_value #=> String
    #   resp.data.expressions[0].status #=> Types::OptionStatus
    #   resp.data.expressions[0].status.creation_date #=> Time
    #   resp.data.expressions[0].status.update_date #=> Time
    #   resp.data.expressions[0].status.update_version #=> Integer
    #   resp.data.expressions[0].status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.expressions[0].status.pending_deletion #=> Boolean
    #
    def describe_expressions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeExpressionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeExpressionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeExpressions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException]),
        data_parser: Parsers::DescribeExpressions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeExpressions,
        stubs: @stubs,
        params_class: Params::DescribeExpressionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_expressions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the index fields configured for the search domain.
    #       Can be limited to specific fields by name.  By default, shows all fields and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information,
    #       see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html" target="_blank">Getting Domain Information</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeIndexFieldsInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to describe.</p>
    #
    # @option params [Array<String>] :field_names
    #   <p>A list of the index fields you want to describe. If not specified, information is returned for all configured index fields.</p>
    #
    # @option params [Boolean] :deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    #
    # @return [Types::DescribeIndexFieldsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_index_fields(
    #     domain_name: 'DomainName', # required
    #     field_names: [
    #       'member'
    #     ],
    #     deployed: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeIndexFieldsOutput
    #   resp.data.index_fields #=> Array<IndexFieldStatus>
    #   resp.data.index_fields[0] #=> Types::IndexFieldStatus
    #   resp.data.index_fields[0].options #=> Types::IndexField
    #   resp.data.index_fields[0].options.index_field_name #=> String
    #   resp.data.index_fields[0].options.index_field_type #=> String, one of ["int", "double", "literal", "text", "date", "latlon", "int-array", "double-array", "literal-array", "text-array", "date-array"]
    #   resp.data.index_fields[0].options.int_options #=> Types::IntOptions
    #   resp.data.index_fields[0].options.int_options.default_value #=> Integer
    #   resp.data.index_fields[0].options.int_options.source_field #=> String
    #   resp.data.index_fields[0].options.int_options.facet_enabled #=> Boolean
    #   resp.data.index_fields[0].options.int_options.search_enabled #=> Boolean
    #   resp.data.index_fields[0].options.int_options.return_enabled #=> Boolean
    #   resp.data.index_fields[0].options.int_options.sort_enabled #=> Boolean
    #   resp.data.index_fields[0].options.double_options #=> Types::DoubleOptions
    #   resp.data.index_fields[0].options.double_options.default_value #=> Float
    #   resp.data.index_fields[0].options.double_options.source_field #=> String
    #   resp.data.index_fields[0].options.double_options.facet_enabled #=> Boolean
    #   resp.data.index_fields[0].options.double_options.search_enabled #=> Boolean
    #   resp.data.index_fields[0].options.double_options.return_enabled #=> Boolean
    #   resp.data.index_fields[0].options.double_options.sort_enabled #=> Boolean
    #   resp.data.index_fields[0].options.literal_options #=> Types::LiteralOptions
    #   resp.data.index_fields[0].options.literal_options.default_value #=> String
    #   resp.data.index_fields[0].options.literal_options.source_field #=> String
    #   resp.data.index_fields[0].options.literal_options.facet_enabled #=> Boolean
    #   resp.data.index_fields[0].options.literal_options.search_enabled #=> Boolean
    #   resp.data.index_fields[0].options.literal_options.return_enabled #=> Boolean
    #   resp.data.index_fields[0].options.literal_options.sort_enabled #=> Boolean
    #   resp.data.index_fields[0].options.text_options #=> Types::TextOptions
    #   resp.data.index_fields[0].options.text_options.default_value #=> String
    #   resp.data.index_fields[0].options.text_options.source_field #=> String
    #   resp.data.index_fields[0].options.text_options.return_enabled #=> Boolean
    #   resp.data.index_fields[0].options.text_options.sort_enabled #=> Boolean
    #   resp.data.index_fields[0].options.text_options.highlight_enabled #=> Boolean
    #   resp.data.index_fields[0].options.text_options.analysis_scheme #=> String
    #   resp.data.index_fields[0].options.date_options #=> Types::DateOptions
    #   resp.data.index_fields[0].options.date_options.default_value #=> String
    #   resp.data.index_fields[0].options.date_options.source_field #=> String
    #   resp.data.index_fields[0].options.date_options.facet_enabled #=> Boolean
    #   resp.data.index_fields[0].options.date_options.search_enabled #=> Boolean
    #   resp.data.index_fields[0].options.date_options.return_enabled #=> Boolean
    #   resp.data.index_fields[0].options.date_options.sort_enabled #=> Boolean
    #   resp.data.index_fields[0].options.lat_lon_options #=> Types::LatLonOptions
    #   resp.data.index_fields[0].options.lat_lon_options.default_value #=> String
    #   resp.data.index_fields[0].options.lat_lon_options.source_field #=> String
    #   resp.data.index_fields[0].options.lat_lon_options.facet_enabled #=> Boolean
    #   resp.data.index_fields[0].options.lat_lon_options.search_enabled #=> Boolean
    #   resp.data.index_fields[0].options.lat_lon_options.return_enabled #=> Boolean
    #   resp.data.index_fields[0].options.lat_lon_options.sort_enabled #=> Boolean
    #   resp.data.index_fields[0].options.int_array_options #=> Types::IntArrayOptions
    #   resp.data.index_fields[0].options.int_array_options.default_value #=> Integer
    #   resp.data.index_fields[0].options.int_array_options.source_fields #=> String
    #   resp.data.index_fields[0].options.int_array_options.facet_enabled #=> Boolean
    #   resp.data.index_fields[0].options.int_array_options.search_enabled #=> Boolean
    #   resp.data.index_fields[0].options.int_array_options.return_enabled #=> Boolean
    #   resp.data.index_fields[0].options.double_array_options #=> Types::DoubleArrayOptions
    #   resp.data.index_fields[0].options.double_array_options.default_value #=> Float
    #   resp.data.index_fields[0].options.double_array_options.source_fields #=> String
    #   resp.data.index_fields[0].options.double_array_options.facet_enabled #=> Boolean
    #   resp.data.index_fields[0].options.double_array_options.search_enabled #=> Boolean
    #   resp.data.index_fields[0].options.double_array_options.return_enabled #=> Boolean
    #   resp.data.index_fields[0].options.literal_array_options #=> Types::LiteralArrayOptions
    #   resp.data.index_fields[0].options.literal_array_options.default_value #=> String
    #   resp.data.index_fields[0].options.literal_array_options.source_fields #=> String
    #   resp.data.index_fields[0].options.literal_array_options.facet_enabled #=> Boolean
    #   resp.data.index_fields[0].options.literal_array_options.search_enabled #=> Boolean
    #   resp.data.index_fields[0].options.literal_array_options.return_enabled #=> Boolean
    #   resp.data.index_fields[0].options.text_array_options #=> Types::TextArrayOptions
    #   resp.data.index_fields[0].options.text_array_options.default_value #=> String
    #   resp.data.index_fields[0].options.text_array_options.source_fields #=> String
    #   resp.data.index_fields[0].options.text_array_options.return_enabled #=> Boolean
    #   resp.data.index_fields[0].options.text_array_options.highlight_enabled #=> Boolean
    #   resp.data.index_fields[0].options.text_array_options.analysis_scheme #=> String
    #   resp.data.index_fields[0].options.date_array_options #=> Types::DateArrayOptions
    #   resp.data.index_fields[0].options.date_array_options.default_value #=> String
    #   resp.data.index_fields[0].options.date_array_options.source_fields #=> String
    #   resp.data.index_fields[0].options.date_array_options.facet_enabled #=> Boolean
    #   resp.data.index_fields[0].options.date_array_options.search_enabled #=> Boolean
    #   resp.data.index_fields[0].options.date_array_options.return_enabled #=> Boolean
    #   resp.data.index_fields[0].status #=> Types::OptionStatus
    #   resp.data.index_fields[0].status.creation_date #=> Time
    #   resp.data.index_fields[0].status.update_date #=> Time
    #   resp.data.index_fields[0].status.update_version #=> Integer
    #   resp.data.index_fields[0].status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.index_fields[0].status.pending_deletion #=> Boolean
    #
    def describe_index_fields(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeIndexFieldsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeIndexFieldsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeIndexFields
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException]),
        data_parser: Parsers::DescribeIndexFields
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeIndexFields,
        stubs: @stubs,
        params_class: Params::DescribeIndexFieldsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_index_fields
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the scaling parameters configured for a domain. A domain's scaling parameters specify the desired search instance type and replication count. For more information, see   <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html" target="_blank">Configuring Scaling Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScalingParametersInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @return [Types::DescribeScalingParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_parameters(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeScalingParametersOutput
    #   resp.data.scaling_parameters #=> Types::ScalingParametersStatus
    #   resp.data.scaling_parameters.options #=> Types::ScalingParameters
    #   resp.data.scaling_parameters.options.desired_instance_type #=> String, one of ["search.m1.small", "search.m1.large", "search.m2.xlarge", "search.m2.2xlarge", "search.m3.medium", "search.m3.large", "search.m3.xlarge", "search.m3.2xlarge", "search.small", "search.medium", "search.large", "search.xlarge", "search.2xlarge", "search.previousgeneration.small", "search.previousgeneration.large", "search.previousgeneration.xlarge", "search.previousgeneration.2xlarge"]
    #   resp.data.scaling_parameters.options.desired_replication_count #=> Integer
    #   resp.data.scaling_parameters.options.desired_partition_count #=> Integer
    #   resp.data.scaling_parameters.status #=> Types::OptionStatus
    #   resp.data.scaling_parameters.status.creation_date #=> Time
    #   resp.data.scaling_parameters.status.update_date #=> Time
    #   resp.data.scaling_parameters.status.update_version #=> Integer
    #   resp.data.scaling_parameters.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.scaling_parameters.status.pending_deletion #=> Boolean
    #
    def describe_scaling_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScalingParametersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScalingParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeScalingParameters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException]),
        data_parser: Parsers::DescribeScalingParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeScalingParameters,
        stubs: @stubs,
        params_class: Params::DescribeScalingParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_scaling_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the access policies that control access to the domain's document and search endpoints. By default, shows the configuration with any pending changes. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information,
    #       see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html" target="_blank">Configuring Access for a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeServiceAccessPoliciesInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to describe.</p>
    #
    # @option params [Boolean] :deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    #
    # @return [Types::DescribeServiceAccessPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service_access_policies(
    #     domain_name: 'DomainName', # required
    #     deployed: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeServiceAccessPoliciesOutput
    #   resp.data.access_policies #=> Types::AccessPoliciesStatus
    #   resp.data.access_policies.options #=> String
    #   resp.data.access_policies.status #=> Types::OptionStatus
    #   resp.data.access_policies.status.creation_date #=> Time
    #   resp.data.access_policies.status.update_date #=> Time
    #   resp.data.access_policies.status.update_version #=> Integer
    #   resp.data.access_policies.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.access_policies.status.pending_deletion #=> Boolean
    #
    def describe_service_access_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeServiceAccessPoliciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeServiceAccessPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeServiceAccessPolicies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException]),
        data_parser: Parsers::DescribeServiceAccessPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeServiceAccessPolicies,
        stubs: @stubs,
        params_class: Params::DescribeServiceAccessPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_service_access_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the suggesters configured for a domain. A suggester enables you to display possible matches before users finish typing their queries.  Can be limited to specific suggesters by name.  By default, shows all suggesters and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes.  For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html" target="_blank">Getting Search Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSuggestersInput}.
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to describe.</p>
    #
    # @option params [Array<String>] :suggester_names
    #   <p>The suggesters you want to describe.</p>
    #
    # @option params [Boolean] :deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    #
    # @return [Types::DescribeSuggestersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_suggesters(
    #     domain_name: 'DomainName', # required
    #     suggester_names: [
    #       'member'
    #     ],
    #     deployed: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSuggestersOutput
    #   resp.data.suggesters #=> Array<SuggesterStatus>
    #   resp.data.suggesters[0] #=> Types::SuggesterStatus
    #   resp.data.suggesters[0].options #=> Types::Suggester
    #   resp.data.suggesters[0].options.suggester_name #=> String
    #   resp.data.suggesters[0].options.document_suggester_options #=> Types::DocumentSuggesterOptions
    #   resp.data.suggesters[0].options.document_suggester_options.source_field #=> String
    #   resp.data.suggesters[0].options.document_suggester_options.fuzzy_matching #=> String, one of ["none", "low", "high"]
    #   resp.data.suggesters[0].options.document_suggester_options.sort_expression #=> String
    #   resp.data.suggesters[0].status #=> Types::OptionStatus
    #   resp.data.suggesters[0].status.creation_date #=> Time
    #   resp.data.suggesters[0].status.update_date #=> Time
    #   resp.data.suggesters[0].status.update_version #=> Integer
    #   resp.data.suggesters[0].status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.suggesters[0].status.pending_deletion #=> Boolean
    #
    def describe_suggesters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSuggestersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSuggestersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSuggesters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException]),
        data_parser: Parsers::DescribeSuggesters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSuggesters,
        stubs: @stubs,
        params_class: Params::DescribeSuggestersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_suggesters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Tells the search domain to start indexing its documents using the latest indexing options. This operation must be invoked to activate options whose <a>OptionStatus</a> is  <code>RequiresIndexDocuments</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::IndexDocumentsInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @return [Types::IndexDocumentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.index_documents(
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::IndexDocumentsOutput
    #   resp.data.field_names #=> Array<String>
    #   resp.data.field_names[0] #=> String
    #
    def index_documents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::IndexDocumentsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::IndexDocumentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::IndexDocuments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException]),
        data_parser: Parsers::IndexDocuments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::IndexDocuments,
        stubs: @stubs,
        params_class: Params::IndexDocumentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :index_documents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all search domains owned by an account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDomainNamesInput}.
    #
    # @return [Types::ListDomainNamesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_names()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDomainNamesOutput
    #   resp.data.domain_names #=> Hash<String, String>
    #   resp.data.domain_names['key'] #=> String
    #
    def list_domain_names(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDomainNamesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDomainNamesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDomainNames
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BaseException]),
        data_parser: Parsers::ListDomainNames
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDomainNames,
        stubs: @stubs,
        params_class: Params::ListDomainNamesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_domain_names
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html" target="_blank">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAvailabilityOptionsInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @option params [Boolean] :multi_az
    #   <p>You expand an existing search domain to a second Availability Zone by setting the Multi-AZ option to true. Similarly, you can turn off the Multi-AZ option to downgrade the domain to a single Availability Zone by setting the Multi-AZ option to <code>false</code>. </p>
    #
    # @return [Types::UpdateAvailabilityOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_availability_options(
    #     domain_name: 'DomainName', # required
    #     multi_az: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAvailabilityOptionsOutput
    #   resp.data.availability_options #=> Types::AvailabilityOptionsStatus
    #   resp.data.availability_options.options #=> Boolean
    #   resp.data.availability_options.status #=> Types::OptionStatus
    #   resp.data.availability_options.status.creation_date #=> Time
    #   resp.data.availability_options.status.update_date #=> Time
    #   resp.data.availability_options.status.update_version #=> Integer
    #   resp.data.availability_options.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.availability_options.status.pending_deletion #=> Boolean
    #
    def update_availability_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAvailabilityOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAvailabilityOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAvailabilityOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::DisabledOperationException, Errors::InternalException, Errors::BaseException, Errors::InvalidTypeException]),
        data_parser: Parsers::UpdateAvailabilityOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAvailabilityOptions,
        stubs: @stubs,
        params_class: Params::UpdateAvailabilityOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_availability_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the domain's endpoint options, specifically whether all requests to the domain must arrive over HTTPS. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html" target="_blank">Configuring Domain Endpoint Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDomainEndpointOptionsInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain.</p>
    #
    # @option params [DomainEndpointOptions] :domain_endpoint_options
    #   <p>Whether to require that all requests to the domain arrive over HTTPS. We recommend Policy-Min-TLS-1-2-2019-07 for TLSSecurityPolicy. For compatibility with older clients, the default is Policy-Min-TLS-1-0-2019-07. </p>
    #
    # @return [Types::UpdateDomainEndpointOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_endpoint_options(
    #     domain_name: 'DomainName', # required
    #     domain_endpoint_options: {
    #       enforce_https: false,
    #       tls_security_policy: 'Policy-Min-TLS-1-0-2019-07' # accepts ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDomainEndpointOptionsOutput
    #   resp.data.domain_endpoint_options #=> Types::DomainEndpointOptionsStatus
    #   resp.data.domain_endpoint_options.options #=> Types::DomainEndpointOptions
    #   resp.data.domain_endpoint_options.options.enforce_https #=> Boolean
    #   resp.data.domain_endpoint_options.options.tls_security_policy #=> String, one of ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #   resp.data.domain_endpoint_options.status #=> Types::OptionStatus
    #   resp.data.domain_endpoint_options.status.creation_date #=> Time
    #   resp.data.domain_endpoint_options.status.update_date #=> Time
    #   resp.data.domain_endpoint_options.status.update_version #=> Integer
    #   resp.data.domain_endpoint_options.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.domain_endpoint_options.status.pending_deletion #=> Boolean
    #
    def update_domain_endpoint_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDomainEndpointOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDomainEndpointOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDomainEndpointOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::DisabledOperationException, Errors::InternalException, Errors::BaseException, Errors::InvalidTypeException]),
        data_parser: Parsers::UpdateDomainEndpointOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDomainEndpointOptions,
        stubs: @stubs,
        params_class: Params::UpdateDomainEndpointOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_domain_endpoint_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures scaling parameters for a domain. A domain's scaling parameters specify the desired search instance type and replication count. Amazon CloudSearch will still automatically scale your domain based on the volume of data and traffic, but not below the desired instance type and replication count. If the Multi-AZ option is enabled, these values control the resources used per Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html" target="_blank">Configuring Scaling Options</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateScalingParametersInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @option params [ScalingParameters] :scaling_parameters
    #   <p>The desired instance type and desired number of replicas of each index partition.</p>
    #
    # @return [Types::UpdateScalingParametersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scaling_parameters(
    #     domain_name: 'DomainName', # required
    #     scaling_parameters: {
    #       desired_instance_type: 'search.m1.small', # accepts ["search.m1.small", "search.m1.large", "search.m2.xlarge", "search.m2.2xlarge", "search.m3.medium", "search.m3.large", "search.m3.xlarge", "search.m3.2xlarge", "search.small", "search.medium", "search.large", "search.xlarge", "search.2xlarge", "search.previousgeneration.small", "search.previousgeneration.large", "search.previousgeneration.xlarge", "search.previousgeneration.2xlarge"]
    #       desired_replication_count: 1,
    #       desired_partition_count: 1
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateScalingParametersOutput
    #   resp.data.scaling_parameters #=> Types::ScalingParametersStatus
    #   resp.data.scaling_parameters.options #=> Types::ScalingParameters
    #   resp.data.scaling_parameters.options.desired_instance_type #=> String, one of ["search.m1.small", "search.m1.large", "search.m2.xlarge", "search.m2.2xlarge", "search.m3.medium", "search.m3.large", "search.m3.xlarge", "search.m3.2xlarge", "search.small", "search.medium", "search.large", "search.xlarge", "search.2xlarge", "search.previousgeneration.small", "search.previousgeneration.large", "search.previousgeneration.xlarge", "search.previousgeneration.2xlarge"]
    #   resp.data.scaling_parameters.options.desired_replication_count #=> Integer
    #   resp.data.scaling_parameters.options.desired_partition_count #=> Integer
    #   resp.data.scaling_parameters.status #=> Types::OptionStatus
    #   resp.data.scaling_parameters.status.creation_date #=> Time
    #   resp.data.scaling_parameters.status.update_date #=> Time
    #   resp.data.scaling_parameters.status.update_version #=> Integer
    #   resp.data.scaling_parameters.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.scaling_parameters.status.pending_deletion #=> Boolean
    #
    def update_scaling_parameters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateScalingParametersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateScalingParametersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateScalingParameters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException, Errors::InvalidTypeException]),
        data_parser: Parsers::UpdateScalingParameters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateScalingParameters,
        stubs: @stubs,
        params_class: Params::UpdateScalingParametersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_scaling_parameters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures the access rules that control access to the domain's document and search endpoints.
    #       For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html" target="_blank">
    #         Configuring Access for an Amazon CloudSearch Domain</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateServiceAccessPoliciesInput}.
    #
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    # @option params [String] :access_policies
    #   <p>The access rules you want to configure. These rules replace any existing rules. </p>
    #
    # @return [Types::UpdateServiceAccessPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_access_policies(
    #     domain_name: 'DomainName', # required
    #     access_policies: 'AccessPolicies' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServiceAccessPoliciesOutput
    #   resp.data.access_policies #=> Types::AccessPoliciesStatus
    #   resp.data.access_policies.options #=> String
    #   resp.data.access_policies.status #=> Types::OptionStatus
    #   resp.data.access_policies.status.creation_date #=> Time
    #   resp.data.access_policies.status.update_date #=> Time
    #   resp.data.access_policies.status.update_version #=> Integer
    #   resp.data.access_policies.status.state #=> String, one of ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #   resp.data.access_policies.status.pending_deletion #=> Boolean
    #
    def update_service_access_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServiceAccessPoliciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServiceAccessPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateServiceAccessPolicies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::InternalException, Errors::BaseException, Errors::InvalidTypeException]),
        data_parser: Parsers::UpdateServiceAccessPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateServiceAccessPolicies,
        stubs: @stubs,
        params_class: Params::UpdateServiceAccessPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_service_access_policies
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
