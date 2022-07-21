# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CloudSearchDomain
  # An API client for AmazonCloudSearch2013
  # See {#initialize} for a full list of supported configuration options
  # <p>You use the AmazonCloudSearch2013 API to upload documents to a search domain and search those documents. </p>
  #
  #          <p>The endpoints for submitting <code>UploadDocuments</code>, <code>Search</code>, and <code>Suggest</code> requests are domain-specific. To get the endpoints for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. The domain endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. You submit suggest requests to the search endpoint. </p>
  #          <p>For more information, see the <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide">Amazon CloudSearch Developer Guide</a>.</p>
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
    def initialize(config = AWS::SDK::CloudSearchDomain::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Retrieves a list of documents that match the specified search criteria. How you specify the search criteria depends on which query parser you use. Amazon CloudSearch supports four query parsers:</p>
    #       <ul>
    #          <li><code>simple</code>: search all <code>text</code> and <code>text-array</code> fields for the specified string. Search for phrases, individual terms, and prefixes. </li>
    #          <li><code>structured</code>: search specific fields, construct compound queries using Boolean operators, and use advanced features such as term boosting and proximity searching.</li>
    #          <li><code>lucene</code>: specify search criteria using the Apache Lucene query parser syntax.</li>
    #          <li><code>dismax</code>: specify search criteria using the simplified subset of the Apache Lucene query parser syntax defined by the DisMax query parser.</li>
    #       </ul>
    #       <p>For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html">Searching Your Data</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #       <p>The endpoint for submitting <code>Search</code> requests is domain-specific. You submit search requests to a domain's search endpoint. To get the search endpoint for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. </p>
    #
    # @param [Hash] params
    #   See {Types::SearchInput}.
    #
    # @option params [String] :cursor
    #   <p>Retrieves a cursor value you can use to page through large result sets.
    #            Use the <code>size</code> parameter to control the number of hits to include in each response. You can specify either the <code>cursor</code> or
    #            <code>start</code> parameter in a request; they are mutually exclusive. To get the first cursor, set the cursor value to <code>initial</code>. In subsequent requests, specify the cursor value returned in the hits section of the response. </p>
    #         <p>For more
    #            information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/paginating-results.html">Paginating Results</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @option params [String] :expr
    #   <p>Defines one or more numeric expressions that can be used to sort results or specify search or filter
    #            criteria. You can also specify expressions as return fields. </p>
    #         <p>You specify the expressions in JSON using the form <code>{"EXPRESSIONNAME":"EXPRESSION"}</code>. You can define and use multiple expressions in a search request. For example:</p>
    #         <p><code>
    #            {"expression1":"_score*rating", "expression2":"(1/rank)*year"}
    #         </code> </p>
    #         <p>For information about the variables, operators, and functions you can use in expressions, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html#writing-expressions">Writing Expressions</a>
    #            in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @option params [String] :facet
    #   <p>Specifies one or more fields for which to get facet information, and options that control how the facet information is returned. Each specified field must be facet-enabled in the domain configuration. The fields and options are specified in JSON using the form <code>{"FIELD":{"OPTION":VALUE,"OPTION:"STRING"},"FIELD":{"OPTION":VALUE,"OPTION":"STRING"}}</code>.</p>
    #            <p>You can specify the following faceting options:</p>
    #         <ul>
    #            <li>
    #               <p><code>buckets</code> specifies an array of the facet values or
    #                  ranges to count. Ranges are specified using the same syntax that you use to search for a range of values.
    #                  For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching-ranges.html">
    #                     Searching for a Range of Values</a> in the <i>Amazon CloudSearch Developer Guide</i>. Buckets are returned in the order they
    #                  are specified in the request. The <code>sort</code> and <code>size</code> options are
    #                  not valid if you specify <code>buckets</code>.</p>
    #            </li>
    #            <li>
    #               <p><code>size</code> specifies the maximum number of facets to include in the results. By
    #                  default, Amazon CloudSearch returns counts for the top 10. The
    #                  <code>size</code> parameter is only valid when you specify
    #                  the <code>sort</code> option; it cannot be used in conjunction
    #                  with <code>buckets</code>.</p>
    #            </li>
    #            <li>
    #               <p><code>sort</code> specifies how you want to sort the facets in
    #                  the results: <code>bucket</code> or <code>count</code>. Specify
    #                  <code>bucket</code> to sort alphabetically or numerically by
    #                  facet value (in ascending order). Specify <code>count</code> to
    #                  sort by the facet counts computed for each facet value (in
    #                  descending order). To retrieve facet counts for particular
    #                  values or ranges of values, use the <code>buckets</code> option
    #                  instead of <code>sort</code>. </p>
    #            </li>
    #         </ul>
    #         <p>If no facet options are specified, facet counts are computed for all field values, the facets are sorted by facet count, and the top 10 facets are returned in the results.</p>
    #
    #         <p>To count particular buckets of values, use the <code>buckets</code> option. For example, the following request uses the <code>buckets</code> option to calculate and return facet counts by decade.</p>
    #         <p><code>
    #            {"year":{"buckets":["[1970,1979]","[1980,1989]","[1990,1999]","[2000,2009]","[2010,}"]}}
    #         </code></p>
    #
    #            <p>To sort facets by facet count, use the <code>count</code> option. For example, the following request sets the <code>sort</code> option to <code>count</code> to sort the facet values by facet count, with the facet
    #               values that have the most matching documents listed first. Setting the <code>size</code> option to 3 returns only the top three facet values.</p>
    #            <p><code>
    #               {"year":{"sort":"count","size":3}}
    #            </code></p>
    #
    #            <p>To sort the facets by value, use the <code>bucket</code> option. For example, the following  request sets the <code>sort</code> option to <code>bucket</code> to sort the facet values numerically by year, with earliest year listed first. </p>
    #            <p><code>
    #               {"year":{"sort":"bucket"}}
    #            </code></p>
    #         <p>For more
    #            information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/faceting.html">Getting and Using Facet Information</a>
    #            in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @option params [String] :filter_query
    #   <p>Specifies a structured query that filters the results of a search without affecting how the results are scored and sorted. You use <code>filterQuery</code> in conjunction with the <code>query</code> parameter to filter the documents that match the constraints specified in the <code>query</code> parameter. Specifying a filter controls only which matching documents are included in the results, it has no effect on how they are scored and sorted. The <code>filterQuery</code> parameter supports the full structured query syntax. </p>
    #         <p>For more information about using filters, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/filtering-results.html">Filtering Matching Documents</a>
    #            in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @option params [String] :highlight
    #   <p>Retrieves highlights for matches in the specified <code>text</code> or
    #            <code>text-array</code> fields. Each specified field must be highlight enabled in the domain configuration. The fields and options are specified in JSON using the form <code>{"FIELD":{"OPTION":VALUE,"OPTION:"STRING"},"FIELD":{"OPTION":VALUE,"OPTION":"STRING"}}</code>.</p>
    #         <p>You can specify the following highlight options:</p>
    #            <ul>
    #               <li>
    #                  <code>format</code>: specifies the format of the data in the
    #                     text field: <code>text</code> or <code>html</code>. When data is
    #                     returned as HTML, all non-alphanumeric characters are encoded.
    #                     The default is <code>html</code>.
    #               </li>
    #               <li>
    #                  <code>max_phrases</code>: specifies the maximum number of
    #                     occurrences of the search term(s) you want to highlight. By
    #                     default, the first occurrence is highlighted.
    #               </li>
    #               <li>
    #                  <code>pre_tag</code>: specifies the string to prepend to an
    #                     occurrence of a search term. The default for HTML highlights is
    #                  <code>&lt;em&gt;</code>. The default for text highlights is
    #                     <code>*</code>.
    #               </li>
    #               <li>
    #                  <code>post_tag</code>: specifies the string to append to an
    #                     occurrence of a search term. The default for HTML highlights is
    #                     <code>&lt;/em&gt;</code>. The default for text highlights is
    #                     <code>*</code>.
    #               </li>
    #            </ul>
    #            <p>If no highlight options are specified for a field, the returned field text is treated as HTML and the first match is
    #               highlighted with emphasis tags:  <code>&lt;em>search-term&lt;/em&gt;</code>.</p>
    #               <p>For example, the following request retrieves highlights for the <code>actors</code> and <code>title</code> fields.</p>
    #                    <p> <code>{
    #       "actors": {},
    #       "title": {"format": "text","max_phrases": 2,"pre_tag": "<b>","post_tag": "</b>"}
    #                       }</code></p>
    #
    # @option params [Boolean] :partial
    #   <p>Enables partial results to be returned if one or more index partitions are unavailable. When your search index is partitioned across multiple search instances, by default Amazon CloudSearch only returns results if every partition can be queried. This means that the failure of a single search instance can result in 5xx (internal server) errors. When you enable partial results, Amazon CloudSearch returns whatever results are available and includes the percentage of documents searched in the search results (percent-searched). This enables you to more gracefully degrade your users' search experience. For example, rather than displaying no results, you could display the partial results and a message indicating that the results might be incomplete due to a temporary system outage.</p>
    #
    # @option params [String] :query
    #   <p>Specifies the search criteria for the request. How you specify the search
    #            criteria depends on the query parser used for the request and the parser options
    #            specified in the <code>queryOptions</code> parameter. By default,
    #            the <code>simple</code> query parser is used to process requests. To use
    #            the <code>structured</code>, <code>lucene</code>, or <code>dismax</code> query parser,
    #            you must also specify the <code>queryParser</code> parameter. </p>
    #               <p>For more information about specifying search criteria, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html">Searching Your Data</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @option params [String] :query_options
    #   <p>Configures options for the query parser specified in the <code>queryParser</code> parameter. You specify the options in JSON using the following form <code>{"OPTION1":"VALUE1","OPTION2":VALUE2"..."OPTIONN":"VALUEN"}.</code></p>
    #
    #         <p>The options you can configure vary according to which parser you use:</p>
    #         <ul>
    #            <li><code>defaultOperator</code>: The default operator used to combine individual terms in the search string. For example: <code>defaultOperator: 'or'</code>. For the <code>dismax</code> parser, you specify a percentage that represents the percentage of terms in the search string (rounded down) that must match, rather than a default operator. A value of <code>0%</code> is the equivalent to OR, and a value of <code>100%</code> is equivalent to AND. The percentage must be specified as a value in the range 0-100 followed by the percent (%) symbol. For example, <code>defaultOperator: 50%</code>. Valid values: <code>and</code>, <code>or</code>, a percentage in the range 0%-100% (<code>dismax</code>). Default: <code>and</code> (<code>simple</code>, <code>structured</code>, <code>lucene</code>) or <code>100</code> (<code>dismax</code>). Valid for: <code>simple</code>, <code>structured</code>, <code>lucene</code>, and <code>dismax</code>.</li>
    #            <li><code>fields</code>: An array of the fields to search when no fields are specified in a search. If no fields are specified in a search and this option is not specified, all text and text-array fields are searched. You can specify a weight for each field to control the relative importance of each field when Amazon CloudSearch calculates relevance scores. To specify a field weight, append a caret (<code>^</code>) symbol and the weight to the field name. For example, to boost the importance of the <code>title</code> field over the <code>description</code> field you could specify: <code>"fields":["title^5","description"]</code>.  Valid values: The name of any configured field and an optional numeric value greater than zero. Default: All <code>text</code> and <code>text-array</code> fields. Valid for: <code>simple</code>, <code>structured</code>, <code>lucene</code>, and <code>dismax</code>.</li>
    #            <li><code>operators</code>: An array of the operators or special characters you want to
    #               disable for the simple query parser. If you disable the
    #               <code>and</code>, <code>or</code>, or <code>not</code>
    #               operators, the corresponding operators (<code>+</code>,
    #               <code>|</code>, <code>-</code>) have no special meaning and
    #               are dropped from the search string. Similarly, disabling
    #               <code>prefix</code> disables the wildcard operator
    #               (<code>*</code>) and disabling <code>phrase</code> disables
    #               the ability to search for phrases by enclosing phrases in double
    #               quotes. Disabling precedence disables the ability to control
    #               order of precedence using parentheses. Disabling <code>near</code> disables
    #               the ability to use the ~ operator to perform a sloppy phrase search.
    #               Disabling the <code>fuzzy</code> operator disables the ability to use the ~ operator to perform a fuzzy search.
    #               <code>escape</code> disables the ability to use a backslash
    #               (<code>\</code>) to escape special characters within the
    #               search string. Disabling whitespace is an advanced option that
    #               prevents the parser from tokenizing on whitespace, which can be
    #               useful for Vietnamese. (It prevents Vietnamese words from being
    #               split incorrectly.) For example, you could disable all operators
    #               other than the phrase operator to support just simple term and
    #               phrase queries: <code>"operators":["and","not","or",
    #                  "prefix"]</code>. Valid values: <code>and</code>, <code>escape</code>,
    #               <code>fuzzy</code>, <code>near</code>, <code>not</code>, <code>or</code>,
    #               <code>phrase</code>, <code>precedence</code>, <code>prefix</code>,
    #               <code>whitespace</code>. Default: All
    #               operators and special characters are enabled. Valid for:
    #               <code>simple</code>.</li>
    #            <li><code>phraseFields</code>: An array of the <code>text</code> or <code>text-array</code> fields you want to use for
    #               phrase searches. When the terms in the search string appear in
    #               close proximity within a field, the field scores higher. You can
    #               specify a weight for each field to boost that score. The
    #               <code>phraseSlop</code> option controls how much the matches
    #               can deviate from the search string and still be boosted. To
    #               specify a field weight, append a caret (<code>^</code>) symbol
    #               and the weight to the field name. For example, to boost phrase
    #               matches in the <code>title</code> field over the
    #               <code>abstract</code> field, you could specify:
    #               <code>"phraseFields":["title^3",
    #                  "plot"]</code>
    #               Valid values: The name of any <code>text</code> or
    #               <code>text-array</code> field and an optional numeric value greater than zero. Default: No fields. If you don't specify any fields with <code>phraseFields</code>, proximity scoring is disabled even if <code>phraseSlop</code> is specified. Valid
    #               for: <code>dismax</code>.</li>
    #            <li><code>phraseSlop</code>: An integer value that specifies how much matches can deviate from the search phrase and still be boosted according to the weights specified in the <code>phraseFields</code> option; for example, <code>phraseSlop: 2</code>. You must also specify <code>phraseFields</code> to enable proximity scoring. Valid values: positive integers. Default: 0. Valid for: <code>dismax</code>.</li>
    #            <li><code>explicitPhraseSlop</code>: An integer value that specifies how much a match can deviate from the search phrase when the phrase is enclosed in double quotes in the search string. (Phrases that exceed this proximity distance are not considered a match.) For example, to specify a slop of three for dismax phrase queries, you would specify <code>"explicitPhraseSlop":3</code>. Valid values: positive integers. Default: 0. Valid for: <code>dismax</code>.</li>
    #            <li><code>tieBreaker</code>: When a term in the search string is found in a document's field, a score is calculated for that field based on how common the word is in that field compared to other documents. If the term occurs in multiple fields within a document, by default only the highest scoring field contributes to the document's overall score. You can specify a <code>tieBreaker</code> value to enable the matches in lower-scoring fields to contribute to the document's score. That way, if two documents have the same max field score for a particular term, the score for the document that has matches in more fields will be higher. The formula for calculating the score with a tieBreaker is <code>(max field score) + (tieBreaker) * (sum of the scores for the rest of the matching fields)</code>.
    #
    #               Set <code>tieBreaker</code> to 0 to disregard all but the highest scoring field (pure max): <code>"tieBreaker":0</code>. Set to 1 to sum the scores from all fields (pure sum): <code>"tieBreaker":1</code>. Valid values: 0.0 to 1.0. Default: 0.0. Valid for: <code>dismax</code>.
    #            </li>
    #         </ul>
    #
    # @option params [String] :query_parser
    #   <p>Specifies which
    #            query parser to use to process the request. If <code>queryParser</code> is not specified, Amazon CloudSearch
    #            uses the <code>simple</code> query parser. </p>
    #         <p>Amazon CloudSearch supports four query parsers:</p>
    #         <ul>
    #            <li>
    #               <code>simple</code>: perform simple searches of <code>text</code> and
    #                  <code>text-array</code> fields. By default, the
    #                  <code>simple</code> query parser searches all
    #                  <code>text</code> and <code>text-array</code> fields. You
    #                  can specify which fields to search by with the
    #                  <code>queryOptions</code> parameter. If you prefix a search
    #                  term with a plus sign (+) documents must contain the term to be considered a match.
    #                  (This is the default, unless you configure the default operator with the <code>queryOptions</code> parameter.)
    #                  You can use the <code>-</code> (NOT), <code>|</code>
    #                  (OR), and <code>*</code> (wildcard) operators to exclude
    #                  particular terms, find results that match any of the specified
    #                  terms, or search for a prefix. To search for a phrase rather
    #                  than individual terms, enclose the phrase in double quotes. For
    #                  more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching-text.html">Searching for Text</a> in the <i>Amazon CloudSearch Developer Guide</i>.
    #            </li>
    #            <li>
    #               <code>structured</code>: perform advanced searches by combining
    #                  multiple expressions to define the search criteria. You can also search
    #                  within particular fields, search for values and ranges of values, and use
    #                  advanced options such as term boosting, <code>matchall</code>, and <code>near</code>.
    #                  For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching-compound-queries.html">Constructing Compound Queries</a> in the <i>Amazon CloudSearch Developer Guide</i>.
    #            </li>
    #            <li>
    #               <code>lucene</code>: search using the Apache Lucene query parser syntax.
    #                  For more information, see <a href="http://lucene.apache.org/core/4_6_0/queryparser/org/apache/lucene/queryparser/classic/package-summary.html#package_description">Apache Lucene Query Parser Syntax</a>.
    #            </li>
    #            <li>
    #               <code>dismax</code>: search using the simplified subset of the Apache Lucene query parser syntax
    #                  defined by the DisMax query parser.
    #                  For more information, see <a href="http://wiki.apache.org/solr/DisMaxQParserPlugin#Query_Syntax">DisMax Query Parser Syntax</a>.
    #            </li>
    #
    #         </ul>
    #
    # @option params [String] :return
    #   <p>Specifies the field and expression values to include in the response. Multiple fields or expressions are specified as a comma-separated list. By default, a search response includes all
    #            return enabled fields (<code>_all_fields</code>).
    #            To  return only the document IDs for the matching documents,
    #            specify <code>_no_fields</code>.
    #            To retrieve the relevance score calculated for each document,
    #            specify <code>_score</code>.  </p>
    #
    # @option params [Integer] :size
    #   <p>Specifies the maximum number of search hits to include in the response. </p>
    #
    # @option params [String] :sort
    #   <p>Specifies the fields or custom expressions to use to sort the search
    #            results. Multiple fields or expressions are specified as a comma-separated list.
    #            You must specify the sort direction (<code>asc</code> or
    #            <code>desc</code>) for each field; for example, <code>year
    #               desc,title asc</code>. To use a field to sort results, the field must be sort-enabled in
    #            the domain configuration. Array type fields cannot be used for sorting.
    #            If no <code>sort</code> parameter is specified, results are sorted by
    #            their default relevance scores in descending order: <code>_score
    #               desc</code>. You can also sort by document ID
    #            (<code>_id asc</code>) and version (<code>_version desc</code>).</p>
    #         <p>For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/sorting-results.html">Sorting Results</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @option params [Integer] :start
    #   <p>Specifies the offset of the first search hit you want to return. Note that the result set is zero-based; the first result is at index 0. You can specify either the <code>start</code> or <code>cursor</code> parameter in a request, they are mutually exclusive.  </p>
    #         <p>For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/paginating-results.html">Paginating Results</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #
    # @option params [String] :stats
    #   <p>Specifies one or more fields for which to get statistics information. Each specified field must be facet-enabled in the domain configuration. The fields are specified in JSON using the form:</p>
    #         <code>{"FIELD-A":{},"FIELD-B":{}}</code>
    #         <p>There are currently no options supported for statistics.</p>
    #
    # @return [Types::SearchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search(
    #     cursor: 'cursor',
    #     expr: 'expr',
    #     facet: 'facet',
    #     filter_query: 'filterQuery',
    #     highlight: 'highlight',
    #     partial: false,
    #     query: 'query', # required
    #     query_options: 'queryOptions',
    #     query_parser: 'simple', # accepts ["simple", "structured", "lucene", "dismax"]
    #     return: 'return',
    #     size: 1,
    #     sort: 'sort',
    #     start: 1,
    #     stats: 'stats'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchOutput
    #   resp.data.status #=> Types::SearchStatus
    #   resp.data.status.timems #=> Integer
    #   resp.data.status.rid #=> String
    #   resp.data.hits #=> Types::Hits
    #   resp.data.hits.found #=> Integer
    #   resp.data.hits.start #=> Integer
    #   resp.data.hits.cursor #=> String
    #   resp.data.hits.hit #=> Array<Hit>
    #   resp.data.hits.hit[0] #=> Types::Hit
    #   resp.data.hits.hit[0].id #=> String
    #   resp.data.hits.hit[0].fields #=> Hash<String, Array<String>>
    #   resp.data.hits.hit[0].fields['key'] #=> Array<String>
    #   resp.data.hits.hit[0].fields['key'][0] #=> String
    #   resp.data.hits.hit[0].exprs #=> Hash<String, String>
    #   resp.data.hits.hit[0].exprs['key'] #=> String
    #   resp.data.hits.hit[0].highlights #=> Hash<String, String>
    #   resp.data.hits.hit[0].highlights['key'] #=> String
    #   resp.data.facets #=> Hash<String, BucketInfo>
    #   resp.data.facets['key'] #=> Types::BucketInfo
    #   resp.data.facets['key'].buckets #=> Array<Bucket>
    #   resp.data.facets['key'].buckets[0] #=> Types::Bucket
    #   resp.data.facets['key'].buckets[0].value #=> String
    #   resp.data.facets['key'].buckets[0].count #=> Integer
    #   resp.data.stats #=> Hash<String, FieldStats>
    #   resp.data.stats['key'] #=> Types::FieldStats
    #   resp.data.stats['key'].min #=> String
    #   resp.data.stats['key'].max #=> String
    #   resp.data.stats['key'].count #=> Integer
    #   resp.data.stats['key'].missing #=> Integer
    #   resp.data.stats['key'].sum #=> Float
    #   resp.data.stats['key'].sum_of_squares #=> Float
    #   resp.data.stats['key'].mean #=> String
    #   resp.data.stats['key'].stddev #=> Float
    #
    def search(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Search
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SearchException]),
        data_parser: Parsers::Search
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Search,
        stubs: @stubs,
        params_class: Params::SearchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves autocomplete suggestions for a partial query string. You can use suggestions enable you to display likely matches before users finish typing. In Amazon CloudSearch, suggestions are based on the contents of a particular text field. When you request suggestions, Amazon CloudSearch finds all of the documents whose values in the suggester field start with the specified query string. The beginning of the field must match the query string to be considered a match. </p>
    #       <p>For more information about configuring suggesters and retrieving suggestions, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html">Getting Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>
    #
    #       <p>The endpoint for submitting <code>Suggest</code> requests is domain-specific. You submit suggest requests to a domain's search endpoint. To get the search endpoint for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. </p>
    #
    # @param [Hash] params
    #   See {Types::SuggestInput}.
    #
    # @option params [String] :query
    #   <p>Specifies the string for which you want to get suggestions.</p>
    #
    # @option params [String] :suggester
    #   <p>Specifies the name of the suggester to use to find suggested matches.</p>
    #
    # @option params [Integer] :size
    #   <p>Specifies the maximum number of suggestions to return. </p>
    #
    # @return [Types::SuggestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.suggest(
    #     query: 'query', # required
    #     suggester: 'suggester', # required
    #     size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SuggestOutput
    #   resp.data.status #=> Types::SuggestStatus
    #   resp.data.status.timems #=> Integer
    #   resp.data.status.rid #=> String
    #   resp.data.suggest #=> Types::SuggestModel
    #   resp.data.suggest.query #=> String
    #   resp.data.suggest.found #=> Integer
    #   resp.data.suggest.suggestions #=> Array<SuggestionMatch>
    #   resp.data.suggest.suggestions[0] #=> Types::SuggestionMatch
    #   resp.data.suggest.suggestions[0].suggestion #=> String
    #   resp.data.suggest.suggestions[0].score #=> Integer
    #   resp.data.suggest.suggestions[0].id #=> String
    #
    def suggest(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SuggestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SuggestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Suggest
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::SearchException]),
        data_parser: Parsers::Suggest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Suggest,
        stubs: @stubs,
        params_class: Params::SuggestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :suggest
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Posts a batch of documents to a search domain for indexing.  A document batch is a collection of add and delete operations that represent the documents you want to add, update, or delete from your domain. Batches can be described in either JSON or XML. Each item that you want Amazon CloudSearch to return as a search result (such as a product) is represented as a document. Every document has a unique ID and one or more fields that contain the data that you want to search and return in results. Individual documents  cannot contain more than 1 MB of data. The entire batch cannot exceed 5 MB. To get the best possible upload performance, group add and delete operations in batches that are close the 5 MB limit. Submitting a large volume of single-document batches can overload a domain's document service.  </p>
    #       <p>The endpoint for submitting <code>UploadDocuments</code> requests is domain-specific. To get the document endpoint for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. </p>
    #       <p>For more information about formatting your data for Amazon CloudSearch, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/preparing-data.html">Preparing Your Data</a> in the <i>Amazon CloudSearch Developer Guide</i>.
    #       For more information about uploading data for indexing, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/uploading-data.html">Uploading Data</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::UploadDocumentsInput}.
    #
    # @option params [String] :documents
    #   <p>A batch of documents formatted in JSON or HTML.</p>
    #
    # @option params [String] :content_type
    #   <p>The format of the batch you are uploading. Amazon CloudSearch supports two document batch formats:</p>
    #         <ul>
    #            <li>application/json</li>
    #            <li>application/xml</li>
    #         </ul>
    #
    # @return [Types::UploadDocumentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_documents(
    #     documents: 'documents', # required
    #     content_type: 'application/json' # required - accepts ["application/json", "application/xml"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UploadDocumentsOutput
    #   resp.data.status #=> String
    #   resp.data.adds #=> Integer
    #   resp.data.deletes #=> Integer
    #   resp.data.warnings #=> Array<DocumentServiceWarning>
    #   resp.data.warnings[0] #=> Types::DocumentServiceWarning
    #   resp.data.warnings[0].message #=> String
    #
    def upload_documents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UploadDocumentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UploadDocumentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UploadDocuments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DocumentServiceException]),
        data_parser: Parsers::UploadDocuments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UploadDocuments,
        stubs: @stubs,
        params_class: Params::UploadDocumentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :upload_documents
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
