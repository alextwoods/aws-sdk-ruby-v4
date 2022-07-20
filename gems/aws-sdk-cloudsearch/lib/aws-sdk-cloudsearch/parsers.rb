# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudSearch
  module Parsers

    # Operation Parser for BuildSuggesters
    class BuildSuggesters
      def self.parse(http_resp)
        data = Types::BuildSuggestersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('BuildSuggestersResult')
        xml.at('FieldNames') do |node|
          children = node.children('member')
          data.field_names = FieldNameList.parse(children)
        end
        data
      end
    end

    class FieldNameList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Code') do |node|
          data.code = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Code') do |node|
          data.code = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InternalException
    class InternalException
      def self.parse(http_resp)
        data = Types::InternalException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Code') do |node|
          data.code = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for BaseException
    class BaseException
      def self.parse(http_resp)
        data = Types::BaseException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Code') do |node|
          data.code = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CreateDomain
    class CreateDomain
      def self.parse(http_resp)
        data = Types::CreateDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateDomainResult')
        xml.at('DomainStatus') do |node|
          data.domain_status = DomainStatus.parse(node)
        end
        data
      end
    end

    class DomainStatus
      def self.parse(xml)
        data = Types::DomainStatus.new
        xml.at('DomainId') do |node|
          data.domain_id = (node.text || '')
        end
        xml.at('DomainName') do |node|
          data.domain_name = (node.text || '')
        end
        xml.at('ARN') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Created') do |node|
          data.created = (node.text == 'true')
        end
        xml.at('Deleted') do |node|
          data.deleted = (node.text == 'true')
        end
        xml.at('DocService') do |node|
          data.doc_service = ServiceEndpoint.parse(node)
        end
        xml.at('SearchService') do |node|
          data.search_service = ServiceEndpoint.parse(node)
        end
        xml.at('RequiresIndexDocuments') do |node|
          data.requires_index_documents = (node.text == 'true')
        end
        xml.at('Processing') do |node|
          data.processing = (node.text == 'true')
        end
        xml.at('SearchInstanceType') do |node|
          data.search_instance_type = (node.text || '')
        end
        xml.at('SearchPartitionCount') do |node|
          data.search_partition_count = node.text&.to_i
        end
        xml.at('SearchInstanceCount') do |node|
          data.search_instance_count = node.text&.to_i
        end
        xml.at('Limits') do |node|
          data.limits = Limits.parse(node)
        end
        return data
      end
    end

    class Limits
      def self.parse(xml)
        data = Types::Limits.new
        xml.at('MaximumReplicationCount') do |node|
          data.maximum_replication_count = node.text&.to_i
        end
        xml.at('MaximumPartitionCount') do |node|
          data.maximum_partition_count = node.text&.to_i
        end
        return data
      end
    end

    class ServiceEndpoint
      def self.parse(xml)
        data = Types::ServiceEndpoint.new
        xml.at('Endpoint') do |node|
          data.endpoint = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Code') do |node|
          data.code = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Code') do |node|
          data.code = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DefineAnalysisScheme
    class DefineAnalysisScheme
      def self.parse(http_resp)
        data = Types::DefineAnalysisSchemeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DefineAnalysisSchemeResult')
        xml.at('AnalysisScheme') do |node|
          data.analysis_scheme = AnalysisSchemeStatus.parse(node)
        end
        data
      end
    end

    class AnalysisSchemeStatus
      def self.parse(xml)
        data = Types::AnalysisSchemeStatus.new
        xml.at('Options') do |node|
          data.options = AnalysisScheme.parse(node)
        end
        xml.at('Status') do |node|
          data.status = OptionStatus.parse(node)
        end
        return data
      end
    end

    class OptionStatus
      def self.parse(xml)
        data = Types::OptionStatus.new
        xml.at('CreationDate') do |node|
          data.creation_date = Time.parse(node.text) if node.text
        end
        xml.at('UpdateDate') do |node|
          data.update_date = Time.parse(node.text) if node.text
        end
        xml.at('UpdateVersion') do |node|
          data.update_version = node.text&.to_i
        end
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        xml.at('PendingDeletion') do |node|
          data.pending_deletion = (node.text == 'true')
        end
        return data
      end
    end

    class AnalysisScheme
      def self.parse(xml)
        data = Types::AnalysisScheme.new
        xml.at('AnalysisSchemeName') do |node|
          data.analysis_scheme_name = (node.text || '')
        end
        xml.at('AnalysisSchemeLanguage') do |node|
          data.analysis_scheme_language = (node.text || '')
        end
        xml.at('AnalysisOptions') do |node|
          data.analysis_options = AnalysisOptions.parse(node)
        end
        return data
      end
    end

    class AnalysisOptions
      def self.parse(xml)
        data = Types::AnalysisOptions.new
        xml.at('Synonyms') do |node|
          data.synonyms = (node.text || '')
        end
        xml.at('Stopwords') do |node|
          data.stopwords = (node.text || '')
        end
        xml.at('StemmingDictionary') do |node|
          data.stemming_dictionary = (node.text || '')
        end
        xml.at('JapaneseTokenizationDictionary') do |node|
          data.japanese_tokenization_dictionary = (node.text || '')
        end
        xml.at('AlgorithmicStemming') do |node|
          data.algorithmic_stemming = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for InvalidTypeException
    class InvalidTypeException
      def self.parse(http_resp)
        data = Types::InvalidTypeException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Code') do |node|
          data.code = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DefineExpression
    class DefineExpression
      def self.parse(http_resp)
        data = Types::DefineExpressionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DefineExpressionResult')
        xml.at('Expression') do |node|
          data.expression = ExpressionStatus.parse(node)
        end
        data
      end
    end

    class ExpressionStatus
      def self.parse(xml)
        data = Types::ExpressionStatus.new
        xml.at('Options') do |node|
          data.options = Expression.parse(node)
        end
        xml.at('Status') do |node|
          data.status = OptionStatus.parse(node)
        end
        return data
      end
    end

    class Expression
      def self.parse(xml)
        data = Types::Expression.new
        xml.at('ExpressionName') do |node|
          data.expression_name = (node.text || '')
        end
        xml.at('ExpressionValue') do |node|
          data.expression_value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DefineIndexField
    class DefineIndexField
      def self.parse(http_resp)
        data = Types::DefineIndexFieldOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DefineIndexFieldResult')
        xml.at('IndexField') do |node|
          data.index_field = IndexFieldStatus.parse(node)
        end
        data
      end
    end

    class IndexFieldStatus
      def self.parse(xml)
        data = Types::IndexFieldStatus.new
        xml.at('Options') do |node|
          data.options = IndexField.parse(node)
        end
        xml.at('Status') do |node|
          data.status = OptionStatus.parse(node)
        end
        return data
      end
    end

    class IndexField
      def self.parse(xml)
        data = Types::IndexField.new
        xml.at('IndexFieldName') do |node|
          data.index_field_name = (node.text || '')
        end
        xml.at('IndexFieldType') do |node|
          data.index_field_type = (node.text || '')
        end
        xml.at('IntOptions') do |node|
          data.int_options = IntOptions.parse(node)
        end
        xml.at('DoubleOptions') do |node|
          data.double_options = DoubleOptions.parse(node)
        end
        xml.at('LiteralOptions') do |node|
          data.literal_options = LiteralOptions.parse(node)
        end
        xml.at('TextOptions') do |node|
          data.text_options = TextOptions.parse(node)
        end
        xml.at('DateOptions') do |node|
          data.date_options = DateOptions.parse(node)
        end
        xml.at('LatLonOptions') do |node|
          data.lat_lon_options = LatLonOptions.parse(node)
        end
        xml.at('IntArrayOptions') do |node|
          data.int_array_options = IntArrayOptions.parse(node)
        end
        xml.at('DoubleArrayOptions') do |node|
          data.double_array_options = DoubleArrayOptions.parse(node)
        end
        xml.at('LiteralArrayOptions') do |node|
          data.literal_array_options = LiteralArrayOptions.parse(node)
        end
        xml.at('TextArrayOptions') do |node|
          data.text_array_options = TextArrayOptions.parse(node)
        end
        xml.at('DateArrayOptions') do |node|
          data.date_array_options = DateArrayOptions.parse(node)
        end
        return data
      end
    end

    class DateArrayOptions
      def self.parse(xml)
        data = Types::DateArrayOptions.new
        xml.at('DefaultValue') do |node|
          data.default_value = (node.text || '')
        end
        xml.at('SourceFields') do |node|
          data.source_fields = (node.text || '')
        end
        xml.at('FacetEnabled') do |node|
          data.facet_enabled = (node.text == 'true')
        end
        xml.at('SearchEnabled') do |node|
          data.search_enabled = (node.text == 'true')
        end
        xml.at('ReturnEnabled') do |node|
          data.return_enabled = (node.text == 'true')
        end
        return data
      end
    end

    class TextArrayOptions
      def self.parse(xml)
        data = Types::TextArrayOptions.new
        xml.at('DefaultValue') do |node|
          data.default_value = (node.text || '')
        end
        xml.at('SourceFields') do |node|
          data.source_fields = (node.text || '')
        end
        xml.at('ReturnEnabled') do |node|
          data.return_enabled = (node.text == 'true')
        end
        xml.at('HighlightEnabled') do |node|
          data.highlight_enabled = (node.text == 'true')
        end
        xml.at('AnalysisScheme') do |node|
          data.analysis_scheme = (node.text || '')
        end
        return data
      end
    end

    class LiteralArrayOptions
      def self.parse(xml)
        data = Types::LiteralArrayOptions.new
        xml.at('DefaultValue') do |node|
          data.default_value = (node.text || '')
        end
        xml.at('SourceFields') do |node|
          data.source_fields = (node.text || '')
        end
        xml.at('FacetEnabled') do |node|
          data.facet_enabled = (node.text == 'true')
        end
        xml.at('SearchEnabled') do |node|
          data.search_enabled = (node.text == 'true')
        end
        xml.at('ReturnEnabled') do |node|
          data.return_enabled = (node.text == 'true')
        end
        return data
      end
    end

    class DoubleArrayOptions
      def self.parse(xml)
        data = Types::DoubleArrayOptions.new
        xml.at('DefaultValue') do |node|
          data.default_value = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('SourceFields') do |node|
          data.source_fields = (node.text || '')
        end
        xml.at('FacetEnabled') do |node|
          data.facet_enabled = (node.text == 'true')
        end
        xml.at('SearchEnabled') do |node|
          data.search_enabled = (node.text == 'true')
        end
        xml.at('ReturnEnabled') do |node|
          data.return_enabled = (node.text == 'true')
        end
        return data
      end
    end

    class IntArrayOptions
      def self.parse(xml)
        data = Types::IntArrayOptions.new
        xml.at('DefaultValue') do |node|
          data.default_value = node.text&.to_i
        end
        xml.at('SourceFields') do |node|
          data.source_fields = (node.text || '')
        end
        xml.at('FacetEnabled') do |node|
          data.facet_enabled = (node.text == 'true')
        end
        xml.at('SearchEnabled') do |node|
          data.search_enabled = (node.text == 'true')
        end
        xml.at('ReturnEnabled') do |node|
          data.return_enabled = (node.text == 'true')
        end
        return data
      end
    end

    class LatLonOptions
      def self.parse(xml)
        data = Types::LatLonOptions.new
        xml.at('DefaultValue') do |node|
          data.default_value = (node.text || '')
        end
        xml.at('SourceField') do |node|
          data.source_field = (node.text || '')
        end
        xml.at('FacetEnabled') do |node|
          data.facet_enabled = (node.text == 'true')
        end
        xml.at('SearchEnabled') do |node|
          data.search_enabled = (node.text == 'true')
        end
        xml.at('ReturnEnabled') do |node|
          data.return_enabled = (node.text == 'true')
        end
        xml.at('SortEnabled') do |node|
          data.sort_enabled = (node.text == 'true')
        end
        return data
      end
    end

    class DateOptions
      def self.parse(xml)
        data = Types::DateOptions.new
        xml.at('DefaultValue') do |node|
          data.default_value = (node.text || '')
        end
        xml.at('SourceField') do |node|
          data.source_field = (node.text || '')
        end
        xml.at('FacetEnabled') do |node|
          data.facet_enabled = (node.text == 'true')
        end
        xml.at('SearchEnabled') do |node|
          data.search_enabled = (node.text == 'true')
        end
        xml.at('ReturnEnabled') do |node|
          data.return_enabled = (node.text == 'true')
        end
        xml.at('SortEnabled') do |node|
          data.sort_enabled = (node.text == 'true')
        end
        return data
      end
    end

    class TextOptions
      def self.parse(xml)
        data = Types::TextOptions.new
        xml.at('DefaultValue') do |node|
          data.default_value = (node.text || '')
        end
        xml.at('SourceField') do |node|
          data.source_field = (node.text || '')
        end
        xml.at('ReturnEnabled') do |node|
          data.return_enabled = (node.text == 'true')
        end
        xml.at('SortEnabled') do |node|
          data.sort_enabled = (node.text == 'true')
        end
        xml.at('HighlightEnabled') do |node|
          data.highlight_enabled = (node.text == 'true')
        end
        xml.at('AnalysisScheme') do |node|
          data.analysis_scheme = (node.text || '')
        end
        return data
      end
    end

    class LiteralOptions
      def self.parse(xml)
        data = Types::LiteralOptions.new
        xml.at('DefaultValue') do |node|
          data.default_value = (node.text || '')
        end
        xml.at('SourceField') do |node|
          data.source_field = (node.text || '')
        end
        xml.at('FacetEnabled') do |node|
          data.facet_enabled = (node.text == 'true')
        end
        xml.at('SearchEnabled') do |node|
          data.search_enabled = (node.text == 'true')
        end
        xml.at('ReturnEnabled') do |node|
          data.return_enabled = (node.text == 'true')
        end
        xml.at('SortEnabled') do |node|
          data.sort_enabled = (node.text == 'true')
        end
        return data
      end
    end

    class DoubleOptions
      def self.parse(xml)
        data = Types::DoubleOptions.new
        xml.at('DefaultValue') do |node|
          data.default_value = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('SourceField') do |node|
          data.source_field = (node.text || '')
        end
        xml.at('FacetEnabled') do |node|
          data.facet_enabled = (node.text == 'true')
        end
        xml.at('SearchEnabled') do |node|
          data.search_enabled = (node.text == 'true')
        end
        xml.at('ReturnEnabled') do |node|
          data.return_enabled = (node.text == 'true')
        end
        xml.at('SortEnabled') do |node|
          data.sort_enabled = (node.text == 'true')
        end
        return data
      end
    end

    class IntOptions
      def self.parse(xml)
        data = Types::IntOptions.new
        xml.at('DefaultValue') do |node|
          data.default_value = node.text&.to_i
        end
        xml.at('SourceField') do |node|
          data.source_field = (node.text || '')
        end
        xml.at('FacetEnabled') do |node|
          data.facet_enabled = (node.text == 'true')
        end
        xml.at('SearchEnabled') do |node|
          data.search_enabled = (node.text == 'true')
        end
        xml.at('ReturnEnabled') do |node|
          data.return_enabled = (node.text == 'true')
        end
        xml.at('SortEnabled') do |node|
          data.sort_enabled = (node.text == 'true')
        end
        return data
      end
    end

    # Operation Parser for DefineSuggester
    class DefineSuggester
      def self.parse(http_resp)
        data = Types::DefineSuggesterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DefineSuggesterResult')
        xml.at('Suggester') do |node|
          data.suggester = SuggesterStatus.parse(node)
        end
        data
      end
    end

    class SuggesterStatus
      def self.parse(xml)
        data = Types::SuggesterStatus.new
        xml.at('Options') do |node|
          data.options = Suggester.parse(node)
        end
        xml.at('Status') do |node|
          data.status = OptionStatus.parse(node)
        end
        return data
      end
    end

    class Suggester
      def self.parse(xml)
        data = Types::Suggester.new
        xml.at('SuggesterName') do |node|
          data.suggester_name = (node.text || '')
        end
        xml.at('DocumentSuggesterOptions') do |node|
          data.document_suggester_options = DocumentSuggesterOptions.parse(node)
        end
        return data
      end
    end

    class DocumentSuggesterOptions
      def self.parse(xml)
        data = Types::DocumentSuggesterOptions.new
        xml.at('SourceField') do |node|
          data.source_field = (node.text || '')
        end
        xml.at('FuzzyMatching') do |node|
          data.fuzzy_matching = (node.text || '')
        end
        xml.at('SortExpression') do |node|
          data.sort_expression = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DeleteAnalysisScheme
    class DeleteAnalysisScheme
      def self.parse(http_resp)
        data = Types::DeleteAnalysisSchemeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteAnalysisSchemeResult')
        xml.at('AnalysisScheme') do |node|
          data.analysis_scheme = AnalysisSchemeStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteDomain
    class DeleteDomain
      def self.parse(http_resp)
        data = Types::DeleteDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteDomainResult')
        xml.at('DomainStatus') do |node|
          data.domain_status = DomainStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteExpression
    class DeleteExpression
      def self.parse(http_resp)
        data = Types::DeleteExpressionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteExpressionResult')
        xml.at('Expression') do |node|
          data.expression = ExpressionStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteIndexField
    class DeleteIndexField
      def self.parse(http_resp)
        data = Types::DeleteIndexFieldOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteIndexFieldResult')
        xml.at('IndexField') do |node|
          data.index_field = IndexFieldStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for DeleteSuggester
    class DeleteSuggester
      def self.parse(http_resp)
        data = Types::DeleteSuggesterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteSuggesterResult')
        xml.at('Suggester') do |node|
          data.suggester = SuggesterStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeAnalysisSchemes
    class DescribeAnalysisSchemes
      def self.parse(http_resp)
        data = Types::DescribeAnalysisSchemesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAnalysisSchemesResult')
        xml.at('AnalysisSchemes') do |node|
          children = node.children('member')
          data.analysis_schemes = AnalysisSchemeStatusList.parse(children)
        end
        data
      end
    end

    class AnalysisSchemeStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << AnalysisSchemeStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeAvailabilityOptions
    class DescribeAvailabilityOptions
      def self.parse(http_resp)
        data = Types::DescribeAvailabilityOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAvailabilityOptionsResult')
        xml.at('AvailabilityOptions') do |node|
          data.availability_options = AvailabilityOptionsStatus.parse(node)
        end
        data
      end
    end

    class AvailabilityOptionsStatus
      def self.parse(xml)
        data = Types::AvailabilityOptionsStatus.new
        xml.at('Options') do |node|
          data.options = (node.text == 'true')
        end
        xml.at('Status') do |node|
          data.status = OptionStatus.parse(node)
        end
        return data
      end
    end

    # Error Parser for DisabledOperationException
    class DisabledOperationException
      def self.parse(http_resp)
        data = Types::DisabledOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Code') do |node|
          data.code = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeDomainEndpointOptions
    class DescribeDomainEndpointOptions
      def self.parse(http_resp)
        data = Types::DescribeDomainEndpointOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDomainEndpointOptionsResult')
        xml.at('DomainEndpointOptions') do |node|
          data.domain_endpoint_options = DomainEndpointOptionsStatus.parse(node)
        end
        data
      end
    end

    class DomainEndpointOptionsStatus
      def self.parse(xml)
        data = Types::DomainEndpointOptionsStatus.new
        xml.at('Options') do |node|
          data.options = DomainEndpointOptions.parse(node)
        end
        xml.at('Status') do |node|
          data.status = OptionStatus.parse(node)
        end
        return data
      end
    end

    class DomainEndpointOptions
      def self.parse(xml)
        data = Types::DomainEndpointOptions.new
        xml.at('EnforceHTTPS') do |node|
          data.enforce_https = (node.text == 'true')
        end
        xml.at('TLSSecurityPolicy') do |node|
          data.tls_security_policy = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeDomains
    class DescribeDomains
      def self.parse(http_resp)
        data = Types::DescribeDomainsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeDomainsResult')
        xml.at('DomainStatusList') do |node|
          children = node.children('member')
          data.domain_status_list = DomainStatusList.parse(children)
        end
        data
      end
    end

    class DomainStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DomainStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeExpressions
    class DescribeExpressions
      def self.parse(http_resp)
        data = Types::DescribeExpressionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeExpressionsResult')
        xml.at('Expressions') do |node|
          children = node.children('member')
          data.expressions = ExpressionStatusList.parse(children)
        end
        data
      end
    end

    class ExpressionStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << ExpressionStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeIndexFields
    class DescribeIndexFields
      def self.parse(http_resp)
        data = Types::DescribeIndexFieldsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeIndexFieldsResult')
        xml.at('IndexFields') do |node|
          children = node.children('member')
          data.index_fields = IndexFieldStatusList.parse(children)
        end
        data
      end
    end

    class IndexFieldStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << IndexFieldStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for DescribeScalingParameters
    class DescribeScalingParameters
      def self.parse(http_resp)
        data = Types::DescribeScalingParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeScalingParametersResult')
        xml.at('ScalingParameters') do |node|
          data.scaling_parameters = ScalingParametersStatus.parse(node)
        end
        data
      end
    end

    class ScalingParametersStatus
      def self.parse(xml)
        data = Types::ScalingParametersStatus.new
        xml.at('Options') do |node|
          data.options = ScalingParameters.parse(node)
        end
        xml.at('Status') do |node|
          data.status = OptionStatus.parse(node)
        end
        return data
      end
    end

    class ScalingParameters
      def self.parse(xml)
        data = Types::ScalingParameters.new
        xml.at('DesiredInstanceType') do |node|
          data.desired_instance_type = (node.text || '')
        end
        xml.at('DesiredReplicationCount') do |node|
          data.desired_replication_count = node.text&.to_i
        end
        xml.at('DesiredPartitionCount') do |node|
          data.desired_partition_count = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for DescribeServiceAccessPolicies
    class DescribeServiceAccessPolicies
      def self.parse(http_resp)
        data = Types::DescribeServiceAccessPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeServiceAccessPoliciesResult')
        xml.at('AccessPolicies') do |node|
          data.access_policies = AccessPoliciesStatus.parse(node)
        end
        data
      end
    end

    class AccessPoliciesStatus
      def self.parse(xml)
        data = Types::AccessPoliciesStatus.new
        xml.at('Options') do |node|
          data.options = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = OptionStatus.parse(node)
        end
        return data
      end
    end

    # Operation Parser for DescribeSuggesters
    class DescribeSuggesters
      def self.parse(http_resp)
        data = Types::DescribeSuggestersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeSuggestersResult')
        xml.at('Suggesters') do |node|
          children = node.children('member')
          data.suggesters = SuggesterStatusList.parse(children)
        end
        data
      end
    end

    class SuggesterStatusList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << SuggesterStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for IndexDocuments
    class IndexDocuments
      def self.parse(http_resp)
        data = Types::IndexDocumentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('IndexDocumentsResult')
        xml.at('FieldNames') do |node|
          children = node.children('member')
          data.field_names = FieldNameList.parse(children)
        end
        data
      end
    end

    # Operation Parser for ListDomainNames
    class ListDomainNames
      def self.parse(http_resp)
        data = Types::ListDomainNamesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListDomainNamesResult')
        xml.at('DomainNames') do |node|
          children = node.children('entry')
          data.domain_names = DomainNameMap.parse(children)
        end
        data
      end
    end

    class DomainNameMap
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('key').text
          node = entry_node.at('value')
          data[key] = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for UpdateAvailabilityOptions
    class UpdateAvailabilityOptions
      def self.parse(http_resp)
        data = Types::UpdateAvailabilityOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateAvailabilityOptionsResult')
        xml.at('AvailabilityOptions') do |node|
          data.availability_options = AvailabilityOptionsStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for UpdateDomainEndpointOptions
    class UpdateDomainEndpointOptions
      def self.parse(http_resp)
        data = Types::UpdateDomainEndpointOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateDomainEndpointOptionsResult')
        xml.at('DomainEndpointOptions') do |node|
          data.domain_endpoint_options = DomainEndpointOptionsStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for UpdateScalingParameters
    class UpdateScalingParameters
      def self.parse(http_resp)
        data = Types::UpdateScalingParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateScalingParametersResult')
        xml.at('ScalingParameters') do |node|
          data.scaling_parameters = ScalingParametersStatus.parse(node)
        end
        data
      end
    end

    # Operation Parser for UpdateServiceAccessPolicies
    class UpdateServiceAccessPolicies
      def self.parse(http_resp)
        data = Types::UpdateServiceAccessPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateServiceAccessPoliciesResult')
        xml.at('AccessPolicies') do |node|
          data.access_policies = AccessPoliciesStatus.parse(node)
        end
        data
      end
    end
  end
end
