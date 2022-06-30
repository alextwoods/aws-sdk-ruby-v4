# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CloudSearchDomain
  module Parsers

    # Operation Parser for Search
    class Search
      def self.parse(http_resp)
        data = Types::SearchOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = (Parsers::SearchStatus.parse(map['status']) unless map['status'].nil?)
        data.hits = (Parsers::Hits.parse(map['hits']) unless map['hits'].nil?)
        data.facets = (Parsers::Facets.parse(map['facets']) unless map['facets'].nil?)
        data.stats = (Parsers::Stats.parse(map['stats']) unless map['stats'].nil?)
        data
      end
    end

    class Stats
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::FieldStats.parse(value) unless value.nil?
        end
        data
      end
    end

    class FieldStats
      def self.parse(map)
        data = Types::FieldStats.new
        data.min = map['min']
        data.max = map['max']
        data.count = map['count']
        data.missing = map['missing']
        data.sum = Hearth::NumberHelper.deserialize(map['sum'])
        data.sum_of_squares = Hearth::NumberHelper.deserialize(map['sumOfSquares'])
        data.mean = map['mean']
        data.stddev = Hearth::NumberHelper.deserialize(map['stddev'])
        return data
      end
    end

    class Facets
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::BucketInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class BucketInfo
      def self.parse(map)
        data = Types::BucketInfo.new
        data.buckets = (Parsers::BucketList.parse(map['buckets']) unless map['buckets'].nil?)
        return data
      end
    end

    class BucketList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Bucket.parse(value) unless value.nil?
        end
        data
      end
    end

    class Bucket
      def self.parse(map)
        data = Types::Bucket.new
        data.value = map['value']
        data.count = map['count']
        return data
      end
    end

    class Hits
      def self.parse(map)
        data = Types::Hits.new
        data.found = map['found']
        data.start = map['start']
        data.cursor = map['cursor']
        data.hit = (Parsers::HitList.parse(map['hit']) unless map['hit'].nil?)
        return data
      end
    end

    class HitList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Hit.parse(value) unless value.nil?
        end
        data
      end
    end

    class Hit
      def self.parse(map)
        data = Types::Hit.new
        data.id = map['id']
        data.fields = (Parsers::Fields.parse(map['fields']) unless map['fields'].nil?)
        data.exprs = (Parsers::Exprs.parse(map['exprs']) unless map['exprs'].nil?)
        data.highlights = (Parsers::Highlights.parse(map['highlights']) unless map['highlights'].nil?)
        return data
      end
    end

    class Highlights
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class Exprs
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class Fields
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::FieldValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class FieldValue
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SearchStatus
      def self.parse(map)
        data = Types::SearchStatus.new
        data.timems = map['timems']
        data.rid = map['rid']
        return data
      end
    end

    # Error Parser for SearchException
    class SearchException
      def self.parse(http_resp)
        data = Types::SearchException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for Suggest
    class Suggest
      def self.parse(http_resp)
        data = Types::SuggestOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = (Parsers::SuggestStatus.parse(map['status']) unless map['status'].nil?)
        data.suggest = (Parsers::SuggestModel.parse(map['suggest']) unless map['suggest'].nil?)
        data
      end
    end

    class SuggestModel
      def self.parse(map)
        data = Types::SuggestModel.new
        data.query = map['query']
        data.found = map['found']
        data.suggestions = (Parsers::Suggestions.parse(map['suggestions']) unless map['suggestions'].nil?)
        return data
      end
    end

    class Suggestions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SuggestionMatch.parse(value) unless value.nil?
        end
        data
      end
    end

    class SuggestionMatch
      def self.parse(map)
        data = Types::SuggestionMatch.new
        data.suggestion = map['suggestion']
        data.score = map['score']
        data.id = map['id']
        return data
      end
    end

    class SuggestStatus
      def self.parse(map)
        data = Types::SuggestStatus.new
        data.timems = map['timems']
        data.rid = map['rid']
        return data
      end
    end

    # Operation Parser for UploadDocuments
    class UploadDocuments
      def self.parse(http_resp)
        data = Types::UploadDocumentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['status']
        data.adds = map['adds']
        data.deletes = map['deletes']
        data.warnings = (Parsers::DocumentServiceWarnings.parse(map['warnings']) unless map['warnings'].nil?)
        data
      end
    end

    class DocumentServiceWarnings
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DocumentServiceWarning.parse(value) unless value.nil?
        end
        data
      end
    end

    class DocumentServiceWarning
      def self.parse(map)
        data = Types::DocumentServiceWarning.new
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Error Parser for DocumentServiceException
    class DocumentServiceException
      def self.parse(http_resp)
        data = Types::DocumentServiceException.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['status']
        data.message = map['message'] || map['Message']
        data
      end
    end
  end
end
