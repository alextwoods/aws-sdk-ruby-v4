# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CloudSearch
  module Params

    module AccessPoliciesStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessPoliciesStatus, context: context)
        type = Types::AccessPoliciesStatus.new
        type.options = params[:options]
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module AnalysisOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalysisOptions, context: context)
        type = Types::AnalysisOptions.new
        type.synonyms = params[:synonyms]
        type.stopwords = params[:stopwords]
        type.stemming_dictionary = params[:stemming_dictionary]
        type.japanese_tokenization_dictionary = params[:japanese_tokenization_dictionary]
        type.algorithmic_stemming = params[:algorithmic_stemming]
        type
      end
    end

    module AnalysisScheme
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalysisScheme, context: context)
        type = Types::AnalysisScheme.new
        type.analysis_scheme_name = params[:analysis_scheme_name]
        type.analysis_scheme_language = params[:analysis_scheme_language]
        type.analysis_options = AnalysisOptions.build(params[:analysis_options], context: "#{context}[:analysis_options]") unless params[:analysis_options].nil?
        type
      end
    end

    module AnalysisSchemeStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalysisSchemeStatus, context: context)
        type = Types::AnalysisSchemeStatus.new
        type.options = AnalysisScheme.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module AnalysisSchemeStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnalysisSchemeStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AvailabilityOptionsStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailabilityOptionsStatus, context: context)
        type = Types::AvailabilityOptionsStatus.new
        type.options = params[:options]
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module BaseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BaseException, context: context)
        type = Types::BaseException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module BuildSuggestersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuildSuggestersInput, context: context)
        type = Types::BuildSuggestersInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module BuildSuggestersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuildSuggestersOutput, context: context)
        type = Types::BuildSuggestersOutput.new
        type.field_names = FieldNameList.build(params[:field_names], context: "#{context}[:field_names]") unless params[:field_names].nil?
        type
      end
    end

    module CreateDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainInput, context: context)
        type = Types::CreateDomainInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module CreateDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainOutput, context: context)
        type = Types::CreateDomainOutput.new
        type.domain_status = DomainStatus.build(params[:domain_status], context: "#{context}[:domain_status]") unless params[:domain_status].nil?
        type
      end
    end

    module DateArrayOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DateArrayOptions, context: context)
        type = Types::DateArrayOptions.new
        type.default_value = params[:default_value]
        type.source_fields = params[:source_fields]
        type.facet_enabled = params[:facet_enabled]
        type.search_enabled = params[:search_enabled]
        type.return_enabled = params[:return_enabled]
        type
      end
    end

    module DateOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DateOptions, context: context)
        type = Types::DateOptions.new
        type.default_value = params[:default_value]
        type.source_field = params[:source_field]
        type.facet_enabled = params[:facet_enabled]
        type.search_enabled = params[:search_enabled]
        type.return_enabled = params[:return_enabled]
        type.sort_enabled = params[:sort_enabled]
        type
      end
    end

    module DefineAnalysisSchemeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefineAnalysisSchemeInput, context: context)
        type = Types::DefineAnalysisSchemeInput.new
        type.domain_name = params[:domain_name]
        type.analysis_scheme = AnalysisScheme.build(params[:analysis_scheme], context: "#{context}[:analysis_scheme]") unless params[:analysis_scheme].nil?
        type
      end
    end

    module DefineAnalysisSchemeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefineAnalysisSchemeOutput, context: context)
        type = Types::DefineAnalysisSchemeOutput.new
        type.analysis_scheme = AnalysisSchemeStatus.build(params[:analysis_scheme], context: "#{context}[:analysis_scheme]") unless params[:analysis_scheme].nil?
        type
      end
    end

    module DefineExpressionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefineExpressionInput, context: context)
        type = Types::DefineExpressionInput.new
        type.domain_name = params[:domain_name]
        type.expression = Expression.build(params[:expression], context: "#{context}[:expression]") unless params[:expression].nil?
        type
      end
    end

    module DefineExpressionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefineExpressionOutput, context: context)
        type = Types::DefineExpressionOutput.new
        type.expression = ExpressionStatus.build(params[:expression], context: "#{context}[:expression]") unless params[:expression].nil?
        type
      end
    end

    module DefineIndexFieldInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefineIndexFieldInput, context: context)
        type = Types::DefineIndexFieldInput.new
        type.domain_name = params[:domain_name]
        type.index_field = IndexField.build(params[:index_field], context: "#{context}[:index_field]") unless params[:index_field].nil?
        type
      end
    end

    module DefineIndexFieldOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefineIndexFieldOutput, context: context)
        type = Types::DefineIndexFieldOutput.new
        type.index_field = IndexFieldStatus.build(params[:index_field], context: "#{context}[:index_field]") unless params[:index_field].nil?
        type
      end
    end

    module DefineSuggesterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefineSuggesterInput, context: context)
        type = Types::DefineSuggesterInput.new
        type.domain_name = params[:domain_name]
        type.suggester = Suggester.build(params[:suggester], context: "#{context}[:suggester]") unless params[:suggester].nil?
        type
      end
    end

    module DefineSuggesterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefineSuggesterOutput, context: context)
        type = Types::DefineSuggesterOutput.new
        type.suggester = SuggesterStatus.build(params[:suggester], context: "#{context}[:suggester]") unless params[:suggester].nil?
        type
      end
    end

    module DeleteAnalysisSchemeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAnalysisSchemeInput, context: context)
        type = Types::DeleteAnalysisSchemeInput.new
        type.domain_name = params[:domain_name]
        type.analysis_scheme_name = params[:analysis_scheme_name]
        type
      end
    end

    module DeleteAnalysisSchemeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAnalysisSchemeOutput, context: context)
        type = Types::DeleteAnalysisSchemeOutput.new
        type.analysis_scheme = AnalysisSchemeStatus.build(params[:analysis_scheme], context: "#{context}[:analysis_scheme]") unless params[:analysis_scheme].nil?
        type
      end
    end

    module DeleteDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainInput, context: context)
        type = Types::DeleteDomainInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DeleteDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainOutput, context: context)
        type = Types::DeleteDomainOutput.new
        type.domain_status = DomainStatus.build(params[:domain_status], context: "#{context}[:domain_status]") unless params[:domain_status].nil?
        type
      end
    end

    module DeleteExpressionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExpressionInput, context: context)
        type = Types::DeleteExpressionInput.new
        type.domain_name = params[:domain_name]
        type.expression_name = params[:expression_name]
        type
      end
    end

    module DeleteExpressionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExpressionOutput, context: context)
        type = Types::DeleteExpressionOutput.new
        type.expression = ExpressionStatus.build(params[:expression], context: "#{context}[:expression]") unless params[:expression].nil?
        type
      end
    end

    module DeleteIndexFieldInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIndexFieldInput, context: context)
        type = Types::DeleteIndexFieldInput.new
        type.domain_name = params[:domain_name]
        type.index_field_name = params[:index_field_name]
        type
      end
    end

    module DeleteIndexFieldOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIndexFieldOutput, context: context)
        type = Types::DeleteIndexFieldOutput.new
        type.index_field = IndexFieldStatus.build(params[:index_field], context: "#{context}[:index_field]") unless params[:index_field].nil?
        type
      end
    end

    module DeleteSuggesterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSuggesterInput, context: context)
        type = Types::DeleteSuggesterInput.new
        type.domain_name = params[:domain_name]
        type.suggester_name = params[:suggester_name]
        type
      end
    end

    module DeleteSuggesterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSuggesterOutput, context: context)
        type = Types::DeleteSuggesterOutput.new
        type.suggester = SuggesterStatus.build(params[:suggester], context: "#{context}[:suggester]") unless params[:suggester].nil?
        type
      end
    end

    module DescribeAnalysisSchemesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAnalysisSchemesInput, context: context)
        type = Types::DescribeAnalysisSchemesInput.new
        type.domain_name = params[:domain_name]
        type.analysis_scheme_names = StandardNameList.build(params[:analysis_scheme_names], context: "#{context}[:analysis_scheme_names]") unless params[:analysis_scheme_names].nil?
        type.deployed = params[:deployed]
        type
      end
    end

    module DescribeAnalysisSchemesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAnalysisSchemesOutput, context: context)
        type = Types::DescribeAnalysisSchemesOutput.new
        type.analysis_schemes = AnalysisSchemeStatusList.build(params[:analysis_schemes], context: "#{context}[:analysis_schemes]") unless params[:analysis_schemes].nil?
        type
      end
    end

    module DescribeAvailabilityOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAvailabilityOptionsInput, context: context)
        type = Types::DescribeAvailabilityOptionsInput.new
        type.domain_name = params[:domain_name]
        type.deployed = params[:deployed]
        type
      end
    end

    module DescribeAvailabilityOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAvailabilityOptionsOutput, context: context)
        type = Types::DescribeAvailabilityOptionsOutput.new
        type.availability_options = AvailabilityOptionsStatus.build(params[:availability_options], context: "#{context}[:availability_options]") unless params[:availability_options].nil?
        type
      end
    end

    module DescribeDomainEndpointOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainEndpointOptionsInput, context: context)
        type = Types::DescribeDomainEndpointOptionsInput.new
        type.domain_name = params[:domain_name]
        type.deployed = params[:deployed]
        type
      end
    end

    module DescribeDomainEndpointOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainEndpointOptionsOutput, context: context)
        type = Types::DescribeDomainEndpointOptionsOutput.new
        type.domain_endpoint_options = DomainEndpointOptionsStatus.build(params[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless params[:domain_endpoint_options].nil?
        type
      end
    end

    module DescribeDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainsInput, context: context)
        type = Types::DescribeDomainsInput.new
        type.domain_names = DomainNameList.build(params[:domain_names], context: "#{context}[:domain_names]") unless params[:domain_names].nil?
        type
      end
    end

    module DescribeDomainsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainsOutput, context: context)
        type = Types::DescribeDomainsOutput.new
        type.domain_status_list = DomainStatusList.build(params[:domain_status_list], context: "#{context}[:domain_status_list]") unless params[:domain_status_list].nil?
        type
      end
    end

    module DescribeExpressionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExpressionsInput, context: context)
        type = Types::DescribeExpressionsInput.new
        type.domain_name = params[:domain_name]
        type.expression_names = StandardNameList.build(params[:expression_names], context: "#{context}[:expression_names]") unless params[:expression_names].nil?
        type.deployed = params[:deployed]
        type
      end
    end

    module DescribeExpressionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExpressionsOutput, context: context)
        type = Types::DescribeExpressionsOutput.new
        type.expressions = ExpressionStatusList.build(params[:expressions], context: "#{context}[:expressions]") unless params[:expressions].nil?
        type
      end
    end

    module DescribeIndexFieldsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIndexFieldsInput, context: context)
        type = Types::DescribeIndexFieldsInput.new
        type.domain_name = params[:domain_name]
        type.field_names = DynamicFieldNameList.build(params[:field_names], context: "#{context}[:field_names]") unless params[:field_names].nil?
        type.deployed = params[:deployed]
        type
      end
    end

    module DescribeIndexFieldsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIndexFieldsOutput, context: context)
        type = Types::DescribeIndexFieldsOutput.new
        type.index_fields = IndexFieldStatusList.build(params[:index_fields], context: "#{context}[:index_fields]") unless params[:index_fields].nil?
        type
      end
    end

    module DescribeScalingParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingParametersInput, context: context)
        type = Types::DescribeScalingParametersInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DescribeScalingParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingParametersOutput, context: context)
        type = Types::DescribeScalingParametersOutput.new
        type.scaling_parameters = ScalingParametersStatus.build(params[:scaling_parameters], context: "#{context}[:scaling_parameters]") unless params[:scaling_parameters].nil?
        type
      end
    end

    module DescribeServiceAccessPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceAccessPoliciesInput, context: context)
        type = Types::DescribeServiceAccessPoliciesInput.new
        type.domain_name = params[:domain_name]
        type.deployed = params[:deployed]
        type
      end
    end

    module DescribeServiceAccessPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceAccessPoliciesOutput, context: context)
        type = Types::DescribeServiceAccessPoliciesOutput.new
        type.access_policies = AccessPoliciesStatus.build(params[:access_policies], context: "#{context}[:access_policies]") unless params[:access_policies].nil?
        type
      end
    end

    module DescribeSuggestersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSuggestersInput, context: context)
        type = Types::DescribeSuggestersInput.new
        type.domain_name = params[:domain_name]
        type.suggester_names = StandardNameList.build(params[:suggester_names], context: "#{context}[:suggester_names]") unless params[:suggester_names].nil?
        type.deployed = params[:deployed]
        type
      end
    end

    module DescribeSuggestersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSuggestersOutput, context: context)
        type = Types::DescribeSuggestersOutput.new
        type.suggesters = SuggesterStatusList.build(params[:suggesters], context: "#{context}[:suggesters]") unless params[:suggesters].nil?
        type
      end
    end

    module DisabledOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisabledOperationException, context: context)
        type = Types::DisabledOperationException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module DocumentSuggesterOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentSuggesterOptions, context: context)
        type = Types::DocumentSuggesterOptions.new
        type.source_field = params[:source_field]
        type.fuzzy_matching = params[:fuzzy_matching]
        type.sort_expression = params[:sort_expression]
        type
      end
    end

    module DomainEndpointOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainEndpointOptions, context: context)
        type = Types::DomainEndpointOptions.new
        type.enforce_https = params[:enforce_https]
        type.tls_security_policy = params[:tls_security_policy]
        type
      end
    end

    module DomainEndpointOptionsStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainEndpointOptionsStatus, context: context)
        type = Types::DomainEndpointOptionsStatus.new
        type.options = DomainEndpointOptions.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module DomainNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DomainNameMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DomainStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainStatus, context: context)
        type = Types::DomainStatus.new
        type.domain_id = params[:domain_id]
        type.domain_name = params[:domain_name]
        type.arn = params[:arn]
        type.created = params[:created]
        type.deleted = params[:deleted]
        type.doc_service = ServiceEndpoint.build(params[:doc_service], context: "#{context}[:doc_service]") unless params[:doc_service].nil?
        type.search_service = ServiceEndpoint.build(params[:search_service], context: "#{context}[:search_service]") unless params[:search_service].nil?
        type.requires_index_documents = params[:requires_index_documents]
        type.processing = params[:processing]
        type.search_instance_type = params[:search_instance_type]
        type.search_partition_count = params[:search_partition_count]
        type.search_instance_count = params[:search_instance_count]
        type.limits = Limits.build(params[:limits], context: "#{context}[:limits]") unless params[:limits].nil?
        type
      end
    end

    module DomainStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DoubleArrayOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DoubleArrayOptions, context: context)
        type = Types::DoubleArrayOptions.new
        type.default_value = params[:default_value]
        type.source_fields = params[:source_fields]
        type.facet_enabled = params[:facet_enabled]
        type.search_enabled = params[:search_enabled]
        type.return_enabled = params[:return_enabled]
        type
      end
    end

    module DoubleOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DoubleOptions, context: context)
        type = Types::DoubleOptions.new
        type.default_value = params[:default_value]
        type.source_field = params[:source_field]
        type.facet_enabled = params[:facet_enabled]
        type.search_enabled = params[:search_enabled]
        type.return_enabled = params[:return_enabled]
        type.sort_enabled = params[:sort_enabled]
        type
      end
    end

    module DynamicFieldNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Expression
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Expression, context: context)
        type = Types::Expression.new
        type.expression_name = params[:expression_name]
        type.expression_value = params[:expression_value]
        type
      end
    end

    module ExpressionStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpressionStatus, context: context)
        type = Types::ExpressionStatus.new
        type.options = Expression.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module ExpressionStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExpressionStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FieldNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IndexDocumentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IndexDocumentsInput, context: context)
        type = Types::IndexDocumentsInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module IndexDocumentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IndexDocumentsOutput, context: context)
        type = Types::IndexDocumentsOutput.new
        type.field_names = FieldNameList.build(params[:field_names], context: "#{context}[:field_names]") unless params[:field_names].nil?
        type
      end
    end

    module IndexField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IndexField, context: context)
        type = Types::IndexField.new
        type.index_field_name = params[:index_field_name]
        type.index_field_type = params[:index_field_type]
        type.int_options = IntOptions.build(params[:int_options], context: "#{context}[:int_options]") unless params[:int_options].nil?
        type.double_options = DoubleOptions.build(params[:double_options], context: "#{context}[:double_options]") unless params[:double_options].nil?
        type.literal_options = LiteralOptions.build(params[:literal_options], context: "#{context}[:literal_options]") unless params[:literal_options].nil?
        type.text_options = TextOptions.build(params[:text_options], context: "#{context}[:text_options]") unless params[:text_options].nil?
        type.date_options = DateOptions.build(params[:date_options], context: "#{context}[:date_options]") unless params[:date_options].nil?
        type.lat_lon_options = LatLonOptions.build(params[:lat_lon_options], context: "#{context}[:lat_lon_options]") unless params[:lat_lon_options].nil?
        type.int_array_options = IntArrayOptions.build(params[:int_array_options], context: "#{context}[:int_array_options]") unless params[:int_array_options].nil?
        type.double_array_options = DoubleArrayOptions.build(params[:double_array_options], context: "#{context}[:double_array_options]") unless params[:double_array_options].nil?
        type.literal_array_options = LiteralArrayOptions.build(params[:literal_array_options], context: "#{context}[:literal_array_options]") unless params[:literal_array_options].nil?
        type.text_array_options = TextArrayOptions.build(params[:text_array_options], context: "#{context}[:text_array_options]") unless params[:text_array_options].nil?
        type.date_array_options = DateArrayOptions.build(params[:date_array_options], context: "#{context}[:date_array_options]") unless params[:date_array_options].nil?
        type
      end
    end

    module IndexFieldStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IndexFieldStatus, context: context)
        type = Types::IndexFieldStatus.new
        type.options = IndexField.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module IndexFieldStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IndexFieldStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IntArrayOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntArrayOptions, context: context)
        type = Types::IntArrayOptions.new
        type.default_value = params[:default_value]
        type.source_fields = params[:source_fields]
        type.facet_enabled = params[:facet_enabled]
        type.search_enabled = params[:search_enabled]
        type.return_enabled = params[:return_enabled]
        type
      end
    end

    module IntOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntOptions, context: context)
        type = Types::IntOptions.new
        type.default_value = params[:default_value]
        type.source_field = params[:source_field]
        type.facet_enabled = params[:facet_enabled]
        type.search_enabled = params[:search_enabled]
        type.return_enabled = params[:return_enabled]
        type.sort_enabled = params[:sort_enabled]
        type
      end
    end

    module InternalException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalException, context: context)
        type = Types::InternalException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module InvalidTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTypeException, context: context)
        type = Types::InvalidTypeException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module LatLonOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LatLonOptions, context: context)
        type = Types::LatLonOptions.new
        type.default_value = params[:default_value]
        type.source_field = params[:source_field]
        type.facet_enabled = params[:facet_enabled]
        type.search_enabled = params[:search_enabled]
        type.return_enabled = params[:return_enabled]
        type.sort_enabled = params[:sort_enabled]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module Limits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Limits, context: context)
        type = Types::Limits.new
        type.maximum_replication_count = params[:maximum_replication_count]
        type.maximum_partition_count = params[:maximum_partition_count]
        type
      end
    end

    module ListDomainNamesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainNamesInput, context: context)
        type = Types::ListDomainNamesInput.new
        type
      end
    end

    module ListDomainNamesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainNamesOutput, context: context)
        type = Types::ListDomainNamesOutput.new
        type.domain_names = DomainNameMap.build(params[:domain_names], context: "#{context}[:domain_names]") unless params[:domain_names].nil?
        type
      end
    end

    module LiteralArrayOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LiteralArrayOptions, context: context)
        type = Types::LiteralArrayOptions.new
        type.default_value = params[:default_value]
        type.source_fields = params[:source_fields]
        type.facet_enabled = params[:facet_enabled]
        type.search_enabled = params[:search_enabled]
        type.return_enabled = params[:return_enabled]
        type
      end
    end

    module LiteralOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LiteralOptions, context: context)
        type = Types::LiteralOptions.new
        type.default_value = params[:default_value]
        type.source_field = params[:source_field]
        type.facet_enabled = params[:facet_enabled]
        type.search_enabled = params[:search_enabled]
        type.return_enabled = params[:return_enabled]
        type.sort_enabled = params[:sort_enabled]
        type
      end
    end

    module OptionStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptionStatus, context: context)
        type = Types::OptionStatus.new
        type.creation_date = params[:creation_date]
        type.update_date = params[:update_date]
        type.update_version = params[:update_version]
        type.state = params[:state]
        type.pending_deletion = params[:pending_deletion]
        type
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ScalingParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalingParameters, context: context)
        type = Types::ScalingParameters.new
        type.desired_instance_type = params[:desired_instance_type]
        type.desired_replication_count = params[:desired_replication_count]
        type.desired_partition_count = params[:desired_partition_count]
        type
      end
    end

    module ScalingParametersStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalingParametersStatus, context: context)
        type = Types::ScalingParametersStatus.new
        type.options = ScalingParameters.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module ServiceEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceEndpoint, context: context)
        type = Types::ServiceEndpoint.new
        type.endpoint = params[:endpoint]
        type
      end
    end

    module StandardNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Suggester
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Suggester, context: context)
        type = Types::Suggester.new
        type.suggester_name = params[:suggester_name]
        type.document_suggester_options = DocumentSuggesterOptions.build(params[:document_suggester_options], context: "#{context}[:document_suggester_options]") unless params[:document_suggester_options].nil?
        type
      end
    end

    module SuggesterStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuggesterStatus, context: context)
        type = Types::SuggesterStatus.new
        type.options = Suggester.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.status = OptionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module SuggesterStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SuggesterStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TextArrayOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextArrayOptions, context: context)
        type = Types::TextArrayOptions.new
        type.default_value = params[:default_value]
        type.source_fields = params[:source_fields]
        type.return_enabled = params[:return_enabled]
        type.highlight_enabled = params[:highlight_enabled]
        type.analysis_scheme = params[:analysis_scheme]
        type
      end
    end

    module TextOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextOptions, context: context)
        type = Types::TextOptions.new
        type.default_value = params[:default_value]
        type.source_field = params[:source_field]
        type.return_enabled = params[:return_enabled]
        type.sort_enabled = params[:sort_enabled]
        type.highlight_enabled = params[:highlight_enabled]
        type.analysis_scheme = params[:analysis_scheme]
        type
      end
    end

    module UpdateAvailabilityOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAvailabilityOptionsInput, context: context)
        type = Types::UpdateAvailabilityOptionsInput.new
        type.domain_name = params[:domain_name]
        type.multi_az = params[:multi_az]
        type
      end
    end

    module UpdateAvailabilityOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAvailabilityOptionsOutput, context: context)
        type = Types::UpdateAvailabilityOptionsOutput.new
        type.availability_options = AvailabilityOptionsStatus.build(params[:availability_options], context: "#{context}[:availability_options]") unless params[:availability_options].nil?
        type
      end
    end

    module UpdateDomainEndpointOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainEndpointOptionsInput, context: context)
        type = Types::UpdateDomainEndpointOptionsInput.new
        type.domain_name = params[:domain_name]
        type.domain_endpoint_options = DomainEndpointOptions.build(params[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless params[:domain_endpoint_options].nil?
        type
      end
    end

    module UpdateDomainEndpointOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainEndpointOptionsOutput, context: context)
        type = Types::UpdateDomainEndpointOptionsOutput.new
        type.domain_endpoint_options = DomainEndpointOptionsStatus.build(params[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless params[:domain_endpoint_options].nil?
        type
      end
    end

    module UpdateScalingParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateScalingParametersInput, context: context)
        type = Types::UpdateScalingParametersInput.new
        type.domain_name = params[:domain_name]
        type.scaling_parameters = ScalingParameters.build(params[:scaling_parameters], context: "#{context}[:scaling_parameters]") unless params[:scaling_parameters].nil?
        type
      end
    end

    module UpdateScalingParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateScalingParametersOutput, context: context)
        type = Types::UpdateScalingParametersOutput.new
        type.scaling_parameters = ScalingParametersStatus.build(params[:scaling_parameters], context: "#{context}[:scaling_parameters]") unless params[:scaling_parameters].nil?
        type
      end
    end

    module UpdateServiceAccessPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceAccessPoliciesInput, context: context)
        type = Types::UpdateServiceAccessPoliciesInput.new
        type.domain_name = params[:domain_name]
        type.access_policies = params[:access_policies]
        type
      end
    end

    module UpdateServiceAccessPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceAccessPoliciesOutput, context: context)
        type = Types::UpdateServiceAccessPoliciesOutput.new
        type.access_policies = AccessPoliciesStatus.build(params[:access_policies], context: "#{context}[:access_policies]") unless params[:access_policies].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

  end
end
