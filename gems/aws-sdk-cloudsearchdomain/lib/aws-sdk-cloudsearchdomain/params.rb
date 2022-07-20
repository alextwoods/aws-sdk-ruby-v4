# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudSearchDomain
  module Params

    module Bucket
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Bucket, context: context)
        type = Types::Bucket.new
        type.value = params[:value]
        type.count = params[:count]
        type
      end
    end

    module BucketInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketInfo, context: context)
        type = Types::BucketInfo.new
        type.buckets = BucketList.build(params[:buckets], context: "#{context}[:buckets]") unless params[:buckets].nil?
        type
      end
    end

    module BucketList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Bucket.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentServiceException, context: context)
        type = Types::DocumentServiceException.new
        type.status = params[:status]
        type.message = params[:message]
        type
      end
    end

    module DocumentServiceWarning
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentServiceWarning, context: context)
        type = Types::DocumentServiceWarning.new
        type.message = params[:message]
        type
      end
    end

    module DocumentServiceWarnings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentServiceWarning.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Exprs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Facets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = BucketInfo.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module FieldStats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FieldStats, context: context)
        type = Types::FieldStats.new
        type.min = params[:min]
        type.max = params[:max]
        type.count = params[:count]
        type.missing = params[:missing]
        type.sum = params[:sum]
        type.sum_of_squares = params[:sum_of_squares]
        type.mean = params[:mean]
        type.stddev = params[:stddev]
        type
      end
    end

    module FieldValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Fields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = FieldValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Highlights
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Hit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Hit, context: context)
        type = Types::Hit.new
        type.id = params[:id]
        type.fields = Fields.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type.exprs = Exprs.build(params[:exprs], context: "#{context}[:exprs]") unless params[:exprs].nil?
        type.highlights = Highlights.build(params[:highlights], context: "#{context}[:highlights]") unless params[:highlights].nil?
        type
      end
    end

    module HitList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Hit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Hits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Hits, context: context)
        type = Types::Hits.new
        type.found = params[:found]
        type.start = params[:start]
        type.cursor = params[:cursor]
        type.hit = HitList.build(params[:hit], context: "#{context}[:hit]") unless params[:hit].nil?
        type
      end
    end

    module SearchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchException, context: context)
        type = Types::SearchException.new
        type.message = params[:message]
        type
      end
    end

    module SearchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchInput, context: context)
        type = Types::SearchInput.new
        type.cursor = params[:cursor]
        type.expr = params[:expr]
        type.facet = params[:facet]
        type.filter_query = params[:filter_query]
        type.highlight = params[:highlight]
        type.partial = params[:partial]
        type.query = params[:query]
        type.query_options = params[:query_options]
        type.query_parser = params[:query_parser]
        type.return = params[:return]
        type.size = params[:size]
        type.sort = params[:sort]
        type.start = params[:start]
        type.stats = params[:stats]
        type
      end
    end

    module SearchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchOutput, context: context)
        type = Types::SearchOutput.new
        type.status = SearchStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.hits = Hits.build(params[:hits], context: "#{context}[:hits]") unless params[:hits].nil?
        type.facets = Facets.build(params[:facets], context: "#{context}[:facets]") unless params[:facets].nil?
        type.stats = Stats.build(params[:stats], context: "#{context}[:stats]") unless params[:stats].nil?
        type
      end
    end

    module SearchStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchStatus, context: context)
        type = Types::SearchStatus.new
        type.timems = params[:timems]
        type.rid = params[:rid]
        type
      end
    end

    module Stats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = FieldStats.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module SuggestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuggestInput, context: context)
        type = Types::SuggestInput.new
        type.query = params[:query]
        type.suggester = params[:suggester]
        type.size = params[:size]
        type
      end
    end

    module SuggestModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuggestModel, context: context)
        type = Types::SuggestModel.new
        type.query = params[:query]
        type.found = params[:found]
        type.suggestions = Suggestions.build(params[:suggestions], context: "#{context}[:suggestions]") unless params[:suggestions].nil?
        type
      end
    end

    module SuggestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuggestOutput, context: context)
        type = Types::SuggestOutput.new
        type.status = SuggestStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.suggest = SuggestModel.build(params[:suggest], context: "#{context}[:suggest]") unless params[:suggest].nil?
        type
      end
    end

    module SuggestStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuggestStatus, context: context)
        type = Types::SuggestStatus.new
        type.timems = params[:timems]
        type.rid = params[:rid]
        type
      end
    end

    module SuggestionMatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuggestionMatch, context: context)
        type = Types::SuggestionMatch.new
        type.suggestion = params[:suggestion]
        type.score = params[:score]
        type.id = params[:id]
        type
      end
    end

    module Suggestions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SuggestionMatch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UploadDocumentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadDocumentsInput, context: context)
        type = Types::UploadDocumentsInput.new
        io = params[:documents] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.documents = io
        type.content_type = params[:content_type]
        type
      end
    end

    module UploadDocumentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadDocumentsOutput, context: context)
        type = Types::UploadDocumentsOutput.new
        type.status = params[:status]
        type.adds = params[:adds]
        type.deletes = params[:deletes]
        type.warnings = DocumentServiceWarnings.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type
      end
    end

  end
end
