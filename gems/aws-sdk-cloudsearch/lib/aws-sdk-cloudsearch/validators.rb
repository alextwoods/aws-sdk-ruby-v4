# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::CloudSearch
  module Validators

    class AccessPoliciesStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessPoliciesStatus, context: context)
        Hearth::Validator.validate!(input[:options], ::String, context: "#{context}[:options]")
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class AnalysisOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalysisOptions, context: context)
        Hearth::Validator.validate!(input[:synonyms], ::String, context: "#{context}[:synonyms]")
        Hearth::Validator.validate!(input[:stopwords], ::String, context: "#{context}[:stopwords]")
        Hearth::Validator.validate!(input[:stemming_dictionary], ::String, context: "#{context}[:stemming_dictionary]")
        Hearth::Validator.validate!(input[:japanese_tokenization_dictionary], ::String, context: "#{context}[:japanese_tokenization_dictionary]")
        Hearth::Validator.validate!(input[:algorithmic_stemming], ::String, context: "#{context}[:algorithmic_stemming]")
      end
    end

    class AnalysisScheme
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalysisScheme, context: context)
        Hearth::Validator.validate!(input[:analysis_scheme_name], ::String, context: "#{context}[:analysis_scheme_name]")
        Hearth::Validator.validate!(input[:analysis_scheme_language], ::String, context: "#{context}[:analysis_scheme_language]")
        AnalysisOptions.validate!(input[:analysis_options], context: "#{context}[:analysis_options]") unless input[:analysis_options].nil?
      end
    end

    class AnalysisSchemeStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalysisSchemeStatus, context: context)
        AnalysisScheme.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class AnalysisSchemeStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AnalysisSchemeStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AvailabilityOptionsStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailabilityOptionsStatus, context: context)
        Hearth::Validator.validate!(input[:options], ::TrueClass, ::FalseClass, context: "#{context}[:options]")
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class BaseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BaseException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BuildSuggestersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuildSuggestersInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class BuildSuggestersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuildSuggestersOutput, context: context)
        FieldNameList.validate!(input[:field_names], context: "#{context}[:field_names]") unless input[:field_names].nil?
      end
    end

    class CreateDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class CreateDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainOutput, context: context)
        DomainStatus.validate!(input[:domain_status], context: "#{context}[:domain_status]") unless input[:domain_status].nil?
      end
    end

    class DateArrayOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DateArrayOptions, context: context)
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:source_fields], ::String, context: "#{context}[:source_fields]")
        Hearth::Validator.validate!(input[:facet_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:facet_enabled]")
        Hearth::Validator.validate!(input[:search_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:search_enabled]")
        Hearth::Validator.validate!(input[:return_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:return_enabled]")
      end
    end

    class DateOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DateOptions, context: context)
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:source_field], ::String, context: "#{context}[:source_field]")
        Hearth::Validator.validate!(input[:facet_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:facet_enabled]")
        Hearth::Validator.validate!(input[:search_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:search_enabled]")
        Hearth::Validator.validate!(input[:return_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:return_enabled]")
        Hearth::Validator.validate!(input[:sort_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sort_enabled]")
      end
    end

    class DefineAnalysisSchemeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefineAnalysisSchemeInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        AnalysisScheme.validate!(input[:analysis_scheme], context: "#{context}[:analysis_scheme]") unless input[:analysis_scheme].nil?
      end
    end

    class DefineAnalysisSchemeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefineAnalysisSchemeOutput, context: context)
        AnalysisSchemeStatus.validate!(input[:analysis_scheme], context: "#{context}[:analysis_scheme]") unless input[:analysis_scheme].nil?
      end
    end

    class DefineExpressionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefineExpressionInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Expression.validate!(input[:expression], context: "#{context}[:expression]") unless input[:expression].nil?
      end
    end

    class DefineExpressionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefineExpressionOutput, context: context)
        ExpressionStatus.validate!(input[:expression], context: "#{context}[:expression]") unless input[:expression].nil?
      end
    end

    class DefineIndexFieldInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefineIndexFieldInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        IndexField.validate!(input[:index_field], context: "#{context}[:index_field]") unless input[:index_field].nil?
      end
    end

    class DefineIndexFieldOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefineIndexFieldOutput, context: context)
        IndexFieldStatus.validate!(input[:index_field], context: "#{context}[:index_field]") unless input[:index_field].nil?
      end
    end

    class DefineSuggesterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefineSuggesterInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Suggester.validate!(input[:suggester], context: "#{context}[:suggester]") unless input[:suggester].nil?
      end
    end

    class DefineSuggesterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefineSuggesterOutput, context: context)
        SuggesterStatus.validate!(input[:suggester], context: "#{context}[:suggester]") unless input[:suggester].nil?
      end
    end

    class DeleteAnalysisSchemeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAnalysisSchemeInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:analysis_scheme_name], ::String, context: "#{context}[:analysis_scheme_name]")
      end
    end

    class DeleteAnalysisSchemeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAnalysisSchemeOutput, context: context)
        AnalysisSchemeStatus.validate!(input[:analysis_scheme], context: "#{context}[:analysis_scheme]") unless input[:analysis_scheme].nil?
      end
    end

    class DeleteDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DeleteDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainOutput, context: context)
        DomainStatus.validate!(input[:domain_status], context: "#{context}[:domain_status]") unless input[:domain_status].nil?
      end
    end

    class DeleteExpressionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExpressionInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:expression_name], ::String, context: "#{context}[:expression_name]")
      end
    end

    class DeleteExpressionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExpressionOutput, context: context)
        ExpressionStatus.validate!(input[:expression], context: "#{context}[:expression]") unless input[:expression].nil?
      end
    end

    class DeleteIndexFieldInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIndexFieldInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:index_field_name], ::String, context: "#{context}[:index_field_name]")
      end
    end

    class DeleteIndexFieldOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIndexFieldOutput, context: context)
        IndexFieldStatus.validate!(input[:index_field], context: "#{context}[:index_field]") unless input[:index_field].nil?
      end
    end

    class DeleteSuggesterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSuggesterInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:suggester_name], ::String, context: "#{context}[:suggester_name]")
      end
    end

    class DeleteSuggesterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSuggesterOutput, context: context)
        SuggesterStatus.validate!(input[:suggester], context: "#{context}[:suggester]") unless input[:suggester].nil?
      end
    end

    class DescribeAnalysisSchemesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAnalysisSchemesInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        StandardNameList.validate!(input[:analysis_scheme_names], context: "#{context}[:analysis_scheme_names]") unless input[:analysis_scheme_names].nil?
        Hearth::Validator.validate!(input[:deployed], ::TrueClass, ::FalseClass, context: "#{context}[:deployed]")
      end
    end

    class DescribeAnalysisSchemesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAnalysisSchemesOutput, context: context)
        AnalysisSchemeStatusList.validate!(input[:analysis_schemes], context: "#{context}[:analysis_schemes]") unless input[:analysis_schemes].nil?
      end
    end

    class DescribeAvailabilityOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAvailabilityOptionsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:deployed], ::TrueClass, ::FalseClass, context: "#{context}[:deployed]")
      end
    end

    class DescribeAvailabilityOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAvailabilityOptionsOutput, context: context)
        AvailabilityOptionsStatus.validate!(input[:availability_options], context: "#{context}[:availability_options]") unless input[:availability_options].nil?
      end
    end

    class DescribeDomainEndpointOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainEndpointOptionsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:deployed], ::TrueClass, ::FalseClass, context: "#{context}[:deployed]")
      end
    end

    class DescribeDomainEndpointOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainEndpointOptionsOutput, context: context)
        DomainEndpointOptionsStatus.validate!(input[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless input[:domain_endpoint_options].nil?
      end
    end

    class DescribeDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainsInput, context: context)
        DomainNameList.validate!(input[:domain_names], context: "#{context}[:domain_names]") unless input[:domain_names].nil?
      end
    end

    class DescribeDomainsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainsOutput, context: context)
        DomainStatusList.validate!(input[:domain_status_list], context: "#{context}[:domain_status_list]") unless input[:domain_status_list].nil?
      end
    end

    class DescribeExpressionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExpressionsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        StandardNameList.validate!(input[:expression_names], context: "#{context}[:expression_names]") unless input[:expression_names].nil?
        Hearth::Validator.validate!(input[:deployed], ::TrueClass, ::FalseClass, context: "#{context}[:deployed]")
      end
    end

    class DescribeExpressionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExpressionsOutput, context: context)
        ExpressionStatusList.validate!(input[:expressions], context: "#{context}[:expressions]") unless input[:expressions].nil?
      end
    end

    class DescribeIndexFieldsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIndexFieldsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        DynamicFieldNameList.validate!(input[:field_names], context: "#{context}[:field_names]") unless input[:field_names].nil?
        Hearth::Validator.validate!(input[:deployed], ::TrueClass, ::FalseClass, context: "#{context}[:deployed]")
      end
    end

    class DescribeIndexFieldsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIndexFieldsOutput, context: context)
        IndexFieldStatusList.validate!(input[:index_fields], context: "#{context}[:index_fields]") unless input[:index_fields].nil?
      end
    end

    class DescribeScalingParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingParametersInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DescribeScalingParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingParametersOutput, context: context)
        ScalingParametersStatus.validate!(input[:scaling_parameters], context: "#{context}[:scaling_parameters]") unless input[:scaling_parameters].nil?
      end
    end

    class DescribeServiceAccessPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceAccessPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:deployed], ::TrueClass, ::FalseClass, context: "#{context}[:deployed]")
      end
    end

    class DescribeServiceAccessPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceAccessPoliciesOutput, context: context)
        AccessPoliciesStatus.validate!(input[:access_policies], context: "#{context}[:access_policies]") unless input[:access_policies].nil?
      end
    end

    class DescribeSuggestersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSuggestersInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        StandardNameList.validate!(input[:suggester_names], context: "#{context}[:suggester_names]") unless input[:suggester_names].nil?
        Hearth::Validator.validate!(input[:deployed], ::TrueClass, ::FalseClass, context: "#{context}[:deployed]")
      end
    end

    class DescribeSuggestersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSuggestersOutput, context: context)
        SuggesterStatusList.validate!(input[:suggesters], context: "#{context}[:suggesters]") unless input[:suggesters].nil?
      end
    end

    class DisabledOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisabledOperationException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DocumentSuggesterOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentSuggesterOptions, context: context)
        Hearth::Validator.validate!(input[:source_field], ::String, context: "#{context}[:source_field]")
        Hearth::Validator.validate!(input[:fuzzy_matching], ::String, context: "#{context}[:fuzzy_matching]")
        Hearth::Validator.validate!(input[:sort_expression], ::String, context: "#{context}[:sort_expression]")
      end
    end

    class DomainEndpointOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainEndpointOptions, context: context)
        Hearth::Validator.validate!(input[:enforce_https], ::TrueClass, ::FalseClass, context: "#{context}[:enforce_https]")
        Hearth::Validator.validate!(input[:tls_security_policy], ::String, context: "#{context}[:tls_security_policy]")
      end
    end

    class DomainEndpointOptionsStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainEndpointOptionsStatus, context: context)
        DomainEndpointOptions.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class DomainNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DomainNameMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DomainStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainStatus, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created], ::TrueClass, ::FalseClass, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:deleted], ::TrueClass, ::FalseClass, context: "#{context}[:deleted]")
        ServiceEndpoint.validate!(input[:doc_service], context: "#{context}[:doc_service]") unless input[:doc_service].nil?
        ServiceEndpoint.validate!(input[:search_service], context: "#{context}[:search_service]") unless input[:search_service].nil?
        Hearth::Validator.validate!(input[:requires_index_documents], ::TrueClass, ::FalseClass, context: "#{context}[:requires_index_documents]")
        Hearth::Validator.validate!(input[:processing], ::TrueClass, ::FalseClass, context: "#{context}[:processing]")
        Hearth::Validator.validate!(input[:search_instance_type], ::String, context: "#{context}[:search_instance_type]")
        Hearth::Validator.validate!(input[:search_partition_count], ::Integer, context: "#{context}[:search_partition_count]")
        Hearth::Validator.validate!(input[:search_instance_count], ::Integer, context: "#{context}[:search_instance_count]")
        Limits.validate!(input[:limits], context: "#{context}[:limits]") unless input[:limits].nil?
      end
    end

    class DomainStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DoubleArrayOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DoubleArrayOptions, context: context)
        Hearth::Validator.validate!(input[:default_value], ::Float, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:source_fields], ::String, context: "#{context}[:source_fields]")
        Hearth::Validator.validate!(input[:facet_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:facet_enabled]")
        Hearth::Validator.validate!(input[:search_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:search_enabled]")
        Hearth::Validator.validate!(input[:return_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:return_enabled]")
      end
    end

    class DoubleOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DoubleOptions, context: context)
        Hearth::Validator.validate!(input[:default_value], ::Float, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:source_field], ::String, context: "#{context}[:source_field]")
        Hearth::Validator.validate!(input[:facet_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:facet_enabled]")
        Hearth::Validator.validate!(input[:search_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:search_enabled]")
        Hearth::Validator.validate!(input[:return_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:return_enabled]")
        Hearth::Validator.validate!(input[:sort_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sort_enabled]")
      end
    end

    class DynamicFieldNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Expression
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Expression, context: context)
        Hearth::Validator.validate!(input[:expression_name], ::String, context: "#{context}[:expression_name]")
        Hearth::Validator.validate!(input[:expression_value], ::String, context: "#{context}[:expression_value]")
      end
    end

    class ExpressionStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpressionStatus, context: context)
        Expression.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class ExpressionStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExpressionStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FieldNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IndexDocumentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IndexDocumentsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class IndexDocumentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IndexDocumentsOutput, context: context)
        FieldNameList.validate!(input[:field_names], context: "#{context}[:field_names]") unless input[:field_names].nil?
      end
    end

    class IndexField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IndexField, context: context)
        Hearth::Validator.validate!(input[:index_field_name], ::String, context: "#{context}[:index_field_name]")
        Hearth::Validator.validate!(input[:index_field_type], ::String, context: "#{context}[:index_field_type]")
        IntOptions.validate!(input[:int_options], context: "#{context}[:int_options]") unless input[:int_options].nil?
        DoubleOptions.validate!(input[:double_options], context: "#{context}[:double_options]") unless input[:double_options].nil?
        LiteralOptions.validate!(input[:literal_options], context: "#{context}[:literal_options]") unless input[:literal_options].nil?
        TextOptions.validate!(input[:text_options], context: "#{context}[:text_options]") unless input[:text_options].nil?
        DateOptions.validate!(input[:date_options], context: "#{context}[:date_options]") unless input[:date_options].nil?
        LatLonOptions.validate!(input[:lat_lon_options], context: "#{context}[:lat_lon_options]") unless input[:lat_lon_options].nil?
        IntArrayOptions.validate!(input[:int_array_options], context: "#{context}[:int_array_options]") unless input[:int_array_options].nil?
        DoubleArrayOptions.validate!(input[:double_array_options], context: "#{context}[:double_array_options]") unless input[:double_array_options].nil?
        LiteralArrayOptions.validate!(input[:literal_array_options], context: "#{context}[:literal_array_options]") unless input[:literal_array_options].nil?
        TextArrayOptions.validate!(input[:text_array_options], context: "#{context}[:text_array_options]") unless input[:text_array_options].nil?
        DateArrayOptions.validate!(input[:date_array_options], context: "#{context}[:date_array_options]") unless input[:date_array_options].nil?
      end
    end

    class IndexFieldStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IndexFieldStatus, context: context)
        IndexField.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class IndexFieldStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IndexFieldStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IntArrayOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntArrayOptions, context: context)
        Hearth::Validator.validate!(input[:default_value], ::Integer, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:source_fields], ::String, context: "#{context}[:source_fields]")
        Hearth::Validator.validate!(input[:facet_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:facet_enabled]")
        Hearth::Validator.validate!(input[:search_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:search_enabled]")
        Hearth::Validator.validate!(input[:return_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:return_enabled]")
      end
    end

    class IntOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntOptions, context: context)
        Hearth::Validator.validate!(input[:default_value], ::Integer, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:source_field], ::String, context: "#{context}[:source_field]")
        Hearth::Validator.validate!(input[:facet_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:facet_enabled]")
        Hearth::Validator.validate!(input[:search_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:search_enabled]")
        Hearth::Validator.validate!(input[:return_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:return_enabled]")
        Hearth::Validator.validate!(input[:sort_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sort_enabled]")
      end
    end

    class InternalException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTypeException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LatLonOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LatLonOptions, context: context)
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:source_field], ::String, context: "#{context}[:source_field]")
        Hearth::Validator.validate!(input[:facet_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:facet_enabled]")
        Hearth::Validator.validate!(input[:search_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:search_enabled]")
        Hearth::Validator.validate!(input[:return_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:return_enabled]")
        Hearth::Validator.validate!(input[:sort_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sort_enabled]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Limits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Limits, context: context)
        Hearth::Validator.validate!(input[:maximum_replication_count], ::Integer, context: "#{context}[:maximum_replication_count]")
        Hearth::Validator.validate!(input[:maximum_partition_count], ::Integer, context: "#{context}[:maximum_partition_count]")
      end
    end

    class ListDomainNamesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainNamesInput, context: context)
      end
    end

    class ListDomainNamesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainNamesOutput, context: context)
        DomainNameMap.validate!(input[:domain_names], context: "#{context}[:domain_names]") unless input[:domain_names].nil?
      end
    end

    class LiteralArrayOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LiteralArrayOptions, context: context)
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:source_fields], ::String, context: "#{context}[:source_fields]")
        Hearth::Validator.validate!(input[:facet_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:facet_enabled]")
        Hearth::Validator.validate!(input[:search_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:search_enabled]")
        Hearth::Validator.validate!(input[:return_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:return_enabled]")
      end
    end

    class LiteralOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LiteralOptions, context: context)
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:source_field], ::String, context: "#{context}[:source_field]")
        Hearth::Validator.validate!(input[:facet_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:facet_enabled]")
        Hearth::Validator.validate!(input[:search_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:search_enabled]")
        Hearth::Validator.validate!(input[:return_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:return_enabled]")
        Hearth::Validator.validate!(input[:sort_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sort_enabled]")
      end
    end

    class OptionStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptionStatus, context: context)
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:update_date], ::Time, context: "#{context}[:update_date]")
        Hearth::Validator.validate!(input[:update_version], ::Integer, context: "#{context}[:update_version]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:pending_deletion], ::TrueClass, ::FalseClass, context: "#{context}[:pending_deletion]")
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ScalingParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingParameters, context: context)
        Hearth::Validator.validate!(input[:desired_instance_type], ::String, context: "#{context}[:desired_instance_type]")
        Hearth::Validator.validate!(input[:desired_replication_count], ::Integer, context: "#{context}[:desired_replication_count]")
        Hearth::Validator.validate!(input[:desired_partition_count], ::Integer, context: "#{context}[:desired_partition_count]")
      end
    end

    class ScalingParametersStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingParametersStatus, context: context)
        ScalingParameters.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class ServiceEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceEndpoint, context: context)
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
      end
    end

    class StandardNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Suggester
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Suggester, context: context)
        Hearth::Validator.validate!(input[:suggester_name], ::String, context: "#{context}[:suggester_name]")
        DocumentSuggesterOptions.validate!(input[:document_suggester_options], context: "#{context}[:document_suggester_options]") unless input[:document_suggester_options].nil?
      end
    end

    class SuggesterStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuggesterStatus, context: context)
        Suggester.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        OptionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class SuggesterStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SuggesterStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TextArrayOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TextArrayOptions, context: context)
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:source_fields], ::String, context: "#{context}[:source_fields]")
        Hearth::Validator.validate!(input[:return_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:return_enabled]")
        Hearth::Validator.validate!(input[:highlight_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:highlight_enabled]")
        Hearth::Validator.validate!(input[:analysis_scheme], ::String, context: "#{context}[:analysis_scheme]")
      end
    end

    class TextOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TextOptions, context: context)
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:source_field], ::String, context: "#{context}[:source_field]")
        Hearth::Validator.validate!(input[:return_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:return_enabled]")
        Hearth::Validator.validate!(input[:sort_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:sort_enabled]")
        Hearth::Validator.validate!(input[:highlight_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:highlight_enabled]")
        Hearth::Validator.validate!(input[:analysis_scheme], ::String, context: "#{context}[:analysis_scheme]")
      end
    end

    class UpdateAvailabilityOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAvailabilityOptionsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:multi_az], ::TrueClass, ::FalseClass, context: "#{context}[:multi_az]")
      end
    end

    class UpdateAvailabilityOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAvailabilityOptionsOutput, context: context)
        AvailabilityOptionsStatus.validate!(input[:availability_options], context: "#{context}[:availability_options]") unless input[:availability_options].nil?
      end
    end

    class UpdateDomainEndpointOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainEndpointOptionsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        DomainEndpointOptions.validate!(input[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless input[:domain_endpoint_options].nil?
      end
    end

    class UpdateDomainEndpointOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainEndpointOptionsOutput, context: context)
        DomainEndpointOptionsStatus.validate!(input[:domain_endpoint_options], context: "#{context}[:domain_endpoint_options]") unless input[:domain_endpoint_options].nil?
      end
    end

    class UpdateScalingParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateScalingParametersInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        ScalingParameters.validate!(input[:scaling_parameters], context: "#{context}[:scaling_parameters]") unless input[:scaling_parameters].nil?
      end
    end

    class UpdateScalingParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateScalingParametersOutput, context: context)
        ScalingParametersStatus.validate!(input[:scaling_parameters], context: "#{context}[:scaling_parameters]") unless input[:scaling_parameters].nil?
      end
    end

    class UpdateServiceAccessPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceAccessPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:access_policies], ::String, context: "#{context}[:access_policies]")
      end
    end

    class UpdateServiceAccessPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceAccessPoliciesOutput, context: context)
        AccessPoliciesStatus.validate!(input[:access_policies], context: "#{context}[:access_policies]") unless input[:access_policies].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
