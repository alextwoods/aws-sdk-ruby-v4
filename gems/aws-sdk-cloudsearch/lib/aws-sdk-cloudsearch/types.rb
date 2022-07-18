# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudSearch
  module Types

    # <p>The configured access rules for the domain's document and search endpoints, and the current status of those rules.</p>
    #
    # @!attribute options
    #   <p>Access rules for a domain's document or search service endpoints. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html" target="_blank">Configuring Access for a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>. The maximum size of a policy document is 100 KB.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of domain configuration option.</p>
    #
    #   @return [OptionStatus]
    #
    AccessPoliciesStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AlgorithmicStemming
    #
    module AlgorithmicStemming
      # No documentation available.
      #
      none = "none"

      # No documentation available.
      #
      minimal = "minimal"

      # No documentation available.
      #
      light = "light"

      # No documentation available.
      #
      full = "full"
    end

    # <p>Synonyms, stopwords, and stemming options for an analysis scheme. Includes tokenization dictionary for Japanese.</p>
    #
    # @!attribute synonyms
    #   <p>A JSON object that defines synonym groups and aliases. A synonym group is an array of arrays, where each sub-array is a group of terms where each term in the group is considered a synonym of every other term in the group. The aliases value is an object that contains a collection of string:value pairs where the string specifies a term and the array of values specifies each of the aliases for that term. An alias is considered a synonym of the specified term, but the term is not considered a synonym of the alias. For more information about specifying synonyms, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html synonyms">Synonyms</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute stopwords
    #   <p>A  JSON array of terms to ignore during indexing and searching. For example, <code>["a", "an", "the", "of"]</code>. The stopwords dictionary must explicitly list each word you want to ignore. Wildcards and regular expressions are not supported. </p>
    #
    #   @return [String]
    #
    # @!attribute stemming_dictionary
    #   <p>A JSON object that contains a collection of string:value pairs that each map a term to its stem. For example, <code>{"term1": "stem1", "term2": "stem2", "term3": "stem3"}</code>. The stemming dictionary is applied in addition to any algorithmic stemming. This enables you to override the results of the algorithmic stemming to correct specific cases of overstemming or understemming. The maximum size of a stemming dictionary is 500 KB.</p>
    #
    #   @return [String]
    #
    # @!attribute japanese_tokenization_dictionary
    #   <p>A JSON array that contains a collection of terms, tokens, readings and part of speech for Japanese Tokenizaiton. The Japanese tokenization dictionary enables you to override the default tokenization for selected terms. This is only valid for Japanese language fields.</p>
    #
    #   @return [String]
    #
    # @!attribute algorithmic_stemming
    #   <p>The level of algorithmic stemming to perform: <code>none</code>, <code>minimal</code>, <code>light</code>, or <code>full</code>. The available levels vary depending on the language. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/text-processing.html text-processing-settings" target="_blank">Language Specific Text Processing Settings</a> in the <i>Amazon CloudSearch Developer Guide</i> </p>
    #
    #   Enum, one of: ["none", "minimal", "light", "full"]
    #
    #   @return [String]
    #
    AnalysisOptions = ::Struct.new(
      :synonyms,
      :stopwords,
      :stemming_dictionary,
      :japanese_tokenization_dictionary,
      :algorithmic_stemming,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information for an analysis scheme. Each analysis scheme has a unique name and specifies the language of the text to be processed. The following options can be configured for an analysis scheme: <code>Synonyms</code>, <code>Stopwords</code>, <code>StemmingDictionary</code>, <code>JapaneseTokenizationDictionary</code> and <code>AlgorithmicStemming</code>.</p>
    #
    # @!attribute analysis_scheme_name
    #   <p>Names must begin with a letter and can contain the following characters:
    #         a-z (lowercase), 0-9, and _ (underscore).</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_scheme_language
    #   <p>An <a href="http://tools.ietf.org/html/rfc4646" target="_blank">IETF RFC 4646</a> language code or <code>mul</code>  for multiple languages.</p>
    #
    #   Enum, one of: ["ar", "bg", "ca", "cs", "da", "de", "el", "en", "es", "eu", "fa", "fi", "fr", "ga", "gl", "he", "hi", "hu", "hy", "id", "it", "ja", "ko", "lv", "mul", "nl", "no", "pt", "ro", "ru", "sv", "th", "tr", "zh-Hans", "zh-Hant"]
    #
    #   @return [String]
    #
    # @!attribute analysis_options
    #   <p>Synonyms, stopwords, and stemming options for an analysis scheme. Includes tokenization dictionary for Japanese.</p>
    #
    #   @return [AnalysisOptions]
    #
    AnalysisScheme = ::Struct.new(
      :analysis_scheme_name,
      :analysis_scheme_language,
      :analysis_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AnalysisSchemeLanguage
    #
    module AnalysisSchemeLanguage
      # No documentation available.
      #
      ar = "ar"

      # No documentation available.
      #
      bg = "bg"

      # No documentation available.
      #
      ca = "ca"

      # No documentation available.
      #
      cs = "cs"

      # No documentation available.
      #
      da = "da"

      # No documentation available.
      #
      de = "de"

      # No documentation available.
      #
      el = "el"

      # No documentation available.
      #
      en = "en"

      # No documentation available.
      #
      es = "es"

      # No documentation available.
      #
      eu = "eu"

      # No documentation available.
      #
      fa = "fa"

      # No documentation available.
      #
      fi = "fi"

      # No documentation available.
      #
      fr = "fr"

      # No documentation available.
      #
      ga = "ga"

      # No documentation available.
      #
      gl = "gl"

      # No documentation available.
      #
      he = "he"

      # No documentation available.
      #
      hi = "hi"

      # No documentation available.
      #
      hu = "hu"

      # No documentation available.
      #
      hy = "hy"

      # No documentation available.
      #
      id = "id"

      # No documentation available.
      #
      it = "it"

      # No documentation available.
      #
      ja = "ja"

      # No documentation available.
      #
      ko = "ko"

      # No documentation available.
      #
      lv = "lv"

      # No documentation available.
      #
      mul = "mul"

      # No documentation available.
      #
      nl = "nl"

      # No documentation available.
      #
      no = "no"

      # No documentation available.
      #
      pt = "pt"

      # No documentation available.
      #
      ro = "ro"

      # No documentation available.
      #
      ru = "ru"

      # No documentation available.
      #
      sv = "sv"

      # No documentation available.
      #
      th = "th"

      # No documentation available.
      #
      tr = "tr"

      # No documentation available.
      #
      zh_Hans = "zh-Hans"

      # No documentation available.
      #
      zh_Hant = "zh-Hant"
    end

    # <p>The status and configuration of an  <code>AnalysisScheme</code>.</p>
    #
    # @!attribute options
    #   <p>Configuration information for an analysis scheme. Each analysis scheme has a unique name and specifies the language of the text to be processed. The following options can be configured for an analysis scheme: <code>Synonyms</code>, <code>Stopwords</code>, <code>StemmingDictionary</code>, <code>JapaneseTokenizationDictionary</code> and <code>AlgorithmicStemming</code>.</p>
    #
    #   @return [AnalysisScheme]
    #
    # @!attribute status
    #   <p>The status of domain configuration option.</p>
    #
    #   @return [OptionStatus]
    #
    AnalysisSchemeStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The status and configuration of the domain's availability options.</p>
    #
    # @!attribute options
    #   <p>The availability options configured for the domain.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>The status of domain configuration option.</p>
    #
    #   @return [OptionStatus]
    #
    AvailabilityOptionsStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.options ||= false
      end
    end

    # <p>An error occurred while processing the request.</p>
    #
    # @!attribute code
    #   <p>A machine-parsable string error or warning code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A human-readable string error or warning message.</p>
    #
    #   @return [String]
    #
    BaseException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>BuildSuggester</a></code> operation. Specifies the name of the domain you want to update.</p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    BuildSuggestersInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>BuildSuggester</code> request. Contains a list of the fields used for suggestions.</p>
    #
    # @!attribute field_names
    #   <p>A list of field names.</p>
    #
    #   @return [Array<String>]
    #
    BuildSuggestersOutput = ::Struct.new(
      :field_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>CreateDomain</a></code> operation. Specifies a name for the new search domain.</p>
    #
    # @!attribute domain_name
    #   <p>A name for the domain you are creating. Allowed characters are a-z (lower-case letters), 0-9, and hyphen (-). Domain names must start with a letter or number and be at least 3 and no more than 28 characters long.</p>
    #
    #   @return [String]
    #
    CreateDomainInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>CreateDomainRequest</code>. Contains the status of a newly created domain.</p>
    #
    # @!attribute domain_status
    #   <p>The current status of the search domain.</p>
    #
    #   @return [DomainStatus]
    #
    CreateDomainOutput = ::Struct.new(
      :domain_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Options for a field that contains an array of dates.  Present if <code>IndexFieldType</code> specifies the field is of type <code>date-array</code>. All options are enabled by default.</p>
    #
    # @!attribute default_value
    #   A value to use for the field if the field isn't specified for a document.
    #
    #   @return [String]
    #
    # @!attribute source_fields
    #   <p>A list of source fields to map to the field. </p>
    #
    #   @return [String]
    #
    # @!attribute facet_enabled
    #   <p>Whether facet information can be returned for the field.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute search_enabled
    #   <p>Whether the contents of the field are searchable.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute return_enabled
    #   <p>Whether the contents of the field can be returned in the search results.</p>
    #
    #   @return [Boolean]
    #
    DateArrayOptions = ::Struct.new(
      :default_value,
      :source_fields,
      :facet_enabled,
      :search_enabled,
      :return_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Options for a date field. Dates and times are specified in UTC (Coordinated Universal Time) according to IETF RFC3339: yyyy-mm-ddT00:00:00Z.  Present if <code>IndexFieldType</code> specifies the field is of type <code>date</code>. All options are enabled by default.</p>
    #
    # @!attribute default_value
    #   A value to use for the field if the field isn't specified for a document.
    #
    #   @return [String]
    #
    # @!attribute source_field
    #   <p>A string that represents the name of an index field. CloudSearch supports regular index fields as well as dynamic fields.
    #         A dynamic field's name defines a pattern that begins or ends with a wildcard.
    #         Any document fields that don't map to a regular index field but do match a	
    #         dynamic field's pattern are configured with the dynamic field's indexing options.
    #       </p>
    #       <p>Regular field names begin with a letter and can contain the following characters:
    #         a-z (lowercase), 0-9, and _ (underscore).
    #         Dynamic field names must begin or end with a wildcard (*).
    #         The wildcard can also be the only character in a dynamic field name.
    #         Multiple wildcards, and wildcards embedded within a string are not supported.
    #       </p>
    #       <p>The name <code>score</code> is reserved and cannot be used as a field name.
    #         To reference a document's ID, you can use the name <code>_id</code>.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute facet_enabled
    #   <p>Whether facet information can be returned for the field.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute search_enabled
    #   <p>Whether the contents of the field are searchable.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute return_enabled
    #   <p>Whether the contents of the field can be returned in the search results.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sort_enabled
    #   <p>Whether the field can be used to sort the search results.</p>
    #
    #   @return [Boolean]
    #
    DateOptions = ::Struct.new(
      :default_value,
      :source_field,
      :facet_enabled,
      :search_enabled,
      :return_enabled,
      :sort_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DefineAnalysisScheme</a></code> operation. Specifies the name of the domain you want to update and the analysis scheme configuration.</p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_scheme
    #   <p>Configuration information for an analysis scheme. Each analysis scheme has a unique name and specifies the language of the text to be processed. The following options can be configured for an analysis scheme: <code>Synonyms</code>, <code>Stopwords</code>, <code>StemmingDictionary</code>, <code>JapaneseTokenizationDictionary</code> and <code>AlgorithmicStemming</code>.</p>
    #
    #   @return [AnalysisScheme]
    #
    DefineAnalysisSchemeInput = ::Struct.new(
      :domain_name,
      :analysis_scheme,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code><a>DefineAnalysisScheme</a></code> request. Contains the status of the newly-configured analysis scheme.</p>
    #
    # @!attribute analysis_scheme
    #   <p>The status and configuration of an  <code>AnalysisScheme</code>.</p>
    #
    #   @return [AnalysisSchemeStatus]
    #
    DefineAnalysisSchemeOutput = ::Struct.new(
      :analysis_scheme,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DefineExpression</a></code> operation. Specifies the name of the domain you want to update and the expression you want to configure.</p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>A named expression that can be evaluated at search time. Can be used to sort the search results, define other expressions, or return computed information in the search results.  </p>
    #
    #   @return [Expression]
    #
    DefineExpressionInput = ::Struct.new(
      :domain_name,
      :expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DefineExpression</code> request. Contains the status of the newly-configured expression.</p>
    #
    # @!attribute expression
    #   <p>The value of an <code>Expression</code> and its current status.</p>
    #
    #   @return [ExpressionStatus]
    #
    DefineExpressionOutput = ::Struct.new(
      :expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DefineIndexField</a></code> operation. Specifies the name of the domain you want to update and the index field configuration.</p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute index_field
    #   <p>The index field and field options you want to configure. </p>
    #
    #   @return [IndexField]
    #
    DefineIndexFieldInput = ::Struct.new(
      :domain_name,
      :index_field,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code><a>DefineIndexField</a></code> request. Contains the status of the newly-configured index field.</p>
    #
    # @!attribute index_field
    #   <p>The value of an <code>IndexField</code> and its current status.</p>
    #
    #   @return [IndexFieldStatus]
    #
    DefineIndexFieldOutput = ::Struct.new(
      :index_field,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DefineSuggester</a></code> operation. Specifies the name of the domain you want to update and the suggester configuration.</p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute suggester
    #   <p>Configuration information for a search suggester. Each suggester has a unique name and specifies the text field you want to use for suggestions. The following options can be configured for a suggester: <code>FuzzyMatching</code>, <code>SortExpression</code>. </p>
    #
    #   @return [Suggester]
    #
    DefineSuggesterInput = ::Struct.new(
      :domain_name,
      :suggester,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DefineSuggester</code> request. Contains the status of the newly-configured suggester.</p>
    #
    # @!attribute suggester
    #   <p>The value of a <code>Suggester</code> and its current status.</p>
    #
    #   @return [SuggesterStatus]
    #
    DefineSuggesterOutput = ::Struct.new(
      :suggester,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DeleteAnalysisScheme</a></code> operation. Specifies the name of the domain you want to update and the analysis scheme you want to delete. </p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_scheme_name
    #   <p>The name of the analysis scheme you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteAnalysisSchemeInput = ::Struct.new(
      :domain_name,
      :analysis_scheme_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DeleteAnalysisScheme</code> request. Contains the status of the deleted analysis scheme.</p>
    #
    # @!attribute analysis_scheme
    #   <p>The status of the analysis scheme being deleted.</p>
    #
    #   @return [AnalysisSchemeStatus]
    #
    DeleteAnalysisSchemeOutput = ::Struct.new(
      :analysis_scheme,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DeleteDomain</a></code> operation. Specifies the name of the domain you want to delete.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain you want to permanently delete.</p>
    #
    #   @return [String]
    #
    DeleteDomainInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DeleteDomain</code> request. Contains the status of a newly deleted domain, or no status if the domain has already been completely deleted.</p>
    #
    # @!attribute domain_status
    #   <p>The current status of the search domain.</p>
    #
    #   @return [DomainStatus]
    #
    DeleteDomainOutput = ::Struct.new(
      :domain_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DeleteExpression</a></code> operation. Specifies the name of the domain you want to update and the name of the expression you want to delete.</p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute expression_name
    #   <p>The name of the <code><a>Expression</a></code> to delete.</p>
    #
    #   @return [String]
    #
    DeleteExpressionInput = ::Struct.new(
      :domain_name,
      :expression_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code><a>DeleteExpression</a></code> request. Specifies the expression being deleted.</p>
    #
    # @!attribute expression
    #   <p>The status of the expression being deleted.</p>
    #
    #   @return [ExpressionStatus]
    #
    DeleteExpressionOutput = ::Struct.new(
      :expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DeleteIndexField</a></code> operation. Specifies the name of the domain you want to update and the name of the index field you want to delete.</p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute index_field_name
    #   <p>The name of the index field your want to remove from the domain's indexing options.</p>
    #
    #   @return [String]
    #
    DeleteIndexFieldInput = ::Struct.new(
      :domain_name,
      :index_field_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code><a>DeleteIndexField</a></code> request.</p>
    #
    # @!attribute index_field
    #   <p>The status of the index field being deleted.</p>
    #
    #   @return [IndexFieldStatus]
    #
    DeleteIndexFieldOutput = ::Struct.new(
      :index_field,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DeleteSuggester</a></code> operation. Specifies the name of the domain you want to update and name of the suggester you want to delete.</p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute suggester_name
    #   <p>Specifies the name of the suggester you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteSuggesterInput = ::Struct.new(
      :domain_name,
      :suggester_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DeleteSuggester</code> request. Contains the status of the deleted suggester.</p>
    #
    # @!attribute suggester
    #   <p>The status of the suggester being deleted.</p>
    #
    #   @return [SuggesterStatus]
    #
    DeleteSuggesterOutput = ::Struct.new(
      :suggester,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeAnalysisSchemes</a></code> operation. Specifies the name of the domain you want to describe. To limit the response to particular analysis schemes, specify the names of the analysis schemes you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>. </p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_scheme_names
    #   <p>The analysis schemes you want to describe.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    DescribeAnalysisSchemesInput = ::Struct.new(
      :domain_name,
      :analysis_scheme_names,
      :deployed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DescribeAnalysisSchemes</code> request. Contains the analysis schemes configured for the domain specified in the request.</p>
    #
    # @!attribute analysis_schemes
    #   <p>The analysis scheme descriptions.</p>
    #
    #   @return [Array<AnalysisSchemeStatus>]
    #
    DescribeAnalysisSchemesOutput = ::Struct.new(
      :analysis_schemes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the Deployed option to <code>true</code>.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    DescribeAvailabilityOptionsInput = ::Struct.new(
      :domain_name,
      :deployed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DescribeAvailabilityOptions</code> request. Indicates whether or not the Multi-AZ option is enabled for the domain specified in the request. </p>
    #
    # @!attribute availability_options
    #   <p>The availability options configured for the domain. Indicates whether Multi-AZ is enabled for the domain. </p>
    #
    #   @return [AvailabilityOptionsStatus]
    #
    DescribeAvailabilityOptionsOutput = ::Struct.new(
      :availability_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeDomainEndpointOptions</a></code> operation. Specify the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the Deployed option to <code>true</code>.</p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain.</p>
    #
    #   @return [String]
    #
    # @!attribute deployed
    #   <p>Whether to retrieve the latest configuration (which might be in a Processing state) or the current, active configuration. Defaults to <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    DescribeDomainEndpointOptionsInput = ::Struct.new(
      :domain_name,
      :deployed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DescribeDomainEndpointOptions</code> request. Contains the status and configuration of a search domain's endpoint options. </p>
    #
    # @!attribute domain_endpoint_options
    #   <p>The status and configuration of a search domain's endpoint options.</p>
    #
    #   @return [DomainEndpointOptionsStatus]
    #
    DescribeDomainEndpointOptionsOutput = ::Struct.new(
      :domain_endpoint_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeDomains</a></code> operation. By default shows the status of all domains. To restrict the response to particular domains, specify the names of the domains you want to describe.</p>
    #
    # @!attribute domain_names
    #   <p>The names of the domains you want to include in the response.</p>
    #
    #   @return [Array<String>]
    #
    DescribeDomainsInput = ::Struct.new(
      :domain_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DescribeDomains</code> request. Contains the status of the domains specified in the request or all domains owned by the account.</p>
    #
    # @!attribute domain_status_list
    #   <p>A list that contains the status of each requested domain.</p>
    #
    #   @return [Array<DomainStatus>]
    #
    DescribeDomainsOutput = ::Struct.new(
      :domain_status_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeDomains</a></code> operation.
    #       Specifies the name of the domain you want to describe. To restrict the response to particular expressions, specify the names of the expressions you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute expression_names
    #   <p>Limits the <code><a>DescribeExpressions</a></code> response to the specified expressions. If not specified, all expressions are shown.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    DescribeExpressionsInput = ::Struct.new(
      :domain_name,
      :expression_names,
      :deployed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DescribeExpressions</code> request. Contains the expressions configured for the domain specified in the request.</p>
    #
    # @!attribute expressions
    #   <p>The expressions configured for the domain.</p>
    #
    #   @return [Array<ExpressionStatus>]
    #
    DescribeExpressionsOutput = ::Struct.new(
      :expressions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeIndexFields</a></code> operation. Specifies the name of the domain you want to describe. To restrict the response to particular index fields, specify the names of the index fields you want to describe. To show  the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute field_names
    #   <p>A list of the index fields you want to describe. If not specified, information is returned for all configured index fields.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    DescribeIndexFieldsInput = ::Struct.new(
      :domain_name,
      :field_names,
      :deployed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DescribeIndexFields</code> request. Contains the index fields configured for the domain specified in the request.</p>
    #
    # @!attribute index_fields
    #   <p>The index fields configured for the domain.</p>
    #
    #   @return [Array<IndexFieldStatus>]
    #
    DescribeIndexFieldsOutput = ::Struct.new(
      :index_fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeScalingParameters</a></code> operation. Specifies the name of the domain you want to describe. </p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    DescribeScalingParametersInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DescribeScalingParameters</code> request. Contains the scaling parameters configured for the domain specified in the request.</p>
    #
    # @!attribute scaling_parameters
    #   <p>The status and configuration of a search domain's scaling parameters. </p>
    #
    #   @return [ScalingParametersStatus]
    #
    DescribeScalingParametersOutput = ::Struct.new(
      :scaling_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeServiceAccessPolicies</a></code> operation. Specifies the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    DescribeServiceAccessPoliciesInput = ::Struct.new(
      :domain_name,
      :deployed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DescribeServiceAccessPolicies</code> request.</p>
    #
    # @!attribute access_policies
    #   <p>The access rules configured for the domain specified in the request.</p>
    #
    #   @return [AccessPoliciesStatus]
    #
    DescribeServiceAccessPoliciesOutput = ::Struct.new(
      :access_policies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>DescribeSuggester</a></code> operation. Specifies the name of the domain you want to describe. To restrict the response to particular suggesters, specify the names of the suggesters you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>
    #
    # @!attribute domain_name
    #   <p>The name of the domain you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute suggester_names
    #   <p>The suggesters you want to describe.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    DescribeSuggestersInput = ::Struct.new(
      :domain_name,
      :suggester_names,
      :deployed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>DescribeSuggesters</code> request.</p>
    #
    # @!attribute suggesters
    #   <p>The suggesters configured for the domain specified in the request.</p>
    #
    #   @return [Array<SuggesterStatus>]
    #
    DescribeSuggestersOutput = ::Struct.new(
      :suggesters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because it attempted an operation which is not enabled.</p>
    #
    # @!attribute code
    #   <p>A machine-parsable string error or warning code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A human-readable string error or warning message.</p>
    #
    #   @return [String]
    #
    DisabledOperationException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Options for a search suggester.</p>
    #
    # @!attribute source_field
    #   <p>The name of the index field you want to use for suggestions.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute fuzzy_matching
    #   <p>The level of fuzziness allowed when suggesting matches for a string: <code>none</code>, <code>low</code>, or <code>high</code>. With none, the specified string is treated as an exact prefix. With low, suggestions must differ from the specified string by no more than one character. With high, suggestions can differ by up to two characters. The default is none. </p>
    #
    #   Enum, one of: ["none", "low", "high"]
    #
    #   @return [String]
    #
    # @!attribute sort_expression
    #   <p>An expression that computes a score for each suggestion to control how they are sorted. The scores are rounded to the nearest
    #           integer, with a floor of 0 and a ceiling of 2^31-1. A document's relevance score is not computed
    #           for suggestions, so sort expressions cannot reference the <code>_score</code> value.
    #           To sort suggestions using a numeric field or existing expression, simply specify
    #           the name of the field or expression. If no expression is configured for the suggester, the
    #           suggestions are sorted with the closest matches listed first.</p>
    #
    #   @return [String]
    #
    DocumentSuggesterOptions = ::Struct.new(
      :source_field,
      :fuzzy_matching,
      :sort_expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The domain's endpoint options.</p>
    #
    # @!attribute enforce_https
    #   <p>Whether the domain is HTTPS only enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tls_security_policy
    #   <p>The minimum required TLS version</p>
    #
    #   Enum, one of: ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #
    #   @return [String]
    #
    DomainEndpointOptions = ::Struct.new(
      :enforce_https,
      :tls_security_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration and status of the domain's endpoint options.</p>
    #
    # @!attribute options
    #   <p>The domain endpoint options configured for the domain.</p>
    #
    #   @return [DomainEndpointOptions]
    #
    # @!attribute status
    #   <p>The status of the configured domain endpoint options.</p>
    #
    #   @return [OptionStatus]
    #
    DomainEndpointOptionsStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The current status of the search domain.</p>
    #
    # @!attribute domain_id
    #   <p>An internally generated unique identifier for a domain.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the search domain.  See <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html" target="_blank">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>True if the search domain is created. It can take several minutes to initialize a domain when <a>CreateDomain</a> is called. Newly created search domains are returned from <a>DescribeDomains</a> with a false value for Created until domain creation is complete.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute deleted
    #   <p>True if the search domain has been deleted.  The system must clean up resources dedicated to the search domain when <a>DeleteDomain</a> is called.  Newly deleted search domains are returned from <a>DescribeDomains</a> with a true value for IsDeleted for several minutes until resource cleanup is complete.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute doc_service
    #   <p>The service endpoint for updating documents in a search domain.</p>
    #
    #   @return [ServiceEndpoint]
    #
    # @!attribute search_service
    #   <p>The service endpoint for requesting search results from a search domain.</p>
    #
    #   @return [ServiceEndpoint]
    #
    # @!attribute requires_index_documents
    #   <p>True if <a>IndexDocuments</a> needs to be called to activate the current domain configuration.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute processing
    #   <p>True if processing is being done to activate the current domain configuration.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute search_instance_type
    #   <p>The instance type that is being used to process search requests.</p>
    #
    #   @return [String]
    #
    # @!attribute search_partition_count
    #   <p>The number of partitions across which the search index is spread.</p>
    #
    #   @return [Integer]
    #
    # @!attribute search_instance_count
    #   <p>The number of search instances that are available to process search requests.</p>
    #
    #   @return [Integer]
    #
    # @!attribute limits
    #
    #   @return [Limits]
    #
    DomainStatus = ::Struct.new(
      :domain_id,
      :domain_name,
      :arn,
      :created,
      :deleted,
      :doc_service,
      :search_service,
      :requires_index_documents,
      :processing,
      :search_instance_type,
      :search_partition_count,
      :search_instance_count,
      :limits,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.search_partition_count ||= 0
        self.search_instance_count ||= 0
      end
    end

    # <p>Options for a field that contains an array of double-precision 64-bit floating point values.  Present if <code>IndexFieldType</code> specifies the field is of type <code>double-array</code>.  All options are enabled by default.</p>
    #
    # @!attribute default_value
    #   A value to use for the field if the field isn't specified for a document.
    #
    #   @return [Float]
    #
    # @!attribute source_fields
    #   <p>A list of source fields to map to the field. </p>
    #
    #   @return [String]
    #
    # @!attribute facet_enabled
    #   <p>Whether facet information can be returned for the field.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute search_enabled
    #   <p>Whether the contents of the field are searchable.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute return_enabled
    #   <p>Whether the contents of the field can be returned in the search results.</p>
    #
    #   @return [Boolean]
    #
    DoubleArrayOptions = ::Struct.new(
      :default_value,
      :source_fields,
      :facet_enabled,
      :search_enabled,
      :return_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Options for a double-precision 64-bit floating point field.  Present if <code>IndexFieldType</code> specifies the field is of type <code>double</code>. All options are enabled by default.</p>
    #
    # @!attribute default_value
    #   <p>A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document.</p>
    #
    #   @return [Float]
    #
    # @!attribute source_field
    #   <p>The name of the source field to map to the field. </p>
    #
    #   @return [String]
    #
    # @!attribute facet_enabled
    #   <p>Whether facet information can be returned for the field.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute search_enabled
    #   <p>Whether the contents of the field are searchable.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute return_enabled
    #   <p>Whether the contents of the field can be returned in the search results.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sort_enabled
    #   <p>Whether the field can be used to sort the search results.</p>
    #
    #   @return [Boolean]
    #
    DoubleOptions = ::Struct.new(
      :default_value,
      :source_field,
      :facet_enabled,
      :search_enabled,
      :return_enabled,
      :sort_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A named expression that can be evaluated at search time. Can be used to sort the search results, define other expressions, or return computed information in the search results.  </p>
    #
    # @!attribute expression_name
    #   <p>Names must begin with a letter and can contain the following characters:
    #         a-z (lowercase), 0-9, and _ (underscore).</p>
    #
    #   @return [String]
    #
    # @!attribute expression_value
    #   <p>The expression to evaluate for sorting while processing a search request.  The <code>Expression</code> syntax is based on JavaScript expressions. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html" target="_blank">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    Expression = ::Struct.new(
      :expression_name,
      :expression_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value of an <code>Expression</code> and its current status.</p>
    #
    # @!attribute options
    #   <p>The expression that is evaluated for sorting while processing a search request.</p>
    #
    #   @return [Expression]
    #
    # @!attribute status
    #   <p>The status of domain configuration option.</p>
    #
    #   @return [OptionStatus]
    #
    ExpressionStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>IndexDocuments</a></code> operation. Specifies the name of the domain you want to re-index.</p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    IndexDocumentsInput = ::Struct.new(
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of an <code>IndexDocuments</code> request. Contains the status of the indexing operation, including the fields being indexed.</p>
    #
    # @!attribute field_names
    #   <p>The names of the fields that are currently being indexed.</p>
    #
    #   @return [Array<String>]
    #
    IndexDocumentsOutput = ::Struct.new(
      :field_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information for a field in the index, including its name, type, and options. The supported options depend on the <code><a>IndexFieldType</a></code>.</p>
    #
    # @!attribute index_field_name
    #   <p>A string that represents the name of an index field. CloudSearch supports regular index fields as well as dynamic fields.
    #         A dynamic field's name defines a pattern that begins or ends with a wildcard.
    #         Any document fields that don't map to a regular index field but do match a	
    #         dynamic field's pattern are configured with the dynamic field's indexing options.
    #       </p>
    #       <p>Regular field names begin with a letter and can contain the following characters:
    #         a-z (lowercase), 0-9, and _ (underscore).
    #         Dynamic field names must begin or end with a wildcard (*).
    #         The wildcard can also be the only character in a dynamic field name.
    #         Multiple wildcards, and wildcards embedded within a string are not supported.
    #       </p>
    #       <p>The name <code>score</code> is reserved and cannot be used as a field name.
    #         To reference a document's ID, you can use the name <code>_id</code>.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute index_field_type
    #   <p>The type of field. The valid options for a field depend on the field type. For more information about the supported field types, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html" target="_blank">Configuring Index Fields</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    #   Enum, one of: ["int", "double", "literal", "text", "date", "latlon", "int-array", "double-array", "literal-array", "text-array", "date-array"]
    #
    #   @return [String]
    #
    # @!attribute int_options
    #   <p>Options for a 64-bit signed integer field.  Present if <code>IndexFieldType</code> specifies the field is of type <code>int</code>. All options are enabled by default.</p>
    #
    #   @return [IntOptions]
    #
    # @!attribute double_options
    #   <p>Options for a double-precision 64-bit floating point field.  Present if <code>IndexFieldType</code> specifies the field is of type <code>double</code>. All options are enabled by default.</p>
    #
    #   @return [DoubleOptions]
    #
    # @!attribute literal_options
    #   <p>Options for literal field.  Present if <code>IndexFieldType</code> specifies the field is of type <code>literal</code>. All options are enabled by default.</p>
    #
    #   @return [LiteralOptions]
    #
    # @!attribute text_options
    #   <p>Options for text field.  Present if <code>IndexFieldType</code> specifies the field is of type <code>text</code>. A <code>text</code> field is always searchable. All options are enabled by default.</p>
    #
    #   @return [TextOptions]
    #
    # @!attribute date_options
    #   <p>Options for a date field. Dates and times are specified in UTC (Coordinated Universal Time) according to IETF RFC3339: yyyy-mm-ddT00:00:00Z.  Present if <code>IndexFieldType</code> specifies the field is of type <code>date</code>. All options are enabled by default.</p>
    #
    #   @return [DateOptions]
    #
    # @!attribute lat_lon_options
    #   <p>Options for a latlon field. A latlon field contains a location stored as a latitude and longitude value pair. Present if <code>IndexFieldType</code> specifies the field is of type <code>latlon</code>. All options are enabled by default.</p>
    #
    #   @return [LatLonOptions]
    #
    # @!attribute int_array_options
    #   <p>Options for a field that contains an array of 64-bit signed integers.  Present if <code>IndexFieldType</code> specifies the field is of type <code>int-array</code>. All options are enabled by default.</p>
    #
    #   @return [IntArrayOptions]
    #
    # @!attribute double_array_options
    #   <p>Options for a field that contains an array of double-precision 64-bit floating point values.  Present if <code>IndexFieldType</code> specifies the field is of type <code>double-array</code>.  All options are enabled by default.</p>
    #
    #   @return [DoubleArrayOptions]
    #
    # @!attribute literal_array_options
    #   <p>Options for a field that contains an array of literal strings.  Present if <code>IndexFieldType</code> specifies the field is of type <code>literal-array</code>. All options are enabled by default.</p>
    #
    #   @return [LiteralArrayOptions]
    #
    # @!attribute text_array_options
    #   <p>Options for a field that contains an array of text strings.  Present if <code>IndexFieldType</code> specifies the field is of type <code>text-array</code>. A <code>text-array</code> field is always searchable. All options are enabled by default.</p>
    #
    #   @return [TextArrayOptions]
    #
    # @!attribute date_array_options
    #   <p>Options for a field that contains an array of dates.  Present if <code>IndexFieldType</code> specifies the field is of type <code>date-array</code>. All options are enabled by default.</p>
    #
    #   @return [DateArrayOptions]
    #
    IndexField = ::Struct.new(
      :index_field_name,
      :index_field_type,
      :int_options,
      :double_options,
      :literal_options,
      :text_options,
      :date_options,
      :lat_lon_options,
      :int_array_options,
      :double_array_options,
      :literal_array_options,
      :text_array_options,
      :date_array_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value of an <code>IndexField</code> and its current status.</p>
    #
    # @!attribute options
    #   <p>Configuration information for a field in the index, including its name, type, and options. The supported options depend on the <code><a>IndexFieldType</a></code>.</p>
    #
    #   @return [IndexField]
    #
    # @!attribute status
    #   <p>The status of domain configuration option.</p>
    #
    #   @return [OptionStatus]
    #
    IndexFieldStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IndexFieldType
    #
    module IndexFieldType
      # No documentation available.
      #
      int = "int"

      # No documentation available.
      #
      double = "double"

      # No documentation available.
      #
      literal = "literal"

      # No documentation available.
      #
      text = "text"

      # No documentation available.
      #
      date = "date"

      # No documentation available.
      #
      latlon = "latlon"

      # No documentation available.
      #
      int_array = "int-array"

      # No documentation available.
      #
      double_array = "double-array"

      # No documentation available.
      #
      literal_array = "literal-array"

      # No documentation available.
      #
      text_array = "text-array"

      # No documentation available.
      #
      date_array = "date-array"
    end

    # <p>Options for a field that contains an array of 64-bit signed integers.  Present if <code>IndexFieldType</code> specifies the field is of type <code>int-array</code>. All options are enabled by default.</p>
    #
    # @!attribute default_value
    #   A value to use for the field if the field isn't specified for a document.
    #
    #   @return [Integer]
    #
    # @!attribute source_fields
    #   <p>A list of source fields to map to the field. </p>
    #
    #   @return [String]
    #
    # @!attribute facet_enabled
    #   <p>Whether facet information can be returned for the field.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute search_enabled
    #   <p>Whether the contents of the field are searchable.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute return_enabled
    #   <p>Whether the contents of the field can be returned in the search results.</p>
    #
    #   @return [Boolean]
    #
    IntArrayOptions = ::Struct.new(
      :default_value,
      :source_fields,
      :facet_enabled,
      :search_enabled,
      :return_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Options for a 64-bit signed integer field.  Present if <code>IndexFieldType</code> specifies the field is of type <code>int</code>. All options are enabled by default.</p>
    #
    # @!attribute default_value
    #   A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document.
    #
    #   @return [Integer]
    #
    # @!attribute source_field
    #   <p>The name of the source field to map to the field. </p>
    #
    #   @return [String]
    #
    # @!attribute facet_enabled
    #   <p>Whether facet information can be returned for the field.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute search_enabled
    #   <p>Whether the contents of the field are searchable.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute return_enabled
    #   <p>Whether the contents of the field can be returned in the search results.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sort_enabled
    #   <p>Whether the field can be used to sort the search results.</p>
    #
    #   @return [Boolean]
    #
    IntOptions = ::Struct.new(
      :default_value,
      :source_field,
      :facet_enabled,
      :search_enabled,
      :return_enabled,
      :sort_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal error occurred while processing the request. If this problem persists,
    #       report an issue from the <a href="http://status.aws.amazon.com/" target="_blank">Service Health Dashboard</a>.</p>
    #
    # @!attribute code
    #   <p>A machine-parsable string error or warning code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A human-readable string error or warning message.</p>
    #
    #   @return [String]
    #
    InternalException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because it specified an invalid type definition.</p>
    #
    # @!attribute code
    #   <p>A machine-parsable string error or warning code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A human-readable string error or warning message.</p>
    #
    #   @return [String]
    #
    InvalidTypeException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Options for a latlon field. A latlon field contains a location stored as a latitude and longitude value pair. Present if <code>IndexFieldType</code> specifies the field is of type <code>latlon</code>. All options are enabled by default.</p>
    #
    # @!attribute default_value
    #   A value to use for the field if the field isn't specified for a document.
    #
    #   @return [String]
    #
    # @!attribute source_field
    #   <p>A string that represents the name of an index field. CloudSearch supports regular index fields as well as dynamic fields.
    #         A dynamic field's name defines a pattern that begins or ends with a wildcard.
    #         Any document fields that don't map to a regular index field but do match a	
    #         dynamic field's pattern are configured with the dynamic field's indexing options.
    #       </p>
    #       <p>Regular field names begin with a letter and can contain the following characters:
    #         a-z (lowercase), 0-9, and _ (underscore).
    #         Dynamic field names must begin or end with a wildcard (*).
    #         The wildcard can also be the only character in a dynamic field name.
    #         Multiple wildcards, and wildcards embedded within a string are not supported.
    #       </p>
    #       <p>The name <code>score</code> is reserved and cannot be used as a field name.
    #         To reference a document's ID, you can use the name <code>_id</code>.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute facet_enabled
    #   <p>Whether facet information can be returned for the field.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute search_enabled
    #   <p>Whether the contents of the field are searchable.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute return_enabled
    #   <p>Whether the contents of the field can be returned in the search results.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sort_enabled
    #   <p>Whether the field can be used to sort the search results.</p>
    #
    #   @return [Boolean]
    #
    LatLonOptions = ::Struct.new(
      :default_value,
      :source_field,
      :facet_enabled,
      :search_enabled,
      :return_enabled,
      :sort_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because a resource limit has already been met.</p>
    #
    # @!attribute code
    #   <p>A machine-parsable string error or warning code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A human-readable string error or warning message.</p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute maximum_replication_count
    #
    #   @return [Integer]
    #
    # @!attribute maximum_partition_count
    #
    #   @return [Integer]
    #
    Limits = ::Struct.new(
      :maximum_replication_count,
      :maximum_partition_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.maximum_replication_count ||= 0
        self.maximum_partition_count ||= 0
      end
    end

    ListDomainNamesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>ListDomainNames</code> request. Contains a list of the domains owned by an account.</p>
    #
    # @!attribute domain_names
    #   <p>The names of the search domains owned by an account.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListDomainNamesOutput = ::Struct.new(
      :domain_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Options for a field that contains an array of literal strings.  Present if <code>IndexFieldType</code> specifies the field is of type <code>literal-array</code>. All options are enabled by default.</p>
    #
    # @!attribute default_value
    #   A value to use for the field if the field isn't specified for a document.
    #
    #   @return [String]
    #
    # @!attribute source_fields
    #   <p>A list of source fields to map to the field. </p>
    #
    #   @return [String]
    #
    # @!attribute facet_enabled
    #   <p>Whether facet information can be returned for the field.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute search_enabled
    #   <p>Whether the contents of the field are searchable.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute return_enabled
    #   <p>Whether the contents of the field can be returned in the search results.</p>
    #
    #   @return [Boolean]
    #
    LiteralArrayOptions = ::Struct.new(
      :default_value,
      :source_fields,
      :facet_enabled,
      :search_enabled,
      :return_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Options for literal field.  Present if <code>IndexFieldType</code> specifies the field is of type <code>literal</code>. All options are enabled by default.</p>
    #
    # @!attribute default_value
    #   A value to use for the field if the field isn't specified for a document.
    #
    #   @return [String]
    #
    # @!attribute source_field
    #   <p>A string that represents the name of an index field. CloudSearch supports regular index fields as well as dynamic fields.
    #         A dynamic field's name defines a pattern that begins or ends with a wildcard.
    #         Any document fields that don't map to a regular index field but do match a	
    #         dynamic field's pattern are configured with the dynamic field's indexing options.
    #       </p>
    #       <p>Regular field names begin with a letter and can contain the following characters:
    #         a-z (lowercase), 0-9, and _ (underscore).
    #         Dynamic field names must begin or end with a wildcard (*).
    #         The wildcard can also be the only character in a dynamic field name.
    #         Multiple wildcards, and wildcards embedded within a string are not supported.
    #       </p>
    #       <p>The name <code>score</code> is reserved and cannot be used as a field name.
    #         To reference a document's ID, you can use the name <code>_id</code>.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute facet_enabled
    #   <p>Whether facet information can be returned for the field.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute search_enabled
    #   <p>Whether the contents of the field are searchable.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute return_enabled
    #   <p>Whether the contents of the field can be returned in the search results.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sort_enabled
    #   <p>Whether the field can be used to sort the search results.</p>
    #
    #   @return [Boolean]
    #
    LiteralOptions = ::Struct.new(
      :default_value,
      :source_field,
      :facet_enabled,
      :search_enabled,
      :return_enabled,
      :sort_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OptionState
    #
    module OptionState
      # No documentation available.
      #
      RequiresIndexDocuments = "RequiresIndexDocuments"

      # No documentation available.
      #
      Processing = "Processing"

      # No documentation available.
      #
      Active = "Active"

      # No documentation available.
      #
      FailedToValidate = "FailedToValidate"
    end

    # <p>The status of domain configuration option.</p>
    #
    # @!attribute creation_date
    #   <p>A timestamp for when this option was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_date
    #   <p>A timestamp for when this option was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_version
    #   <p>A unique integer that indicates when this option was last updated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>The state of processing a change to an option.  Possible values:</p><ul>
    #       <li><code>RequiresIndexDocuments</code>: the option's latest value will not be deployed until  <a>IndexDocuments</a> has been called and indexing is complete.</li>
    #       <li><code>Processing</code>: the option's latest value is in the process of being activated.  </li>
    #       <li><code>Active</code>: the option's latest value is completely deployed.</li>
    #       <li><code>FailedToValidate</code>: the option value is not compatible with the domain's data and cannot be used to index the data. You must either modify the option value or update or remove the incompatible documents.</li>
    #     </ul>
    #
    #   Enum, one of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"]
    #
    #   @return [String]
    #
    # @!attribute pending_deletion
    #   <p>Indicates that the option will be deleted once processing is complete.</p>
    #
    #   @return [Boolean]
    #
    OptionStatus = ::Struct.new(
      :creation_date,
      :update_date,
      :update_version,
      :state,
      :pending_deletion,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.update_version ||= 0
      end
    end

    # Includes enum constants for PartitionInstanceType
    #
    module PartitionInstanceType
      # No documentation available.
      #
      search_m1_small = "search.m1.small"

      # No documentation available.
      #
      search_m1_large = "search.m1.large"

      # No documentation available.
      #
      search_m2_xlarge = "search.m2.xlarge"

      # No documentation available.
      #
      search_m2_2xlarge = "search.m2.2xlarge"

      # No documentation available.
      #
      search_m3_medium = "search.m3.medium"

      # No documentation available.
      #
      search_m3_large = "search.m3.large"

      # No documentation available.
      #
      search_m3_xlarge = "search.m3.xlarge"

      # No documentation available.
      #
      search_m3_2xlarge = "search.m3.2xlarge"

      # No documentation available.
      #
      search_small = "search.small"

      # No documentation available.
      #
      search_medium = "search.medium"

      # No documentation available.
      #
      search_large = "search.large"

      # No documentation available.
      #
      search_xlarge = "search.xlarge"

      # No documentation available.
      #
      search_2xlarge = "search.2xlarge"

      # No documentation available.
      #
      search_previousgeneration_small = "search.previousgeneration.small"

      # No documentation available.
      #
      search_previousgeneration_large = "search.previousgeneration.large"

      # No documentation available.
      #
      search_previousgeneration_xlarge = "search.previousgeneration.xlarge"

      # No documentation available.
      #
      search_previousgeneration_2xlarge = "search.previousgeneration.2xlarge"
    end

    # <p>The request was rejected because it attempted to create a resource that already exists.</p>
    #
    # @!attribute code
    #   <p>A machine-parsable string error or warning code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A human-readable string error or warning message.</p>
    #
    #   @return [String]
    #
    ResourceAlreadyExistsException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because it attempted to reference a resource that does not exist.</p>
    #
    # @!attribute code
    #   <p>A machine-parsable string error or warning code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A human-readable string error or warning message.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The desired instance type and desired number of replicas of each index partition.</p>
    #
    # @!attribute desired_instance_type
    #   <p>The instance type that you want to preconfigure for your domain. For example, <code>search.m1.small</code>.</p>
    #
    #   Enum, one of: ["search.m1.small", "search.m1.large", "search.m2.xlarge", "search.m2.2xlarge", "search.m3.medium", "search.m3.large", "search.m3.xlarge", "search.m3.2xlarge", "search.small", "search.medium", "search.large", "search.xlarge", "search.2xlarge", "search.previousgeneration.small", "search.previousgeneration.large", "search.previousgeneration.xlarge", "search.previousgeneration.2xlarge"]
    #
    #   @return [String]
    #
    # @!attribute desired_replication_count
    #   <p>The number of replicas you want to preconfigure for each index partition.</p>
    #
    #   @return [Integer]
    #
    # @!attribute desired_partition_count
    #   <p>The number of partitions you want to preconfigure for your domain. Only valid when
    #       you select <code>m2.2xlarge</code> as the desired instance type.</p>
    #
    #   @return [Integer]
    #
    ScalingParameters = ::Struct.new(
      :desired_instance_type,
      :desired_replication_count,
      :desired_partition_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.desired_replication_count ||= 0
        self.desired_partition_count ||= 0
      end
    end

    # <p>The status and configuration of a search domain's scaling parameters. </p>
    #
    # @!attribute options
    #   <p>The desired instance type and desired number of replicas of each index partition.</p>
    #
    #   @return [ScalingParameters]
    #
    # @!attribute status
    #   <p>The status of domain configuration option.</p>
    #
    #   @return [OptionStatus]
    #
    ScalingParametersStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The endpoint to which service requests can be submitted.</p>
    #
    # @!attribute endpoint
    #   <p>The endpoint to which service requests can be submitted. For example, <code>search-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.cloudsearch.amazonaws.com</code> or <code>doc-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.cloudsearch.amazonaws.com</code>.</p>
    #
    #   @return [String]
    #
    ServiceEndpoint = ::Struct.new(
      :endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information for a search suggester. Each suggester has a unique name and specifies the text field you want to use for suggestions. The following options can be configured for a suggester: <code>FuzzyMatching</code>, <code>SortExpression</code>. </p>
    #
    # @!attribute suggester_name
    #   <p>Names must begin with a letter and can contain the following characters:
    #         a-z (lowercase), 0-9, and _ (underscore).</p>
    #
    #   @return [String]
    #
    # @!attribute document_suggester_options
    #   <p>Options for a search suggester.</p>
    #
    #   @return [DocumentSuggesterOptions]
    #
    Suggester = ::Struct.new(
      :suggester_name,
      :document_suggester_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SuggesterFuzzyMatching
    #
    module SuggesterFuzzyMatching
      # No documentation available.
      #
      none = "none"

      # No documentation available.
      #
      low = "low"

      # No documentation available.
      #
      high = "high"
    end

    # <p>The value of a <code>Suggester</code> and its current status.</p>
    #
    # @!attribute options
    #   <p>Configuration information for a search suggester. Each suggester has a unique name and specifies the text field you want to use for suggestions. The following options can be configured for a suggester: <code>FuzzyMatching</code>, <code>SortExpression</code>. </p>
    #
    #   @return [Suggester]
    #
    # @!attribute status
    #   <p>The status of domain configuration option.</p>
    #
    #   @return [OptionStatus]
    #
    SuggesterStatus = ::Struct.new(
      :options,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TLSSecurityPolicy
    #
    module TLSSecurityPolicy
      # No documentation available.
      #
      POLICY_MIN_TLS_1_0_2019_07 = "Policy-Min-TLS-1-0-2019-07"

      # No documentation available.
      #
      POLICY_MIN_TLS_1_2_2019_07 = "Policy-Min-TLS-1-2-2019-07"
    end

    # <p>Options for a field that contains an array of text strings.  Present if <code>IndexFieldType</code> specifies the field is of type <code>text-array</code>. A <code>text-array</code> field is always searchable. All options are enabled by default.</p>
    #
    # @!attribute default_value
    #   A value to use for the field if the field isn't specified for a document.
    #
    #   @return [String]
    #
    # @!attribute source_fields
    #   <p>A list of source fields to map to the field. </p>
    #
    #   @return [String]
    #
    # @!attribute return_enabled
    #   <p>Whether the contents of the field can be returned in the search results.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute highlight_enabled
    #   <p>Whether highlights can be returned for the field.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute analysis_scheme
    #   <p>The name of an analysis scheme for a  <code>text-array</code> field.</p>
    #
    #   @return [String]
    #
    TextArrayOptions = ::Struct.new(
      :default_value,
      :source_fields,
      :return_enabled,
      :highlight_enabled,
      :analysis_scheme,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Options for text field.  Present if <code>IndexFieldType</code> specifies the field is of type <code>text</code>. A <code>text</code> field is always searchable. All options are enabled by default.</p>
    #
    # @!attribute default_value
    #   A value to use for the field if the field isn't specified for a document.
    #
    #   @return [String]
    #
    # @!attribute source_field
    #   <p>A string that represents the name of an index field. CloudSearch supports regular index fields as well as dynamic fields.
    #         A dynamic field's name defines a pattern that begins or ends with a wildcard.
    #         Any document fields that don't map to a regular index field but do match a	
    #         dynamic field's pattern are configured with the dynamic field's indexing options.
    #       </p>
    #       <p>Regular field names begin with a letter and can contain the following characters:
    #         a-z (lowercase), 0-9, and _ (underscore).
    #         Dynamic field names must begin or end with a wildcard (*).
    #         The wildcard can also be the only character in a dynamic field name.
    #         Multiple wildcards, and wildcards embedded within a string are not supported.
    #       </p>
    #       <p>The name <code>score</code> is reserved and cannot be used as a field name.
    #         To reference a document's ID, you can use the name <code>_id</code>.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute return_enabled
    #   <p>Whether the contents of the field can be returned in the search results.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sort_enabled
    #   <p>Whether the field can be used to sort the search results.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute highlight_enabled
    #   <p>Whether highlights can be returned for the field.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute analysis_scheme
    #   <p>The name of an analysis scheme for a  <code>text</code> field.</p>
    #
    #   @return [String]
    #
    TextOptions = ::Struct.new(
      :default_value,
      :source_field,
      :return_enabled,
      :sort_enabled,
      :highlight_enabled,
      :analysis_scheme,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>UpdateAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to update and the Multi-AZ availability option.</p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute multi_az
    #   <p>You expand an existing search domain to a second Availability Zone by setting the Multi-AZ option to true. Similarly, you can turn off the Multi-AZ option to downgrade the domain to a single Availability Zone by setting the Multi-AZ option to <code>false</code>. </p>
    #
    #   @return [Boolean]
    #
    UpdateAvailabilityOptionsInput = ::Struct.new(
      :domain_name,
      :multi_az,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>UpdateAvailabilityOptions</code> request. Contains the status of the domain's availability options. </p>
    #
    # @!attribute availability_options
    #   <p>The newly-configured availability options. Indicates whether Multi-AZ is enabled for the domain. </p>
    #
    #   @return [AvailabilityOptionsStatus]
    #
    UpdateAvailabilityOptionsOutput = ::Struct.new(
      :availability_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>UpdateDomainEndpointOptions</a></code> operation. Specifies the name of the domain you want to update and the domain endpoint options.</p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_endpoint_options
    #   <p>Whether to require that all requests to the domain arrive over HTTPS. We recommend Policy-Min-TLS-1-2-2019-07 for TLSSecurityPolicy. For compatibility with older clients, the default is Policy-Min-TLS-1-0-2019-07. </p>
    #
    #   @return [DomainEndpointOptions]
    #
    UpdateDomainEndpointOptionsInput = ::Struct.new(
      :domain_name,
      :domain_endpoint_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>UpdateDomainEndpointOptions</code> request. Contains the configuration and status of the domain's endpoint options. </p>
    #
    # @!attribute domain_endpoint_options
    #   <p>The newly-configured domain endpoint options.</p>
    #
    #   @return [DomainEndpointOptionsStatus]
    #
    UpdateDomainEndpointOptionsOutput = ::Struct.new(
      :domain_endpoint_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>UpdateScalingParameters</a></code> operation. Specifies the name of the domain you want to update and the scaling parameters you want to configure.</p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_parameters
    #   <p>The desired instance type and desired number of replicas of each index partition.</p>
    #
    #   @return [ScalingParameters]
    #
    UpdateScalingParametersInput = ::Struct.new(
      :domain_name,
      :scaling_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of a <code>UpdateScalingParameters</code> request. Contains the status of the newly-configured scaling parameters.</p>
    #
    # @!attribute scaling_parameters
    #   <p>The status and configuration of a search domain's scaling parameters. </p>
    #
    #   @return [ScalingParametersStatus]
    #
    UpdateScalingParametersOutput = ::Struct.new(
      :scaling_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container for the parameters to the <code><a>UpdateServiceAccessPolicies</a></code> operation. Specifies the name of the domain you want to update and the access rules you want to configure.</p>
    #
    # @!attribute domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    #
    #   @return [String]
    #
    # @!attribute access_policies
    #   <p>The access rules you want to configure. These rules replace any existing rules. </p>
    #
    #   @return [String]
    #
    UpdateServiceAccessPoliciesInput = ::Struct.new(
      :domain_name,
      :access_policies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of an <code>UpdateServiceAccessPolicies</code> request. Contains the new access policies.</p>
    #
    # @!attribute access_policies
    #   <p>The access rules configured for the domain.</p>
    #
    #   @return [AccessPoliciesStatus]
    #
    UpdateServiceAccessPoliciesOutput = ::Struct.new(
      :access_policies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was rejected because it has invalid parameters.</p>
    #
    # @!attribute code
    #   <p>A machine-parsable string error or warning code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A human-readable string error or warning message.</p>
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
