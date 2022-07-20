# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CloudSearch
  module Builders

    # Operation Builder for BuildSuggesters
    class BuildSuggesters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'BuildSuggesters'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateDomain
    class CreateDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateDomain'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DefineAnalysisScheme
    class DefineAnalysisScheme
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DefineAnalysisScheme'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        AnalysisScheme.build(input[:analysis_scheme], params, context: context + 'AnalysisScheme' + '.') unless input[:analysis_scheme].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Structure Builder for AnalysisScheme
    class AnalysisScheme
      def self.build(input, params, context: nil)
        params[context + 'AnalysisSchemeName'] = input[:analysis_scheme_name].to_s unless input[:analysis_scheme_name].nil?
        params[context + 'AnalysisSchemeLanguage'] = input[:analysis_scheme_language].to_s unless input[:analysis_scheme_language].nil?
        AnalysisOptions.build(input[:analysis_options], params, context: context + 'AnalysisOptions' + '.') unless input[:analysis_options].nil?
      end
    end

    # Structure Builder for AnalysisOptions
    class AnalysisOptions
      def self.build(input, params, context: nil)
        params[context + 'Synonyms'] = input[:synonyms].to_s unless input[:synonyms].nil?
        params[context + 'Stopwords'] = input[:stopwords].to_s unless input[:stopwords].nil?
        params[context + 'StemmingDictionary'] = input[:stemming_dictionary].to_s unless input[:stemming_dictionary].nil?
        params[context + 'JapaneseTokenizationDictionary'] = input[:japanese_tokenization_dictionary].to_s unless input[:japanese_tokenization_dictionary].nil?
        params[context + 'AlgorithmicStemming'] = input[:algorithmic_stemming].to_s unless input[:algorithmic_stemming].nil?
      end
    end

    # Operation Builder for DefineExpression
    class DefineExpression
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DefineExpression'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        Expression.build(input[:expression], params, context: context + 'Expression' + '.') unless input[:expression].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Structure Builder for Expression
    class Expression
      def self.build(input, params, context: nil)
        params[context + 'ExpressionName'] = input[:expression_name].to_s unless input[:expression_name].nil?
        params[context + 'ExpressionValue'] = input[:expression_value].to_s unless input[:expression_value].nil?
      end
    end

    # Operation Builder for DefineIndexField
    class DefineIndexField
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DefineIndexField'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        IndexField.build(input[:index_field], params, context: context + 'IndexField' + '.') unless input[:index_field].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Structure Builder for IndexField
    class IndexField
      def self.build(input, params, context: nil)
        params[context + 'IndexFieldName'] = input[:index_field_name].to_s unless input[:index_field_name].nil?
        params[context + 'IndexFieldType'] = input[:index_field_type].to_s unless input[:index_field_type].nil?
        IntOptions.build(input[:int_options], params, context: context + 'IntOptions' + '.') unless input[:int_options].nil?
        DoubleOptions.build(input[:double_options], params, context: context + 'DoubleOptions' + '.') unless input[:double_options].nil?
        LiteralOptions.build(input[:literal_options], params, context: context + 'LiteralOptions' + '.') unless input[:literal_options].nil?
        TextOptions.build(input[:text_options], params, context: context + 'TextOptions' + '.') unless input[:text_options].nil?
        DateOptions.build(input[:date_options], params, context: context + 'DateOptions' + '.') unless input[:date_options].nil?
        LatLonOptions.build(input[:lat_lon_options], params, context: context + 'LatLonOptions' + '.') unless input[:lat_lon_options].nil?
        IntArrayOptions.build(input[:int_array_options], params, context: context + 'IntArrayOptions' + '.') unless input[:int_array_options].nil?
        DoubleArrayOptions.build(input[:double_array_options], params, context: context + 'DoubleArrayOptions' + '.') unless input[:double_array_options].nil?
        LiteralArrayOptions.build(input[:literal_array_options], params, context: context + 'LiteralArrayOptions' + '.') unless input[:literal_array_options].nil?
        TextArrayOptions.build(input[:text_array_options], params, context: context + 'TextArrayOptions' + '.') unless input[:text_array_options].nil?
        DateArrayOptions.build(input[:date_array_options], params, context: context + 'DateArrayOptions' + '.') unless input[:date_array_options].nil?
      end
    end

    # Structure Builder for DateArrayOptions
    class DateArrayOptions
      def self.build(input, params, context: nil)
        params[context + 'DefaultValue'] = input[:default_value].to_s unless input[:default_value].nil?
        params[context + 'SourceFields'] = input[:source_fields].to_s unless input[:source_fields].nil?
        params[context + 'FacetEnabled'] = input[:facet_enabled].to_s unless input[:facet_enabled].nil?
        params[context + 'SearchEnabled'] = input[:search_enabled].to_s unless input[:search_enabled].nil?
        params[context + 'ReturnEnabled'] = input[:return_enabled].to_s unless input[:return_enabled].nil?
      end
    end

    # Structure Builder for TextArrayOptions
    class TextArrayOptions
      def self.build(input, params, context: nil)
        params[context + 'DefaultValue'] = input[:default_value].to_s unless input[:default_value].nil?
        params[context + 'SourceFields'] = input[:source_fields].to_s unless input[:source_fields].nil?
        params[context + 'ReturnEnabled'] = input[:return_enabled].to_s unless input[:return_enabled].nil?
        params[context + 'HighlightEnabled'] = input[:highlight_enabled].to_s unless input[:highlight_enabled].nil?
        params[context + 'AnalysisScheme'] = input[:analysis_scheme].to_s unless input[:analysis_scheme].nil?
      end
    end

    # Structure Builder for LiteralArrayOptions
    class LiteralArrayOptions
      def self.build(input, params, context: nil)
        params[context + 'DefaultValue'] = input[:default_value].to_s unless input[:default_value].nil?
        params[context + 'SourceFields'] = input[:source_fields].to_s unless input[:source_fields].nil?
        params[context + 'FacetEnabled'] = input[:facet_enabled].to_s unless input[:facet_enabled].nil?
        params[context + 'SearchEnabled'] = input[:search_enabled].to_s unless input[:search_enabled].nil?
        params[context + 'ReturnEnabled'] = input[:return_enabled].to_s unless input[:return_enabled].nil?
      end
    end

    # Structure Builder for DoubleArrayOptions
    class DoubleArrayOptions
      def self.build(input, params, context: nil)
        params[context + 'DefaultValue'] = Hearth::NumberHelper.serialize(input[:default_value]).to_s unless input[:default_value].nil?
        params[context + 'SourceFields'] = input[:source_fields].to_s unless input[:source_fields].nil?
        params[context + 'FacetEnabled'] = input[:facet_enabled].to_s unless input[:facet_enabled].nil?
        params[context + 'SearchEnabled'] = input[:search_enabled].to_s unless input[:search_enabled].nil?
        params[context + 'ReturnEnabled'] = input[:return_enabled].to_s unless input[:return_enabled].nil?
      end
    end

    # Structure Builder for IntArrayOptions
    class IntArrayOptions
      def self.build(input, params, context: nil)
        params[context + 'DefaultValue'] = input[:default_value].to_s unless input[:default_value].nil?
        params[context + 'SourceFields'] = input[:source_fields].to_s unless input[:source_fields].nil?
        params[context + 'FacetEnabled'] = input[:facet_enabled].to_s unless input[:facet_enabled].nil?
        params[context + 'SearchEnabled'] = input[:search_enabled].to_s unless input[:search_enabled].nil?
        params[context + 'ReturnEnabled'] = input[:return_enabled].to_s unless input[:return_enabled].nil?
      end
    end

    # Structure Builder for LatLonOptions
    class LatLonOptions
      def self.build(input, params, context: nil)
        params[context + 'DefaultValue'] = input[:default_value].to_s unless input[:default_value].nil?
        params[context + 'SourceField'] = input[:source_field].to_s unless input[:source_field].nil?
        params[context + 'FacetEnabled'] = input[:facet_enabled].to_s unless input[:facet_enabled].nil?
        params[context + 'SearchEnabled'] = input[:search_enabled].to_s unless input[:search_enabled].nil?
        params[context + 'ReturnEnabled'] = input[:return_enabled].to_s unless input[:return_enabled].nil?
        params[context + 'SortEnabled'] = input[:sort_enabled].to_s unless input[:sort_enabled].nil?
      end
    end

    # Structure Builder for DateOptions
    class DateOptions
      def self.build(input, params, context: nil)
        params[context + 'DefaultValue'] = input[:default_value].to_s unless input[:default_value].nil?
        params[context + 'SourceField'] = input[:source_field].to_s unless input[:source_field].nil?
        params[context + 'FacetEnabled'] = input[:facet_enabled].to_s unless input[:facet_enabled].nil?
        params[context + 'SearchEnabled'] = input[:search_enabled].to_s unless input[:search_enabled].nil?
        params[context + 'ReturnEnabled'] = input[:return_enabled].to_s unless input[:return_enabled].nil?
        params[context + 'SortEnabled'] = input[:sort_enabled].to_s unless input[:sort_enabled].nil?
      end
    end

    # Structure Builder for TextOptions
    class TextOptions
      def self.build(input, params, context: nil)
        params[context + 'DefaultValue'] = input[:default_value].to_s unless input[:default_value].nil?
        params[context + 'SourceField'] = input[:source_field].to_s unless input[:source_field].nil?
        params[context + 'ReturnEnabled'] = input[:return_enabled].to_s unless input[:return_enabled].nil?
        params[context + 'SortEnabled'] = input[:sort_enabled].to_s unless input[:sort_enabled].nil?
        params[context + 'HighlightEnabled'] = input[:highlight_enabled].to_s unless input[:highlight_enabled].nil?
        params[context + 'AnalysisScheme'] = input[:analysis_scheme].to_s unless input[:analysis_scheme].nil?
      end
    end

    # Structure Builder for LiteralOptions
    class LiteralOptions
      def self.build(input, params, context: nil)
        params[context + 'DefaultValue'] = input[:default_value].to_s unless input[:default_value].nil?
        params[context + 'SourceField'] = input[:source_field].to_s unless input[:source_field].nil?
        params[context + 'FacetEnabled'] = input[:facet_enabled].to_s unless input[:facet_enabled].nil?
        params[context + 'SearchEnabled'] = input[:search_enabled].to_s unless input[:search_enabled].nil?
        params[context + 'ReturnEnabled'] = input[:return_enabled].to_s unless input[:return_enabled].nil?
        params[context + 'SortEnabled'] = input[:sort_enabled].to_s unless input[:sort_enabled].nil?
      end
    end

    # Structure Builder for DoubleOptions
    class DoubleOptions
      def self.build(input, params, context: nil)
        params[context + 'DefaultValue'] = Hearth::NumberHelper.serialize(input[:default_value]).to_s unless input[:default_value].nil?
        params[context + 'SourceField'] = input[:source_field].to_s unless input[:source_field].nil?
        params[context + 'FacetEnabled'] = input[:facet_enabled].to_s unless input[:facet_enabled].nil?
        params[context + 'SearchEnabled'] = input[:search_enabled].to_s unless input[:search_enabled].nil?
        params[context + 'ReturnEnabled'] = input[:return_enabled].to_s unless input[:return_enabled].nil?
        params[context + 'SortEnabled'] = input[:sort_enabled].to_s unless input[:sort_enabled].nil?
      end
    end

    # Structure Builder for IntOptions
    class IntOptions
      def self.build(input, params, context: nil)
        params[context + 'DefaultValue'] = input[:default_value].to_s unless input[:default_value].nil?
        params[context + 'SourceField'] = input[:source_field].to_s unless input[:source_field].nil?
        params[context + 'FacetEnabled'] = input[:facet_enabled].to_s unless input[:facet_enabled].nil?
        params[context + 'SearchEnabled'] = input[:search_enabled].to_s unless input[:search_enabled].nil?
        params[context + 'ReturnEnabled'] = input[:return_enabled].to_s unless input[:return_enabled].nil?
        params[context + 'SortEnabled'] = input[:sort_enabled].to_s unless input[:sort_enabled].nil?
      end
    end

    # Operation Builder for DefineSuggester
    class DefineSuggester
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DefineSuggester'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        Suggester.build(input[:suggester], params, context: context + 'Suggester' + '.') unless input[:suggester].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Structure Builder for Suggester
    class Suggester
      def self.build(input, params, context: nil)
        params[context + 'SuggesterName'] = input[:suggester_name].to_s unless input[:suggester_name].nil?
        DocumentSuggesterOptions.build(input[:document_suggester_options], params, context: context + 'DocumentSuggesterOptions' + '.') unless input[:document_suggester_options].nil?
      end
    end

    # Structure Builder for DocumentSuggesterOptions
    class DocumentSuggesterOptions
      def self.build(input, params, context: nil)
        params[context + 'SourceField'] = input[:source_field].to_s unless input[:source_field].nil?
        params[context + 'FuzzyMatching'] = input[:fuzzy_matching].to_s unless input[:fuzzy_matching].nil?
        params[context + 'SortExpression'] = input[:sort_expression].to_s unless input[:sort_expression].nil?
      end
    end

    # Operation Builder for DeleteAnalysisScheme
    class DeleteAnalysisScheme
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteAnalysisScheme'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        params[context + 'AnalysisSchemeName'] = input[:analysis_scheme_name].to_s unless input[:analysis_scheme_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteDomain
    class DeleteDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDomain'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteExpression
    class DeleteExpression
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteExpression'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        params[context + 'ExpressionName'] = input[:expression_name].to_s unless input[:expression_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteIndexField
    class DeleteIndexField
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteIndexField'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        params[context + 'IndexFieldName'] = input[:index_field_name].to_s unless input[:index_field_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteSuggester
    class DeleteSuggester
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteSuggester'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        params[context + 'SuggesterName'] = input[:suggester_name].to_s unless input[:suggester_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeAnalysisSchemes
    class DescribeAnalysisSchemes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAnalysisSchemes'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        StandardNameList.build(input[:analysis_scheme_names], params, context: context + 'AnalysisSchemeNames' + '.member') unless input[:analysis_scheme_names].nil?
        params[context + 'Deployed'] = input[:deployed].to_s unless input[:deployed].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for StandardNameList
    class StandardNameList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeAvailabilityOptions
    class DescribeAvailabilityOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAvailabilityOptions'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        params[context + 'Deployed'] = input[:deployed].to_s unless input[:deployed].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDomainEndpointOptions
    class DescribeDomainEndpointOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDomainEndpointOptions'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        params[context + 'Deployed'] = input[:deployed].to_s unless input[:deployed].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeDomains
    class DescribeDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeDomains'
        params['Version'] = '2013-01-01'
        DomainNameList.build(input[:domain_names], params, context: context + 'DomainNames' + '.member') unless input[:domain_names].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for DomainNameList
    class DomainNameList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeExpressions
    class DescribeExpressions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeExpressions'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        StandardNameList.build(input[:expression_names], params, context: context + 'ExpressionNames' + '.member') unless input[:expression_names].nil?
        params[context + 'Deployed'] = input[:deployed].to_s unless input[:deployed].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeIndexFields
    class DescribeIndexFields
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeIndexFields'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        DynamicFieldNameList.build(input[:field_names], params, context: context + 'FieldNames' + '.member') unless input[:field_names].nil?
        params[context + 'Deployed'] = input[:deployed].to_s unless input[:deployed].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # List Builder for DynamicFieldNameList
    class DynamicFieldNameList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeScalingParameters
    class DescribeScalingParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeScalingParameters'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeServiceAccessPolicies
    class DescribeServiceAccessPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeServiceAccessPolicies'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        params[context + 'Deployed'] = input[:deployed].to_s unless input[:deployed].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeSuggesters
    class DescribeSuggesters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeSuggesters'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        StandardNameList.build(input[:suggester_names], params, context: context + 'SuggesterNames' + '.member') unless input[:suggester_names].nil?
        params[context + 'Deployed'] = input[:deployed].to_s unless input[:deployed].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for IndexDocuments
    class IndexDocuments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'IndexDocuments'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListDomainNames
    class ListDomainNames
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListDomainNames'
        params['Version'] = '2013-01-01'
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateAvailabilityOptions
    class UpdateAvailabilityOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateAvailabilityOptions'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        params[context + 'MultiAZ'] = input[:multi_az].to_s unless input[:multi_az].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateDomainEndpointOptions
    class UpdateDomainEndpointOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateDomainEndpointOptions'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        DomainEndpointOptions.build(input[:domain_endpoint_options], params, context: context + 'DomainEndpointOptions' + '.') unless input[:domain_endpoint_options].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Structure Builder for DomainEndpointOptions
    class DomainEndpointOptions
      def self.build(input, params, context: nil)
        params[context + 'EnforceHTTPS'] = input[:enforce_https].to_s unless input[:enforce_https].nil?
        params[context + 'TLSSecurityPolicy'] = input[:tls_security_policy].to_s unless input[:tls_security_policy].nil?
      end
    end

    # Operation Builder for UpdateScalingParameters
    class UpdateScalingParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateScalingParameters'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        ScalingParameters.build(input[:scaling_parameters], params, context: context + 'ScalingParameters' + '.') unless input[:scaling_parameters].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    # Structure Builder for ScalingParameters
    class ScalingParameters
      def self.build(input, params, context: nil)
        params[context + 'DesiredInstanceType'] = input[:desired_instance_type].to_s unless input[:desired_instance_type].nil?
        params[context + 'DesiredReplicationCount'] = input[:desired_replication_count].to_s unless input[:desired_replication_count].nil?
        params[context + 'DesiredPartitionCount'] = input[:desired_partition_count].to_s unless input[:desired_partition_count].nil?
      end
    end

    # Operation Builder for UpdateServiceAccessPolicies
    class UpdateServiceAccessPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateServiceAccessPolicies'
        params['Version'] = '2013-01-01'
        params[context + 'DomainName'] = input[:domain_name].to_s unless input[:domain_name].nil?
        params[context + 'AccessPolicies'] = input[:access_policies].to_s unless input[:access_policies].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end
  end
end
