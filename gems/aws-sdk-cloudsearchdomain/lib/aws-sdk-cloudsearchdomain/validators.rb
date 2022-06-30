# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudSearchDomain
  module Validators

    class Bucket
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Bucket, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class BucketInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketInfo, context: context)
        Validators::BucketList.validate!(input[:buckets], context: "#{context}[:buckets]") unless input[:buckets].nil?
      end
    end

    class BucketList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Bucket.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentServiceException, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DocumentServiceWarning
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentServiceWarning, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DocumentServiceWarnings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DocumentServiceWarning.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Exprs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Facets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::BucketInfo.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class FieldStats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldStats, context: context)
        Hearth::Validator.validate!(input[:min], ::String, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::String, context: "#{context}[:max]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:missing], ::Integer, context: "#{context}[:missing]")
        Hearth::Validator.validate!(input[:sum], ::Float, context: "#{context}[:sum]")
        Hearth::Validator.validate!(input[:sum_of_squares], ::Float, context: "#{context}[:sum_of_squares]")
        Hearth::Validator.validate!(input[:mean], ::String, context: "#{context}[:mean]")
        Hearth::Validator.validate!(input[:stddev], ::Float, context: "#{context}[:stddev]")
      end
    end

    class FieldValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Fields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::FieldValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Highlights
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Hit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Hit, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::Fields.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
        Validators::Exprs.validate!(input[:exprs], context: "#{context}[:exprs]") unless input[:exprs].nil?
        Validators::Highlights.validate!(input[:highlights], context: "#{context}[:highlights]") unless input[:highlights].nil?
      end
    end

    class HitList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Hit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Hits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Hits, context: context)
        Hearth::Validator.validate!(input[:found], ::Integer, context: "#{context}[:found]")
        Hearth::Validator.validate!(input[:start], ::Integer, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:cursor], ::String, context: "#{context}[:cursor]")
        Validators::HitList.validate!(input[:hit], context: "#{context}[:hit]") unless input[:hit].nil?
      end
    end

    class SearchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SearchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchInput, context: context)
        Hearth::Validator.validate!(input[:cursor], ::String, context: "#{context}[:cursor]")
        Hearth::Validator.validate!(input[:expr], ::String, context: "#{context}[:expr]")
        Hearth::Validator.validate!(input[:facet], ::String, context: "#{context}[:facet]")
        Hearth::Validator.validate!(input[:filter_query], ::String, context: "#{context}[:filter_query]")
        Hearth::Validator.validate!(input[:highlight], ::String, context: "#{context}[:highlight]")
        Hearth::Validator.validate!(input[:partial], ::TrueClass, ::FalseClass, context: "#{context}[:partial]")
        Hearth::Validator.validate!(input[:query], ::String, context: "#{context}[:query]")
        Hearth::Validator.validate!(input[:query_options], ::String, context: "#{context}[:query_options]")
        Hearth::Validator.validate!(input[:query_parser], ::String, context: "#{context}[:query_parser]")
        Hearth::Validator.validate!(input[:return], ::String, context: "#{context}[:return]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:sort], ::String, context: "#{context}[:sort]")
        Hearth::Validator.validate!(input[:start], ::Integer, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:stats], ::String, context: "#{context}[:stats]")
      end
    end

    class SearchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchOutput, context: context)
        Validators::SearchStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Validators::Hits.validate!(input[:hits], context: "#{context}[:hits]") unless input[:hits].nil?
        Validators::Facets.validate!(input[:facets], context: "#{context}[:facets]") unless input[:facets].nil?
        Validators::Stats.validate!(input[:stats], context: "#{context}[:stats]") unless input[:stats].nil?
      end
    end

    class SearchStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchStatus, context: context)
        Hearth::Validator.validate!(input[:timems], ::Integer, context: "#{context}[:timems]")
        Hearth::Validator.validate!(input[:rid], ::String, context: "#{context}[:rid]")
      end
    end

    class Stats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::FieldStats.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class SuggestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuggestInput, context: context)
        Hearth::Validator.validate!(input[:query], ::String, context: "#{context}[:query]")
        Hearth::Validator.validate!(input[:suggester], ::String, context: "#{context}[:suggester]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
      end
    end

    class SuggestModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuggestModel, context: context)
        Hearth::Validator.validate!(input[:query], ::String, context: "#{context}[:query]")
        Hearth::Validator.validate!(input[:found], ::Integer, context: "#{context}[:found]")
        Validators::Suggestions.validate!(input[:suggestions], context: "#{context}[:suggestions]") unless input[:suggestions].nil?
      end
    end

    class SuggestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuggestOutput, context: context)
        Validators::SuggestStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Validators::SuggestModel.validate!(input[:suggest], context: "#{context}[:suggest]") unless input[:suggest].nil?
      end
    end

    class SuggestStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuggestStatus, context: context)
        Hearth::Validator.validate!(input[:timems], ::Integer, context: "#{context}[:timems]")
        Hearth::Validator.validate!(input[:rid], ::String, context: "#{context}[:rid]")
      end
    end

    class SuggestionMatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuggestionMatch, context: context)
        Hearth::Validator.validate!(input[:suggestion], ::String, context: "#{context}[:suggestion]")
        Hearth::Validator.validate!(input[:score], ::Integer, context: "#{context}[:score]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class Suggestions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SuggestionMatch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UploadDocumentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadDocumentsInput, context: context)
        unless input[:documents].respond_to?(:read) || input[:documents].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:documents].class}"
        end
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class UploadDocumentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadDocumentsOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:adds], ::Integer, context: "#{context}[:adds]")
        Hearth::Validator.validate!(input[:deletes], ::Integer, context: "#{context}[:deletes]")
        Validators::DocumentServiceWarnings.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
      end
    end

  end
end
