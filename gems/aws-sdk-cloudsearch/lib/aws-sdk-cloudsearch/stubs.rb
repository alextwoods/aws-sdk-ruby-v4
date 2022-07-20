# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CloudSearch
  module Stubs

    # Operation Stubber for BuildSuggesters
    class BuildSuggesters
      def self.default(visited=[])
        {
          field_names: FieldNameList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('BuildSuggestersResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('BuildSuggestersResult')
        xml << Hearth::XML::Node.new('FieldNames', FieldNameList.stub('member', stub[:field_names])) unless stub[:field_names].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for FieldNameList
    class FieldNameList
      def self.default(visited=[])
        return nil if visited.include?('FieldNameList')
        visited = visited + ['FieldNameList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for CreateDomain
    class CreateDomain
      def self.default(visited=[])
        {
          domain_status: DomainStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateDomainResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('CreateDomainResult')
        xml << DomainStatus.stub('DomainStatus', stub[:domain_status]) unless stub[:domain_status].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DomainStatus
    class DomainStatus
      def self.default(visited=[])
        return nil if visited.include?('DomainStatus')
        visited = visited + ['DomainStatus']
        {
          domain_id: 'domain_id',
          domain_name: 'domain_name',
          arn: 'arn',
          created: false,
          deleted: false,
          doc_service: ServiceEndpoint.default(visited),
          search_service: ServiceEndpoint.default(visited),
          requires_index_documents: false,
          processing: false,
          search_instance_type: 'search_instance_type',
          search_partition_count: 1,
          search_instance_count: 1,
          limits: Limits.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DomainStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DomainId', stub[:domain_id].to_s) unless stub[:domain_id].nil?
        xml << Hearth::XML::Node.new('DomainName', stub[:domain_name].to_s) unless stub[:domain_name].nil?
        xml << Hearth::XML::Node.new('ARN', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Created', stub[:created].to_s) unless stub[:created].nil?
        xml << Hearth::XML::Node.new('Deleted', stub[:deleted].to_s) unless stub[:deleted].nil?
        xml << ServiceEndpoint.stub('DocService', stub[:doc_service]) unless stub[:doc_service].nil?
        xml << ServiceEndpoint.stub('SearchService', stub[:search_service]) unless stub[:search_service].nil?
        xml << Hearth::XML::Node.new('RequiresIndexDocuments', stub[:requires_index_documents].to_s) unless stub[:requires_index_documents].nil?
        xml << Hearth::XML::Node.new('Processing', stub[:processing].to_s) unless stub[:processing].nil?
        xml << Hearth::XML::Node.new('SearchInstanceType', stub[:search_instance_type].to_s) unless stub[:search_instance_type].nil?
        xml << Hearth::XML::Node.new('SearchPartitionCount', stub[:search_partition_count].to_s) unless stub[:search_partition_count].nil?
        xml << Hearth::XML::Node.new('SearchInstanceCount', stub[:search_instance_count].to_s) unless stub[:search_instance_count].nil?
        xml << Limits.stub('Limits', stub[:limits]) unless stub[:limits].nil?
        xml
      end
    end

    # Structure Stubber for Limits
    class Limits
      def self.default(visited=[])
        return nil if visited.include?('Limits')
        visited = visited + ['Limits']
        {
          maximum_replication_count: 1,
          maximum_partition_count: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Limits.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MaximumReplicationCount', stub[:maximum_replication_count].to_s) unless stub[:maximum_replication_count].nil?
        xml << Hearth::XML::Node.new('MaximumPartitionCount', stub[:maximum_partition_count].to_s) unless stub[:maximum_partition_count].nil?
        xml
      end
    end

    # Structure Stubber for ServiceEndpoint
    class ServiceEndpoint
      def self.default(visited=[])
        return nil if visited.include?('ServiceEndpoint')
        visited = visited + ['ServiceEndpoint']
        {
          endpoint: 'endpoint',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ServiceEndpoint.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Endpoint', stub[:endpoint].to_s) unless stub[:endpoint].nil?
        xml
      end
    end

    # Operation Stubber for DefineAnalysisScheme
    class DefineAnalysisScheme
      def self.default(visited=[])
        {
          analysis_scheme: AnalysisSchemeStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DefineAnalysisSchemeResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DefineAnalysisSchemeResult')
        xml << AnalysisSchemeStatus.stub('AnalysisScheme', stub[:analysis_scheme]) unless stub[:analysis_scheme].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for AnalysisSchemeStatus
    class AnalysisSchemeStatus
      def self.default(visited=[])
        return nil if visited.include?('AnalysisSchemeStatus')
        visited = visited + ['AnalysisSchemeStatus']
        {
          options: AnalysisScheme.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AnalysisSchemeStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << AnalysisScheme.stub('Options', stub[:options]) unless stub[:options].nil?
        xml << OptionStatus.stub('Status', stub[:status]) unless stub[:status].nil?
        xml
      end
    end

    # Structure Stubber for OptionStatus
    class OptionStatus
      def self.default(visited=[])
        return nil if visited.include?('OptionStatus')
        visited = visited + ['OptionStatus']
        {
          creation_date: Time.now,
          update_date: Time.now,
          update_version: 1,
          state: 'state',
          pending_deletion: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OptionStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CreationDate', Hearth::TimeHelper.to_date_time(stub[:creation_date])) unless stub[:creation_date].nil?
        xml << Hearth::XML::Node.new('UpdateDate', Hearth::TimeHelper.to_date_time(stub[:update_date])) unless stub[:update_date].nil?
        xml << Hearth::XML::Node.new('UpdateVersion', stub[:update_version].to_s) unless stub[:update_version].nil?
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('PendingDeletion', stub[:pending_deletion].to_s) unless stub[:pending_deletion].nil?
        xml
      end
    end

    # Structure Stubber for AnalysisScheme
    class AnalysisScheme
      def self.default(visited=[])
        return nil if visited.include?('AnalysisScheme')
        visited = visited + ['AnalysisScheme']
        {
          analysis_scheme_name: 'analysis_scheme_name',
          analysis_scheme_language: 'analysis_scheme_language',
          analysis_options: AnalysisOptions.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AnalysisScheme.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AnalysisSchemeName', stub[:analysis_scheme_name].to_s) unless stub[:analysis_scheme_name].nil?
        xml << Hearth::XML::Node.new('AnalysisSchemeLanguage', stub[:analysis_scheme_language].to_s) unless stub[:analysis_scheme_language].nil?
        xml << AnalysisOptions.stub('AnalysisOptions', stub[:analysis_options]) unless stub[:analysis_options].nil?
        xml
      end
    end

    # Structure Stubber for AnalysisOptions
    class AnalysisOptions
      def self.default(visited=[])
        return nil if visited.include?('AnalysisOptions')
        visited = visited + ['AnalysisOptions']
        {
          synonyms: 'synonyms',
          stopwords: 'stopwords',
          stemming_dictionary: 'stemming_dictionary',
          japanese_tokenization_dictionary: 'japanese_tokenization_dictionary',
          algorithmic_stemming: 'algorithmic_stemming',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AnalysisOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Synonyms', stub[:synonyms].to_s) unless stub[:synonyms].nil?
        xml << Hearth::XML::Node.new('Stopwords', stub[:stopwords].to_s) unless stub[:stopwords].nil?
        xml << Hearth::XML::Node.new('StemmingDictionary', stub[:stemming_dictionary].to_s) unless stub[:stemming_dictionary].nil?
        xml << Hearth::XML::Node.new('JapaneseTokenizationDictionary', stub[:japanese_tokenization_dictionary].to_s) unless stub[:japanese_tokenization_dictionary].nil?
        xml << Hearth::XML::Node.new('AlgorithmicStemming', stub[:algorithmic_stemming].to_s) unless stub[:algorithmic_stemming].nil?
        xml
      end
    end

    # Operation Stubber for DefineExpression
    class DefineExpression
      def self.default(visited=[])
        {
          expression: ExpressionStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DefineExpressionResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DefineExpressionResult')
        xml << ExpressionStatus.stub('Expression', stub[:expression]) unless stub[:expression].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ExpressionStatus
    class ExpressionStatus
      def self.default(visited=[])
        return nil if visited.include?('ExpressionStatus')
        visited = visited + ['ExpressionStatus']
        {
          options: Expression.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ExpressionStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Expression.stub('Options', stub[:options]) unless stub[:options].nil?
        xml << OptionStatus.stub('Status', stub[:status]) unless stub[:status].nil?
        xml
      end
    end

    # Structure Stubber for Expression
    class Expression
      def self.default(visited=[])
        return nil if visited.include?('Expression')
        visited = visited + ['Expression']
        {
          expression_name: 'expression_name',
          expression_value: 'expression_value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Expression.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ExpressionName', stub[:expression_name].to_s) unless stub[:expression_name].nil?
        xml << Hearth::XML::Node.new('ExpressionValue', stub[:expression_value].to_s) unless stub[:expression_value].nil?
        xml
      end
    end

    # Operation Stubber for DefineIndexField
    class DefineIndexField
      def self.default(visited=[])
        {
          index_field: IndexFieldStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DefineIndexFieldResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DefineIndexFieldResult')
        xml << IndexFieldStatus.stub('IndexField', stub[:index_field]) unless stub[:index_field].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for IndexFieldStatus
    class IndexFieldStatus
      def self.default(visited=[])
        return nil if visited.include?('IndexFieldStatus')
        visited = visited + ['IndexFieldStatus']
        {
          options: IndexField.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::IndexFieldStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << IndexField.stub('Options', stub[:options]) unless stub[:options].nil?
        xml << OptionStatus.stub('Status', stub[:status]) unless stub[:status].nil?
        xml
      end
    end

    # Structure Stubber for IndexField
    class IndexField
      def self.default(visited=[])
        return nil if visited.include?('IndexField')
        visited = visited + ['IndexField']
        {
          index_field_name: 'index_field_name',
          index_field_type: 'index_field_type',
          int_options: IntOptions.default(visited),
          double_options: DoubleOptions.default(visited),
          literal_options: LiteralOptions.default(visited),
          text_options: TextOptions.default(visited),
          date_options: DateOptions.default(visited),
          lat_lon_options: LatLonOptions.default(visited),
          int_array_options: IntArrayOptions.default(visited),
          double_array_options: DoubleArrayOptions.default(visited),
          literal_array_options: LiteralArrayOptions.default(visited),
          text_array_options: TextArrayOptions.default(visited),
          date_array_options: DateArrayOptions.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::IndexField.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('IndexFieldName', stub[:index_field_name].to_s) unless stub[:index_field_name].nil?
        xml << Hearth::XML::Node.new('IndexFieldType', stub[:index_field_type].to_s) unless stub[:index_field_type].nil?
        xml << IntOptions.stub('IntOptions', stub[:int_options]) unless stub[:int_options].nil?
        xml << DoubleOptions.stub('DoubleOptions', stub[:double_options]) unless stub[:double_options].nil?
        xml << LiteralOptions.stub('LiteralOptions', stub[:literal_options]) unless stub[:literal_options].nil?
        xml << TextOptions.stub('TextOptions', stub[:text_options]) unless stub[:text_options].nil?
        xml << DateOptions.stub('DateOptions', stub[:date_options]) unless stub[:date_options].nil?
        xml << LatLonOptions.stub('LatLonOptions', stub[:lat_lon_options]) unless stub[:lat_lon_options].nil?
        xml << IntArrayOptions.stub('IntArrayOptions', stub[:int_array_options]) unless stub[:int_array_options].nil?
        xml << DoubleArrayOptions.stub('DoubleArrayOptions', stub[:double_array_options]) unless stub[:double_array_options].nil?
        xml << LiteralArrayOptions.stub('LiteralArrayOptions', stub[:literal_array_options]) unless stub[:literal_array_options].nil?
        xml << TextArrayOptions.stub('TextArrayOptions', stub[:text_array_options]) unless stub[:text_array_options].nil?
        xml << DateArrayOptions.stub('DateArrayOptions', stub[:date_array_options]) unless stub[:date_array_options].nil?
        xml
      end
    end

    # Structure Stubber for DateArrayOptions
    class DateArrayOptions
      def self.default(visited=[])
        return nil if visited.include?('DateArrayOptions')
        visited = visited + ['DateArrayOptions']
        {
          default_value: 'default_value',
          source_fields: 'source_fields',
          facet_enabled: false,
          search_enabled: false,
          return_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DateArrayOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('SourceFields', stub[:source_fields].to_s) unless stub[:source_fields].nil?
        xml << Hearth::XML::Node.new('FacetEnabled', stub[:facet_enabled].to_s) unless stub[:facet_enabled].nil?
        xml << Hearth::XML::Node.new('SearchEnabled', stub[:search_enabled].to_s) unless stub[:search_enabled].nil?
        xml << Hearth::XML::Node.new('ReturnEnabled', stub[:return_enabled].to_s) unless stub[:return_enabled].nil?
        xml
      end
    end

    # Structure Stubber for TextArrayOptions
    class TextArrayOptions
      def self.default(visited=[])
        return nil if visited.include?('TextArrayOptions')
        visited = visited + ['TextArrayOptions']
        {
          default_value: 'default_value',
          source_fields: 'source_fields',
          return_enabled: false,
          highlight_enabled: false,
          analysis_scheme: 'analysis_scheme',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TextArrayOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('SourceFields', stub[:source_fields].to_s) unless stub[:source_fields].nil?
        xml << Hearth::XML::Node.new('ReturnEnabled', stub[:return_enabled].to_s) unless stub[:return_enabled].nil?
        xml << Hearth::XML::Node.new('HighlightEnabled', stub[:highlight_enabled].to_s) unless stub[:highlight_enabled].nil?
        xml << Hearth::XML::Node.new('AnalysisScheme', stub[:analysis_scheme].to_s) unless stub[:analysis_scheme].nil?
        xml
      end
    end

    # Structure Stubber for LiteralArrayOptions
    class LiteralArrayOptions
      def self.default(visited=[])
        return nil if visited.include?('LiteralArrayOptions')
        visited = visited + ['LiteralArrayOptions']
        {
          default_value: 'default_value',
          source_fields: 'source_fields',
          facet_enabled: false,
          search_enabled: false,
          return_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LiteralArrayOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('SourceFields', stub[:source_fields].to_s) unless stub[:source_fields].nil?
        xml << Hearth::XML::Node.new('FacetEnabled', stub[:facet_enabled].to_s) unless stub[:facet_enabled].nil?
        xml << Hearth::XML::Node.new('SearchEnabled', stub[:search_enabled].to_s) unless stub[:search_enabled].nil?
        xml << Hearth::XML::Node.new('ReturnEnabled', stub[:return_enabled].to_s) unless stub[:return_enabled].nil?
        xml
      end
    end

    # Structure Stubber for DoubleArrayOptions
    class DoubleArrayOptions
      def self.default(visited=[])
        return nil if visited.include?('DoubleArrayOptions')
        visited = visited + ['DoubleArrayOptions']
        {
          default_value: 1.0,
          source_fields: 'source_fields',
          facet_enabled: false,
          search_enabled: false,
          return_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DoubleArrayOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DefaultValue', Hearth::NumberHelper.serialize(stub[:default_value]).to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('SourceFields', stub[:source_fields].to_s) unless stub[:source_fields].nil?
        xml << Hearth::XML::Node.new('FacetEnabled', stub[:facet_enabled].to_s) unless stub[:facet_enabled].nil?
        xml << Hearth::XML::Node.new('SearchEnabled', stub[:search_enabled].to_s) unless stub[:search_enabled].nil?
        xml << Hearth::XML::Node.new('ReturnEnabled', stub[:return_enabled].to_s) unless stub[:return_enabled].nil?
        xml
      end
    end

    # Structure Stubber for IntArrayOptions
    class IntArrayOptions
      def self.default(visited=[])
        return nil if visited.include?('IntArrayOptions')
        visited = visited + ['IntArrayOptions']
        {
          default_value: 1,
          source_fields: 'source_fields',
          facet_enabled: false,
          search_enabled: false,
          return_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::IntArrayOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('SourceFields', stub[:source_fields].to_s) unless stub[:source_fields].nil?
        xml << Hearth::XML::Node.new('FacetEnabled', stub[:facet_enabled].to_s) unless stub[:facet_enabled].nil?
        xml << Hearth::XML::Node.new('SearchEnabled', stub[:search_enabled].to_s) unless stub[:search_enabled].nil?
        xml << Hearth::XML::Node.new('ReturnEnabled', stub[:return_enabled].to_s) unless stub[:return_enabled].nil?
        xml
      end
    end

    # Structure Stubber for LatLonOptions
    class LatLonOptions
      def self.default(visited=[])
        return nil if visited.include?('LatLonOptions')
        visited = visited + ['LatLonOptions']
        {
          default_value: 'default_value',
          source_field: 'source_field',
          facet_enabled: false,
          search_enabled: false,
          return_enabled: false,
          sort_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LatLonOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('SourceField', stub[:source_field].to_s) unless stub[:source_field].nil?
        xml << Hearth::XML::Node.new('FacetEnabled', stub[:facet_enabled].to_s) unless stub[:facet_enabled].nil?
        xml << Hearth::XML::Node.new('SearchEnabled', stub[:search_enabled].to_s) unless stub[:search_enabled].nil?
        xml << Hearth::XML::Node.new('ReturnEnabled', stub[:return_enabled].to_s) unless stub[:return_enabled].nil?
        xml << Hearth::XML::Node.new('SortEnabled', stub[:sort_enabled].to_s) unless stub[:sort_enabled].nil?
        xml
      end
    end

    # Structure Stubber for DateOptions
    class DateOptions
      def self.default(visited=[])
        return nil if visited.include?('DateOptions')
        visited = visited + ['DateOptions']
        {
          default_value: 'default_value',
          source_field: 'source_field',
          facet_enabled: false,
          search_enabled: false,
          return_enabled: false,
          sort_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DateOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('SourceField', stub[:source_field].to_s) unless stub[:source_field].nil?
        xml << Hearth::XML::Node.new('FacetEnabled', stub[:facet_enabled].to_s) unless stub[:facet_enabled].nil?
        xml << Hearth::XML::Node.new('SearchEnabled', stub[:search_enabled].to_s) unless stub[:search_enabled].nil?
        xml << Hearth::XML::Node.new('ReturnEnabled', stub[:return_enabled].to_s) unless stub[:return_enabled].nil?
        xml << Hearth::XML::Node.new('SortEnabled', stub[:sort_enabled].to_s) unless stub[:sort_enabled].nil?
        xml
      end
    end

    # Structure Stubber for TextOptions
    class TextOptions
      def self.default(visited=[])
        return nil if visited.include?('TextOptions')
        visited = visited + ['TextOptions']
        {
          default_value: 'default_value',
          source_field: 'source_field',
          return_enabled: false,
          sort_enabled: false,
          highlight_enabled: false,
          analysis_scheme: 'analysis_scheme',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TextOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('SourceField', stub[:source_field].to_s) unless stub[:source_field].nil?
        xml << Hearth::XML::Node.new('ReturnEnabled', stub[:return_enabled].to_s) unless stub[:return_enabled].nil?
        xml << Hearth::XML::Node.new('SortEnabled', stub[:sort_enabled].to_s) unless stub[:sort_enabled].nil?
        xml << Hearth::XML::Node.new('HighlightEnabled', stub[:highlight_enabled].to_s) unless stub[:highlight_enabled].nil?
        xml << Hearth::XML::Node.new('AnalysisScheme', stub[:analysis_scheme].to_s) unless stub[:analysis_scheme].nil?
        xml
      end
    end

    # Structure Stubber for LiteralOptions
    class LiteralOptions
      def self.default(visited=[])
        return nil if visited.include?('LiteralOptions')
        visited = visited + ['LiteralOptions']
        {
          default_value: 'default_value',
          source_field: 'source_field',
          facet_enabled: false,
          search_enabled: false,
          return_enabled: false,
          sort_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LiteralOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('SourceField', stub[:source_field].to_s) unless stub[:source_field].nil?
        xml << Hearth::XML::Node.new('FacetEnabled', stub[:facet_enabled].to_s) unless stub[:facet_enabled].nil?
        xml << Hearth::XML::Node.new('SearchEnabled', stub[:search_enabled].to_s) unless stub[:search_enabled].nil?
        xml << Hearth::XML::Node.new('ReturnEnabled', stub[:return_enabled].to_s) unless stub[:return_enabled].nil?
        xml << Hearth::XML::Node.new('SortEnabled', stub[:sort_enabled].to_s) unless stub[:sort_enabled].nil?
        xml
      end
    end

    # Structure Stubber for DoubleOptions
    class DoubleOptions
      def self.default(visited=[])
        return nil if visited.include?('DoubleOptions')
        visited = visited + ['DoubleOptions']
        {
          default_value: 1.0,
          source_field: 'source_field',
          facet_enabled: false,
          search_enabled: false,
          return_enabled: false,
          sort_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DoubleOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DefaultValue', Hearth::NumberHelper.serialize(stub[:default_value]).to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('SourceField', stub[:source_field].to_s) unless stub[:source_field].nil?
        xml << Hearth::XML::Node.new('FacetEnabled', stub[:facet_enabled].to_s) unless stub[:facet_enabled].nil?
        xml << Hearth::XML::Node.new('SearchEnabled', stub[:search_enabled].to_s) unless stub[:search_enabled].nil?
        xml << Hearth::XML::Node.new('ReturnEnabled', stub[:return_enabled].to_s) unless stub[:return_enabled].nil?
        xml << Hearth::XML::Node.new('SortEnabled', stub[:sort_enabled].to_s) unless stub[:sort_enabled].nil?
        xml
      end
    end

    # Structure Stubber for IntOptions
    class IntOptions
      def self.default(visited=[])
        return nil if visited.include?('IntOptions')
        visited = visited + ['IntOptions']
        {
          default_value: 1,
          source_field: 'source_field',
          facet_enabled: false,
          search_enabled: false,
          return_enabled: false,
          sort_enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::IntOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DefaultValue', stub[:default_value].to_s) unless stub[:default_value].nil?
        xml << Hearth::XML::Node.new('SourceField', stub[:source_field].to_s) unless stub[:source_field].nil?
        xml << Hearth::XML::Node.new('FacetEnabled', stub[:facet_enabled].to_s) unless stub[:facet_enabled].nil?
        xml << Hearth::XML::Node.new('SearchEnabled', stub[:search_enabled].to_s) unless stub[:search_enabled].nil?
        xml << Hearth::XML::Node.new('ReturnEnabled', stub[:return_enabled].to_s) unless stub[:return_enabled].nil?
        xml << Hearth::XML::Node.new('SortEnabled', stub[:sort_enabled].to_s) unless stub[:sort_enabled].nil?
        xml
      end
    end

    # Operation Stubber for DefineSuggester
    class DefineSuggester
      def self.default(visited=[])
        {
          suggester: SuggesterStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DefineSuggesterResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DefineSuggesterResult')
        xml << SuggesterStatus.stub('Suggester', stub[:suggester]) unless stub[:suggester].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for SuggesterStatus
    class SuggesterStatus
      def self.default(visited=[])
        return nil if visited.include?('SuggesterStatus')
        visited = visited + ['SuggesterStatus']
        {
          options: Suggester.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SuggesterStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Suggester.stub('Options', stub[:options]) unless stub[:options].nil?
        xml << OptionStatus.stub('Status', stub[:status]) unless stub[:status].nil?
        xml
      end
    end

    # Structure Stubber for Suggester
    class Suggester
      def self.default(visited=[])
        return nil if visited.include?('Suggester')
        visited = visited + ['Suggester']
        {
          suggester_name: 'suggester_name',
          document_suggester_options: DocumentSuggesterOptions.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Suggester.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SuggesterName', stub[:suggester_name].to_s) unless stub[:suggester_name].nil?
        xml << DocumentSuggesterOptions.stub('DocumentSuggesterOptions', stub[:document_suggester_options]) unless stub[:document_suggester_options].nil?
        xml
      end
    end

    # Structure Stubber for DocumentSuggesterOptions
    class DocumentSuggesterOptions
      def self.default(visited=[])
        return nil if visited.include?('DocumentSuggesterOptions')
        visited = visited + ['DocumentSuggesterOptions']
        {
          source_field: 'source_field',
          fuzzy_matching: 'fuzzy_matching',
          sort_expression: 'sort_expression',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DocumentSuggesterOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SourceField', stub[:source_field].to_s) unless stub[:source_field].nil?
        xml << Hearth::XML::Node.new('FuzzyMatching', stub[:fuzzy_matching].to_s) unless stub[:fuzzy_matching].nil?
        xml << Hearth::XML::Node.new('SortExpression', stub[:sort_expression].to_s) unless stub[:sort_expression].nil?
        xml
      end
    end

    # Operation Stubber for DeleteAnalysisScheme
    class DeleteAnalysisScheme
      def self.default(visited=[])
        {
          analysis_scheme: AnalysisSchemeStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteAnalysisSchemeResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DeleteAnalysisSchemeResult')
        xml << AnalysisSchemeStatus.stub('AnalysisScheme', stub[:analysis_scheme]) unless stub[:analysis_scheme].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDomain
    class DeleteDomain
      def self.default(visited=[])
        {
          domain_status: DomainStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteDomainResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DeleteDomainResult')
        xml << DomainStatus.stub('DomainStatus', stub[:domain_status]) unless stub[:domain_status].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteExpression
    class DeleteExpression
      def self.default(visited=[])
        {
          expression: ExpressionStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteExpressionResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DeleteExpressionResult')
        xml << ExpressionStatus.stub('Expression', stub[:expression]) unless stub[:expression].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteIndexField
    class DeleteIndexField
      def self.default(visited=[])
        {
          index_field: IndexFieldStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteIndexFieldResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DeleteIndexFieldResult')
        xml << IndexFieldStatus.stub('IndexField', stub[:index_field]) unless stub[:index_field].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSuggester
    class DeleteSuggester
      def self.default(visited=[])
        {
          suggester: SuggesterStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteSuggesterResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DeleteSuggesterResult')
        xml << SuggesterStatus.stub('Suggester', stub[:suggester]) unless stub[:suggester].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAnalysisSchemes
    class DescribeAnalysisSchemes
      def self.default(visited=[])
        {
          analysis_schemes: AnalysisSchemeStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAnalysisSchemesResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DescribeAnalysisSchemesResult')
        xml << Hearth::XML::Node.new('AnalysisSchemes', AnalysisSchemeStatusList.stub('member', stub[:analysis_schemes])) unless stub[:analysis_schemes].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for AnalysisSchemeStatusList
    class AnalysisSchemeStatusList
      def self.default(visited=[])
        return nil if visited.include?('AnalysisSchemeStatusList')
        visited = visited + ['AnalysisSchemeStatusList']
        [
          AnalysisSchemeStatus.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << AnalysisSchemeStatus.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeAvailabilityOptions
    class DescribeAvailabilityOptions
      def self.default(visited=[])
        {
          availability_options: AvailabilityOptionsStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAvailabilityOptionsResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DescribeAvailabilityOptionsResult')
        xml << AvailabilityOptionsStatus.stub('AvailabilityOptions', stub[:availability_options]) unless stub[:availability_options].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for AvailabilityOptionsStatus
    class AvailabilityOptionsStatus
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityOptionsStatus')
        visited = visited + ['AvailabilityOptionsStatus']
        {
          options: false,
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AvailabilityOptionsStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Options', stub[:options].to_s) unless stub[:options].nil?
        xml << OptionStatus.stub('Status', stub[:status]) unless stub[:status].nil?
        xml
      end
    end

    # Operation Stubber for DescribeDomainEndpointOptions
    class DescribeDomainEndpointOptions
      def self.default(visited=[])
        {
          domain_endpoint_options: DomainEndpointOptionsStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDomainEndpointOptionsResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DescribeDomainEndpointOptionsResult')
        xml << DomainEndpointOptionsStatus.stub('DomainEndpointOptions', stub[:domain_endpoint_options]) unless stub[:domain_endpoint_options].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DomainEndpointOptionsStatus
    class DomainEndpointOptionsStatus
      def self.default(visited=[])
        return nil if visited.include?('DomainEndpointOptionsStatus')
        visited = visited + ['DomainEndpointOptionsStatus']
        {
          options: DomainEndpointOptions.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DomainEndpointOptionsStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << DomainEndpointOptions.stub('Options', stub[:options]) unless stub[:options].nil?
        xml << OptionStatus.stub('Status', stub[:status]) unless stub[:status].nil?
        xml
      end
    end

    # Structure Stubber for DomainEndpointOptions
    class DomainEndpointOptions
      def self.default(visited=[])
        return nil if visited.include?('DomainEndpointOptions')
        visited = visited + ['DomainEndpointOptions']
        {
          enforce_https: false,
          tls_security_policy: 'tls_security_policy',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DomainEndpointOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('EnforceHTTPS', stub[:enforce_https].to_s) unless stub[:enforce_https].nil?
        xml << Hearth::XML::Node.new('TLSSecurityPolicy', stub[:tls_security_policy].to_s) unless stub[:tls_security_policy].nil?
        xml
      end
    end

    # Operation Stubber for DescribeDomains
    class DescribeDomains
      def self.default(visited=[])
        {
          domain_status_list: DomainStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeDomainsResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DescribeDomainsResult')
        xml << Hearth::XML::Node.new('DomainStatusList', DomainStatusList.stub('member', stub[:domain_status_list])) unless stub[:domain_status_list].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DomainStatusList
    class DomainStatusList
      def self.default(visited=[])
        return nil if visited.include?('DomainStatusList')
        visited = visited + ['DomainStatusList']
        [
          DomainStatus.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << DomainStatus.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeExpressions
    class DescribeExpressions
      def self.default(visited=[])
        {
          expressions: ExpressionStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeExpressionsResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DescribeExpressionsResult')
        xml << Hearth::XML::Node.new('Expressions', ExpressionStatusList.stub('member', stub[:expressions])) unless stub[:expressions].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ExpressionStatusList
    class ExpressionStatusList
      def self.default(visited=[])
        return nil if visited.include?('ExpressionStatusList')
        visited = visited + ['ExpressionStatusList']
        [
          ExpressionStatus.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ExpressionStatus.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeIndexFields
    class DescribeIndexFields
      def self.default(visited=[])
        {
          index_fields: IndexFieldStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeIndexFieldsResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DescribeIndexFieldsResult')
        xml << Hearth::XML::Node.new('IndexFields', IndexFieldStatusList.stub('member', stub[:index_fields])) unless stub[:index_fields].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for IndexFieldStatusList
    class IndexFieldStatusList
      def self.default(visited=[])
        return nil if visited.include?('IndexFieldStatusList')
        visited = visited + ['IndexFieldStatusList']
        [
          IndexFieldStatus.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << IndexFieldStatus.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeScalingParameters
    class DescribeScalingParameters
      def self.default(visited=[])
        {
          scaling_parameters: ScalingParametersStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeScalingParametersResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DescribeScalingParametersResult')
        xml << ScalingParametersStatus.stub('ScalingParameters', stub[:scaling_parameters]) unless stub[:scaling_parameters].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ScalingParametersStatus
    class ScalingParametersStatus
      def self.default(visited=[])
        return nil if visited.include?('ScalingParametersStatus')
        visited = visited + ['ScalingParametersStatus']
        {
          options: ScalingParameters.default(visited),
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ScalingParametersStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << ScalingParameters.stub('Options', stub[:options]) unless stub[:options].nil?
        xml << OptionStatus.stub('Status', stub[:status]) unless stub[:status].nil?
        xml
      end
    end

    # Structure Stubber for ScalingParameters
    class ScalingParameters
      def self.default(visited=[])
        return nil if visited.include?('ScalingParameters')
        visited = visited + ['ScalingParameters']
        {
          desired_instance_type: 'desired_instance_type',
          desired_replication_count: 1,
          desired_partition_count: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ScalingParameters.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DesiredInstanceType', stub[:desired_instance_type].to_s) unless stub[:desired_instance_type].nil?
        xml << Hearth::XML::Node.new('DesiredReplicationCount', stub[:desired_replication_count].to_s) unless stub[:desired_replication_count].nil?
        xml << Hearth::XML::Node.new('DesiredPartitionCount', stub[:desired_partition_count].to_s) unless stub[:desired_partition_count].nil?
        xml
      end
    end

    # Operation Stubber for DescribeServiceAccessPolicies
    class DescribeServiceAccessPolicies
      def self.default(visited=[])
        {
          access_policies: AccessPoliciesStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeServiceAccessPoliciesResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DescribeServiceAccessPoliciesResult')
        xml << AccessPoliciesStatus.stub('AccessPolicies', stub[:access_policies]) unless stub[:access_policies].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for AccessPoliciesStatus
    class AccessPoliciesStatus
      def self.default(visited=[])
        return nil if visited.include?('AccessPoliciesStatus')
        visited = visited + ['AccessPoliciesStatus']
        {
          options: 'options',
          status: OptionStatus.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AccessPoliciesStatus.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Options', stub[:options].to_s) unless stub[:options].nil?
        xml << OptionStatus.stub('Status', stub[:status]) unless stub[:status].nil?
        xml
      end
    end

    # Operation Stubber for DescribeSuggesters
    class DescribeSuggesters
      def self.default(visited=[])
        {
          suggesters: SuggesterStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeSuggestersResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('DescribeSuggestersResult')
        xml << Hearth::XML::Node.new('Suggesters', SuggesterStatusList.stub('member', stub[:suggesters])) unless stub[:suggesters].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for SuggesterStatusList
    class SuggesterStatusList
      def self.default(visited=[])
        return nil if visited.include?('SuggesterStatusList')
        visited = visited + ['SuggesterStatusList']
        [
          SuggesterStatus.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << SuggesterStatus.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for IndexDocuments
    class IndexDocuments
      def self.default(visited=[])
        {
          field_names: FieldNameList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('IndexDocumentsResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('IndexDocumentsResult')
        xml << Hearth::XML::Node.new('FieldNames', FieldNameList.stub('member', stub[:field_names])) unless stub[:field_names].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListDomainNames
    class ListDomainNames
      def self.default(visited=[])
        {
          domain_names: DomainNameMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListDomainNamesResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('ListDomainNamesResult')
        xml << Hearth::XML::Node.new('DomainNames', DomainNameMap.stub('entry', stub[:domain_names])) unless stub[:domain_names].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Map Stubber for DomainNameMap
    class DomainNameMap
      def self.default(visited=[])
        return nil if visited.include?('DomainNameMap')
        visited = visited + ['DomainNameMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << Hearth::XML::Node.new('value', value.to_s) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Operation Stubber for UpdateAvailabilityOptions
    class UpdateAvailabilityOptions
      def self.default(visited=[])
        {
          availability_options: AvailabilityOptionsStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateAvailabilityOptionsResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('UpdateAvailabilityOptionsResult')
        xml << AvailabilityOptionsStatus.stub('AvailabilityOptions', stub[:availability_options]) unless stub[:availability_options].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDomainEndpointOptions
    class UpdateDomainEndpointOptions
      def self.default(visited=[])
        {
          domain_endpoint_options: DomainEndpointOptionsStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateDomainEndpointOptionsResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('UpdateDomainEndpointOptionsResult')
        xml << DomainEndpointOptionsStatus.stub('DomainEndpointOptions', stub[:domain_endpoint_options]) unless stub[:domain_endpoint_options].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateScalingParameters
    class UpdateScalingParameters
      def self.default(visited=[])
        {
          scaling_parameters: ScalingParametersStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateScalingParametersResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('UpdateScalingParametersResult')
        xml << ScalingParametersStatus.stub('ScalingParameters', stub[:scaling_parameters]) unless stub[:scaling_parameters].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateServiceAccessPolicies
    class UpdateServiceAccessPolicies
      def self.default(visited=[])
        {
          access_policies: AccessPoliciesStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateServiceAccessPoliciesResponse')
        response.attributes['xmlns'] = 'http://cloudsearch.amazonaws.com/doc/2013-01-01/'
        xml = Hearth::XML::Node.new('UpdateServiceAccessPoliciesResult')
        xml << AccessPoliciesStatus.stub('AccessPolicies', stub[:access_policies]) unless stub[:access_policies].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end
  end
end
